---
source_id: "wilke2019fundamentals"
chapter: 8
title: "Visualizing Distributions: Empirical Cumulative Distribution Functions and Q-Q Plots"
printed_pages: "71–80"
pdf_pages: "88–97"
---

# Chapter 8: Visualizing Distributions: Empirical Cumulative Distribution Functions and Q-Q Plots

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p088-b001)

**Scope:** Introduces parameter-free distribution views, techniques for heavy tails, and distributional diagnostics.

**Search terms:** `ECDF`, `Q-Q plot`, `skew`, `power law`, `log transform`

## Section map

- **Empirical Cumulative Distribution Functions** — printed p. 71; [raw page](../../raw/wilke2019fundamentals.md#p088-b003)
- **Highly Skewed Distributions** — printed p. 74; [raw page](../../raw/wilke2019fundamentals.md#p091-b002)
- **Quantile-Quantile Plots** — printed p. 78; [raw page](../../raw/wilke2019fundamentals.md#p095-b001)

## Actionable principles

<a id="principle-08-ecdf-for-parameter-free-view"></a>

### Use ECDFs when arbitrary smoothing choices are a concern

**Problem addressed:** Histograms and densities depend on bin-width or bandwidth choices.

**Recommended solution:** Plot ranks or cumulative frequencies against observed values to show all observations without a smoothing parameter.

**Why it works:** The ECDF preserves the complete empirical distribution and supports direct reading of quantiles and thresholds.

**Applies when:** Technical distribution comparison and exact percentile/cutoff questions.

**Exceptions and qualifications:** ECDFs are less intuitive to many audiences than histograms or densities.

**Book example:** Figure 8-3 allows direct reading of grade quartiles, median, and the fraction above 90.

**Search terms:** `ECDF`, `cumulative distribution`, `quantile`, `parameter-free`

**Evidence:** passages [p088-b002](../../raw/wilke2019fundamentals.md#p088-b002), [p090-b002](../../raw/wilke2019fundamentals.md#p090-b002), [p091-b001](../../raw/wilke2019fundamentals.md#p091-b001); figures [Figure 8-3](../../raw/wilke2019fundamentals.md#p090-b003).

<a id="principle-08-transform-heavy-tails-purposefully"></a>

### Choose transforms that reveal and test heavy-tail structure

**Problem addressed:** Strong right skew collapses density and ECDF detail near zero.

**Recommended solution:** Use a substantively appropriate log transform, or a descending ECDF with log axes when testing power-law behavior.

**Why it works:** Log transformation expands the compressed lower range; a power law becomes a straight line in a descending log–log ECDF.

**Applies when:** Population counts, word frequencies, network degrees, and other heavy-tailed quantities.

**Exceptions and qualifications:** A log transform is not evidence of a power law; Wilke contrasts a near-log-normal county distribution with a power-law word-frequency distribution.

**Book example:** Figures 8-5 to 8-7 compare logged county populations and Moby Dick word counts.

**Search terms:** `heavy tail`, `log transform`, `power law`, `descending ECDF`

**Evidence:** passages [p092-b003](../../raw/wilke2019fundamentals.md#p092-b003), [p093-b002](../../raw/wilke2019fundamentals.md#p093-b002), [p094-b002](../../raw/wilke2019fundamentals.md#p094-b002); figures [Figure 8-6](../../raw/wilke2019fundamentals.md#p094-b001), [Figure 8-7](../../raw/wilke2019fundamentals.md#p094-b003).

<a id="principle-08-qq-for-distribution-fit"></a>

### Use Q-Q plots to assess a proposed distribution

**Problem addressed:** A smooth curve or summary statistic can hide departures in the center or tails.

**Recommended solution:** Plot observed quantiles against theoretical quantiles and compare them with the x=y reference.

**Why it works:** Agreement with the reference line shows where the empirical distribution matches the assumed distribution; deviations localize mismatch.

**Applies when:** Checking normality, log-normality, and other explicit reference distributions.

**Exceptions and qualifications:** The diagonal is a reference line, not a fitted regression; interpretation depends on the chosen reference distribution.

**Book example:** Figure 8-8 shows bounded exam-score deviations; Figure 8-9 supports a log-normal model for county populations.

**Search terms:** `Q-Q plot`, `normality`, `reference distribution`, `tail deviation`

**Evidence:** passages [p095-b001](../../raw/wilke2019fundamentals.md#p095-b001), [p096-b001](../../raw/wilke2019fundamentals.md#p096-b001); figures [Figure 8-8](../../raw/wilke2019fundamentals.md#p095-b002), [Figure 8-9](../../raw/wilke2019fundamentals.md#p096-b002).


## Source boundary

Printed pages 71–80; PDF pages 88–97. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
