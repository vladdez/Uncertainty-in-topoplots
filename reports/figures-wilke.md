---
title: "Figures vs Wilke"
subtitle: "Review of every site and publication figure against Wilke, Fundamentals of Data Visualization (2019)"
---

::: {.callout-note}
## Scope and method (18 November 2026)

An independent, read-only review of the PNGs that the rendered pages reference, plus
the publication set in `figures/`. Each figure was checked against Wilke's principles
using the archived text (`llm-wiki/handbooks/wilke2019fundamentals-readable.md`);
chapter numbers refer to that book. Two headline findings (V3, V9) were re-checked by
hand. This page lists the open items; fixed ones move to
[Fixed figures](fixed-figures.md).
:::

No open items. The last one, V1 (one order for the seven visualizations), was fixed on
26 Nov 2026; all findings are now on [Fixed figures](fixed-figures.md).

## Done well

- Model estimates are dots with CIs on a restricted axis, not bars, and the CI type is
  always stated (ch. 6, ch. 16, ch. 17).
- The contrast-vs-Basic plots, with simultaneous CIs and a zero line, are close to
  Wilke Fig. 16-8 (ch. 16, ch. 23).
- Bar charts:
  - start at zero;
  - are horizontal, which suits the long labels;
  - are sorted by value with "Other" last.

  The participant multipanel uses a shared 0–100% scale (ch. 6, ch. 17, ch. 21).
- The section heading serves as the figure title on the Sample page (ch. 22).
- The map uses 6 bins and an equal-area projection (ch. 15).
- Time violins use a log scale, and the line is labelled as the geometric mean (ch. 3,
  ch. 8).
- Everything is generated in code, with a cache tied to the data (ch. 28).

## Priorities

1. One canonical order, one set of names, and the Basic accent everywhere (V1, V5, V6).
2. Re-export the publication figures at column size with balanced text, as vector files,
   without in-figure titles (V2, V7).
3. Remove or fix the hit/miss frames (V3).
4. Feedback figure: a fixed order across panels and no boxplots for tiny n (V4, V11).
5. Task 2 gradient sorted by mean, one score name and unit, and a time contrast figure
   (V8–V10).
