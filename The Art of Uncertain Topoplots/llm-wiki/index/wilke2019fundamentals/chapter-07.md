---
source_id: "wilke2019fundamentals"
chapter: 7
title: "Visualizing Distributions: Histograms and Density Plots"
printed_pages: "59–70"
pdf_pages: "76–87"
---

# Chapter 7: Visualizing Distributions: Histograms and Density Plots

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p076-b001)

**Scope:** Explains parameter sensitivity, boundary artifacts, and tradeoffs when comparing one or several distributions.

**Search terms:** `histogram`, `bin width`, `density`, `bandwidth`, `distribution comparison`

## Section map

- **Visualizing a Single Distribution** — printed p. 59; [raw page](../../raw/wilke2019fundamentals.md#p076-b003)
- **Visualizing Multiple Distributions at the Same Time** — printed p. 64; [raw page](../../raw/wilke2019fundamentals.md#p081-b004)

## Actionable principles

<a id="principle-07-test-histogram-bin-widths"></a>

### Always inspect multiple histogram bin widths

**Problem addressed:** A default bin width can invent visual noise or erase real distribution features.

**Recommended solution:** Try several plausible bin widths and check whether the substantive pattern is stable.

**Why it works:** Narrow bins produce a busy, peaky histogram; wide bins smooth away local structure.

**Applies when:** Every histogram, especially with modest sample sizes or suspected multimodality.

**Exceptions and qualifications:** There is no single universally correct width; the goal is robustness, not choosing the prettiest result.

**Book example:** Figure 7-2 shows Titanic ages with 1-, 3-, 5-, and 15-year bins; the extremes obscure the main structure.

**Search terms:** `histogram`, `bin width`, `sensitivity`, `distribution`

**Evidence:** passages [p077-b003](../../raw/wilke2019fundamentals.md#p077-b003), [p078-b002](../../raw/wilke2019fundamentals.md#p078-b002); figures [Figure 7-2](../../raw/wilke2019fundamentals.md#p078-b001).

<a id="principle-07-check-density-assumptions"></a>

### Treat density curves as estimates, not raw data

**Problem addressed:** Kernel and bandwidth choices can create peaks, steps, or tails unsupported by the observations.

**Recommended solution:** Vary bandwidth/kernel, prefer density estimates with adequate data, and clip or otherwise prevent impossible support.

**Why it works:** The smoothing model shapes the curve; small samples are sensitive, and kernels can extend beyond feasible values.

**Applies when:** Kernel-density and violin plots.

**Exceptions and qualifications:** With large datasets the kernel choice matters less, but boundary validity still needs checking.

**Book example:** Figures 7-4 and 7-5 show bandwidth/kernel sensitivity and an impossible negative-age tail.

**Search terms:** `density plot`, `bandwidth`, `kernel`, `boundary`, `small sample`

**Evidence:** passages [p079-b002](../../raw/wilke2019fundamentals.md#p079-b002), [p080-b002](../../raw/wilke2019fundamentals.md#p080-b002), [p081-b002](../../raw/wilke2019fundamentals.md#p081-b002); figures [Figure 7-4](../../raw/wilke2019fundamentals.md#p080-b001), [Figure 7-5](../../raw/wilke2019fundamentals.md#p081-b001).

<a id="principle-07-avoid-stacked-overlapping-histograms"></a>

### Avoid stacked or overlapping histograms for group comparison

**Problem addressed:** Changing baselines and blended colors make counts and group membership ambiguous.

**Recommended solution:** Use separate panels, scaled density curves when suitable, parts-of-total views, or an age-pyramid arrangement for exactly two groups.

**Why it works:** A shared baseline or continuous outline makes distributions easier to separate and compare.

**Applies when:** Two or more group distributions.

**Exceptions and qualifications:** An age pyramid is specifically limited to two distributions; density overlays work only when distributions remain sufficiently distinct.

**Book example:** Figures 7-6 and 7-7 are labeled bad; Figures 7-9 and 7-10 provide alternatives.

**Search terms:** `stacked histogram`, `overlapping histogram`, `age pyramid`, `multiple distributions`

**Evidence:** passages [p082-b003](../../raw/wilke2019fundamentals.md#p082-b003), [p083-b002](../../raw/wilke2019fundamentals.md#p083-b002), [p085-b003](../../raw/wilke2019fundamentals.md#p085-b003); figures [Figure 7-6](../../raw/wilke2019fundamentals.md#p082-b002), [Figure 7-10](../../raw/wilke2019fundamentals.md#p085-b002).


## Source boundary

Printed pages 59–70; PDF pages 76–87. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
