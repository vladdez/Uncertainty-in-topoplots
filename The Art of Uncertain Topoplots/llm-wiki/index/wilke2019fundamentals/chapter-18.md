---
source_id: "wilke2019fundamentals"
chapter: 18
title: "Handling Overlapping Points"
printed_pages: "219–232"
pdf_pages: "236–249"
---

# Chapter 18: Handling Overlapping Points

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p236-b001)

**Scope:** Escalates from transparency and jitter to binning, contours, and faceting as overlap becomes more severe.

**Search terms:** `overplotting`, `transparency`, `jitter`, `2D histogram`, `hexbin`, `contour`

## Section map

- **Partial Transparency and Jittering** — printed p. 219; [raw page](../../raw/wilke2019fundamentals.md#p236-b003)
- **2D Histograms** — printed p. 222; [raw page](../../raw/wilke2019fundamentals.md#page-239)
- **Contour Lines** — printed p. 225; [raw page](../../raw/wilke2019fundamentals.md#p242-b002)

## Actionable principles

<a id="principle-18-transparency-plus-small-jitter"></a>

### Combine transparency with restrained jitter for rounded overlaps

**Problem addressed:** Identical coordinates hide counts and can completely occlude minority groups.

**Recommended solution:** Use partial transparency and a small random displacement to expose stacked observations.

**Why it works:** Darkness indicates density, while slight displacement makes it evident that multiple points are present.

**Applies when:** Moderate datasets with rounding or discrete coordinate values.

**Exceptions and qualifications:** Transparency alone is not self-explanatory; too much jitter misrepresents the data.

**Book example:** Figures 18-1 to 18-4 show hidden car observations, transparency, useful jitter, and excessive jitter.

**Search terms:** `overplotting`, `alpha`, `jitter`, `rounded data`

**Evidence:** passages [p236-b003](../../raw/wilke2019fundamentals.md#p236-b003), [p237-b002](../../raw/wilke2019fundamentals.md#p237-b002); figures [Figure 18-3](../../raw/wilke2019fundamentals.md#p238-b002), [Figure 18-4](../../raw/wilke2019fundamentals.md#p239-b002).

<a id="principle-18-bin-very-dense-clouds"></a>

### Bin points when individual marks collapse into a dark band

**Problem addressed:** At very large sample sizes, transparency hides sparse extremes while dense regions become undifferentiated.

**Recommended solution:** Aggregate observations into rectangular or hexagonal 2D bins and encode counts by color.

**Why it works:** Binning converts severe overlap into an explicit density estimate across the plane.

**Applies when:** Large scatterplots where local frequency is more important than case identity.

**Exceptions and qualifications:** Binning loses individual observations and depends on bin size; hexagons modestly improve center-distance geometry over equal-area squares.

**Book example:** Figures 18-5 to 18-7 convert more than 100,000 flight departures from points to rectangular and hexagonal bins.

**Search terms:** `2D histogram`, `hexbin`, `large scatterplot`, `density`

**Evidence:** passages [p240-b002](../../raw/wilke2019fundamentals.md#p240-b002), [p241-b003](../../raw/wilke2019fundamentals.md#p241-b003); figures [Figure 18-6](../../raw/wilke2019fundamentals.md#p241-b002), [Figure 18-7](../../raw/wilke2019fundamentals.md#p242-b001).

<a id="principle-18-contours-only-for-manageable-groups"></a>

### Use density contours only when groups are few and separable

**Problem addressed:** Multiple overlapping contour systems can form an unreadable hairball.

**Recommended solution:** Overlay contours for slowly varying densities and at most two or three clearly separated groups; otherwise facet the groups.

**Why it works:** Contours summarize density effectively only while individual line families can be followed.

**Applies when:** Point clouds with smooth density and limited grouping.

**Exceptions and qualifications:** Strongly overlapping or five-plus groups should be separated into panels.

**Book example:** Figures 18-10 to 18-13 contrast workable two-group contours with tangled five-cut diamond contours and a faceted solution.

**Search terms:** `density contour`, `faceting`, `hairball`, `group overlap`

**Evidence:** passages [p242-b002](../../raw/wilke2019fundamentals.md#p242-b002), [p245-b003](../../raw/wilke2019fundamentals.md#p245-b003), [p246-b002](../../raw/wilke2019fundamentals.md#p246-b002); figures [Figure 18-12](../../raw/wilke2019fundamentals.md#p247-b001), [Figure 18-13](../../raw/wilke2019fundamentals.md#p248-b001).


## Source boundary

Printed pages 219–232; PDF pages 236–249. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
