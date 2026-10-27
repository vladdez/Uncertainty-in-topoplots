---
source_id: "wilke2019fundamentals"
chapter: 6
title: "Visualizing Amounts"
printed_pages: "45–58"
pdf_pages: "62–75"
---

# Chapter 6: Visualizing Amounts

[Book index](README.md) · [Principle catalog](../../catalog/wilke-principles.md) · [Chapter raw start](../../raw/wilke2019fundamentals.md#p062-b001)

**Scope:** Compares bars, grouped/stacked bars, dots, and heatmaps, with emphasis on ordering and baselines.

**Search terms:** `bar chart`, `dot plot`, `heatmap`, `sorting`, `stacking`, `long labels`

## Section map

- **Bar Plots** — printed p. 45; [raw page](../../raw/wilke2019fundamentals.md#page-062)
- **Grouped and Stacked Bars** — printed p. 50; [raw page](../../raw/wilke2019fundamentals.md#p067-b003)
- **Dot Plots and Heatmaps** — printed p. 53; [raw page](../../raw/wilke2019fundamentals.md#p070-b004)

## Actionable principles

<a id="principle-06-horizontal-bars-for-long-labels"></a>

### Turn bars horizontal when category labels are long

**Problem addressed:** Long labels force excessive width or rotated text that is awkward and hard to read.

**Recommended solution:** Swap axes so bars and labels run horizontally.

**Why it works:** Horizontal text creates a more compact display and is easier to scan than rotated tick labels.

**Applies when:** Categorical bar charts with long names.

**Exceptions and qualifications:** Short labels that fit comfortably need no axis swap.

**Book example:** Figures 6-2 and 6-3 compare rotated movie-title labels with a compact horizontal layout.

**Search terms:** `horizontal bars`, `long labels`, `rotated labels`, `readability`

**Evidence:** passages [p063-b003](../../raw/wilke2019fundamentals.md#p063-b003), [p064-b002](../../raw/wilke2019fundamentals.md#p064-b002); figures [Figure 6-2](../../raw/wilke2019fundamentals.md#p064-b001), [Figure 6-3](../../raw/wilke2019fundamentals.md#p065-b001).

<a id="principle-06-order-categories-purposefully"></a>

### Order categories by a meaningful rule

**Problem addressed:** Alphabetical or arbitrary order makes patterns harder to perceive.

**Recommended solution:** Sort unordered categories by the displayed value or another story-relevant criterion; retain a natural order for ordered factors.

**Why it works:** Meaningful ordering turns marks into an interpretable pattern, while shuffling an intrinsic sequence destroys information.

**Applies when:** Bars, dot plots, heatmaps, and small multiples with categorical axes.

**Exceptions and qualifications:** Never sort an ordered factor by value if that breaks its substantive order, such as age groups.

**Book example:** Figures 6-4 to 6-6 contrast arbitrary title-length order, natural age order, and an inappropriate income sort of age groups.

**Search terms:** `sorting`, `category order`, `ordered factor`, `pattern`

**Evidence:** passages [p065-b002](../../raw/wilke2019fundamentals.md#p065-b002), [p072-b002](../../raw/wilke2019fundamentals.md#p072-b002), [p075-b002](../../raw/wilke2019fundamentals.md#p075-b002); figures [Figure 6-6](../../raw/wilke2019fundamentals.md#p067-b001), [Figure 6-15](../../raw/wilke2019fundamentals.md#p075-b001).

<a id="principle-06-stack-only-meaningful-sums"></a>

### Stack bars only when their sum means something

**Problem addressed:** Stacking unrelated quantities creates a total with no valid interpretation and removes shared baselines.

**Recommended solution:** Use stacking when components are additive counts or amounts and their combined height is substantively meaningful.

**Why it works:** The stack communicates both components and their total; without a meaningful total, the geometry asserts a false relationship.

**Applies when:** Counts and compositional amounts.

**Exceptions and qualifications:** Median incomes should not be stacked because sums of medians are meaningless; grouped bars or panels may be preferable.

**Book example:** Figure 6-10 stacks female and male Titanic passenger counts so each bar also represents the class total.

**Search terms:** `stacked bars`, `additivity`, `counts`, `meaningful total`

**Evidence:** passages [p069-b003](../../raw/wilke2019fundamentals.md#p069-b003), [p070-b001](../../raw/wilke2019fundamentals.md#p070-b001); figures [Figure 6-10](../../raw/wilke2019fundamentals.md#p070-b002).

<a id="principle-06-dots-when-zero-baseline-obscures"></a>

### Use dots when a zero-baseline bar hides relevant differences

**Problem addressed:** Bars must start at zero, which can make close values look nearly identical and pull attention away from endpoints.

**Recommended solution:** Encode the amount by dot position on a restricted axis when differences, not absolute extent from zero, are the message.

**Why it works:** A dot uses position without also encoding value through bar length, so the range can be narrowed without violating proportional ink.

**Applies when:** Comparing values in a narrow range, such as life expectancy.

**Exceptions and qualifications:** Bars remain appropriate when magnitude from zero or part-to-whole extent is important.

**Book example:** Figures 6-11 and 6-12 show how dots reveal life-expectancy differences that long bars obscure.

**Search terms:** `dot plot`, `zero baseline`, `bar length`, `narrow range`

**Evidence:** passages [p070-b004](../../raw/wilke2019fundamentals.md#p070-b004), [p071-b001](../../raw/wilke2019fundamentals.md#p071-b001); figures [Figure 6-11](../../raw/wilke2019fundamentals.md#p071-b002), [Figure 6-12](../../raw/wilke2019fundamentals.md#p072-b001).

<a id="principle-06-heatmaps-for-large-patterns"></a>

### Use heatmaps for large amount matrices when broad pattern matters

**Problem addressed:** Many groups and values overwhelm bars or dots.

**Recommended solution:** Map values to color in a matrix and order categories according to the comparison or story.

**Why it works:** The compact color field exposes trends across many cells, though exact numeric reading becomes harder.

**Applies when:** Large category-by-time or category-by-category matrices.

**Exceptions and qualifications:** Do not choose a heatmap when readers must recover exact values; ordering remains consequential and may change the story.

**Book example:** Figures 6-14 and 6-15 order internet-adoption rows by 2016 level versus adoption onset, revealing different patterns.

**Search terms:** `heatmap`, `large matrix`, `trend`, `exact values`, `row order`

**Evidence:** passages [p073-b002](../../raw/wilke2019fundamentals.md#p073-b002), [p074-b003](../../raw/wilke2019fundamentals.md#p074-b003), [p075-b002](../../raw/wilke2019fundamentals.md#p075-b002); figures [Figure 6-14](../../raw/wilke2019fundamentals.md#p074-b002), [Figure 6-15](../../raw/wilke2019fundamentals.md#p075-b001).


## Source boundary

Printed pages 45–58; PDF pages 62–75. The next chapter begins after this range. Treat this index as navigation: verify claims in the linked extracted passages and inspect the archived PDF for visual layout.
