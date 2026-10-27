---
source_id: "wilke2019fundamentals"
chapter: 19
title: "Common Pitfalls of Color Use"
printed_pages: "233–242"
pdf_pages: "250–259"
---

# Chapter 19: Common Pitfalls of Color Use

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p250-b001)

**Scope:** Limits categorical color load, rejects decorative/rainbow color, and requires color-vision-deficiency-aware testing.

**Search terms:** `too many colors`, `rainbow`, `saturation`, `color vision deficiency`, `CVD`

## Section map

- **Encoding Too Much or Irrelevant Information** — printed p. 233; [raw page](../../raw/wilke2019fundamentals.md#p250-b003)
- **Using Nonmonotonic Color Scales to Encode Data Values** — printed p. 237; [raw page](../../raw/wilke2019fundamentals.md#page-254)
- **Not Designing for Color-Vision Deficiency** — printed p. 238; [raw page](../../raw/wilke2019fundamentals.md#p255-b003)

## Actionable principles

<a id="principle-19-limit-qualitative-colors"></a>

### Limit categorical color to a manageable number

**Problem addressed:** Matching many similar colors between marks and a legend becomes a visual puzzle.

**Recommended solution:** Aim for roughly three to five categories; by eight to ten, use broader groups, direct labels, shapes, or panels instead.

**Why it works:** The burden is not just color discrimination but remembering and matching each category.

**Applies when:** Qualitative palettes and legends.

**Exceptions and qualifications:** Eight distinguishable colors may be technically available, but task burden can become excessive before the palette itself fails.

**Book example:** Figures 19-1 and 19-2 replace 51 state colors with four region colors plus selective direct labels.

**Search terms:** `qualitative color`, `category count`, `legend matching`, `direct labels`

**Evidence:** passages [p250-b003](../../raw/wilke2019fundamentals.md#p250-b003), [p251-b002](../../raw/wilke2019fundamentals.md#p251-b002); figures [Figure 19-1](../../raw/wilke2019fundamentals.md#p251-b001), [Figure 19-2](../../raw/wilke2019fundamentals.md#p252-b002).

<a id="principle-19-color-needs-a-job"></a>

### Do not color for decoration alone

**Problem addressed:** Rainbow-like category coloring adds distraction without information.

**Recommended solution:** Assign color a specific semantic or attentional role and remove it when it serves none.

**Why it works:** Purposeful color should make a figure easier to read; gratuitous color competes with labels and comparisons.

**Applies when:** Bars, points, lines, and filled regions.

**Exceptions and qualifications:** A visual brand or memorable accent may be legitimate, but it still should not obscure the data.

**Book example:** Figure 19-3 gives every state bar a saturated rainbow color with no encoded meaning.

**Search terms:** `decorative color`, `rainbow`, `purpose`, `distraction`

**Evidence:** passages [p252-b004](../../raw/wilke2019fundamentals.md#p252-b004), [p253-b003](../../raw/wilke2019fundamentals.md#p253-b003); figures [Figure 19-3](../../raw/wilke2019fundamentals.md#p253-b002).

<a id="principle-19-avoid-nonmonotonic-continuous-color"></a>

### Avoid nonmonotonic color scales for ordered values

**Problem addressed:** Uneven lightness, especially in rainbow scales, creates false boundaries and arbitrary emphasis.

**Recommended solution:** Use a perceptually monotonic sequential or balanced diverging scale.

**Why it works:** Readers perceive lightness changes as magnitude changes; reversals distort the encoded order.

**Applies when:** Continuous and ordered quantitative color.

**Exceptions and qualifications:** A qualitative palette is appropriate for unordered categories because it is not meant to encode magnitude.

**Book example:** Figures 19-4 and 19-5 show the rainbow scale's lightness reversals and its arbitrary emphasis around 75%.

**Search terms:** `rainbow scale`, `nonmonotonic`, `lightness`, `continuous color`

**Evidence:** passages [p254-b003](../../raw/wilke2019fundamentals.md#p254-b003); figures [Figure 19-4](../../raw/wilke2019fundamentals.md#p254-b003), [Figure 19-5](../../raw/wilke2019fundamentals.md#p255-b002).

<a id="principle-19-test-cvd-at-final-mark-size"></a>

### Test color-vision accessibility at the actual mark size

**Problem addressed:** A nominally CVD-safe palette may fail on thin lines or tiny points.

**Recommended solution:** Use CVD-safe palettes, add redundant encodings where needed, and inspect simulations at the final output size.

**Why it works:** Color differences become harder to discriminate as marks shrink, and the effect worsens under color-vision deficiency.

**Applies when:** Any color-coded scientific figure, especially small multiples and dense line/point plots.

**Exceptions and qualifications:** Sequential scales with a strong lightness gradient are generally robust, but final-size testing still catches context-specific failures.

**Book example:** Figures 19-9 to 19-11 show an accessible diverging palette, Okabe–Ito colors, and size-dependent failures.

**Search terms:** `color blindness`, `CVD`, `mark size`, `simulation`, `Okabe Ito`

**Evidence:** passages [p256-b001](../../raw/wilke2019fundamentals.md#p256-b001), [p256-b003](../../raw/wilke2019fundamentals.md#p256-b003), [p258-b004](../../raw/wilke2019fundamentals.md#p258-b004); figures [Figure 19-11](../../raw/wilke2019fundamentals.md#p259-b001).


## Source boundary

Printed pages 233–242; PDF pages 250–259. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
