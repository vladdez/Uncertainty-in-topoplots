---
source_id: "wilke2019fundamentals"
chapter: 17
title: "The Principle of Proportional Ink"
printed_pages: "207–218"
pdf_pages: "224–235"
---

# Chapter 17: The Principle of Proportional Ink

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p224-b001)

**Scope:** Requires shaded extent to remain proportional to value and works through linear, logarithmic, and direct-area cases.

**Search terms:** `proportional ink`, `zero baseline`, `log bars`, `area`, `truncated axis`

## Section map

- **Visualizations Along Linear Axes** — printed p. 208; [raw page](../../raw/wilke2019fundamentals.md#p225-b001)
- **Visualizations Along Logarithmic Axes** — printed p. 212; [raw page](../../raw/wilke2019fundamentals.md#p229-b002)
- **Direct Area Visualizations** — printed p. 215; [raw page](../../raw/wilke2019fundamentals.md#p232-b004)

## Actionable principles

<a id="principle-17-area-proportional-to-value"></a>

### Keep shaded area proportional to the represented value

**Problem addressed:** A mark's endpoint can show one value while its visible area or length implies another.

**Recommended solution:** Whenever shaded extent encodes a number, make that extent directly proportional to the number.

**Why it works:** Viewers primarily perceive the extent of bars and filled shapes, so contradictory endpoint and area encodings mislead.

**Applies when:** Bars, rectangles, filled areas, pies, treemaps, and other extent-based marks.

**Exceptions and qualifications:** Position-only marks such as dots do not encode value through their area and can use a restricted axis range.

**Book example:** Figures 17-1 and 17-2 compare Hawaiian income bars starting at $50,000 versus zero.

**Search terms:** `proportional ink`, `bar length`, `filled area`, `truncated axis`

**Evidence:** passages [p224-b002](../../raw/wilke2019fundamentals.md#p224-b002), [p225-b001](../../raw/wilke2019fundamentals.md#p225-b001); figures [Figure 17-1](../../raw/wilke2019fundamentals.md#p225-b002), [Figure 17-2](../../raw/wilke2019fundamentals.md#p226-b001).

<a id="principle-17-linear-bars-start-zero"></a>

### Start linear-scale bars and filled amounts at zero

**Problem addressed:** A truncated origin exaggerates the magnitude of differences.

**Recommended solution:** Use zero as the baseline for bars on a linear scale, or plot explicitly defined changes from zero instead of the original amounts.

**Why it works:** Then bar length and endpoint agree and both encode the same amount.

**Applies when:** Linear bar and area charts.

**Exceptions and qualifications:** It is valid to plot differences or changes as their own quantities; negative changes extend in the opposite direction from zero.

**Book example:** Figure 17-5 plots change in county income rather than truncating bars of absolute income.

**Search terms:** `zero baseline`, `linear bars`, `change score`, `truncated origin`

**Evidence:** passages [p226-b002](../../raw/wilke2019fundamentals.md#p226-b002), [p228-b001](../../raw/wilke2019fundamentals.md#p228-b001); figures [Figure 17-5](../../raw/wilke2019fundamentals.md#p228-b002).

<a id="principle-17-log-bars-represent-ratios"></a>

### On log axes, use bars for ratios and start them at 1

**Problem addressed:** Amount bars on a log scale have no nonarbitrary zero origin.

**Recommended solution:** Use dots for absolute amounts on log scales; if bars are used, make the data ratios and start the bars at the natural midpoint 1.

**Why it works:** A log axis encodes multiplication/division, so bar extent from 1 has a coherent ratio interpretation.

**Applies when:** Fold changes and relative quantities.

**Exceptions and qualifications:** A log axis remains useful for position-only amounts spanning orders of magnitude.

**Book example:** Figures 17-7 to 17-10 progress from invalid log amount bars to dots and then valid ratio bars relative to Papua New Guinea.

**Search terms:** `log bar`, `ratio`, `baseline one`, `dot plot`

**Evidence:** passages [p229-b002](../../raw/wilke2019fundamentals.md#p229-b002), [p230-b002](../../raw/wilke2019fundamentals.md#p230-b002), [p231-b001](../../raw/wilke2019fundamentals.md#p231-b001), [p232-b002](../../raw/wilke2019fundamentals.md#p232-b002); figures [Figure 17-9](../../raw/wilke2019fundamentals.md#p231-b002), [Figure 17-10](../../raw/wilke2019fundamentals.md#p232-b001).

<a id="principle-17-position-beats-area"></a>

### Prefer length or position when accurate comparison matters

**Problem addressed:** Even correct area encodings make differences look less pronounced and are judged less accurately.

**Recommended solution:** Use aligned bars or positions instead of pies/treemaps when precise magnitude comparison is the main task.

**Why it works:** Human perception judges distances more accurately than two-dimensional areas.

**Applies when:** Comparing amounts across categories.

**Exceptions and qualifications:** Pies and treemaps can validly emphasize composition or hierarchy while still satisfying proportional ink.

**Book example:** Figures 17-11 to 17-13 compare the same county populations as pie, bars, and treemap.

**Search terms:** `area perception`, `bar length`, `pie`, `treemap`, `accuracy`

**Evidence:** passages [p233-b002](../../raw/wilke2019fundamentals.md#p233-b002), [p234-b002](../../raw/wilke2019fundamentals.md#p234-b002); figures [Figure 17-12](../../raw/wilke2019fundamentals.md#p234-b001), [Figure 17-13](../../raw/wilke2019fundamentals.md#p234-b003).


## Source boundary

Printed pages 207–218; PDF pages 224–235. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
