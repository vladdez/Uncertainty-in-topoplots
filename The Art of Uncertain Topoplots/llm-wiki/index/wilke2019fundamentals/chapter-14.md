---
source_id: "wilke2019fundamentals"
chapter: 14
title: "Visualizing Trends"
printed_pages: "145–160"
pdf_pages: "162–177"
---

# Chapter 14: Visualizing Trends

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p162-b001)

**Scope:** Treats smoothing as model-dependent, favors interpretable functional forms, and uses detrending/decomposition to reveal deviations.

**Search terms:** `smoothing`, `LOESS`, `splines`, `model fit`, `detrending`, `decomposition`

## Section map

- **Smoothing** — printed p. 145; [raw page](../../raw/wilke2019fundamentals.md#p162-b003)
- **Showing Trends with a Defined Functional Form** — printed p. 151; [raw page](../../raw/wilke2019fundamentals.md#p168-b002)
- **Detrending and Time-Series Decomposition** — printed p. 155; [raw page](../../raw/wilke2019fundamentals.md#p172-b003)

## Actionable principles

<a id="principle-14-test-smoother-settings"></a>

### Treat a smoother as a model whose defaults require sensitivity checks

**Problem addressed:** Different smoothing methods and tuning choices can produce different trends, especially at boundaries.

**Recommended solution:** Try multiple reasonable smoothers/settings and disclose or justify the chosen model.

**Why it works:** Moving averages, LOESS, and spline variants weight data differently; their curves are not neutral summaries.

**Applies when:** Scatterplot and time-series smoothing.

**Exceptions and qualifications:** The best method depends on data size, computation, and analytical purpose; Wilke does not endorse one universal smoother.

**Book example:** Figure 14-5 shows LOESS and several spline fits behaving differently on the same fuel-tank data.

**Search terms:** `smoothing`, `LOESS`, `spline`, `sensitivity`, `defaults`

**Evidence:** passages [p165-b001](../../raw/wilke2019fundamentals.md#p165-b001), [p167-b001](../../raw/wilke2019fundamentals.md#p167-b001); figures [Figure 14-5](../../raw/wilke2019fundamentals.md#p168-b001).

<a id="principle-14-prefer-interpretable-form"></a>

### Prefer an appropriate interpretable functional form when available

**Problem addressed:** General smoothers can behave unpredictably and do not yield parameters with clear meaning.

**Recommended solution:** Fit a scientifically defensible functional form with interpretable parameters; assess transformations that make the relationship linear.

**Why it works:** A defined form connects the drawn trend to a stated model and enables meaningful parameter interpretation.

**Applies when:** Relationships with plausible mechanistic or well-known mathematical form.

**Exceptions and qualifications:** Do not force a convenient curve when no suitable form is justified; exploratory smoothers remain useful.

**Book example:** Figure 14-6 uses a saturating function for fuel-tank capacity; Figures 14-8 and 14-9 compare exponential fitting with a linear fit after log transformation.

**Search terms:** `functional form`, `model`, `log transform`, `interpretability`

**Evidence:** passages [p168-b002](../../raw/wilke2019fundamentals.md#p168-b002), [p171-b003](../../raw/wilke2019fundamentals.md#p171-b003), [p172-b001](../../raw/wilke2019fundamentals.md#p172-b001); figures [Figure 14-6](../../raw/wilke2019fundamentals.md#p169-b002), [Figure 14-9](../../raw/wilke2019fundamentals.md#p171-b002).

<a id="principle-14-detrend-to-show-deviations"></a>

### Detrend when deviations from expectation are the message

**Problem addressed:** A dominant long-term trend can conceal episodic departures.

**Recommended solution:** Show values relative to the estimated long-term trend, or decompose trend, seasonal, and remainder components.

**Why it works:** Removing the baseline makes unexpected changes visually salient and allows their magnitude to be interpreted relative to expectation.

**Applies when:** Long time series with trend or seasonality.

**Exceptions and qualifications:** The trend estimate is itself a model; retain or pair the original series so the transformation remains interpretable.

**Book example:** Figures 14-10 and 14-11 show how detrending reveals California and Nevada housing bubbles.

**Search terms:** `detrending`, `time-series decomposition`, `baseline`, `deviation`

**Evidence:** passages [p172-b003](../../raw/wilke2019fundamentals.md#p172-b003), [p173-b002](../../raw/wilke2019fundamentals.md#p173-b002); figures [Figure 14-10](../../raw/wilke2019fundamentals.md#p173-b001), [Figure 14-11](../../raw/wilke2019fundamentals.md#p174-b001).


## Source boundary

Printed pages 145–160; PDF pages 162–177. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
