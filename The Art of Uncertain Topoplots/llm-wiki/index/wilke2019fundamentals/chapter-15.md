---
source_id: "wilke2019fundamentals"
chapter: 15
title: "Visualizing Geospatial Data"
printed_pages: "161–180"
pdf_pages: "178–197"
---

# Chapter 15: Visualizing Geospatial Data

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p178-b001)

**Scope:** Covers projection and layer choices, choropleth constraints, and cartograms as deliberate geographic distortion.

**Search terms:** `map projection`, `choropleth`, `density`, `color bins`, `cartogram`, `layers`

## Section map

- **Projections** — printed p. 161; [raw page](../../raw/wilke2019fundamentals.md#page-178)
- **Layers** — printed p. 169; [raw page](../../raw/wilke2019fundamentals.md#page-186)
- **Choropleth Mapping** — printed p. 172; [raw page](../../raw/wilke2019fundamentals.md#page-189)
- **Cartograms** — printed p. 176; [raw page](../../raw/wilke2019fundamentals.md#p193-b002)

## Actionable principles

<a id="principle-15-projection-follows-purpose"></a>

### Choose map projection by the property that must be preserved

**Problem addressed:** Flattening the globe necessarily distorts area, angles, shape, distance, or continuity.

**Recommended solution:** Select a projection whose preserved property matches the analytical task and disclose consequential distortions.

**Why it works:** No flat projection preserves every spatial property; design is an explicit tradeoff.

**Applies when:** World and regional maps.

**Exceptions and qualifications:** Mercator variants remain useful for limited local areas or web navigation despite severe global area distortion.

**Book example:** Figures 15-1 to 15-3 contrast orthographic, Mercator, and equal-area interrupted projections.

**Search terms:** `projection`, `area distortion`, `angle`, `Mercator`, `equal area`

**Evidence:** passages [p178-b002](../../raw/wilke2019fundamentals.md#p178-b002), [p181-b002](../../raw/wilke2019fundamentals.md#p181-b002); figures [Figure 15-2](../../raw/wilke2019fundamentals.md#p181-b001), [Figure 15-3](../../raw/wilke2019fundamentals.md#p182-b002).

<a id="principle-15-dont-rescale-map-insets-silently"></a>

### Do not silently rescale relocated map regions

**Problem addressed:** Moving and shrinking an inset changes perceived area while retaining the appearance of a common map.

**Recommended solution:** Keep a consistent area scale or make any rescaling explicit and justified.

**Why it works:** Readers interpret mapped area quantitatively even when the relocation itself is conventional.

**Applies when:** Inset maps and noncontiguous regions.

**Exceptions and qualifications:** Relocation to reduce empty space is common and useful; the misleading step in Wilke's example is the unfaithful scaling.

**Book example:** Figure 15-6 moves and shrinks Alaska to 12% of its true area and is labeled bad; Figure 15-7 relocates without that scaling.

**Search terms:** `map inset`, `Alaska`, `rescaling`, `area integrity`

**Evidence:** passages [p184-b001](../../raw/wilke2019fundamentals.md#p184-b001), [p185-b001](../../raw/wilke2019fundamentals.md#p185-b001); figures [Figure 15-6](../../raw/wilke2019fundamentals.md#p185-b002), [Figure 15-7](../../raw/wilke2019fundamentals.md#p186-b001).

<a id="principle-15-choropleth-density-and-area"></a>

### Use choropleths primarily for densities, and check area bias

**Problem addressed:** Large regions attract attention and can make non-density quantities appear more prevalent.

**Recommended solution:** Map densities when possible; for other quantities, use choropleths only when regions are comparably sized or small relative to the spatial pattern.

**Why it works:** Dividing by area counters the perceptual association between larger shaded regions and larger amounts.

**Applies when:** Administrative-area thematic maps.

**Exceptions and qualifications:** Wilke allows cautious non-density choropleths under two stated size/scale conditions.

**Book example:** Figure 15-14 lets sparse Alaska dominate median income; Figure 15-15 reweights geography by population in a cartogram.

**Search terms:** `choropleth`, `density`, `area bias`, `cartogram`

**Evidence:** passages [p191-b002](../../raw/wilke2019fundamentals.md#p191-b002), [p192-b003](../../raw/wilke2019fundamentals.md#p192-b003), [p193-b002](../../raw/wilke2019fundamentals.md#p193-b002); figures [Figure 15-14](../../raw/wilke2019fundamentals.md#p193-b001), [Figure 15-15](../../raw/wilke2019fundamentals.md#p194-b001).

<a id="principle-15-bin-color-for-readable-map-values"></a>

### Bin choropleth colors when category recognition matters

**Problem addressed:** Readers struggle to match an exact continuous color to a legend.

**Recommended solution:** Discretize the values into roughly four to six distinct color bins when easy lookup outweighs continuous precision.

**Why it works:** Distinct colors can be uniquely recognized, trading some numeric detail for more reliable perception.

**Applies when:** Choropleths intended for category or range reading.

**Exceptions and qualifications:** Continuous scales may be visually appealing and appropriate when smooth spatial variation, rather than range lookup, is primary.

**Book example:** Figure 15-13 bins US county median income into five groups.

**Search terms:** `choropleth`, `binned color`, `legend lookup`, `four to six bins`

**Evidence:** passages [p191-b002](../../raw/wilke2019fundamentals.md#p191-b002), [p192-b001](../../raw/wilke2019fundamentals.md#p192-b001); figures [Figure 15-13](../../raw/wilke2019fundamentals.md#p192-b002).


## Source boundary

Printed pages 161–180; PDF pages 178–197. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
