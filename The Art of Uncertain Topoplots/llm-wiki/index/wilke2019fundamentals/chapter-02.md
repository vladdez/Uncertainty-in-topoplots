---
source_id: "wilke2019fundamentals"
chapter: 2
title: "Visualizing Data: Mapping Data onto Aesthetics"
printed_pages: "7–12"
pdf_pages: "24–29"
---

# Chapter 2: Visualizing Data: Mapping Data onto Aesthetics

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p024-b001)

**Scope:** Explains visual aesthetics, data types, and one-to-one mappings from data values to visual channels.

**Search terms:** `aesthetics`, `scales`, `data types`, `visual channels`, `ordering`

## Section map

- **Aesthetics and Types of Data** — printed p. 7; [raw page](../../raw/wilke2019fundamentals.md#page-024)
- **Scales Map Data Values onto Aesthetics** — printed p. 10; [raw page](../../raw/wilke2019fundamentals.md#p027-b001)

## Actionable principles

<a id="principle-02-match-channel-to-data-type"></a>

### Match visual channels to the variable type

**Problem addressed:** Some aesthetics imply continuity or ordering that the data do not have, while others cannot express fine continuous variation.

**Recommended solution:** Use position, size, line width, or color for continuous values when appropriate; reserve shape and line type primarily for discrete categories, and preserve intrinsic factor order.

**Why it works:** Viewers read some channels as graded and others as distinct categories; a mismatch makes intermediate values or order ambiguous.

**Applies when:** Choosing encodings for quantitative, unordered categorical, ordered categorical, date/time, or text variables.

**Exceptions and qualifications:** A variable such as number of cylinders may reasonably be treated as numerical discrete or qualitative ordered depending on the analytical purpose.

**Book example:** Figure 2-1 contrasts channels capable of continuous encoding with shape and line type; Figure 2-5 maps five variables using multiple channels.

**Search terms:** `continuous`, `discrete`, `ordered factor`, `shape`, `position`

**Evidence:** passages [p025-b001](../../raw/wilke2019fundamentals.md#p025-b001), [p025-b002](../../raw/wilke2019fundamentals.md#p025-b002); figures [Figure 2-1](../../raw/wilke2019fundamentals.md#p025-b001), [Figure 2-5](../../raw/wilke2019fundamentals.md#p029-b002).

<a id="principle-02-use-unambiguous-scales"></a>

### Keep each scale mapping one-to-one

**Problem addressed:** If one data value maps to several appearances, or an appearance can mean several values, the display becomes ambiguous.

**Recommended solution:** Define a unique mapping between every represented data value and its aesthetic value.

**Why it works:** A reader must be able to invert the visual mapping to recover what each mark means.

**Applies when:** Axes, colors, shapes, sizes, line types, and legends.

**Exceptions and qualifications:** This principle concerns the mapping within a scale; redundant coding may intentionally map one variable to multiple different aesthetics while keeping each mapping explicit.

**Book example:** Figure 2-2 maps the values 1–4 uniquely to positions, shapes, and colors.

**Search terms:** `scale mapping`, `ambiguity`, `legend`, `one-to-one`

**Evidence:** passages [p027-b001](../../raw/wilke2019fundamentals.md#p027-b001); figures [Figure 2-2](../../raw/wilke2019fundamentals.md#p027-b002).

<a id="principle-02-give-color-enough-area"></a>

### Give quantitative color enough visible area

**Problem addressed:** Thin or tiny marks do not provide enough colored area for readers to judge quantitative color reliably.

**Recommended solution:** When color carries the key continuous variable, use marks with sufficient area, such as tiles instead of thin lines.

**Why it works:** Wilke cites perceptual work and changes the temperature display to squares so the color channel can convey useful information.

**Applies when:** Heatmaps, tiled summaries, and other figures where hue/lightness carries a central quantitative variable.

**Exceptions and qualifications:** If color merely distinguishes a few categories, thin lines may be acceptable; the recommendation is specifically tied to judging values from color.

**Book example:** Figure 2-4 uses monthly squares for temperature rather than relying on colored lines as in Figure 2-3.

**Search terms:** `color area`, `heatmap`, `thin lines`, `quantitative color`

**Evidence:** passages [p027-b003](../../raw/wilke2019fundamentals.md#p027-b003); figures [Figure 2-3](../../raw/wilke2019fundamentals.md#p028-b001), [Figure 2-4](../../raw/wilke2019fundamentals.md#p028-b002).


## Source boundary

Printed pages 7–12; PDF pages 24–29. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
