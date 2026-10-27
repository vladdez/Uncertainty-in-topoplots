#!/usr/bin/env python3
"""Print compact, anchor-preserving views of Wilke chapters for curation.

This is a read-only review helper. It deliberately emits selected passages rather
than copying the full book into an agent context.
"""

from __future__ import annotations

import argparse
import re
from pathlib import Path


WIKI = Path(__file__).resolve().parents[1]
RAW = WIKI / "raw" / "wilke2019fundamentals.md"

# Printed-page starts from the book's table of contents. The archived PDF has 17
# front-matter pages before printed page 1.
CHAPTERS = {
    1: (1, "Introduction"),
    2: (7, "Visualizing Data: Mapping Data onto Aesthetics"),
    3: (13, "Coordinate Systems and Axes"),
    4: (27, "Color Scales"),
    5: (37, "Directory of Visualizations"),
    6: (45, "Visualizing Amounts"),
    7: (59, "Visualizing Distributions: Histograms and Density Plots"),
    8: (71, "Visualizing Distributions: Empirical Cumulative Distribution Functions and Q-Q Plots"),
    9: (81, "Visualizing Many Distributions at Once"),
    10: (93, "Visualizing Proportions"),
    11: (105, "Visualizing Nested Proportions"),
    12: (117, "Visualizing Associations Among Two or More Quantitative Variables"),
    13: (131, "Visualizing Time Series and Other Functions of an Independent Variable"),
    14: (145, "Visualizing Trends"),
    15: (161, "Visualizing Geospatial Data"),
    16: (181, "Visualizing Uncertainty"),
    17: (207, "The Principle of Proportional Ink"),
    18: (219, "Handling Overlapping Points"),
    19: (233, "Common Pitfalls of Color Use"),
    20: (243, "Redundant Coding"),
    21: (255, "Multipanel Figures"),
    22: (267, "Titles, Captions, and Tables"),
    23: (277, "Balance the Data and the Context"),
    24: (291, "Use Larger Axis Labels"),
    25: (297, "Avoid Line Drawings"),
    26: (305, "Don't Go 3D"),
    27: (319, "Understanding the Most Commonly Used Image File Formats"),
    28: (325, "Choosing the Right Visualization Software"),
    29: (333, "Telling a Story and Making a Point"),
}

DEFAULT_TERMS = re.compile(
    r"\b(should|recommend|prefer|avoid|important|appropriate|inappropriate|"
    r"useful|problem|pitfall|better|worse|must|rule|principle|advantage|"
    r"disadvantage|however|by contrast|works? well)\b",
    re.IGNORECASE,
)


def blocks() -> list[tuple[int, str, str]]:
    text = RAW.read_text(encoding="utf-8")
    matches = list(re.finditer(r'<a id="(p(\d{3})-b\d{3})"></a>\s*\n\s*<!--[^>]+-->\s*\n', text))
    result = []
    for index, match in enumerate(matches):
        end = matches[index + 1].start() if index + 1 < len(matches) else len(text)
        body = text[match.end():end]
        body = re.split(r'\n<a id="page-\d{3}"></a>', body, maxsplit=1)[0].strip()
        result.append((int(match.group(2)), match.group(1), body))
    return result


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("chapters", nargs="+", type=int)
    parser.add_argument("--all", action="store_true", help="emit every passage")
    parser.add_argument("--figures", action="store_true", help="emit figure captions only")
    args = parser.parse_args()
    parsed = blocks()
    for chapter in args.chapters:
        printed_start, title = CHAPTERS[chapter]
        next_start = CHAPTERS.get(chapter + 1, (352, ""))[0]
        pdf_start, pdf_end = printed_start + 17, next_start + 16
        print(f"\n# Chapter {chapter}: {title} (PDF pages {pdf_start}-{pdf_end})")
        for page, anchor, body in parsed:
            if not pdf_start <= page <= pdf_end:
                continue
            is_figure = body.lstrip().startswith("Figure ")
            if args.figures and not is_figure:
                continue
            if not args.all and not args.figures and not (is_figure or DEFAULT_TERMS.search(body)):
                continue
            compact = re.sub(r"\s+", " ", body)
            print(f"\n[{anchor}] {compact}")


if __name__ == "__main__":
    main()
