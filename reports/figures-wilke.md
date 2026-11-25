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

| | Issue | Figures |
|--|------------------|----|
| [High]{.badge .sev-high} | [V1. The seven visualizations appear in a different order in every figure](#v1) | All pages |

: {.findings-table}

## V1. The seven visualizations appear in a different order in every figure {#v1}

::: {.finding-meta .sev-high}
**Severity:** High (for the paper) · **Principle:** ch. 21 "Use one visual language across compound panels"; ch. 29 "Keep semantics consistent"; ch. 6
:::

**Problem.**

- **Sorted by value:** Task 1 accuracy, Task 2 score and the time estimates.
- **Fixed order with Basic first:** the Likert estimate and contrast figures.
- **Alphabetical with Basic last:** the hit/miss bars, `task2-peak-ppc-figure`, `task2-peak-contrast-figure` and the time violins.
- **Re-sorted inside every panel:** the feedback figures.

Readers have to find each condition again in every figure.

**Fix.** Choose one canonical order and use it everywhere: Basic first, then the six
alternatives grouped by design family. Where sorting by value tells the story (ch. 6
allows "another story-relevant criterion"), keep Basic pinned and highlighted.

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
