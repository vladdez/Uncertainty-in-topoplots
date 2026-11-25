---
title: "Figures vs Wilke"
subtitle: "Review of every site and publication figure against Wilke, Fundamentals of Data Visualization (2019)"
---

::: {.callout-note}
## Scope and method (18 November 2026)

An independent, read-only review of the PNGs that the rendered pages reference, plus
the publication set in `figures/`. Each figure was checked against Wilke's principles
using the archived text (`llm-wiki/handbooks/wilke2019fundamentals-readable.md`);
chapter numbers refer to that book. Two headline findings (V3, V9) were re-checked by
hand. This page lists the open items; fixed ones move to
[Fixed figures](fixed-figures.md).
:::

| | Issue | Figures |
|--|------------------|----|
| [High]{.badge .sev-high} | [V1. The seven visualizations appear in a different order in every figure](#v1) | All pages |
| [High]{.badge .sev-high} | [V3. Hit/miss "most correct / most missed" frames highlight noise and ties](#v3) | Hit or miss |
| [Moderate]{.badge .sev-moderate} | [V8. No time contrast-vs-Basic figure](#v8) | Time |
| [Moderate]{.badge .sev-moderate} | [V11. Boxplots for 3–10 ordinal values](#v11) | Feedback |
| [Moderate]{.badge .sev-moderate} | [V14. Logo labels carry unequal visual weight](#v14) | Sample |
| [Moderate]{.badge .sev-moderate} | [V15. Compact figure: nominal field on a sequential ramp](#v15) | Sample |
| [Moderate]{.badge .sev-moderate} | [V16. Time violin: alphabetical, rotated labels, no task in title](#v16) | Time |
| [Low]{.badge .sev-low} | [V17. Smaller issues](#v17) | Several |

: {.findings-table}

## V1. The seven visualizations appear in a different order in every figure {#v1}

::: {.finding-meta .sev-high}
**Severity:** High (for the paper) · **Principle:** ch. 21 "Use one visual language across compound panels"; ch. 29 "Keep semantics consistent"; ch. 6
:::

**Problem.**

- **Sorted by value:** Task 1 accuracy, Task 2 score and the time estimates.
- **Fixed order with Basic first:** the Likert estimate and contrast figures.
- **Alphabetical with Basic last:** the hit/miss bars, `task2-peak-ppc-figure`, `task2-peak-contrast-figure` and the time violins.
- **Re-sorted inside every panel:** the feedback figures.

Readers have to find each condition again in every figure.

**Fix.** Choose one canonical order and use it everywhere: Basic first, then the six
alternatives grouped by design family. Where sorting by value tells the story (ch. 6
allows "another story-relevant criterion"), keep Basic pinned and highlighted.

## V3. Hit/miss "most correct / most missed" frames highlight noise and ties {#v3}

::: {.finding-meta .sev-high}
**Severity:** High · **Figures:** `figures/task2_hits_misses_stimulus_by_vistype.png`, `task2_hits_misses_pattern_by_vistype.png` · **Principle:** ch. 16 (no differences without uncertainty); ch. 4 (keep the accent for real emphasis)
:::

**Problem.**

- **Row P3_16 (checked):** every panel has 0% hits, yet Confidence intervals is framed
  "Most correct in row" and Basic topoplot "Most missed in row".
- **Rows MMN_1 and N170_12:** one "most missed" panel is framed out of several tied at
  0%.
- **Cell sizes:** cells hold n = 7–26, so these winners are mostly noise.
- **Pattern grid:** it singles out differences such as 16% vs 12%.

**Fix.**

- Preferred: remove the frames.
- Otherwise:
  - name the metric (hit rate or mean score);
  - skip rows where the extreme value is tied;
  - print n or an interval.

The plotting code is in the UnfoldMakie worktree
(`uncertainty_project/working/task2_results/plot_task2_hits_misses.jl`).

## V8. No time contrast-vs-Basic figure {#v8}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Principle:** ch. 16 "Plot uncertainty for the comparison you actually want to make"; ch. 3, ch. 17 (log axes start at 1)
:::

**Problem.** The time-estimate plots show intervals for levels and say they are "not
for differences". The Dunnett ratios exist only as tables.

**Fix.** Plot the ratios to Basic with Dunnett CIs on a log axis centred at 1.

## V11. Boxplots for 3–10 ordinal values {#v11}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Principle:** ch. 9 "Show observations when smoothed group shapes may overstate evidence"
:::

**Problem.** The feedback figures draw boxplots for 3–10 values on a 5-point scale. A
box suggests more distributional detail than the data hold.

**Fix.**

- Show the points with a median tick.
- Alternatively, use a theme × visualization matrix: diverging colour for the median
  intensity, with n printed in each cell (ch. 6, ch. 4).
- Also:
  - lighten the boxed strips (ch. 23);
  - add a reference line at 0 (ch. 23);
  - enlarge the caption (ch. 24).

## V14. Logo labels carry unequal visual weight {#v14}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Figures:** `participant-characteristics-icons-figure`, `-icons-compact`, `software-reduced-logos` · **Principle:** ch. 29 "Add distinctiveness without sacrificing quick comprehension"; ch. 4, ch. 19
:::

**Problem.**

- The logos differ in visual weight in ways unrelated to the data: multicolour MNE, the
  red BrainVision block, the dark Brainstorm block.
- Some logos are harder to read than plain names ("erplab", the R logo with an
  asterisk).

**Fix.** Keep text labels for the journal, as in the reduced figure. The logo version
can stay on the web as an extra.

## V15. Compact figure: nominal field on a sequential ramp {#v15}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Figure:** `participant-characteristics-icons-compact`, panel A · **Principle:** ch. 4 "Use equal-prominence colors for unordered categories"
:::

**Problem.** Research field is a nominal variable, but it is coloured light to dark
blue, which implies an order. Self-assessed level is ordered, so its ramp is fine.

**Fix.** Give field a qualitative palette, or a single colour with direct labels.

## V16. Time violin: alphabetical, rotated labels, no task in title {#v16}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Figure:** `task1-time-violin` · **Principle:** ch. 6 "Turn bars horizontal when category labels are long", "Order categories by a meaningful rule"; ch. 22
:::

**Problem.**

- The violins are in alphabetical order.
- The labels are rotated 35°.
- The title does not name the task.

**Fix.**

- Make the violins horizontal, in the canonical order (V1).
- Title the plot "Comparison task".

The log scale is already right.

## V17. Smaller issues {#v17}

::: {.finding-meta .sev-low}
**Severity:** Low
:::

- **Time-position checks:** tiny ticks, no 95% ribbon, and a linear axis for geometric
  means (ch. 24, ch. 16, ch. 3). *Fixed 24 Nov 2026: larger ticks
  ([V2](fixed-figures.md#v2)), a 95% ribbon and a log time axis
  ([further fixes](fixed-figures.md#further-figure-fixes)).*
- **Contrast figures:** the value labels ("+1 pp", "0.0", "+0.1") overlap the dashed
  zero line (ch. 24).
- **Rating contrast figure:** red marks "interval excludes zero" for gains and losses
  alike. Red reads as "bad", and the colour is the only cue. Use a neutral accent with
  filled vs open points instead (ch. 20, ch. 4).
- **`task2-peak-contrast-figure`:** open circles and alphabetical order (ch. 25, V1).
- **`task2-score-distribution`:** the 0.01-bin histogram looks like a comb. Use an ECDF
  or a display per visualization (ch. 7–8).
- **`task1-descriptive-gradient-plot`:** the mean labels collide with the top of the
  band, and "Confidence intervals" wraps with a large gap (ch. 24). *The wrap is fixed (one-line
  names, [V5](fixed-figures.md#v5)); the label collision remains.*
- **Sample, experience bar chart:** Beginner → Expert runs top to bottom, while the
  multipanel figures put Expert on top (ch. 21).
- **Sample, full country and software charts:** bars of different lengths carry the
  same "1%" label (for example 1.4% and 0.7%). Show n, or one decimal, below 2% (ch. 22).
- **Reduced figure:** the country panel's labels are larger than the other panels'
  labels (ch. 21).
- **Typefaces:** Makie figures use a Helvetica-like font and R figures use Lato. Set
  Lato in the Makie theme, and use `plot_theme()` instead of restating `theme_classic()`
  in each chunk (ch. 21, ch. 28). *Fixed 24 Nov 2026:* `plot_theme()` sets Lato and
  replaces the 24 restated `theme_classic()` calls; the Makie figures use Lato
  (`T2_THEME`). Figures are unchanged except the two Quality figures, now in Lato.
