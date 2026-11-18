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
hand. Nothing has been changed yet. These are open items.
:::

| | Issue | Figures |
|--|------------------|----|
| [High]{.badge .sev-high} | [V1. The seven visualizations appear in a different order in every figure](#v1) | All pages |
| [High]{.badge .sev-high} | [V2. Text sizes are unbalanced at final size](#v2) | Ratings, Task 2, Time, Feedback |
| [High]{.badge .sev-high} | [V3. Hit/miss "most correct / most missed" frames highlight noise and ties](#v3) | Hit or miss |
| [High]{.badge .sev-high} | [V4. Feedback panels re-sort the visualizations in each panel](#v4) | Feedback |
| [Moderate]{.badge .sev-moderate} | [V5. Visualization names differ between figures](#v5) | All pages |
| [Moderate]{.badge .sev-moderate} | [V6. Basic topoplot is highlighted only in some figures](#v6) | All pages |
| [Moderate]{.badge .sev-moderate} | [V7. Publication figures: 180-dpi PNG, in-figure titles and subtitles](#v7) | `figures/` |
| [Moderate]{.badge .sev-moderate} | [V8. No time contrast-vs-Basic figure](#v8) | Time |
| [Moderate]{.badge .sev-moderate} | [V9. Task 2 gradient plot sorted by median, shows means](#v9) | Task 2 |
| [Moderate]{.badge .sev-moderate} | [V10. One score, several names and units](#v10) | Task 2 |
| [Moderate]{.badge .sev-moderate} | [V11. Boxplots for 3–10 ordinal values](#v11) | Feedback |
| [Moderate]{.badge .sev-moderate} | [V12. Hit/near-miss bars show no uncertainty](#v12) | Hit or miss |
| [Moderate]{.badge .sev-moderate} | [V13. Country map is a choropleth of raw counts](#v13) | Sample |
| [Moderate]{.badge .sev-moderate} | [V14. Logo labels carry unequal visual weight](#v14) | Sample |
| [Moderate]{.badge .sev-moderate} | [V15. Compact figure: nominal field on a sequential ramp](#v15) | Sample |
| [Moderate]{.badge .sev-moderate} | [V16. Time violin: alphabetical, rotated labels, no task in title](#v16) | Time |
| [Low]{.badge .sev-low} | [V17. Smaller issues](#v17) | Several |
| [Low]{.badge .sev-low} | [V18. Orphaned figure files in `pages/*_files`](#v18) | Project |

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

## V2. Text sizes are unbalanced at final size {#v2}

::: {.finding-meta .sev-high}
**Severity:** High (for the journal) · **Principle:** ch. 24 "Judge text and mark balance at final reproduction size"
:::

**Problem.**

- **Likert figures** (`figures/likert_estimate_figure.png`,
  `figures/likert_contrast_figure.png`): panel titles are 50 pt and y labels 40 pt, but
  the 1–5 and ±2 tick numbers are tiny.
- **Tiny tick text elsewhere:** the PPC and peak-contrast figures, the time-position
  plots, the feedback y axes and the feedback caption.
- **Sizes not as coded:** exports use showtext at 96 dpi on 180-dpi devices, so the
  point sizes in the code are not the printed sizes.

**Fix.**

- Export at the journal column widths (about 3.5 in or 7 in).
- Set real point sizes: ticks 8–9 pt, labels 9–10 pt.
- Drop the dpi-ratio workaround for exports.
- Add anchor labels to the rating axis (what 1 and 5 mean).

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

## V4. Feedback panels re-sort the visualizations in each panel {#v4}

::: {.finding-meta .sev-high}
**Severity:** High · **Figures:** `a305-intensity-theme-figure`, `…-general-bivariates` · **Principle:** ch. 21 "Order panels by a logical sequence"; ch. 6 (horizontal labels)
:::

**Problem.**

- Every theme panel orders the visualizations differently, so Basic and the others
  move between panels.
- The general-bivariates version also has rotated labels.

**Fix.**

- Use one fixed x order in all panels.
- Keep empty slots, so that columns line up vertically.

## V5. Visualization names differ between figures {#v5}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Principle:** ch. 21 (consistency); ch. 22 (unambiguous labels)
:::

**Problem.** The same visualizations appear under different names:

- "Bivariate corner" and "Bivariate corners";
- "Confidence interval" and "Confidence intervals";
- "Basic" and "Basic topoplot";
- "Adjacent" and "Adjacent plots".

In the Task 2 gradient plot, "Confidence intervals" also wraps onto two lines with a
large gap.

**Fix.**

- Use one label vector (`vistype_labels`) for every R figure and the Makie exports.
- Use a short-name variant only where space requires it, and then use it everywhere.

## V6. Basic topoplot is highlighted only in some figures {#v6}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Principle:** ch. 4 "Make baseline colors recede behind highlights"; ch. 21
:::

**Problem.**

- The blue Basic accent appears in the accuracy, score and Likert figures.
- It is missing from the time estimates, the gradient plots, the PPC figure, the peak
  contrasts and the hit/miss bars.

**Fix.** Apply the same accent to Basic in every figure that shows all seven
conditions.

## V7. Publication figures: 180-dpi PNG, in-figure titles and subtitles {#v7}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate (for the journal) · **Figures:** `figures/comparison_accuracy*`, `detection_score*`, `likert_*` · **Principle:** ch. 27 "Match vector or bitmap storage to figure complexity", "Preserve a maximum-quality master"; ch. 22 "Give every figure one title in the location its medium expects"
:::

**Problem.**

- The publication figures are 180-dpi PNGs.
- They carry their own titles and subtitles. One subtitle, for example, defines the CI
  ("Dunnett-adjusted simultaneous 95% CIs").

**Fix.**

- Export the ggplot figures as PDF or SVG (`cairo_pdf`, `svglite`).
- Export the Makie grids as PDF, or as PNG/TIFF at 300 dpi or more.
- Add a `title = FALSE` switch for the exports and move the CI definition into the
  manuscript caption.

The Sample page already works this way.

## V8. No time contrast-vs-Basic figure {#v8}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Principle:** ch. 16 "Plot uncertainty for the comparison you actually want to make"; ch. 3, ch. 17 (log axes start at 1)
:::

**Problem.** The time-estimate plots show intervals for levels and say they are "not
for differences". The Dunnett ratios exist only as tables.

**Fix.** Plot the ratios to Basic with Dunnett CIs on a log axis centred at 1.

## V9. Task 2 gradient plot sorted by median, shows means {#v9}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Location:** `pages/task2.qmd:317–320` (`task2_gradient_order` uses `arrange(median)`) · **Principle:** ch. 6 "Order categories by a meaningful rule"
:::

**Problem.** The plot shows means but is ordered by medians. Bivariate corner (0.68)
therefore sits above Basic (0.70).

**Fix.** Sort by `mean_score`.

## V10. One score, several names and units {#v10}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Principle:** ch. 22 "Label quantitative axes … with variables and units"; ch. 21
:::

**Problem.** The same Task 2 score is described differently in different figures:

- The gradient plot is titled "Detection task accuracy", its axis says "score", and its
  values are 0–1 decimals.
- The model figures say "Detection task score" and use %.
- `task2-peak-ppc-figure` labels a difference axis "%" where "pp" is meant.

**Fix.** Use one name and one unit for the score, and "pp" for differences. Define the
fade beyond 95% in the gradient plots, e.g. "fades from 95% to 99.9% confidence"
(ch. 16).

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

## V12. Hit/near-miss bars show no uncertainty {#v12}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Figure:** `figures/task2_hit_near_miss_by_vistype.png` · **Principle:** ch. 16; ch. 19 (dot size)
:::

**Problem.**

- Some differences between bars are 2–5 pp, yet the bars carry no intervals.
- The small orange and black dots on blue fills are hard to tell apart.

**Fix.**

- Add Wilson 95% whiskers, or point the caption to the contrast models.
- Set a minimum dot size, or give the dots a white halo.

## V13. Country map is a choropleth of raw counts {#v13}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Figure:** `country-count-map` · **Principle:** ch. 15 "Use choropleths primarily for densities, and check area bias"
:::

**Problem.** Russia, Canada, Australia, Brazil and China dominate the map visually with
1–6 participants each. Europe, at about two-thirds of the sample, is barely visible.

**Fix.** Use proportional symbols at the country centroids, or add a Europe inset, or
drop the map in favour of the bar charts. The 6 bins and the equal-area projection are
already good.

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
  means (ch. 24, ch. 16, ch. 3).
- **Contrast figures:** the value labels ("+1 pp", "0.0", "+0.1") overlap the dashed
  zero line (ch. 24).
- **Rating contrast figure:** red marks "interval excludes zero" for gains and losses
  alike. Red reads as "bad", and the colour is the only cue. Use a neutral accent with
  filled vs open points instead (ch. 20, ch. 4).
- **`task2-peak-contrast-figure`:** open circles and alphabetical order (ch. 25, V1).
- **`task2-score-distribution`:** the 0.01-bin histogram looks like a comb. Use an ECDF
  or a display per visualization (ch. 7–8).
- **`task1-descriptive-gradient-plot`:** the mean labels collide with the top of the
  band, and "Confidence intervals" wraps with a large gap (ch. 24).
- **Sample, experience bar chart:** Beginner → Expert runs top to bottom, while the
  multipanel figures put Expert on top (ch. 21).
- **Sample, full country and software charts:** bars of different lengths carry the
  same "1%" label (for example 1.4% and 0.7%). Show n, or one decimal, below 2% (ch. 22).
- **Reduced figure:** the country panel's labels are larger than the other panels'
  labels (ch. 21).
- **Typefaces:** Makie figures use a Helvetica-like font and R figures use Lato. Set
  Lato in the Makie theme, and use `plot_theme()` instead of restating `theme_classic()`
  in each chunk (ch. 21, ch. 28).

## V18. Orphaned figure files in `pages/*_files` {#v18}

::: {.finding-meta .sev-low}
**Severity:** Low · **Area:** Project hygiene
:::

**Problem.** Several tracked PNGs under `pages/*_files/figure-html/` are referenced by
no page and produced by no chunk:

- **Task 1:** `unnamed-chunk-4/7/11/12`;
- **Task 2:** `task2-descriptive-plot-1`, `unnamed-chunk-9/10/11`;
- **Sample:** `unnamed-chunk-6/8`;
- **Subjective:** `likert-basic-contrast-figure-1`, `unnamed-chunk-3-1`.

One of them, Task 1 `unnamed-chunk-4`, is an old bar chart with ±1 SD error bars, a
literal `<U+00B1>` in its caption, and bars cut off at 100%. It could be reused by
mistake.

**Fix.** Check each file against the current chunks, then remove the stale ones with
`git rm`. **Not done:** deleting files needs your go-ahead.

## Done well

- Model estimates are dots with CIs on a restricted axis, not bars, and the CI type is
  always stated (ch. 6, ch. 16, ch. 17).
- The contrast-vs-Basic plots, with simultaneous CIs and a zero line, are close to
  Wilke Fig. 16-8 (ch. 16, ch. 23).
- Bar charts:
  - start at zero;
  - are horizontal, which suits the long labels;
  - are sorted by value with "Other" last.

  The participant multipanel uses a shared 0–100% scale (ch. 6, ch. 17, ch. 21).
- The section heading serves as the figure title on the Sample page (ch. 22).
- The map uses 6 bins and an equal-area projection (ch. 15).
- Time violins use a log scale, and the line is labelled as the geometric mean (ch. 3,
  ch. 8).
- Everything is generated in code, with a cache tied to the data (ch. 28).

## Priorities

1. One canonical order, one set of names, and the Basic accent everywhere (V1, V5, V6).
2. Re-export the publication figures at column size with balanced text, as vector files,
   without in-figure titles (V2, V7).
3. Remove or fix the hit/miss frames (V3).
4. Feedback figure: a fixed order across panels and no boxplots for tiny n (V4, V11).
5. Task 2 gradient sorted by mean, one score name and unit, and a time contrast figure
   (V8–V10).
