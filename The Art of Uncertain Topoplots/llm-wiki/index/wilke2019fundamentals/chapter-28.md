---
source_id: "wilke2019fundamentals"
chapter: 28
title: "Choosing the Right Visualization Software"
printed_pages: "325–332"
pdf_pages: "342–349"
---

# Chapter 28: Choosing the Right Visualization Software

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p342-b001)

**Scope:** Evaluates tools by reproducibility, exploratory flexibility, presentation control, and separation of content from design.

**Search terms:** `software`, `reproducibility`, `repeatability`, `exploration`, `presentation`, `themes`

## Section map

- **Reproducibility and Repeatability** — printed p. 326; [raw page](../../raw/wilke2019fundamentals.md#p343-b001)
- **Data Exploration Versus Data Presentation** — printed p. 327; [raw page](../../raw/wilke2019fundamentals.md#page-344)
- **Separation of Content and Design** — printed p. 330; [raw page](../../raw/wilke2019fundamentals.md#p347-b001)

## Actionable principles

<a id="principle-28-reproducible-and-repeatable"></a>

### Make the plotted result reproducible and, when needed, repeatable

**Problem addressed:** A figure cannot be regenerated reliably if data, transformations, or random elements are unspecified.

**Recommended solution:** Preserve plotted data and transformations; for pixel-level repetition, also control random generators and seeds.

**Why it works:** Reproducibility preserves the message, while repeatability recreates the exact appearance including jitter.

**Applies when:** Scientific pipelines and figures with random placement.

**Exceptions and qualifications:** Substantially similar appearance may be enough for reproducibility even when fonts, colors, or jitter differ.

**Book example:** Figure 28-1 contrasts an exact repeat of a jittered plot with a reproduction carrying the same information but different design and jitter.

**Search terms:** `reproducibility`, `repeatability`, `random seed`, `jitter`

**Evidence:** passages [p343-b001](../../raw/wilke2019fundamentals.md#p343-b001); figures [Figure 28-1](../../raw/wilke2019fundamentals.md#p344-b001).

<a id="principle-28-separate-exploration-from-presentation"></a>

### Use different criteria for exploration and presentation

**Problem addressed:** A polished but inflexible tool slows exploration, while a fast exploratory plot may be unfit for publication.

**Recommended solution:** During exploration optimize rapid remapping and chart switching; during presentation optimize precise, publication-ready communication.

**Why it works:** The phases have different objectives: discovering patterns versus conveying a known point.

**Applies when:** Tool and workflow selection.

**Exceptions and qualifications:** One tool may support both phases; switching tools is also reasonable.

**Book example:** Wilke contrasts rapid changes among scatterplots, densities, boxplots, and heatmaps with later finalization paths.

**Search terms:** `data exploration`, `data presentation`, `workflow`, `tool choice`

**Evidence:** passages [p345-b001](../../raw/wilke2019fundamentals.md#p345-b001); figures [Figure 28-2](../../raw/wilke2019fundamentals.md#p346-b002).

<a id="principle-28-separate-content-and-design"></a>

### Separate figure content from reusable design

**Problem addressed:** Entangling data mappings with styling makes consistent redesign and collaboration difficult.

**Recommended solution:** Determine variables, transformations, scales, ranges, and chart type first; apply fonts, colors, grids, and layout as a separate theme or design layer.

**Why it works:** Separation lets analysts focus on data and designers define a consistent visual language that can be reused.

**Applies when:** Code-based figure systems and multi-figure projects.

**Exceptions and qualifications:** Final design can feed back into content when legibility reveals a structural limitation; the separation is a workflow principle, not an absolute wall.

**Book example:** Figure 28-3 applies four themes to the same unemployment time-series content.

**Search terms:** `content`, `design`, `theme`, `visual language`, `separation`

**Evidence:** passages [p347-b001](../../raw/wilke2019fundamentals.md#p347-b001); figures [Figure 28-3](../../raw/wilke2019fundamentals.md#p348-b002).


## Source boundary

Printed pages 325–332; PDF pages 342–349. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
