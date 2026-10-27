#!/usr/bin/env python3
"""Print compact, anchor-preserving evidence candidates for paper curation."""

from __future__ import annotations

import argparse
import re
from pathlib import Path


WIKI = Path(__file__).resolve().parents[1]
RAW = WIKI / "raw"
BLOCK_RE = re.compile(
    r'<a id="(p(\d{3})-b\d{3})"></a>\s*<!-- [^>]+ -->\s*(.*?)(?=\n<a id="|\Z)',
    re.S,
)
METHOD = re.compile(
    r"\b(methods?|participants?|subjects?|sample|experiment|survey|study design|"
    r"procedure|condition|task|dataset|interview|screen(?:ed|ing)|included)\b",
    re.I,
)
RESULT = re.compile(
    r"(?:\bresults?|findings?|accuracy|error|significant|outperform|correlat|effect|"
    r"reported|observed|found|showed|conclusion|discussion|limitation)|"
    r"(?:\b\d+(?:\.\d+)?\s*%)|(?:\bp\s*[<=>])|(?:\bn\s*=)",
    re.I,
)
SECTION = re.compile(
    r"^(?:\d+(?:\.\d+)*\.?\s+)?(?:abstract|introduction|background|methods?|materials?"
    r" and methods?|study|experiment|results?|discussion|conclusions?|limitations?|"
    r"future work|summary)\b",
    re.I,
)
CAPTION = re.compile(r"^(?:Figure|Fig\.|Table)\s+\w", re.I)


def compact(value: str, limit: int) -> str:
    value = re.sub(r"\s+", " ", value).strip()
    return value if len(value) <= limit else value[: limit - 1].rstrip() + "…"


def score(block: str) -> tuple[int, list[str]]:
    head = re.sub(r"\s+", " ", block[:180]).strip()
    tags: list[str] = []
    points = 0
    if SECTION.search(head):
        tags.append("section")
        points += 5
    if METHOD.search(block):
        tags.append("method")
        points += 2
    if RESULT.search(block):
        tags.append("result")
        points += 3
    if CAPTION.search(head):
        tags.append("caption")
        points += 1
    if re.search(r"\b(?:limitation|however|cannot|future work|caution)\b", block, re.I):
        tags.append("qualification")
        points += 2
    return points, tags


def inspect(paper_id: str, max_blocks: int, limit: int) -> None:
    path = RAW / f"{paper_id}.md"
    blocks = [(anchor, int(page), body) for anchor, page, body in BLOCK_RE.findall(path.read_text(encoding="utf-8"))]
    ranked = []
    for index, (anchor, page, body) in enumerate(blocks):
        points, tags = score(body)
        if points:
            ranked.append((points, index, anchor, page, tags, body))
    # Preserve document order after selecting the strongest candidates; always
    # include the first two substantive blocks and final substantive block.
    selected_indexes = {item[1] for item in sorted(ranked, reverse=True)[:max_blocks]}
    substantive = [index for index, (_, _, body) in enumerate(blocks) if len(re.sub(r"\s+", "", body)) > 120]
    selected_indexes.update(substantive[:2])
    selected_indexes.update(substantive[-1:])
    print(f"\n===== {paper_id} =====")
    for index in sorted(selected_indexes):
        anchor, page, body = blocks[index]
        _, tags = score(body)
        print(f"[{anchor} | PDF {page} | {','.join(tags) or 'context'}] {compact(body, limit)}")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("ids", nargs="*")
    parser.add_argument("--max-blocks", type=int, default=22)
    parser.add_argument("--limit", type=int, default=1400)
    args = parser.parse_args()
    ids = args.ids or sorted(path.stem for path in RAW.glob("*.md") if path.stem != "README")
    for paper_id in ids:
        inspect(paper_id, args.max_blocks, args.limit)


if __name__ == "__main__":
    main()
