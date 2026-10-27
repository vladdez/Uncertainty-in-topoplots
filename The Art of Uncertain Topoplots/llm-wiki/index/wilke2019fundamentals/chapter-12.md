---
source_id: "wilke2019fundamentals"
chapter: 12
title: "Visualizing Associations Among Two or More Quantitative Variables"
printed_pages: "117–130"
pdf_pages: "134–147"
---

# Chapter 12: Visualizing Associations Among Two or More Quantitative Variables

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p134-b001)

**Scope:** Moves from scatterplots to multivariate encodings, correlograms, dimension reduction, and paired-data displays.

**Search terms:** `scatterplot`, `bubble chart`, `correlogram`, `PCA`, `paired data`, `slopegraph`

## Section map

- **Scatterplots** — printed p. 117; [raw page](../../raw/wilke2019fundamentals.md#p134-b003)
- **Correlograms** — printed p. 121; [raw page](../../raw/wilke2019fundamentals.md#p138-b002)
- **Dimension Reduction** — printed p. 124; [raw page](../../raw/wilke2019fundamentals.md#p141-b003)
- **Paired Data** — printed p. 127; [raw page](../../raw/wilke2019fundamentals.md#page-144)

## Actionable principles

<a id="principle-12-position-before-bubble-size"></a>

### Prefer position over bubble size for quantitative comparison

**Problem addressed:** Small differences in bubble area are hard to see and associations involving the size-mapped variable become obscure.

**Recommended solution:** Use pairwise scatterplots or another position encoding when relationships among quantitative variables are the goal.

**Why it works:** Wilke states that viewers judge position more accurately than symbol size.

**Applies when:** Three or a few quantitative variables.

**Exceptions and qualifications:** Bubble charts can still give a compact overview when exact associations with the size variable are not central.

**Book example:** Figures 12-3 and 12-4 show the same blue-jay variables; the scatterplot matrix reveals relationships hidden by bubble size.

**Search terms:** `bubble chart`, `position`, `symbol size`, `scatterplot matrix`

**Evidence:** passages [p137-b001](../../raw/wilke2019fundamentals.md#p137-b001); figures [Figure 12-3](../../raw/wilke2019fundamentals.md#p136-b002), [Figure 12-4](../../raw/wilke2019fundamentals.md#p138-b001).

<a id="principle-12-show-raw-data-near-abstract-summary"></a>

### Keep raw data available when showing derived association summaries

**Problem addressed:** Correlograms reveal pattern but can hide distributions, outliers, and nonlinear structure.

**Recommended solution:** Prefer raw-data views where feasible or use dimension reduction as a middle ground between raw observations and abstract coefficients.

**Why it works:** A coefficient matrix can support incorrect conclusions because the underlying points are invisible.

**Applies when:** Correlation matrices and high-dimensional quantitative data.

**Exceptions and qualifications:** For more than three or four variables, all-pairs scatterplots become unwieldy, so a correlogram can be useful as a compact overview.

**Book example:** Figures 12-6 and 12-7 summarize glass correlations; PCA views then expose samples in a reduced position space.

**Search terms:** `correlogram`, `raw data`, `derived quantity`, `dimension reduction`

**Evidence:** passages [p138-b002](../../raw/wilke2019fundamentals.md#p138-b002), [p141-b003](../../raw/wilke2019fundamentals.md#p141-b003), [p142-b001](../../raw/wilke2019fundamentals.md#p142-b001); figures [Figure 12-7](../../raw/wilke2019fundamentals.md#p141-b002), [Figure 12-10](../../raw/wilke2019fundamentals.md#p144-b002).

<a id="principle-12-slopegraph-for-small-paired-sets"></a>

### Use slopegraphs for a few identified paired cases

**Problem addressed:** A scatterplot can hide the identity and direction of change for a small set of paired observations.

**Recommended solution:** Place measurements in columns and connect each case, so line slope shows direction and magnitude.

**Why it works:** The line creates an explicit within-case comparison and can extend beyond two measurement times.

**Applies when:** Small sets of named cases measured at two or more ordered occasions.

**Exceptions and qualifications:** Scatterplots work better for many points or when the systematic deviation from an equality line is the main message.

**Book example:** Figures 12-11 and 12-12 contrast 166-country paired scatter with a labeled 10-country slopegraph.

**Search terms:** `slopegraph`, `paired data`, `change`, `case identity`

**Evidence:** passages [p146-b001](../../raw/wilke2019fundamentals.md#p146-b001), [p146-b003](../../raw/wilke2019fundamentals.md#p146-b003); figures [Figure 12-12](../../raw/wilke2019fundamentals.md#p146-b002), [Figure 12-13](../../raw/wilke2019fundamentals.md#p147-b001).


## Source boundary

Printed pages 117–130; PDF pages 134–147. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
