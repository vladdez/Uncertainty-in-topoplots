---
source_id: "wilke2019fundamentals"
chapter: 4
title: "Color Scales"
printed_pages: "27–36"
pdf_pages: "44–53"
---

# Chapter 4: Color Scales

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p044-b001)

**Scope:** Separates qualitative, sequential, diverging, and accent color tasks and explains their perceptual requirements.

**Search terms:** `qualitative color`, `sequential color`, `diverging color`, `accent color`, `highlighting`

## Section map

- **Color as a Tool to Distinguish** — printed p. 27; [raw page](../../raw/wilke2019fundamentals.md#p044-b003)
- **Color to Represent Data Values** — printed p. 29; [raw page](../../raw/wilke2019fundamentals.md#page-046)
- **Color as a Tool to Highlight** — printed p. 33; [raw page](../../raw/wilke2019fundamentals.md#page-050)

## Actionable principles

<a id="principle-04-qualitative-colors-equal"></a>

### Use equal-prominence colors for unordered categories

**Problem addressed:** A lightness sequence or one standout hue falsely suggests order or importance among nominal groups.

**Recommended solution:** Choose a finite qualitative palette whose colors are distinguishable but approximately equal in visual prominence.

**Why it works:** The palette should separate groups without creating an unintended ranking or focal category.

**Applies when:** Countries, manufacturers, conditions, or other unordered categorical groups.

**Exceptions and qualifications:** If one group is intentionally highlighted, use an accent strategy instead of pretending all categories are equivalent.

**Book example:** Figure 4-1 shows Okabe–Ito, ColorBrewer Dark2, and ggplot2 hue qualitative scales.

**Search terms:** `qualitative palette`, `unordered categories`, `equal prominence`

**Evidence:** passages [p044-b003](../../raw/wilke2019fundamentals.md#p044-b003); figures [Figure 4-1](../../raw/wilke2019fundamentals.md#p045-b001).

<a id="principle-04-sequential-monotonic"></a>

### Make sequential color perceptually ordered

**Problem addressed:** A nonordered or nonuniform ramp inserts false boundaries and hides real magnitude changes.

**Recommended solution:** Use a scale that changes uniformly from dark to light, optionally following a natural multihue progression.

**Why it works:** A monotonic lightness progression lets readers interpret color as increasing or decreasing magnitude.

**Applies when:** Continuous or ordered values with one direction of magnitude.

**Exceptions and qualifications:** A diverging scale is more appropriate when deviations around a meaningful midpoint matter.

**Book example:** Figure 4-3 contrasts monochromatic Blues with multihue Heat and Viridis sequential ramps.

**Search terms:** `sequential palette`, `monotonic lightness`, `continuous values`

**Evidence:** passages [p047-b001](../../raw/wilke2019fundamentals.md#p047-b001); figures [Figure 4-3](../../raw/wilke2019fundamentals.md#p047-b002).

<a id="principle-04-balance-diverging-scale"></a>

### Balance both sides of a diverging scale

**Problem addressed:** Unequal color progression above and below the midpoint makes equal deviations appear unequal.

**Recommended solution:** Join two comparably progressing sequential scales at a meaningful neutral midpoint.

**Why it works:** Symmetric visual strength keeps perceived magnitude independent of which side of the midpoint a value occupies.

**Applies when:** Positive/negative change, residuals, anomalies, or deviations from a reference.

**Exceptions and qualifications:** Do not use divergence merely because a palette is attractive; the data need a substantively meaningful midpoint.

**Book example:** Figure 4-5 shows balanced brown–blue, pink–yellow-green, and blue–red diverging scales.

**Search terms:** `diverging palette`, `midpoint`, `balance`, `positive negative`

**Evidence:** passages [p047-b003](../../raw/wilke2019fundamentals.md#p047-b003); figures [Figure 4-5](../../raw/wilke2019fundamentals.md#p048-b002).

<a id="principle-04-muted-baseline-for-accents"></a>

### Make baseline colors recede behind highlights

**Problem addressed:** Colorful baseline elements compete with the intended focal marks.

**Recommended solution:** Mute or remove color from contextual elements and reserve strong color for the highlighted subset.

**Why it works:** Reducing baseline salience directs attention to the accent instead of distributing it across the whole display.

**Applies when:** Annotation, focal comparison, outlier emphasis, and storytelling figures.

**Exceptions and qualifications:** If all categories deserve equal attention, use a qualitative rather than accent palette.

**Book example:** Figures 4-8 and 4-9 highlight selected states or athletes while the remainder stays drab or gray.

**Search terms:** `accent color`, `highlight`, `visual hierarchy`, `muted context`

**Evidence:** passages [p051-b002](../../raw/wilke2019fundamentals.md#p051-b002); figures [Figure 4-9](../../raw/wilke2019fundamentals.md#p052-b001).


## Source boundary

Printed pages 27–36; PDF pages 44–53. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
