---
source_id: "wilke2019fundamentals"
chapter: 11
title: "Visualizing Nested Proportions"
printed_pages: "105–116"
pdf_pages: "122–133"
---

# Chapter 11: Visualizing Nested Proportions

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p122-b001)

**Scope:** Explains valid displays of overlapping or hierarchically nested categories and the limitations of area comparison.

**Search terms:** `nested proportions`, `mosaic`, `treemap`, `nested pie`, `parallel sets`

## Section map

- **Nested Proportions Gone Wrong** — printed p. 105; [raw page](../../raw/wilke2019fundamentals.md#p122-b003)
- **Mosaic Plots and Treemaps** — printed p. 107; [raw page](../../raw/wilke2019fundamentals.md#p124-b002)
- **Nested Pies** — printed p. 111; [raw page](../../raw/wilke2019fundamentals.md#p128-b001)
- **Parallel Sets** — printed p. 113; [raw page](../../raw/wilke2019fundamentals.md#page-130)

## Actionable principles

<a id="principle-11-show-overlap-explicitly"></a>

### Represent overlapping categories explicitly

**Problem addressed:** Combining overlapping percentages as if they were disjoint can exceed 100% or imply false exclusivity.

**Recommended solution:** Use a mosaic, treemap, parallel sets, or another structure that shows intersections or hierarchy.

**Why it works:** The geometry makes each observation's joint membership visible instead of double-counting it or hiding overlap.

**Applies when:** Two or more categorical variables describing the same observations.

**Exceptions and qualifications:** A simple side-by-side bar chart is mathematically possible because bars need not sum to 100%, but Wilke notes it can still falsely suggest separate categories.

**Book example:** Figures 11-1 and 11-2 fail to show the overlap of bridge material and era; Figure 11-3 makes combinations explicit.

**Search terms:** `overlap`, `double counting`, `mosaic plot`, `nested categories`

**Evidence:** passages [p122-b003](../../raw/wilke2019fundamentals.md#p122-b003), [p123-b003](../../raw/wilke2019fundamentals.md#p123-b003), [p124-b002](../../raw/wilke2019fundamentals.md#p124-b002); figures [Figure 11-1](../../raw/wilke2019fundamentals.md#p123-b002), [Figure 11-3](../../raw/wilke2019fundamentals.md#p125-b001).

<a id="principle-11-mosaic-versus-treemap"></a>

### Match mosaic or treemap to the category structure

**Problem addressed:** The wrong area layout can imply cross-classification where only hierarchy exists, or hide the comparison of interest.

**Recommended solution:** Use mosaics for combinations of orthogonal categorical variables; use treemaps for recursively nested, group-specific subdivisions.

**Why it works:** Mosaics make conditional proportions along shared variables visible, while treemaps accommodate branches whose child categories differ.

**Applies when:** Nested part-to-whole data.

**Exceptions and qualifications:** Both rely on area and nonaligned rectangles, so exact comparisons remain difficult.

**Book example:** The bridge mosaic emphasizes era-by-material combinations; the US-state treemap nests different states inside four regions.

**Search terms:** `mosaic`, `treemap`, `hierarchy`, `cross-classification`

**Evidence:** passages [p125-b002](../../raw/wilke2019fundamentals.md#p125-b002), [p126-b002](../../raw/wilke2019fundamentals.md#p126-b002); figures [Figure 11-3](../../raw/wilke2019fundamentals.md#p125-b001), [Figure 11-5](../../raw/wilke2019fundamentals.md#p127-b001).

<a id="principle-11-label-area-values"></a>

### Add counts or percentages when area comparison is difficult

**Problem addressed:** Differently shaped, nonaligned rectangles make equal or similar quantities hard to judge.

**Recommended solution:** Whenever possible, print the relevant counts or percentages on mosaic and treemap regions.

**Why it works:** Labels let readers verify an impression that the area encoding alone may not support accurately.

**Applies when:** Mosaics, treemaps, nested pies, and related area displays.

**Exceptions and qualifications:** Labels may not fit in very small regions; that limitation can itself motivate another chart form.

**Book example:** Figure 11-3 contains equal counts represented by different rectangle shapes, motivating explicit numeric labels.

**Search terms:** `area judgment`, `direct values`, `mosaic labels`, `treemap labels`

**Evidence:** passages [p127-b002](../../raw/wilke2019fundamentals.md#p127-b002); figures [Figure 11-3](../../raw/wilke2019fundamentals.md#p125-b001).


## Source boundary

Printed pages 105–116; PDF pages 122–133. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
