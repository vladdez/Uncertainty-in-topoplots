#!/usr/bin/env python3
"""Build and validate the LLM-oriented literature wiki.

The source PDFs are immutable inputs.  Extraction is incremental: raw Markdown is
rewritten only when a source hash or the extraction format version changes.
Curated summaries live in metadata/papers.json and are never inferred here.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
from collections import Counter, defaultdict
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import quote

from evidence_wiki import (
    build_evidence,
    evidence_link_for_index,
    validate_metadata as validate_evidence_metadata,
)


FORMAT_VERSION = 1
WIKI = Path(__file__).resolve().parents[1]
PROJECT = WIKI.parent
ROOT = PROJECT.parent
SOURCE = PROJECT / "papers"
HANDBOOKS = WIKI / "handbooks"
WILKE_SOURCE = HANDBOOKS / "wilke2019fundamentals.pdf"
BIB = PROJECT / "refs.bib"
RAW = WIKI / "raw"
INDEX = WIKI / "index"
SUMMARIES = WIKI / "summaries"
META = WIKI / "metadata" / "papers.json"
WILKE_META = HANDBOOKS / "wilke2019fundamentals.json"
WILKE_READABLE = HANDBOOKS / "wilke2019fundamentals-readable.md"
GELMAN_META = HANDBOOKS / "gelman2020regression.json"
HANDBOOK_IDS = {
    "Regression and Other Stories - Gelman, Andrew, Hill, 2020.pdf": "gelman2020regression",
    "gelman2020regression.pdf": "gelman2020regression",
    "wilke2019fundamentals.pdf": "wilke2019fundamentals",
}
MANIFEST = WIKI / "manifest.json"


def source_path_for_id(key: str) -> Path:
    """Resolve curated sources without treating unrelated handbooks as papers."""
    paper = SOURCE / f"{key}.pdf"
    if paper.exists():
        return paper
    for name, handbook_id in HANDBOOK_IDS.items():
        if handbook_id == key and (HANDBOOKS / name).exists():
            return HANDBOOKS / name
    return paper


def source_id(path: Path) -> str:
    return HANDBOOK_IDS.get(path.name, path.stem)


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def yaml_string(value: object) -> str:
    return json.dumps(str(value), ensure_ascii=False)


def parse_bibtex(path: Path) -> dict[str, dict[str, str]]:
    """Parse the simple, brace-delimited refs.bib used by this project."""
    entries: dict[str, dict[str, str]] = {}
    field_re = re.compile(r"^\s*(\w+)\s*=\s*\{(.*)\}\s*,?\s*$")
    current: dict[str, str] | None = None
    depth = 0
    for line in path.read_text(encoding="utf-8").splitlines():
        start = re.match(r"^@(\w+)\s*\{\s*([^,]+),", line)
        if start:
            kind, key = start.groups()
            current = {"type": kind.lower(), "id": key.strip()}
            depth = line.count("{") - line.count("}")
            continue
        if current is None:
            continue
        depth += line.count("{") - line.count("}")
        field_match = field_re.match(line)
        if field_match:
            name, value = field_match.groups()
            current[name.lower()] = re.sub(r"\s+", " ", value.strip())
        if depth == 0:
            entries[current["id"]] = current
            current = None
    return entries


def clean_bib(value: str) -> str:
    substitutions = {
        r'\\&': '&', r'\\{': '', r'\\}': '', '{': '', '}': '',
        r'\\"a': 'ä', r'\\"o': 'ö', r'\\"u': 'ü',
        r'\\"A': 'Ä', r'\\"O': 'Ö', r'\\"U': 'Ü',
        r"\\'e": 'é', r'\\v{S}': 'Š', r'\\v{s}': 'š',
    }
    for old, new in substitutions.items():
        value = value.replace(old, new)
    return value


def split_passages(page_text: str) -> list[str]:
    text = page_text.replace("\r\n", "\n").replace("\r", "\n")
    text = "\n".join(line.rstrip() for line in text.splitlines()).strip()
    if not text:
        return []
    blocks = re.split(r"\n[ \t]*\n+", text)
    return [block.strip() for block in blocks if block.strip()]


def extract_pdf(source: Path, target: Path, metadata: dict[str, str], digest: str) -> tuple[int, int]:
    pdftotext = shutil.which("pdftotext")
    if not pdftotext:
        raise RuntimeError("pdftotext was not found on PATH")
    with tempfile.NamedTemporaryFile(suffix=".txt", delete=False) as temp:
        temp_path = Path(temp.name)
    try:
        command = [pdftotext, "-layout", "-enc", "UTF-8", str(source), str(temp_path)]
        completed = subprocess.run(command, capture_output=True, text=True, encoding="utf-8", errors="replace")
        if completed.returncode != 0:
            raise RuntimeError(f"pdftotext failed for {source.name}: {completed.stderr.strip()}")
        extracted = temp_path.read_text(encoding="utf-8", errors="replace")
    finally:
        temp_path.unlink(missing_ok=True)

    pages = extracted.split("\f")
    if pages and not pages[-1].strip():
        pages.pop()
    title = clean_bib(metadata.get("title", source.stem))
    lines = [
        "---",
        f"id: {yaml_string(source.stem)}",
        f"title: {yaml_string(title)}",
        f"source_file: {yaml_string(source.relative_to(ROOT).as_posix())}",
        f"source_sha256: {yaml_string(digest)}",
        f"extraction_format: {FORMAT_VERSION}",
        "---",
        "",
        f"# {title} — extracted text",
        "",
        "> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.",
        "",
    ]
    passage_count = 0
    for page_number, page in enumerate(pages, 1):
        page_id = f"page-{page_number:03d}"
        lines.extend([f'<a id="{page_id}"></a>', "", f"## PDF page {page_number}", ""])
        passages = split_passages(page)
        if not passages:
            lines.extend(["_[No extractable text on this page.]_", ""])
            continue
        for block_number, block in enumerate(passages, 1):
            passage_count += 1
            passage_id = f"p{page_number:03d}-b{block_number:03d}"
            lines.extend([f'<a id="{passage_id}"></a>', "", f"<!-- {passage_id} -->", block, ""])
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_text("\n".join(lines).rstrip() + "\n", encoding="utf-8")
    return len(pages), passage_count


def extract_markdown(source: Path, target: Path, digest: str) -> tuple[int, int]:
    text = source.read_text(encoding="utf-8", errors="replace")
    lines = [
        "---",
        f"id: {yaml_string(source.stem)}",
        f"title: {yaml_string(source.name)}",
        f"source_file: {yaml_string(source.relative_to(ROOT).as_posix())}",
        f"source_sha256: {yaml_string(digest)}",
        f"extraction_format: {FORMAT_VERSION}",
        "---",
        "",
        f"# {source.name} — preserved text",
        "",
        "> Line-addressable copy of the source Markdown file.",
        "",
    ]
    count = 0
    for number, line in enumerate(text.splitlines(), 1):
        count += 1
        lines.extend([f'<a id="line-{number:04d}"></a>', "", f"`L{number:04d}` {line}", ""])
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_text("\n".join(lines).rstrip() + "\n", encoding="utf-8")
    return 1, count


def load_json(path: Path, default: object) -> object:
    if not path.exists():
        return default
    return json.loads(path.read_text(encoding="utf-8"))


def relative_link(from_path: Path, to_path: Path, anchor: str | None = None) -> str:
    rel = os.path.relpath(to_path, from_path.parent).replace(os.sep, "/")
    link = quote(rel, safe="/.-_")
    return f"{link}#{anchor}" if anchor else link


def render_summary(record: dict, citation: dict[str, str]) -> str:
    key = record["id"]
    title = record["title"]
    authors = record.get("authors") or clean_bib(citation.get("author", "Unknown"))
    year = record.get("year") or citation.get("year", "Unknown")
    index_link = relative_link(SUMMARIES / f"{key}.md", INDEX / f"{key}.md")
    raw_link = relative_link(SUMMARIES / f"{key}.md", RAW / f"{key}.md")
    topics = ", ".join(f"`{topic}`" for topic in record.get("topics", []))
    findings = "\n".join(f"- {finding}" for finding in record.get("key_findings", []))
    limitations = "\n".join(f"- {item}" for item in record.get("limitations", [])) or "- Not separately curated; consult the index and source passages."
    return f"""---
id: {yaml_string(key)}
title: {yaml_string(title)}
year: {yaml_string(year)}
topics: {json.dumps(record.get('topics', []), ensure_ascii=False)}
---

# {title}

**Citation:** {authors} ({year})  
**Topics:** {topics}  
**Drill down:** [paper index]({index_link}) · [full extracted text]({raw_link})

## Why this paper matters

{record['summary']}

## Key findings

{findings}

## Scope and cautions

{limitations}
"""


def render_index(record: dict, citation: dict[str, str]) -> str:
    key = record["id"]
    here = INDEX / f"{key}.md"
    raw = RAW / f"{key}.md"
    summary = SUMMARIES / f"{key}.md"
    source_path = source_path_for_id(key)
    source_rel = relative_link(here, source_path)
    venue = record.get("venue") or clean_bib(
        citation.get("journal")
        or citation.get("booktitle")
        or citation.get("publisher")
        or citation.get("howpublished")
        or "Not specified in refs.bib"
    )
    doi = record.get("doi") or citation.get("doi")
    doi_display = f"[{doi}](https://doi.org/{doi})" if doi else "Not available"
    fields = [
        ("Authors", record.get("authors") or clean_bib(citation.get("author", "Unknown"))),
        ("Year", record.get("year") or citation.get("year", "Unknown")),
        ("Type", record.get("type") or citation.get("type", "unknown")),
        ("Venue", venue),
        ("DOI", doi_display),
        ("Source key", key),
        ("Source file", f"[archived PDF]({source_rel})"),
    ]
    metadata_table = "\n".join(f"| {name} | {value} |" for name, value in fields)
    keywords = ", ".join(f"`{word}`" for word in record.get("keywords", []))
    topics = ", ".join(f"[`{topic}`](../catalog/topics.md#{slugify(topic)})" for topic in record.get("topics", []))
    findings = []
    for item in record.get("findings", []):
        link = relative_link(here, raw, item["anchor"])
        findings.append(f"- {item['claim']} ([source passage]({link}))")
    sections = []
    for item in record.get("sections", []):
        link = relative_link(here, raw, item["anchor"])
        sections.append(f"- **{item['label']}** — {item['description']} ([raw]({link}))")
    relations = []
    for item in record.get("related", []):
        target = item["paper"]
        link = relative_link(here, SUMMARIES / f"{target}.md")
        relations.append(f"- [{target}]({link}) — {item['reason']}")
    deep_index = ""
    if key == "wilke2019fundamentals" and WILKE_META.exists():
        deep_index = f"""

## Detailed book navigation

[Chapter index]({relative_link(here, INDEX / key / 'README.md')}) · [Actionable principle catalog]({relative_link(here, WIKI / 'catalog' / 'wilke-principles.md')})

Use the principle catalog to identify a review issue, open only the matching chapter index, and then follow its links to the cited raw passages and figure captions. The concise summary intentionally remains high-level.
"""
    elif key == "gelman2020regression" and GELMAN_META.exists():
        deep_index = f"""

## Detailed book navigation

[Chapter index]({relative_link(here, INDEX / key / 'README.md')})

Open one relevant chapter or curated key passage. Treat the handbook as methodological framing rather than primary evidence about EEG visualization.
"""
    return f"""---
id: {yaml_string(key)}
title: {yaml_string(record['title'])}
year: {yaml_string(record.get('year') or citation.get('year', 'Unknown'))}
keywords: {json.dumps(record.get('keywords', []), ensure_ascii=False)}
topics: {json.dumps(record.get('topics', []), ensure_ascii=False)}
---

# Index: {record['title']}

[Concise summary]({relative_link(here, summary)}) · [Detailed research evidence]({evidence_link_for_index(WIKI, key, here)}) · [Full extracted text]({relative_link(here, raw)})

## Metadata

| Field | Value |
| --- | --- |
{metadata_table}

## Search terms

**Topics:** {topics}  
**Keywords:** {keywords}

## Evidence-linked findings

{chr(10).join(findings) if findings else '- No curated claims. Consult the raw text.'}

## Passage map

{chr(10).join(sections) if sections else '- Use the raw text page headings and full-text search.'}

## Related papers

{chr(10).join(relations) if relations else '- No curated cross-paper links.'}
{deep_index}
"""


def wilke_principle_anchor(principle_id: str) -> str:
    return f"principle-{slugify(principle_id)}"


def markdown_table_cell(value: object) -> str:
    """Keep long prose readable and safe inside a Markdown table cell."""
    return str(value).replace("|", "\\|").replace("\r", " ").replace("\n", " ").strip()


def render_wilke_human_readable(book: dict) -> None:
    here = WILKE_READABLE
    raw = RAW / f"{book['source_id']}.md"
    hub = INDEX / book["source_id"] / "README.md"
    catalog = WIKI / "catalog" / "wilke-principles.md"
    lines = [
        "# Fundamentals of Data Visualization — human-readable principle guide",
        "",
        "> Personal reading edition generated from `metadata/wilke2019fundamentals.json`. "
        "Recommendations are paraphrased from Wilke. Follow the source links before quoting or applying a principle where nuance matters.",
        "",
        f"[Chapter index]({relative_link(here, hub)}) · "
        f"[Compact principle catalog]({relative_link(here, catalog)}) · "
        f"[Full extracted text]({relative_link(here, raw)})",
        "",
        "## Chapter directory",
        "",
        "| Ch. | Chapter | Pages (print / PDF) | Scope | Keywords |",
        "| ---: | --- | --- | --- | --- |",
    ]
    for chapter in book["chapters"]:
        chapter_file = INDEX / book["source_id"] / f"chapter-{chapter['number']:02d}.md"
        lines.append(
            f"| {chapter['number']} | [{markdown_table_cell(chapter['title'])}]({relative_link(here, chapter_file)}) | "
            f"{chapter['printed_pages']} / {chapter['pdf_pages']} | {markdown_table_cell(chapter['overview'])} | "
            f"{markdown_table_cell(', '.join(chapter.get('keywords', [])))} |"
        )
    for chapter in book["chapters"]:
        lines.extend([
            "",
            f"## {chapter['number']}. {chapter['title']}",
            "",
            f"**Scope:** {chapter['overview']}  ",
            f"**Pages:** print {chapter['printed_pages']}; PDF {chapter['pdf_pages']}  ",
            f"**Keywords:** {', '.join(f'`{term}`' for term in chapter.get('keywords', []))}",
            "",
            "| Principle | Problem | Recommended solution | Why it works | Applies when | Exceptions / qualifications | Book example | Source references |",
            "| --- | --- | --- | --- | --- | --- | --- | --- |",
        ])
        for principle in chapter.get("principles", []):
            passages = "<br>".join(
                f"[Passage {item['anchor']}]({relative_link(here, raw, item['anchor'])})"
                for item in principle["references"]["passages"]
            )
            figures = "<br>".join(
                f"[Figure {item['number']}]({relative_link(here, raw, item['anchor'])})"
                for item in principle["references"].get("figures", [])
            )
            sources = passages + ("<br>" + figures if figures else "")
            title = markdown_table_cell(principle["title"])
            keywords = markdown_table_cell(", ".join(principle.get("keywords", [])))
            lines.append(
                f"| **{title}**<br><small>{keywords}</small> | "
                f"{markdown_table_cell(principle['problem'])} | "
                f"{markdown_table_cell(principle['solution'])} | "
                f"{markdown_table_cell(principle['why'])} | "
                f"{markdown_table_cell(principle['applies'])} | "
                f"{markdown_table_cell(principle['exceptions'])} | "
                f"{markdown_table_cell(principle['example'])} | {sources} |"
            )
        if not chapter.get("principles"):
            lines.append("| — | No separately curated principle for this chapter. | — | — | — | — | — | — |")
    here.write_text("\n".join(lines) + "\n", encoding="utf-8")


def render_wilke_chapter(book: dict, chapter: dict) -> str:
    number = chapter["number"]
    here = INDEX / book["source_id"] / f"chapter-{number:02d}.md"
    raw = RAW / f"{book['source_id']}.md"
    hub = INDEX / book["source_id"] / "README.md"
    catalog = WIKI / "catalog" / "wilke-principles.md"
    section_lines = []
    for section in chapter.get("sections", []):
        link = relative_link(here, raw, section["anchor"])
        section_lines.append(
            f"- **{section['title']}** — printed p. {section['printed_page']}; "
            f"[raw page]({link})"
        )
    principle_blocks = []
    for principle in chapter.get("principles", []):
        passage_links = ", ".join(
            f"[{item['anchor']}]({relative_link(here, raw, item['anchor'])})"
            for item in principle["references"]["passages"]
        )
        figure_links = ", ".join(
            f"[Figure {item['number']}]({relative_link(here, raw, item['anchor'])})"
            for item in principle["references"].get("figures", [])
        ) or "No figure-specific example cited."
        inference = principle.get("inference")
        inference_line = f"\n\n**Labeled inference:** {inference}" if inference else ""
        keywords = ", ".join(f"`{item}`" for item in principle.get("keywords", []))
        principle_blocks.append(f"""<a id=\"{wilke_principle_anchor(principle['id'])}\"></a>

### {principle['title']}

**Problem addressed:** {principle['problem']}

**Recommended solution:** {principle['solution']}

**Why it works:** {principle['why']}

**Applies when:** {principle['applies']}

**Exceptions and qualifications:** {principle['exceptions']}

**Book example:** {principle['example']}

**Search terms:** {keywords}

**Evidence:** passages {passage_links}; figures {figure_links}.{inference_line}
""")
    printed = chapter["printed_pages"]
    pdf = chapter["pdf_pages"]
    return f"""---
source_id: {yaml_string(book['source_id'])}
chapter: {number}
title: {yaml_string(chapter['title'])}
printed_pages: {yaml_string(printed)}
pdf_pages: {yaml_string(pdf)}
---

# Chapter {number}: {chapter['title']}

[Book index]({relative_link(here, hub)}) · [Principle catalog]({relative_link(here, catalog)}) · [Chapter raw start]({relative_link(here, raw, chapter['start_anchor'])})

**Scope:** {chapter['overview']}

**Search terms:** {', '.join(f'`{item}`' for item in chapter.get('keywords', []))}

## Section map

{chr(10).join(section_lines)}

## Actionable principles

{chr(10).join(principle_blocks) if principle_blocks else 'This chapter is indexed for retrieval but contains no separately curated figure-review principle.'}

## Source boundary

Printed pages {printed}; PDF pages {pdf}. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
"""


def render_wilke_deep_index(book: dict) -> None:
    target_dir = INDEX / book["source_id"]
    target_dir.mkdir(parents=True, exist_ok=True)
    hub = target_dir / "README.md"
    raw = RAW / f"{book['source_id']}.md"
    catalog = WIKI / "catalog" / "wilke-principles.md"
    rows = []
    for chapter in book["chapters"]:
        path = target_dir / f"chapter-{chapter['number']:02d}.md"
        count = len(chapter.get("principles", []))
        rows.append(
            f"| {chapter['number']} | [{chapter['title']}]({relative_link(hub, path)}) | "
            f"{chapter['printed_pages']} | {count} | {', '.join(chapter.get('keywords', []))} |"
        )
        path.write_text(render_wilke_chapter(book, chapter), encoding="utf-8")
    hub.write_text(f"""# Detailed index: Fundamentals of Data Visualization

[Concise summary]({relative_link(hub, SUMMARIES / (book['source_id'] + '.md'))}) · [Paper-level index]({relative_link(hub, INDEX / (book['source_id'] + '.md'))}) · [Principle catalog]({relative_link(hub, catalog)}) · [Full extracted text]({relative_link(hub, raw)})

This hub preserves the global summary's compactness while exposing all 29 chapters. Open only the chapter relevant to the figure-review question, then follow a principle's evidence links to the exact passages and figure captions.

| Ch. | Chapter | Printed pages | Principles | Search terms |
| ---: | --- | --- | ---: | --- |
{chr(10).join(rows)}

## Retrieval note

Printed page numbers are the book's pagination; PDF page numbers include front matter. Passage anchors are stable only for the source hash recorded in `manifest.json`. Figures themselves are not reproduced in these indexes: use the linked caption, then inspect the archived PDF page when spatial detail matters.
""", encoding="utf-8")

    catalog_lines = [
        "# Wilke actionable-principle catalog",
        "",
        "Search this compact list first. Open one matching chapter principle, then follow only its evidence links into the raw book extraction.",
        "",
        "| Topic / search terms | Principle | Chapter |",
        "| --- | --- | --- |",
    ]
    for chapter in book["chapters"]:
        chapter_path = target_dir / f"chapter-{chapter['number']:02d}.md"
        for principle in chapter.get("principles", []):
            link = relative_link(catalog, chapter_path, wilke_principle_anchor(principle["id"]))
            terms = ", ".join(principle.get("keywords", []))
            catalog_lines.append(
                f"| {terms} | [{principle['title']}]({link}) | {chapter['number']}: {chapter['title']} |"
            )
    catalog.write_text("\n".join(catalog_lines) + "\n", encoding="utf-8")


def validate_gelman_metadata(book: dict) -> list[str]:
    errors: list[str] = []
    if book.get("source_id") != "gelman2020regression":
        return ["Gelman metadata source_id must be gelman2020regression"]
    raw_path = RAW / "gelman2020regression.md"
    if not raw_path.exists():
        return ["Gelman raw extraction is missing"]
    anchors = set(ANCHOR_RE.findall(raw_path.read_text(encoding="utf-8")))
    numbers = [chapter.get("number") for chapter in book.get("chapters", [])]
    if numbers != list(range(1, 23)):
        errors.append("Gelman metadata must contain chapters 1 through 22 in order")
    for chapter in book.get("chapters", []):
        anchor = f"page-{chapter['pdf_start']:03d}"
        if anchor not in anchors:
            errors.append(f"Gelman chapter {chapter['number']}: missing {anchor}")
    for passage in book.get("key_passages", []):
        if passage.get("anchor") not in anchors:
            errors.append(f"Gelman key passage missing: {passage.get('anchor')}")
    return errors


def render_gelman_deep_index(book: dict) -> None:
    target_dir = INDEX / book["source_id"]
    target_dir.mkdir(parents=True, exist_ok=True)
    here = target_dir / "README.md"
    raw = RAW / f"{book['source_id']}.md"
    evidence = WIKI / "evidence" / f"{book['source_id']}.md"
    rows = []
    for chapter in book["chapters"]:
        anchor = f"page-{chapter['pdf_start']:03d}"
        rows.append(
            f"| {chapter['number']} | [{chapter['title']}]({relative_link(here, raw, anchor)}) | "
            f"{chapter['printed_start']} | {chapter['pdf_start']} | {', '.join(chapter['keywords'])} |"
        )
    passages = [
        f"- **{item['label']}** — {item['description']} "
        f"([raw]({relative_link(here, raw, item['anchor'])}))"
        for item in book["key_passages"]
    ]
    here.write_text(f"""# Detailed index: {book['title']}

[Research evidence record]({relative_link(here, evidence)}) · [Full extracted text]({relative_link(here, raw)})

> {book['scope_note']}

**Authors:** {book['authors']}  
**Edition note:** {book['edition_note']}

## Chapter directory

| Ch. | Chapter | Printed start | PDF start | Search terms |
| ---: | --- | ---: | ---: | --- |
{chr(10).join(rows)}

## Key methodological passages for this project

{chr(10).join(passages)}

## Retrieval note

Open one chapter start or key passage, search locally within that range, and stop when the evidence is sufficient. Do not load the 552-page extraction as a whole. Printed pagination differs from PDF pagination because the PDF includes front matter.
""", encoding="utf-8")


def validate_wilke_metadata(book: dict) -> list[str]:
    errors: list[str] = []
    raw_text = (RAW / f"{book.get('source_id', 'wilke2019fundamentals')}.md").read_text(encoding="utf-8") if RAW.exists() else ""
    raw_anchors = set(ANCHOR_RE.findall(raw_text))
    raw_blocks: dict[str, str] = {}
    if raw_text:
        matches = list(re.finditer(r'<a id="([^"]+)"></a>', raw_text))
        for index, match in enumerate(matches):
            end = matches[index + 1].start() if index + 1 < len(matches) else len(raw_text)
            raw_blocks[match.group(1)] = raw_text[match.end():end]
    chapters = book.get("chapters", [])
    numbers = [chapter.get("number") for chapter in chapters]
    if numbers != list(range(1, 30)):
        errors.append("Wilke metadata must contain chapters 1 through 29 in order")
    principle_ids: list[str] = []
    for chapter in chapters:
        required_chapter = {"number", "title", "printed_pages", "pdf_pages", "start_anchor", "overview", "sections", "principles"}
        missing = sorted(required_chapter - chapter.keys())
        if missing:
            errors.append(f"Wilke chapter {chapter.get('number')}: missing fields {missing}")
        for principle in chapter.get("principles", []):
            required = {"id", "title", "problem", "solution", "why", "applies", "exceptions", "example", "keywords", "references"}
            absent = sorted(required - principle.keys())
            if absent:
                errors.append(f"Wilke principle {principle.get('id')}: missing fields {absent}")
            principle_ids.append(principle.get("id", ""))
            refs = principle.get("references", {})
            if not refs.get("passages") or not refs.get("figures"):
                errors.append(f"Wilke principle {principle.get('id')}: needs passage and figure references")
            for item in refs.get("passages", []):
                if raw_anchors and item.get("anchor") not in raw_anchors:
                    errors.append(f"Wilke principle {principle.get('id')}: missing raw passage {item.get('anchor')}")
            for item in refs.get("figures", []):
                anchor = item.get("anchor")
                number = item.get("number")
                if raw_anchors and anchor not in raw_anchors:
                    errors.append(f"Wilke principle {principle.get('id')}: missing figure anchor {anchor}")
                elif raw_blocks and f"Figure {number}" not in raw_blocks.get(anchor, ""):
                    errors.append(
                        f"Wilke principle {principle.get('id')}: {anchor} does not contain Figure {number}"
                    )
    duplicates = sorted(key for key, count in Counter(principle_ids).items() if count > 1)
    if duplicates:
        errors.append(f"Duplicate Wilke principle IDs: {duplicates}")
    return errors


def slugify(text: str) -> str:
    value = text.lower().strip()
    value = re.sub(r"[^\w\s-]", "", value, flags=re.UNICODE)
    return re.sub(r"[-\s]+", "-", value)


def render_catalog(records: list[dict]) -> None:
    catalog = WIKI / "catalog"
    catalog.mkdir(parents=True, exist_ok=True)
    paper_lines = [
        "# Paper catalog",
        "",
        "Start here when searching by title, author, year, or a short description. Open only the most promising summary next.",
        "",
        "| Paper | Year | Topics | One-line relevance |",
        "| --- | ---: | --- | --- |",
    ]
    for record in sorted(records, key=lambda item: (str(item.get("year", "")), item["title"])):
        link = relative_link(catalog / "papers.md", SUMMARIES / f"{record['id']}.md")
        topics = ", ".join(record.get("topics", []))
        paper_lines.append(f"| [{record['title']}]({link}) | {record.get('year', '')} | {topics} | {record.get('catalog_blurb', record['summary'])} |")
    (catalog / "papers.md").write_text("\n".join(paper_lines) + "\n", encoding="utf-8")

    topic_map: dict[str, list[dict]] = defaultdict(list)
    keyword_map: dict[str, list[dict]] = defaultdict(list)
    for record in records:
        for topic in record.get("topics", []):
            topic_map[topic].append(record)
        for keyword in record.get("keywords", []):
            keyword_map[keyword].append(record)
    topic_lines = ["# Topic catalog", "", "Browse a topic, then open a paper summary. Counts refer to curated paper assignments.", ""]
    for topic in sorted(topic_map, key=str.casefold):
        topic_lines.extend([f"## {topic}", ""])
        for record in sorted(topic_map[topic], key=lambda item: item["title"]):
            link = relative_link(catalog / "topics.md", SUMMARIES / f"{record['id']}.md")
            topic_lines.append(f"- [{record['title']}]({link}) ({record.get('year', '')}) — {record.get('catalog_blurb', record['summary'])}")
        topic_lines.append("")
    (catalog / "topics.md").write_text("\n".join(topic_lines), encoding="utf-8")

    keyword_lines = ["# Keyword catalog", "", "Use exact keyword search here to narrow the collection before loading summaries.", ""]
    for keyword in sorted(keyword_map, key=str.casefold):
        linked = []
        for record in sorted(keyword_map[keyword], key=lambda item: item["id"]):
            link = relative_link(catalog / "keywords.md", SUMMARIES / f"{record['id']}.md")
            linked.append(f"[{record['id']}]({link})")
        keyword_lines.append(f"- **{keyword}** ({len(linked)}): " + ", ".join(linked))
    (catalog / "keywords.md").write_text("\n".join(keyword_lines) + "\n", encoding="utf-8")


def render_status(files_manifest: dict[str, dict]) -> None:
    lines = [
        "# Curation status",
        "",
        "Check this page before relying on a summary. `current` means the curated record was reviewed against the present source hash; `review_required` means the source changed afterward.",
        "",
        "| Source | Status | SHA-256 |",
        "| --- | --- | --- |",
    ]
    for source, info in sorted(files_manifest.items()):
        if not source.lower().endswith(".pdf"):
            continue
        lines.append(f"| `{source}` | **{info['curation_status']}** | `{info['sha256']}` |")
    (WIKI / "catalog" / "status.md").write_text("\n".join(lines) + "\n", encoding="utf-8")


def build() -> None:
    if not SOURCE.is_dir():
        raise RuntimeError(f"Source directory missing: {SOURCE}")
    citations = parse_bibtex(BIB)
    old_manifest = load_json(MANIFEST, {})
    old_files = old_manifest.get("files", {}) if isinstance(old_manifest, dict) else {}
    files_manifest: dict[str, dict] = {}
    source_files = sorted(path for path in SOURCE.rglob("*") if path.is_file())
    source_files.extend(sorted(path for path in HANDBOOKS.glob("*.pdf") if path.name in HANDBOOK_IDS))
    source_files.sort()
    for source in source_files:
        relative = source.relative_to(ROOT).as_posix()
        digest = sha256(source)
        key = source_id(source)
        target = RAW / f"{key}.md"
        previous = old_files.get(relative, {})
        if not previous:
            previous = next(
                (info for old_relative, info in old_files.items() if Path(old_relative).stem == key),
                {},
            )
        unchanged = previous.get("sha256") == digest and previous.get("format_version") == FORMAT_VERSION and target.exists()
        if unchanged:
            pages = previous.get("pages", 0)
            passages = previous.get("passages", 0)
        elif source.suffix.lower() == ".pdf":
            pages, passages = extract_pdf(source, target, citations.get(key, {}), digest)
        elif source.suffix.lower() in {".md", ".txt", ".bib"}:
            pages, passages = extract_markdown(source, target, digest)
        else:
            raise RuntimeError(f"Unsupported source type: {source}")
        curated_digest = previous.get("curated_sha256", previous.get("sha256", digest))
        files_manifest[relative] = {
            "source_id": key,
            "sha256": digest,
            "bytes": source.stat().st_size,
            "raw": target.relative_to(WIKI).as_posix(),
            "pages": pages,
            "passages": passages,
            "format_version": FORMAT_VERSION,
        }
        if source.suffix.lower() == ".pdf":
            files_manifest[relative]["curated_sha256"] = curated_digest
            files_manifest[relative]["curation_status"] = "current" if curated_digest == digest else "review_required"

    curated = load_json(META, {"papers": []})
    records = curated.get("papers", [])
    record_ids = {record["id"] for record in records}
    pdf_ids = {source_id(path) for path in source_files if path.suffix.lower() == ".pdf"}
    missing = sorted(pdf_ids - record_ids)
    extra = sorted(record_ids - pdf_ids)
    if missing or extra:
        raise RuntimeError(f"Curated metadata mismatch. Missing: {missing}; extra: {extra}")
    INDEX.mkdir(parents=True, exist_ok=True)
    SUMMARIES.mkdir(parents=True, exist_ok=True)
    for record in records:
        key = record["id"]
        citation = citations.get(key, {})
        (SUMMARIES / f"{key}.md").write_text(render_summary(record, citation), encoding="utf-8")
        (INDEX / f"{key}.md").write_text(render_index(record, citation), encoding="utf-8")
    render_catalog(records)
    build_evidence(WIKI, records)
    wilke = load_json(WILKE_META, {})
    wilke_errors = validate_wilke_metadata(wilke)
    if wilke_errors:
        raise RuntimeError("Invalid Wilke metadata: " + "; ".join(wilke_errors))
    render_wilke_deep_index(wilke)
    render_wilke_human_readable(wilke)
    gelman = load_json(GELMAN_META, {})
    gelman_errors = validate_gelman_metadata(gelman)
    if gelman_errors:
        raise RuntimeError("Invalid Gelman metadata: " + "; ".join(gelman_errors))
    render_gelman_deep_index(gelman)
    render_status(files_manifest)

    manifest = {
        "schema_version": 1,
        "extraction_format": FORMAT_VERSION,
        "source_roots": [SOURCE.relative_to(ROOT).as_posix(), HANDBOOKS.relative_to(ROOT).as_posix()],
        "generated_at_utc": datetime.now(timezone.utc).replace(microsecond=0).isoformat(),
        "files": files_manifest,
    }
    MANIFEST.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    stale = sum(info.get("curation_status") == "review_required" for info in files_manifest.values())
    print(f"Built {len(records)} paper records from {len(source_files)} source files; {stale} require curation review.")


def mark_reviewed(ids: list[str]) -> None:
    if not ids:
        raise RuntimeError("Provide one or more paper IDs to mark-reviewed")
    manifest = load_json(MANIFEST, {})
    files = manifest.get("files", {})
    known: dict[str, tuple[str, dict]] = {
        info.get("source_id", source_id(ROOT / relative)): (relative, info)
        for relative, info in files.items()
        if relative.lower().endswith(".pdf")
    }
    for key in ids:
        if key not in known:
            raise RuntimeError(f"Unknown paper ID: {key}")
        relative, info = known[key]
        current = sha256(ROOT / relative)
        info["sha256"] = current
        info["curated_sha256"] = current
        info["curation_status"] = "current"
        print(f"Marked reviewed: {key}")
    MANIFEST.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    render_status(files)


LINK_RE = re.compile(r"(?<!!)\[[^\]]*\]\(([^)]+)\)")
ANCHOR_RE = re.compile(r'<a\s+id="([^"]+)"')


def validate() -> None:
    errors: list[str] = []
    wilke = load_json(WILKE_META, {})
    errors.extend(validate_wilke_metadata(wilke))
    gelman = load_json(GELMAN_META, {})
    errors.extend(validate_gelman_metadata(gelman))
    curated = load_json(META, {"papers": []})
    errors.extend(validate_evidence_metadata(WIKI, {record["id"] for record in curated.get("papers", [])}))
    markdown_files = sorted(WIKI.rglob("*.md"))
    anchors: dict[Path, set[str]] = {}
    for path in markdown_files:
        text = path.read_text(encoding="utf-8")
        anchors[path.resolve()] = set(ANCHOR_RE.findall(text))
    for path in markdown_files:
        # Raw files preserve source text verbatim. Source-relative links and even
        # garbled PDF text can resemble Markdown links; authored wiki navigation
        # is validated in catalogs, summaries, indexes, and documentation instead.
        if RAW in path.parents:
            continue
        text = path.read_text(encoding="utf-8")
        for raw_target in LINK_RE.findall(text):
            if re.match(r"^[a-z]+://", raw_target) or raw_target.startswith("mailto:"):
                continue
            target, _, fragment = raw_target.partition("#")
            target = target.replace("%20", " ")
            destination = (path.parent / target).resolve() if target else path.resolve()
            if not destination.exists():
                errors.append(f"{path.relative_to(WIKI)}: missing target {raw_target}")
            elif fragment and destination.suffix.lower() == ".md":
                known = anchors.get(destination)
                if known is not None and fragment not in known:
                    # Generated heading slugs are permitted; explicit raw anchors are strict.
                    if "raw" in destination.parts or re.match(r"p\d{3}-b\d{3}|page-\d{3}|line-\d{4}", fragment):
                        errors.append(f"{path.relative_to(WIKI)}: missing anchor {raw_target}")
    manifest = load_json(MANIFEST, {})
    for relative, info in manifest.get("files", {}).items():
        source = ROOT / relative
        if not source.exists():
            errors.append(f"Manifest source missing: {relative}")
        elif sha256(source) != info["sha256"]:
            errors.append(f"Manifest hash stale: {relative}")
        raw = WIKI / info["raw"]
        if not raw.exists():
            errors.append(f"Raw output missing: {info['raw']}")
    if errors:
        print("VALIDATION FAILED", file=sys.stderr)
        for error in errors:
            print(f"- {error}", file=sys.stderr)
        raise SystemExit(1)
    print(f"Validation passed: {len(markdown_files)} Markdown files; {len(manifest.get('files', {}))} source hashes current.")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("command", choices=("build", "validate", "mark-reviewed"))
    parser.add_argument("ids", nargs="*")
    args = parser.parse_args()
    if args.command == "build":
        build()
    elif args.command == "validate":
        validate()
    else:
        mark_reviewed(args.ids)


if __name__ == "__main__":
    main()
