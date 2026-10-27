---
source_id: "wilke2019fundamentals"
chapter: 16
title: "Visualizing Uncertainty"
printed_pages: "181–206"
pdf_pages: "198–223"
---

# Chapter 16: Visualizing Uncertainty

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p198-b001)

**Scope:** Contrasts expert-efficient interval displays with frequency, distributional, graded, and animated uncertainty displays.

**Search terms:** `uncertainty`, `frequency framing`, `error bars`, `confidence band`, `credible interval`, `HOP`

## Section map

- **Framing Probabilities as Frequencies** — printed p. 181; [raw page](../../raw/wilke2019fundamentals.md#p198-b003)
- **Visualizing the Uncertainty of Point Estimates** — printed p. 186; [raw page](../../raw/wilke2019fundamentals.md#p203-b001)
- **Visualizing the Uncertainty of Curve Fits** — printed p. 197; [raw page](../../raw/wilke2019fundamentals.md#page-214)
- **Hypothetical Outcome Plots** — printed p. 201; [raw page](../../raw/wilke2019fundamentals.md#p218-b002)

## Actionable principles

<a id="principle-16-match-uncertainty-display-to-audience"></a>

### Match uncertainty precision and intuitiveness to the audience

**Problem addressed:** Compact expert conventions such as error bars can be misread by nonexperts.

**Recommended solution:** Use error bars or bands for precise, dense expert communication; consider frequency framing or outcome animation when intuitive grasp matters more.

**Why it works:** Discrete scenarios make possible outcomes tangible, while interval conventions require statistical knowledge.

**Applies when:** Choosing an uncertainty form for scientific versus lay audiences.

**Exceptions and qualifications:** Intuitive displays may sacrifice precision or data density; no single form dominates every context.

**Book example:** Figure 16-1 turns 1%, 10%, and 40% probabilities into grids of possible outcomes.

**Search terms:** `audience`, `uncertainty`, `frequency framing`, `expert`, `lay`

**Evidence:** passages [p198-b002](../../raw/wilke2019fundamentals.md#p198-b002), [p199-b001](../../raw/wilke2019fundamentals.md#p199-b001); figures [Figure 16-1](../../raw/wilke2019fundamentals.md#p200-b001).

<a id="principle-16-limit-quantile-dots"></a>

### Use a small-to-moderate number of quantile dots

**Problem addressed:** Too many dots merge perceptually into a continuous mass and defeat frequency framing.

**Recommended solution:** Use enough dots to communicate probability without losing their discrete identity.

**Why it works:** People judge relative frequencies of discrete objects better than areas only while the objects remain individually discriminable.

**Applies when:** Quantile dot plots for probability distributions, especially lay communication.

**Exceptions and qualifications:** Fewer dots reduce numerical precision; Wilke explicitly accepts that tradeoff when it improves perceived meaning.

**Book example:** Figure 16-3 compares 50 dots with 10 dots and favors the more immediately readable 10-dot version for the election example.

**Search terms:** `quantile dot plot`, `frequency`, `dot count`, `precision perception tradeoff`

**Evidence:** passages [p201-b002](../../raw/wilke2019fundamentals.md#p201-b002), [p202-b002](../../raw/wilke2019fundamentals.md#p202-b002); figures [Figure 16-3](../../raw/wilke2019fundamentals.md#p202-b001).

<a id="principle-16-distinguish-spread-from-estimate-uncertainty"></a>

### Separate population spread from uncertainty of an estimate

**Problem addressed:** Standard deviation and standard error answer different questions but are often confused.

**Recommended solution:** Identify whether the mark shows variability among observations or precision of a parameter estimate, and label it accordingly.

**Why it works:** Standard deviation describes population spread; standard error describes the sampling distribution of an estimate.

**Applies when:** Points with intervals, group summaries, and captions.

**Exceptions and qualifications:** Related quantities can be mathematically derived from the same sample, but that does not make their meanings interchangeable.

**Book example:** Figures 16-4 and 16-5 distinguish sample observations, mean, standard deviation, standard error, and several confidence intervals.

**Search terms:** `standard deviation`, `standard error`, `sampling distribution`, `variability`

**Evidence:** passages [p203-b001](../../raw/wilke2019fundamentals.md#p203-b001), [p204-b002](../../raw/wilke2019fundamentals.md#p204-b002), [p205-b001](../../raw/wilke2019fundamentals.md#p205-b001); figures [Figure 16-5](../../raw/wilke2019fundamentals.md#p205-b002).

<a id="principle-16-label-error-bars"></a>

### State exactly what every error bar represents

**Problem addressed:** The same visual glyph can mean standard deviation, standard error, or multiple confidence levels.

**Recommended solution:** Name the quantity and confidence level in the caption or legend.

**Why it works:** Without an explicit definition, readers cannot infer the statistical meaning from appearance.

**Applies when:** Every figure with error bars.

**Exceptions and qualifications:** None stated; Wilke phrases this as a must.

**Book example:** Figure 16-5 renders five distinct interval meanings for the same chocolate ratings, demonstrating their visual and conceptual differences.

**Search terms:** `error bar`, `confidence level`, `caption`, `interval definition`

**Evidence:** passages [p205-b001](../../raw/wilke2019fundamentals.md#p205-b001), [p206-b001](../../raw/wilke2019fundamentals.md#p206-b001); figures [Figure 16-5](../../raw/wilke2019fundamentals.md#p205-b002).

<a id="principle-16-test-differences-directly"></a>

### Plot uncertainty for the comparison you actually want to make

**Problem addressed:** Inferring significance from overlap between two separate error bars is unreliable.

**Recommended solution:** Calculate and visualize an interval for the difference itself; assess whether that interval includes zero.

**Why it works:** Both estimates contribute uncertainty to the difference, and separate intervals do not encode that combined quantity directly.

**Applies when:** Pairwise or reference-group comparisons of estimates.

**Exceptions and qualifications:** Multiplicity adjustments may be required when making several comparisons, as in Wilke's example.

**Book example:** Figure 16-8 plots each country's mean chocolate-rating difference from the US with multiplicity-adjusted confidence intervals.

**Search terms:** `difference interval`, `error bar overlap`, `significance`, `multiple comparisons`

**Evidence:** passages [p207-b003](../../raw/wilke2019fundamentals.md#p207-b003), [p208-b001](../../raw/wilke2019fundamentals.md#p208-b001); figures [Figure 16-8](../../raw/wilke2019fundamentals.md#p208-b002).

<a id="principle-16-show-curve-shape-uncertainty"></a>

### Remember that nonlinear-fit uncertainty includes shape, not just vertical displacement

**Problem addressed:** A band around a nonlinear fit can look like the best curve merely moves up and down.

**Recommended solution:** Use graded bands or samples of plausible fitted curves when shape uncertainty matters.

**Why it works:** Alternative nonlinear fits may be more wiggly and structurally different even when their envelope resembles a conventional band.

**Applies when:** Spline and other nonlinear curve fits.

**Exceptions and qualifications:** Bands remain compact and useful; sampled curves add complexity and should serve the interpretive task.

**Book example:** Figure 16-18 contrasts a best-fit spline plus band with equally likely alternative curves.

**Search terms:** `confidence band`, `nonlinear fit`, `shape uncertainty`, `posterior draws`

**Evidence:** passages [p216-b002](../../raw/wilke2019fundamentals.md#p216-b002), [p217-b002](../../raw/wilke2019fundamentals.md#p217-b002); figures [Figure 16-18](../../raw/wilke2019fundamentals.md#p218-b001).

<a id="principle-16-hops-must-be-representative"></a>

### Make hypothetical outcome sequences representative

**Problem addressed:** A small or biased animation sample can imply the wrong outcome frequencies.

**Recommended solution:** Use many outcomes or explicitly verify that displayed outcomes approximate the target distribution; prefer hard switches, fast transitions, or fades over slow morphing.

**Why it works:** HOPs communicate probability through experienced frequency, so a nonrepresentative sequence directly misstates uncertainty; smooth deformation may impair probability judgment.

**Applies when:** Animated hypothetical outcome plots online or in presentations.

**Exceptions and qualifications:** HOPs do not work in print; the best transition remains partly an open research question.

**Book example:** Figures 16-19 and 16-20 schematize sampled chocolate comparisons and alternative spline fits.

**Search terms:** `HOP`, `animation`, `representative samples`, `transition`

**Evidence:** passages [p218-b002](../../raw/wilke2019fundamentals.md#p218-b002), [p219-b002](../../raw/wilke2019fundamentals.md#p219-b002), [p220-b002](../../raw/wilke2019fundamentals.md#p220-b002); figures [Figure 16-19](../../raw/wilke2019fundamentals.md#p219-b001), [Figure 16-20](../../raw/wilke2019fundamentals.md#p220-b001).


## Source boundary

Printed pages 181–206; PDF pages 198–223. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
