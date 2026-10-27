---
source_id: "wilke2019fundamentals"
chapter: 3
title: "Coordinate Systems and Axes"
printed_pages: "13–26"
pdf_pages: "30–43"
---

# Chapter 3: Coordinate Systems and Axes

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p030-b001)

**Scope:** Covers Cartesian and transformed axes, aspect ratios, polar coordinates, and projection tradeoffs.

**Search terms:** `aspect ratio`, `log scale`, `square-root scale`, `polar coordinates`, `ratios`

## Section map

- **Cartesian Coordinates** — printed p. 13; [raw page](../../raw/wilke2019fundamentals.md#page-030)
- **Nonlinear Axes** — printed p. 16; [raw page](../../raw/wilke2019fundamentals.md#page-033)
- **Coordinate Systems with Curved Axes** — printed p. 22; [raw page](../../raw/wilke2019fundamentals.md#p039-b003)

## Actionable principles

<a id="principle-03-aspect-ratio-respects-units"></a>

### Choose aspect ratio with units and message in mind

**Problem addressed:** Stretching a plot changes the apparent steepness and prominence of variation.

**Recommended solution:** With different units, choose an aspect ratio that makes important positional differences visible; with the same units on both axes, use equal scaling so equal distances represent equal quantities.

**Why it works:** Different-unit axes permit valid rescaling but shift emphasis; same-unit comparisons become geometrically misleading if grid cells are not square.

**Applies when:** Scatterplots, trajectories, and paired measurements.

**Exceptions and qualifications:** Different-unit axes have no single mandatory ratio; Wilke treats the preferred ratio as message-dependent.

**Book example:** Figure 3-2 shows three valid temperature-curve ratios; Figure 3-3 uses equal Fahrenheit/Celsius scaling for city-to-city temperature comparison.

**Search terms:** `aspect ratio`, `equal coordinates`, `same units`, `slope perception`

**Evidence:** passages [p031-b002](../../raw/wilke2019fundamentals.md#p031-b002), [p032-b001](../../raw/wilke2019fundamentals.md#p032-b001), [p032-b003](../../raw/wilke2019fundamentals.md#p032-b003); figures [Figure 3-2](../../raw/wilke2019fundamentals.md#p032-b002), [Figure 3-3](../../raw/wilke2019fundamentals.md#p033-b001).

<a id="principle-03-log-scale-for-ratios"></a>

### Use logarithmic scales for ratios and multiplicative change

**Problem addressed:** A linear scale overemphasizes ratios above 1 and compresses comparable ratios below 1.

**Recommended solution:** Show multiplicative quantities and ratios on a log scale, centered naturally at 1, and label the original variable rather than an ambiguous transformed quantity.

**Why it works:** Equal distances on a log scale correspond to equal multiplication or division, making reciprocal changes visually symmetric.

**Applies when:** Ratios, fold changes, exponential growth, and quantities spanning orders of magnitude.

**Exceptions and qualifications:** Zero cannot appear on a log scale; verify and state the logarithm base when plotting transformed values.

**Book example:** Figures 3-5 and 3-6 compare Texas county population ratios on log and linear scales; the linear version hides ratios below 1.

**Search terms:** `log scale`, `ratio`, `fold change`, `multiplicative`

**Evidence:** passages [p035-b001](../../raw/wilke2019fundamentals.md#p035-b001), [p037-b001](../../raw/wilke2019fundamentals.md#p037-b001), [p037-b002](../../raw/wilke2019fundamentals.md#p037-b002); figures [Figure 3-5](../../raw/wilke2019fundamentals.md#p036-b001), [Figure 3-6](../../raw/wilke2019fundamentals.md#p037-b001).

<a id="principle-03-square-root-with-caution"></a>

### Use square-root scales only for a defensible purpose

**Problem addressed:** Log compression cannot display zero, but an automatic square-root substitute has no constant-step interpretation and awkward tick placement.

**Recommended solution:** Consider square-root scaling when zeros must remain or when the square root has substantive meaning, while explicitly checking interpretability and ticks.

**Why it works:** It compresses large values while retaining zero, but its unit steps depend on location and its natural tick scheme is unclear.

**Applies when:** Some count/area settings, including area data when linear extent is the quantity of interest.

**Exceptions and qualifications:** Wilke calls it a valid scale but gives two explicit drawbacks; it is not a generic cure for skewness.

**Book example:** Figures 3-7 and 3-8 show the transformation and compare state areas on linear versus square-root scales.

**Search terms:** `square-root scale`, `zero`, `area`, `nonlinear axis`

**Evidence:** passages [p037-b002](../../raw/wilke2019fundamentals.md#p037-b002), [p038-b002](../../raw/wilke2019fundamentals.md#p038-b002); figures [Figure 3-7](../../raw/wilke2019fundamentals.md#p038-b001), [Figure 3-8](../../raw/wilke2019fundamentals.md#p039-b002).

<a id="principle-03-polar-for-cycles"></a>

### Reserve polar coordinates for genuinely periodic structure

**Problem addressed:** Curved axes can complicate reading without adding meaning.

**Recommended solution:** Use polar coordinates when the endpoints of a variable logically join, so the geometry emphasizes cyclic continuity.

**Why it works:** Mapping the period to angle places the last and first observations next to each other, matching their substantive relationship.

**Applies when:** Seasonal, daily, directional, and other periodic data.

**Exceptions and qualifications:** The chapter does not claim polar coordinates improve ordinary nonperiodic comparisons.

**Book example:** Figure 3-10 wraps annual temperature normals so December 31 and January 1 meet.

**Search terms:** `polar coordinates`, `periodic`, `cyclic`, `seasonality`

**Evidence:** passages [p039-b003](../../raw/wilke2019fundamentals.md#p039-b003), [p040-b001](../../raw/wilke2019fundamentals.md#p040-b001); figures [Figure 3-10](../../raw/wilke2019fundamentals.md#p041-b001).


## Source boundary

Printed pages 13–26; PDF pages 30–43. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
