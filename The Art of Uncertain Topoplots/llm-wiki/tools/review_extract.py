#!/usr/bin/env python3
"""Print likely abstract/result/conclusion passages for human curation."""

from __future__ import annotations

import argparse
import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
RAW = ROOT / "raw"
ANCHOR_BLOCK = re.compile(
    r'<a id="(p\d{3}-b\d{3})"></a>\s*<!-- [^>]+ -->\s*(.*?)(?=\n<a id="|\Z)',
    re.S,
)
HEADINGS = re.compile(
    r"\b(abstract|conclusions?|discussion|results?|summary|key findings|implications|limitations)\b",
    re.I,
)


def compact(text: str, limit: int) -> str:
    text = re.sub(r"\s+", " ", text).strip()
    return text if len(text) <= limit else text[: limit - 1].rstrip() + "…"


def review(key: str, limit: int) -> None:
    path = RAW / f"{key}.md"
    blocks = ANCHOR_BLOCK.findall(path.read_text(encoding="utf-8"))
    print(f"===== {key} =====")
    selected: list[tuple[str, str]] = []
    for index, (anchor, block) in enumerate(blocks):
        head = block[:120]
        if HEADINGS.search(head):
            selected.append((anchor, block))
            if index + 1 < len(blocks):
                selected.append(blocks[index + 1])
    # Always provide the first substantive passages and final passage as context.
    contextual = [(a, b) for a, b in blocks if len(re.sub(r"\s+", "", b)) > 180]
    candidates = contextual[:3] + selected[:8] + contextual[-2:]
    seen: set[str] = set()
    for anchor, block in candidates:
        if anchor in seen:
            continue
        seen.add(anchor)
        print(f"[{anchor}] {compact(block, limit)}")


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("ids", nargs="*")
    parser.add_argument("--limit", type=int, default=1800)
    args = parser.parse_args()
    ids = args.ids or sorted(path.stem for path in RAW.glob("*.md") if path.stem != "README")
    for key in ids:
        review(key, args.limit)


if __name__ == "__main__":
    main()
