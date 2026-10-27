---
source_id: "wilke2019fundamentals"
chapter: 9
title: "Visualizing Many Distributions at Once"
printed_pages: "81–92"
pdf_pages: "98–109"
---

# Chapter 9: Visualizing Many Distributions at Once

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p098-b001)

**Scope:** Compares boxplots, violins, jittered points, sina plots, and ridgelines for many grouped distributions.

**Search terms:** `boxplot`, `violin plot`, `strip chart`, `jitter`, `ridgeline`

## Section map

- **Visualizing Distributions Along the Vertical Axis** — printed p. 81; [raw page](../../raw/wilke2019fundamentals.md#page-098)
- **Visualizing Distributions Along the Horizontal Axis** — printed p. 88; [raw page](../../raw/wilke2019fundamentals.md#page-105)

## Actionable principles

<a id="principle-09-dont-use-error-bars-for-spread"></a>

### Do not use uncertainty-style error bars as an unexplained distribution summary

**Problem addressed:** A point plus symmetric bars loses distribution shape and can be confused among standard deviation, standard error, or confidence interval.

**Recommended solution:** Use a distribution display such as boxplots, violins, or points, and explicitly state any summary quantity shown.

**Why it works:** Error bars are conventionally read as estimate uncertainty, while spread, skew, and multimodality require different information.

**Applies when:** Grouped raw observations and population variability.

**Exceptions and qualifications:** Error bars remain useful for estimate uncertainty when clearly defined; that is the task addressed in Chapter 16.

**Book example:** Figure 9-1 is labeled bad; Figure 9-3 reveals December skew with boxplots.

**Search terms:** `error bars`, `standard deviation`, `standard error`, `boxplot`

**Evidence:** passages [p099-b001](../../raw/wilke2019fundamentals.md#p099-b001), [p100-b003](../../raw/wilke2019fundamentals.md#p100-b003); figures [Figure 9-1](../../raw/wilke2019fundamentals.md#p099-b002), [Figure 9-3](../../raw/wilke2019fundamentals.md#p101-b001).

<a id="principle-09-show-points-when-density-may-mislead"></a>

### Show observations when smoothed group shapes may overstate evidence

**Problem addressed:** Violin plots can suggest density or support where the sample is sparse or absent.

**Recommended solution:** Use strip charts with controlled jitter, or combine points with a density shape such as a sina plot.

**Why it works:** Individual marks expose sample size and observed locations; jitter separates overlaps without claiming a continuous distribution.

**Applies when:** Small-to-moderate grouped samples and potentially multimodal data.

**Exceptions and qualifications:** Too many unadjusted points will overplot; excessive jitter distorts values.

**Book example:** Figures 9-5 to 9-8 progress from violins to overplotted points, jittered points, and a combined sina display.

**Search terms:** `violin plot`, `raw points`, `strip chart`, `jitter`, `sina plot`

**Evidence:** passages [p102-b003](../../raw/wilke2019fundamentals.md#p102-b003); figures [Figure 9-6](../../raw/wilke2019fundamentals.md#p103-b002), [Figure 9-7](../../raw/wilke2019fundamentals.md#p104-b001), [Figure 9-8](../../raw/wilke2019fundamentals.md#p105-b001).

<a id="principle-09-ridgelines-for-many-ordered-groups"></a>

### Use ridgelines for many ordered distributions

**Problem addressed:** Many full-size panels or overlapping histograms become space-hungry or visually tangled.

**Recommended solution:** Stagger density curves along an ordered grouping variable, especially time.

**Why it works:** The repeated horizontal shapes support comparison while preserving the ordering and making gradual change visible.

**Applies when:** Large numbers of distributions, temporal evolution, or two trends over time.

**Exceptions and qualifications:** Overlapping histogram ridgelines align bars confusingly; density-estimation caveats still apply.

**Book example:** Figures 9-9 and 9-12 show monthly temperature and party-vote distributions; Figure 9-10 shows a confusing histogram variant.

**Search terms:** `ridgeline`, `many distributions`, `time`, `density`

**Evidence:** passages [p106-b002](../../raw/wilke2019fundamentals.md#p106-b002), [p108-b002](../../raw/wilke2019fundamentals.md#p108-b002); figures [Figure 9-9](../../raw/wilke2019fundamentals.md#p106-b001), [Figure 9-10](../../raw/wilke2019fundamentals.md#p107-b001).


## Source boundary

Printed pages 81–92; PDF pages 98–109. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
