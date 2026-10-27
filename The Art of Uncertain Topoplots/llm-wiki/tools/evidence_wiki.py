#!/usr/bin/env python3
"""Render and validate the claim-level evidence layer.

Curated content lives in metadata/evidence.json and metadata/syntheses.json.
This module only validates references and generates navigable Markdown.
"""

from __future__ import annotations

import json
import os
import re
from pathlib import Path
from urllib.parse import quote


ANCHOR_RE = re.compile(r'<a\s+id="([^"]+)"')
PASSAGE_RE = re.compile(r"^p(\d{3})-b\d{3}$")


def load_json(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def relative_link(from_path: Path, to_path: Path, anchor: str | None = None) -> str:
    rel = os.path.relpath(to_path, from_path.parent).replace(os.sep, "/")
    link = quote(rel, safe="/.-_")
    return f"{link}#{anchor}" if anchor else link


def claim_anchor(claim_id: str) -> str:
    return f"claim-{claim_id}"


def passage_block(text: str, anchor: str) -> str:
    marker = f'<a id="{anchor}"></a>'
    start = text.find(marker)
    if start < 0:
        return ""
    next_anchor = text.find('<a id="', start + len(marker))
    return text[start:next_anchor if next_anchor >= 0 else None]


def validate_metadata(wiki: Path, paper_ids: set[str]) -> list[str]:
    evidence_path = wiki / "metadata" / "evidence.json"
    syntheses_path = wiki / "metadata" / "syntheses.json"
    errors: list[str] = []
    try:
        evidence = load_json(evidence_path)
        syntheses = load_json(syntheses_path)
    except (OSError, json.JSONDecodeError) as exc:
        return [f"Evidence metadata could not be loaded: {exc}"]

    allowed = set(evidence.get("claim_types", []))
    records = evidence.get("records", [])
    ids = [item.get("id") for item in records]
    if len(ids) != len(set(ids)):
        errors.append("Duplicate paper IDs in evidence.json")
    if set(ids) != paper_ids:
        errors.append(
            f"Evidence/paper ID mismatch. Missing: {sorted(paper_ids - set(ids))}; "
            f"extra: {sorted(set(ids) - paper_ids)}"
        )

    claim_map: dict[str, tuple[str, dict]] = {}
    raw_cache: dict[str, tuple[str, set[str]]] = {}
    for record in records:
        key = record.get("id", "<missing>")
        raw_path = wiki / "raw" / f"{key}.md"
        if raw_path.exists():
            raw_text = raw_path.read_text(encoding="utf-8")
            raw_cache[key] = (raw_text, set(ANCHOR_RE.findall(raw_text)))
        else:
            errors.append(f"{key}: raw extraction missing")
            raw_cache[key] = ("", set())

        for field in ("research_questions", "contributions", "conclusions", "limitations"):
            if not record.get(field):
                errors.append(f"{key}: missing non-empty {field}")
        methods = record.get("methods", {})
        for field in ("design", "sample", "conditions", "measurements", "analysis", "refs"):
            if not methods.get(field):
                errors.append(f"{key}: methods.{field} missing")
        if not record.get("claims"):
            errors.append(f"{key}: no claims")

        refs: list[dict | str] = []
        for field in ("research_questions", "contributions", "conclusions", "limitations"):
            for item in record.get(field, []):
                refs.extend(item.get("refs", []))
        refs.extend(methods.get("refs", []))
        for claim in record.get("claims", []):
            claim_id = claim.get("id")
            if not claim_id:
                errors.append(f"{key}: claim without id")
                continue
            if claim_id in claim_map:
                errors.append(f"Duplicate claim ID: {claim_id}")
            claim_map[claim_id] = (key, claim)
            if claim.get("type") not in allowed:
                errors.append(f"{key}/{claim_id}: invalid claim type {claim.get('type')}")
            if not claim.get("refs"):
                errors.append(f"{key}/{claim_id}: claim has no evidence refs")
            refs.extend(claim.get("refs", []))

        raw_text, anchors = raw_cache[key]
        for ref in refs:
            normalized = {"anchor": ref, "kind": "passage"} if isinstance(ref, str) else ref
            anchor = normalized.get("anchor")
            if anchor not in anchors:
                errors.append(f"{key}: missing raw anchor {anchor}")
                continue
            kind = normalized.get("kind", "passage")
            label = normalized.get("label")
            if kind in {"figure", "table"}:
                if not label:
                    errors.append(f"{key}/{anchor}: {kind} reference lacks label")
                elif label.casefold() not in passage_block(raw_text, anchor).casefold():
                    errors.append(f"{key}/{anchor}: label {label!r} not found in cited block")

    slugs: set[str] = set()
    for topic in syntheses.get("topics", []):
        slug = topic.get("slug")
        if not slug or slug in slugs:
            errors.append(f"Invalid or duplicate synthesis slug: {slug}")
        slugs.add(slug)
        if not topic.get("research_question") or not topic.get("gaps"):
            errors.append(f"{slug}: research question or gaps missing")
        for row in topic.get("rows", []):
            paper = row.get("paper")
            claim_id = row.get("claim")
            if paper not in paper_ids:
                errors.append(f"{slug}: unknown paper {paper}")
            if claim_id not in claim_map:
                errors.append(f"{slug}: unknown claim {claim_id}")
            elif claim_map[claim_id][0] != paper:
                errors.append(f"{slug}: claim {claim_id} belongs to {claim_map[claim_id][0]}, not {paper}")
    return errors


def page_label(anchor: str) -> str:
    match = PASSAGE_RE.match(anchor)
    return f"PDF p. {int(match.group(1))}" if match else anchor


def render_refs(here: Path, raw: Path, refs: list[dict | str]) -> str:
    links = []
    for ref in refs:
        normalized = {"anchor": ref, "kind": "passage"} if isinstance(ref, str) else ref
        anchor = normalized["anchor"]
        locator = normalized.get("label") or page_label(anchor)
        kind = normalized.get("kind", "passage")
        label = f"{locator}, {page_label(anchor)}" if normalized.get("label") else page_label(anchor)
        links.append(f"[{label}]({relative_link(here, raw, anchor)}) ({kind})")
    return "; ".join(links)


def render_items(here: Path, raw: Path, items: list[dict], include_source: bool = False) -> str:
    lines = []
    for item in items:
        source = f" **Provenance:** `{item['source']}`." if include_source and item.get("source") else ""
        lines.append(f"- {item['text']}{source} **Evidence:** {render_refs(here, raw, item.get('refs', []))}")
    return "\n".join(lines)


def render_record(wiki: Path, record: dict, paper: dict) -> str:
    key = record["id"]
    here = wiki / "evidence" / f"{key}.md"
    raw = wiki / "raw" / f"{key}.md"
    summary = wiki / "summaries" / f"{key}.md"
    index = wiki / "index" / f"{key}.md"
    methods = record["methods"]
    claims = []
    for claim in record["claims"]:
        claims.append(f"""<a id=\"{claim_anchor(claim['id'])}\"></a>

### {claim['id']}

**Type:** `{claim['type']}`  
**Claim:** {claim['text']}  
**Quantitative detail:** {claim['quantitative']}  
**Evidence:** {render_refs(here, raw, claim['refs'])}
""")
    return f"""---
id: {json.dumps(key, ensure_ascii=False)}
title: {json.dumps(paper['title'], ensure_ascii=False)}
source_type: {json.dumps(record['source_type'], ensure_ascii=False)}
topics: {json.dumps(record.get('topics', []), ensure_ascii=False)}
---

# Research evidence: {paper['title']}

[Concise summary]({relative_link(here, summary)}) · [Paper index]({relative_link(here, index)}) · [Full extracted text]({relative_link(here, raw)})

> This is a navigation and synthesis record, not primary evidence. Verify literature-review statements in the linked raw passage and inspect the archived PDF for figures, tables, equations, or extraction ambiguity.

**Source type:** {record['source_type']}  
**Evidence topics:** {', '.join(f'`{topic}`' for topic in record.get('topics', []))}

## Research question

{render_items(here, raw, record['research_questions'])}

## Contributions

{render_items(here, raw, record['contributions'])}

## Methods

| Component | Extracted detail |
| --- | --- |
| Design | {methods['design']} |
| Sample | {methods['sample']} |
| Conditions | {methods['conditions']} |
| Measurements | {methods['measurements']} |
| Analysis | {methods['analysis']} |
| Evidence | {render_refs(here, raw, methods['refs'])} |

## Claim-level evidence

{''.join(claims)}

## Conclusions

{render_items(here, raw, record['conclusions'])}

## Limitations

{render_items(here, raw, record['limitations'], include_source=True)}

## Citation discipline

- Keep empirical findings, author interpretations, methodological claims, theoretical arguments, and documentation distinct.
- Do not convert `wiki_scope_note` or `source_quality_note` into an author-stated limitation.
- If a needed number is absent or extraction is ambiguous, report it as not available and inspect the archived PDF rather than infer it.
"""


def render_claim_catalog(wiki: Path, records: list[dict], papers: dict[str, dict]) -> str:
    here = wiki / "catalog" / "claims.md"
    lines = [
        "# Claim catalog",
        "",
        "Search this compact catalog by topic, claim type, paper, or wording. Open the evidence record next, then verify the linked raw passage.",
        "",
        "| Claim | Type | Paper | Topics |",
        "| --- | --- | --- | --- |",
    ]
    for record in records:
        evidence = wiki / "evidence" / f"{record['id']}.md"
        for claim in record["claims"]:
            link = relative_link(here, evidence, claim_anchor(claim["id"]))
            paper = papers[record["id"]]
            lines.append(
                f"| [{claim['text']}]({link}) | `{claim['type']}` | {paper['title']} ({paper.get('year', '')}) | "
                f"{', '.join(record.get('topics', []))} |"
            )
    return "\n".join(lines) + "\n"


def render_question_catalog(wiki: Path, records: list[dict], papers: dict[str, dict]) -> str:
    here = wiki / "catalog" / "research-questions.md"
    lines = [
        "# Research-question catalog",
        "",
        "Use this catalog when the review starts from a question rather than a known paper.",
        "",
        "| Paper | Source type | Research question |",
        "| --- | --- | --- |",
    ]
    for record in records:
        link = relative_link(here, wiki / "evidence" / f"{record['id']}.md")
        questions = "<br>".join(item["text"] for item in record["research_questions"])
        lines.append(f"| [{papers[record['id']]['title']}]({link}) | {record['source_type']} | {questions} |")
    return "\n".join(lines) + "\n"


def render_topic(wiki: Path, topic: dict, claims: dict[str, tuple[dict, dict]], papers: dict[str, dict]) -> str:
    here = wiki / "topics" / f"{topic['slug']}.md"
    matrix = wiki / "matrices" / f"{topic['slug']}.md"
    rows = []
    for row in topic["rows"]:
        record, claim = claims[row["claim"]]
        evidence = wiki / "evidence" / f"{row['paper']}.md"
        rows.append(
            f"- **`{row['relation']}` — [{papers[row['paper']]['title']}]({relative_link(here, evidence, claim_anchor(claim['id']))}):** "
            f"{row['note']}"
        )
    gaps = "\n".join(f"- {gap}" for gap in topic["gaps"])
    return f"""# {topic['title']}

[Evidence matrix]({relative_link(here, matrix)}) · [Claim catalog]({relative_link(here, wiki / 'catalog' / 'claims.md')})

## Research question

{topic['research_question']}

## Scope and synthesis boundary

{topic['scope_note']}

## Evidence map

{chr(10).join(rows)}

## Research gaps

{gaps}

## How to use this page

Open the matrix for side-by-side methods and quantitative details. Then open the claim record and verify the linked raw passage before citing. Relations such as `mixed`, `qualifies`, or `challenges_integration` are synthesis labels, not labels used by the original authors.
"""


def render_matrix(wiki: Path, topic: dict, claims: dict[str, tuple[dict, dict]], papers: dict[str, dict]) -> str:
    here = wiki / "matrices" / f"{topic['slug']}.md"
    topic_page = wiki / "topics" / f"{topic['slug']}.md"
    lines = [
        f"# Evidence matrix: {topic['title']}",
        "",
        f"[Topic synthesis]({relative_link(here, topic_page)})",
        "",
        f"**Research question:** {topic['research_question']}",
        "",
        "| Relation | Paper and design | Sample / corpus | Claim | Quantitative detail | Evidence | Limitation most relevant here |",
        "| --- | --- | --- | --- | --- | --- | --- |",
    ]
    for row in topic["rows"]:
        record, claim = claims[row["claim"]]
        paper = papers[row["paper"]]
        evidence_page = wiki / "evidence" / f"{row['paper']}.md"
        raw = wiki / "raw" / f"{row['paper']}.md"
        evidence_links = render_refs(here, raw, claim["refs"])
        limitation = record["limitations"][0]["text"]
        lines.append(
            f"| `{row['relation']}` | [{paper['title']}]({relative_link(here, evidence_page, claim_anchor(claim['id']))})<br>{record['source_type']} | "
            f"{record['methods']['sample']} | {claim['text']} | {claim['quantitative']} | {evidence_links} | {limitation} |"
        )
    lines.extend(["", "## Explicit gaps", ""] + [f"- {gap}" for gap in topic["gaps"]])
    return "\n".join(lines) + "\n"


def build_evidence(wiki: Path, paper_records: list[dict]) -> None:
    evidence = load_json(wiki / "metadata" / "evidence.json")
    syntheses = load_json(wiki / "metadata" / "syntheses.json")
    papers = {record["id"]: record for record in paper_records}
    errors = validate_metadata(wiki, set(papers))
    if errors:
        raise RuntimeError("Invalid evidence metadata: " + "; ".join(errors))

    for directory in (wiki / "evidence", wiki / "topics", wiki / "matrices"):
        directory.mkdir(parents=True, exist_ok=True)
    records = evidence["records"]
    for record in records:
        target = wiki / "evidence" / f"{record['id']}.md"
        target.write_text(render_record(wiki, record, papers[record["id"]]), encoding="utf-8")

    (wiki / "catalog" / "claims.md").write_text(render_claim_catalog(wiki, records, papers), encoding="utf-8")
    (wiki / "catalog" / "research-questions.md").write_text(render_question_catalog(wiki, records, papers), encoding="utf-8")

    claim_map = {
        claim["id"]: (record, claim)
        for record in records
        for claim in record["claims"]
    }
    for topic in syntheses["topics"]:
        (wiki / "topics" / f"{topic['slug']}.md").write_text(
            render_topic(wiki, topic, claim_map, papers), encoding="utf-8"
        )
        (wiki / "matrices" / f"{topic['slug']}.md").write_text(
            render_matrix(wiki, topic, claim_map, papers), encoding="utf-8"
        )


def evidence_link_for_index(wiki: Path, paper_id: str, here: Path) -> str:
    return relative_link(here, wiki / "evidence" / f"{paper_id}.md")

