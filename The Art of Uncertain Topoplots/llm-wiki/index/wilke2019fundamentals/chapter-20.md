---
source_id: "wilke2019fundamentals"
chapter: 20
title: "Redundant Coding"
printed_pages: "243–254"
pdf_pages: "260–271"
---

# Chapter 20: Redundant Coding

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p260-b001)

**Scope:** Uses multiple channels, perceptually ordered legends, and direct labeling to reduce reliance on color.

**Search terms:** `redundant coding`, `legend order`, `direct labeling`, `shape`, `integrated legend`

## Section map

- **Designing Legends with Redundant Coding** — printed p. 243; [raw page](../../raw/wilke2019fundamentals.md#p260-b003)
- **Designing Figures Without Legends** — printed p. 250; [raw page](../../raw/wilke2019fundamentals.md#p267-b002)

## Actionable principles

<a id="principle-20-redundant-key-encoding"></a>

### Do not rely on color alone for key distinctions

**Problem addressed:** Color can fail with similar hues, small marks, grayscale output, or color-vision deficiency.

**Recommended solution:** Encode important groups redundantly with color plus shape, line type, position, or direct annotation.

**Why it works:** A second channel preserves group identity when color is unavailable or ambiguous.

**Applies when:** Categorical points, lines, and legends.

**Exceptions and qualifications:** Additional channels can add noise; reserve redundancy for distinctions the reader must recover.

**Book example:** Figures 20-1 to 20-4 add point shapes to Iris species so even the grayscale simulation remains legible.

**Search terms:** `redundant coding`, `color plus shape`, `grayscale`, `accessibility`

**Evidence:** passages [p260-b002](../../raw/wilke2019fundamentals.md#p260-b002), [p260-b003](../../raw/wilke2019fundamentals.md#p260-b003); figures [Figure 20-3](../../raw/wilke2019fundamentals.md#p263-b001), [Figure 20-4](../../raw/wilke2019fundamentals.md#p264-b001).

<a id="principle-20-order-legend-like-data"></a>

### Order legend entries to match their visual order

**Problem addressed:** Alphabetical legend order can conflict with the top-to-bottom or left-to-right order viewers perceive in the data.

**Recommended solution:** Reorder legend entries to mirror the marks' salient visual sequence.

**Why it works:** Matching orders reduces search and mental remapping between legend and plot.

**Applies when:** Line charts and other figures whose groups form a stable spatial ordering.

**Exceptions and qualifications:** If series cross heavily and have no stable order, direct labels or another layout may be better.

**Book example:** Figures 20-5 and 20-6 reorder four technology companies from their perceived high-to-low curve order.

**Search terms:** `legend order`, `visual order`, `line chart`, `cognitive load`

**Evidence:** passages [p265-b002](../../raw/wilke2019fundamentals.md#p265-b002); figures [Figure 20-5](../../raw/wilke2019fundamentals.md#p265-b001), [Figure 20-6](../../raw/wilke2019fundamentals.md#p266-b001).

<a id="principle-20-direct-label-instead-of-legend"></a>

### Prefer direct labels when they can replace a lookup legend

**Problem addressed:** Legends make readers shuttle information between separated locations.

**Recommended solution:** Place names or annotated guide marks next to the data they identify.

**Why it works:** Direct labeling removes the transfer step and keeps identity physically attached to the mark.

**Applies when:** A manageable number of lines, clusters, or distributions.

**Exceptions and qualifications:** Crowding may prevent clean direct labels; omitting a legend without adding direct identification is not a solution.

**Book example:** Figures 20-8 to 20-10 directly label stock lines, Iris clusters, and density curves.

**Search terms:** `direct label`, `legend`, `annotation`, `lookup`

**Evidence:** passages [p267-b002](../../raw/wilke2019fundamentals.md#p267-b002); figures [Figure 20-8](../../raw/wilke2019fundamentals.md#p268-b001), [Figure 20-10](../../raw/wilke2019fundamentals.md#p269-b002).

<a id="principle-20-integrate-redundant-legends"></a>

### Integrate legends when one variable uses multiple aesthetics

**Problem addressed:** Separate legends for the same variable fragment a single mapping.

**Recommended solution:** Use one legend-like element that demonstrates all redundant encodings together; integrate it with the axis when position and color encode the same variable.

**Why it works:** A unified guide makes the shared mapping explicit and removes duplicate interpretive work.

**Applies when:** Redundant position/color, color/shape, or similar encodings.

**Exceptions and qualifications:** Only combine guides that truly represent the same variable and scale.

**Book example:** Figure 20-12 embeds the temperature color bar along the temperature position axis.

**Search terms:** `integrated legend`, `redundant aesthetics`, `color bar`, `axis`

**Evidence:** passages [p270-b003](../../raw/wilke2019fundamentals.md#p270-b003); figures [Figure 20-12](../../raw/wilke2019fundamentals.md#p271-b001).


## Source boundary

Printed pages 243–254; PDF pages 260–271. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
