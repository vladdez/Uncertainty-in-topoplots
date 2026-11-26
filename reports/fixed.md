---
title: "Fixed"
subtitle: "Resolved issues and how they were resolved"
---

| | Issue | Area | Fixed on |
|--|------------------|----|----|
| [High]{.badge .sev-high} | [F32. Task 2 random-effects structure](#f32) | Task 2, manuscript | 26 Nov 2026 |
| [Moderate]{.badge .sev-moderate} | [F31. Feedback codes were linked by row position](#f31) | Feedback, data | 24 Nov 2026 |
| [Low]{.badge .sev-low} | [F30. Cache and duplicate-filter hazards](#f30) | Ratings, Task 2 | 24 Nov 2026 |
| [Low]{.badge .sev-low} | [F29. Rating models: test ignored clustering; estimates were conditional](#f29) | Ratings | 24 Nov 2026 |
| [Low]{.badge .sev-low} | [F28. Unguarded prose, stale labels, typos](#f28) | Task 1, Task 2, Time | 23 Nov 2026 |
| [Low]{.badge .sev-low} | [F27. Task 1: two MMN targets look like N170](#f27) | Task 1, manuscript | 23 Nov 2026 |
| [Low]{.badge .sev-low} | [F26. "Reached the last page" was misleading](#f26) | Sample, data | 23 Nov 2026 |
| [Moderate]{.badge .sev-moderate} | [F25. Hit or miss page skipped the Dunnett rule](#f25) | Hit or miss, Task 2 | 23 Nov 2026 |
| [Moderate]{.badge .sev-moderate} | [F24. Hit-rate probabilities were for a "typical" image, not expected rates](#f24) | Hit or miss, Task 2 | 23 Nov 2026 |
| [Moderate]{.badge .sev-moderate} | [F23. Unadjusted copies of the main comparisons with Basic](#f23) | Task 1, Task 2, Hit or miss | 20 Nov 2026 |
| [High]{.badge .sev-high} | [F10. A303 measures likelihood of use, not helpfulness](#f10) | Ratings, manuscript | 18 Nov 2026 |
| [High]{.badge .sev-high} | [F11. A301 was asked after Task 1 only](#f11) | Ratings, manuscript | 18 Nov 2026 |
| [High]{.badge .sev-high} | [F12. Task 1 text overstated weak effects](#f12) | Task 1 | 18 Nov 2026 |
| [Moderate]{.badge .sev-moderate} | [F13. Task 2 "detection score" was μ, not the expected score](#f13) | Task 2 | 18 Nov 2026 |
| [Moderate]{.badge .sev-moderate} | [F14. Multiplicity was handled inconsistently](#f14) | All | 18 Nov 2026 |
| [Moderate]{.badge .sev-moderate} | [F15. Rating models assumed proportional odds](#f15) | Ratings | 18 Nov 2026 |
| [Moderate]{.badge .sev-moderate} | [F16. Rating ranking mixed different questions and overstated a leader](#f16) | Ratings | 18 Nov 2026 |
| [Moderate]{.badge .sev-moderate} | [F17. Time outliers and the time estimand](#f17) | Task 1, Task 2 | 18 Nov 2026 |
| [Moderate]{.badge .sev-moderate} | [F18. Fixed item order in the rating questions](#f18) | Ratings, manuscript | 18 Nov 2026 |
| [Low]{.badge .sev-low} | [F21. glmmTMB was built against an older TMB](#f21) | All models | 18 Nov 2026 |
| [Low]{.badge .sev-low} | [F19. Sample definition and data quality](#f19) | Data | 18 Nov 2026 |
| [Low]{.badge .sev-low} | [F20. Stale hard-coded text and suspicious items](#f20) | Task 1, Task 2 | 18 Nov 2026 |
| [Low]{.badge .sev-low} | [F22. Random slopes in the rating models were not explained](#f22) | Ratings | 18 Nov 2026 |
| [Critical]{.badge .sev-critical} | [F9. Completion times were joined to the wrong trials](#f9) | Task 1, Task 2 | 16 Nov 2026 |
| [High]{.badge .sev-high} | [F3. Analytic sample definition](#f3) | Data | 16 Nov 2026 |
| [Moderate]{.badge .sev-moderate} | [F4. Feedback codes filed under the wrong participant](#f4) | Feedback | 16 Nov 2026 |
| [Low]{.badge .sev-low} | [F8. Outdated sample sizes in text](#f8) | Task 2, manuscript | 16 Nov 2026 |
| [High]{.badge .sev-high} | [F2. Task 1 ignored repeated comparison items](#f2) | Task 1 | 3 Nov 2026 |
| [Low]{.badge .sev-low} | [F6. Task 2 descriptive error bars](#f6) | Task 2 | 3 Nov 2026 |
| [Critical]{.badge .sev-critical} | [F1. A304 aesthetic-rating labels were wrong](#f1) | Ratings | 28 Oct 2026 |
| [Moderate]{.badge .sev-moderate} | [F5. Obsolete pilot analysis file](#f5) | Project | 28 Oct 2026 |
| [Low]{.badge .sev-low} | [F7. Reduced sample-figure caption](#f7) | Sample | 28 Oct 2026 |

: {.findings-table}

Dates are when the fix was committed (from Git history).

## F32. Task 2 random-effects structure {#f32}

::: lineage
[formerly]{.id-note} [U2]{.id-old} → [A2]{.id-old} → [F32]{.id-new}
:::

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Area:** Task 2 detection-score model; manuscript
:::

**Problem.** Each image (one stimulus shown with one visualization) was answered by
about 15 participants, but the Task 2 models treated those answers as independent. Some
images were simply harder than others, so differences between visualizations looked more
certain than they were, and the manuscript described effects that did not survive a
correct model.

**Resolution (26 Nov 2026).**

- **Model.** The primary model is
  `score ~ vistype + pattern + position_c + (1 | ID) + (1 | stimulus) + (1 | stimulus:vistype)`,
  with an intercept for each of the 210 images; the two-part sensitivity model and the
  three hit-or-miss models use the same structure. Evidence for the image intercept
  (N = 146):

  | Model | AIC without → with | Image SD | Overall visualization LRT, without → with |
  |---|---|---|---|
  | Score (ordered beta) | 1178 → 1107 | 0.27 | χ²(6) = 23.1, p = .0008 → χ²(6) = 8.0, p = .23 |
  | Exact hit (logistic) | 2497 → 2448 | 0.82 | χ²(6) = 14.6, p = .023 → χ²(6) = 8.6, p = .20 |
  | Hit or near hit (logistic) | 3347 → 3161 | 1.12 | χ²(6) = 19.9, p = .003 → χ²(6) = 9.0, p = .17 |

  Point estimates barely move; standard errors grow 1.5–2.2×. After Dunnett adjustment
  (N = 150), only one contrast remains below .05: exact hit, Adjacent plots (p = .032),
  from an outcome whose overall test is not significant, so it is reported as
  exploratory.
- **Participant slopes.** Tested; their omission is explained on the Task 2 page (the
  full correlated structure does not converge; the position slope is computed, SD 0.013
  logit per trial).
- **Task 1 has no image-level variation to model.** The same term (target stimulus ×
  visualization) added to the Task 1 model changes nothing (N = 150):

  | | Without | With |
  |---|---|---|
  | AIC | 2839.3 | 2841.1 |
  | Image SD (logit) | — | 0.15, against 1.01 for stimulus and 1.10 for distractor |
  | Overall visualization LRT | χ²(6) = 12.61, p = .0497 | χ²(6) = 12.19, p = .058 |

  The term itself is not supported (χ²(1) = 0.16, p = .69), standard errors grow by about
  3%, and all six Dunnett-adjusted contrasts stay above .10, so Task 1 keeps
  `(1 | ID) + (1 | stimulus) + (1 | wrong_image)`.
- **Manuscript.** *Results → Task Performance* now says that the effects of visualization
  type were weak overall: the Task 1 overall test is borderline with no significant
  contrast, and no Task 2 overall test is significant once each image has its own
  intercept; the single adjusted contrast below .05 is labelled exploratory. Task 1
  values come from `numbers.json`, and an `#assert` stops the build if a Task 1 contrast
  drops below .05. *Limitations* says that the conclusions generalize to new stimuli
  only as far as the 30 sampled topographies represent those researchers encounter.
  Compiled through `scripts/compile-journal.ps1` on 26 Nov 2026.

## F31. Feedback codes were linked by row position {#f31}

::: lineage
[formerly]{.id-note} [A3]{.id-old} → [F31]{.id-new}
:::

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** Open-ended feedback, data preparation
:::

**Problem.** The participant `ID` on the pages is only a row number after the sample
filters (1, 2, 3, …). The A305 coding workbook was filed under this number. If a new
export were sorted or filtered differently, every code after the change would silently
move to the wrong participant. A check after each refresh caught this, but the design
itself was fragile.

**Resolution (24 Nov 2026).** The workbook is now keyed on SoSci Survey's record number
(`CASE`), which a participant keeps in every export.

- **Analysis data.** `scripts/analysis_setup.R` keeps `CASE` (and checks that it is
  unique); before, it was dropped with the first columns.
- **Migration.** `scripts/migrate_a305_to_case.R` replaced the `ID` column of the
  workbook (291 rows, 70 participants) and of `data/a305_excluded_ids.csv` (5 rows) with
  `CASE`. All other cells are unchanged, and converting back gives the original IDs. The
  workbook's Excel table now also covers the rows appended after it was created.
- **Feedback page.** It looks up each participant's `ID` from `CASE`, so the page still
  shows the same IDs as all other pages. Its numbers and tables are unchanged.
- **Refresh tools.** `scripts/check_data_refresh.R`, the append-script template
  (`scripts/append_a305_ids_150_150.R`) and the data-refresh instructions now use
  `CASE`; older append scripts are marked historical. The check still confirms that
  every coded unit occurs in its participant's response (291 of 291).
- **Public workbook.** The download now shows `CASE` instead of `ID`. `CASE` was
  already in the published de-identified data, so nothing new is disclosed.

## F30. Cache and duplicate-filter hazards {#f30}

::: lineage
[formerly]{.id-note} [U22]{.id-old} → [F30]{.id-new}
:::

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** `pages/subjective.qmd` (setup); `scripts/prepare_task2_region_plot_data.R`
:::

**Problem.** Two places could silently go out of date.

- **Stale cache.** Quarto saves the results of slow code chunks and reuses them on the
  next render if their inputs look unchanged. The Subjective page's cached sensitivity
  analysis (ratings without the flagged participants) reads the flag rules in
  `scripts/data_quality.R`, but the cache did not watch that file. Changing a rule
  would have updated the Sample page and left the Subjective result stale.
- **Second sample definition.** The Task 2 plotting-prep script read the survey export
  itself and copied the "who is in the sample" filters, so the two definitions could
  drift apart.

**Resolution (24 Nov 2026).**

- **Cache.** The Subjective page now passes `scripts/data_quality.R` to
  `configure_analysis_cache()`, so editing the flag rules invalidates its cache.
- **Sample definition.** The prep script now sources `scripts/analysis_setup.R` and uses
  its analytic sample (`data`). Its output is unchanged: 3,129 responses and 1,344
  plot rows, identical to the previous version.

## F29. Rating models: test ignored clustering; estimates were conditional {#f29}

::: lineage
[formerly]{.id-note} [U21]{.id-old} → [F29]{.id-new}
:::

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** `pages/subjective.qmd` (model checks, rating tables and figures); `pages/figures.qmd`
:::

**Problem.**

- **The proportional-odds test ignored clustering.** Each participant rated all seven
  visualizations, so their seven ratings are related. The test used a model without a
  participant term (`clm`) and treated them as independent, which makes p values too
  small.
- **The estimates were for a typical participant** (participant effect at zero), not
  averages over all participants, but were labelled "model-smoothed mean ratings".

**Resolution (24 Nov 2026).**

- **Test.** It now uses `clmm2` with a participant random intercept, comparing the
  model with and without visualization-specific thresholds. (`clmm` cannot fit the
  second model: it ignores the `nominal` argument with a warning.) The conclusion is
  unchanged: proportional odds is rejected for all four items.
- **Labels.** Tables, figure captions, the contrast-figure axis and the Figures-page
  alt texts now say "expected rating, typical participant". These values stay within
  0.08 scale points of the raw means.

| Item | Old test (`clm`) | New test (`clmm2`, participant random intercept) |
|--------------------------------|----------|----------|
| Helpful for comparison | LR 36.2, p = .007 | LR 33.6, p = .014 |
| Helpful for detection and integration | LR 49.4, p < .001 | LR 48.9, p < .001 |
| Would use in publication or presentation | LR 38.3, p = .004 | LR 39.1, p = .003 |
| Aesthetically appealing | LR 50.5, p < .001 | LR 51.7, p < .001 |

All tests have 18 degrees of freedom (measured 24 Nov 2026, N = 150).

## F28. Unguarded prose, stale labels, typos {#f28}

::: lineage
[formerly]{.id-note} [U23]{.id-old} → [F28]{.id-new}
:::

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** Task 1, Task 2, Time pages
:::

**Problem.** Several small things on the public pages were wrong or could silently
become wrong: a sentence that claimed no missing data without checking it, a figure
with an old title and an order that did not match what it showed, three typos, and a
Time page that used a different adjustment and different degrees of freedom than it
said.

**Resolution (23 Nov 2026).**

- **Task 1, "no responses excluded".** A `stopifnot()` now stops the render if
  `task1_trials.R` ever drops a row, so the sentence cannot become false unnoticed.
- **Task 2 gradient figure** (also `figures/task2_gradient_figure.png`). The in-figure
  title "Detection task accuracy" is removed (the caption describes the figure, as in
  the Wilke rule on one title per figure), and the rows are ordered by the mean the
  figure shows instead of the median (part of [V9](fixed-figures.md#v9)).
- **Typos.** "becausewe" → "because we" (Task 1); "participan" → "participant" (Task 2);
  "This calcaulation is actually more complicated." rewritten as: "The region score is
  the mean |voltage| / SE in that region, rescaled within each stimulus so that the
  weakest region scores 0 and the strongest 1. The steps are in the note below."
- **Time page, adjustment.** `dunnettx` (an approximation) is replaced by `mvt`, the
  exact multivariate-*t* Dunnett adjustment used on the other pages.
- **Time page, degrees of freedom.** All time models now use asymptotic degrees of
  freedom (`lmer.df = "asymptotic"`), as the model note says. Before, the 1.5 × IQR
  sensitivity fit had fewer than 3,000 trials, so `emmeans` silently switched to
  Kenward–Roger.

**Effect.** The main time results are unchanged. One sensitivity comparison sits on the
edge: Task 1 Uncertainty markers vs Basic topoplot under the 1.5 × IQR rule.

- **23 Nov 2026, N = 149:** with the same degrees of freedom as the other fits, it
  became "slower", so all three outlier rules agreed.
- **24 Nov 2026, N = 150:** after the data refresh it is again "not clearly different"
  (time ratio 1.09 [0.99, 1.19]), while the cap (1.12 [1.01, 1.24]) and all trials
  (1.14 [1.02, 1.27]) say "slower". The Time page reports this one change.

The interval only just touches 1, so this verdict can flip with small changes in the
data; it does not change the main conclusion that all six visualizations took longer
than Basic topoplot.

## F27. Task 1: two MMN targets look like N170 {#f27}

::: lineage
[formerly]{.id-note} [U16]{.id-old} → [F27]{.id-new}
:::

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** Task 1 stimuli, manuscript
:::

**Problem.** In Task 1, participants pick which of two maps matches the target. Two
MMN targets were matched correctly less than half the time:

| Target | Correct overall | vs N170 distractor | vs P3 distractor |
|---|---|---|---|
| MMN_19 | 41.7% | 15.3% | 69.6% |
| MMN_29 | 45.6% | 20.0% | 65.5% |

The answer key is correct for all 3,150 trials. The two images are single-participant
maps with a low voltage range (colour scales of only ±1.5 and ±1.7 µV), so the pattern
is faint, and their positive area sits at the side, not at the back. Some N170 maps
look more like the MMN template than these two MMN maps do.

**Resolution (23 Nov 2026).** The trials stay in the main analysis: they are spread
evenly across the seven visualizations (27–36 each), so they add noise, not bias.

- **Analysis site.** Task 1 → [Item-level diagnostics](https://vladdez.github.io/Uncertainty-in-topoplots/pages/task1.html#task1-item-diagnostics)
  shows the check and the main comparison with and without these trials, as a figure
  and a table. Without them, the estimates move only slightly (Bivariate range −5.3 →
  −6.1 pp, Bivariate corner −4.3 → −5.5 pp), all six Dunnett-adjusted intervals still
  include 0, and the omnibus test moves from p = .050 (exact .0497) to p = .024 (exploratory, measured
  24 Nov 2026, N = 150).
- **Supplementary material.** A "Data quality checks" section (1.1) with a summary
  table of all checks (Table S4), the item-level check (1.1.2) and the comparison
  (Table S5), next to the participant checks.
- **Manuscript.** The Stimuli section says that some single-participant MMN and N170
  variations look alike and points to Section 1.1.2 and Table S5. The Participants
  section summarises the participant checks and points to Section 1.1 and Table S4.

## F26. "Reached the last page" was misleading {#f26}

::: lineage
[formerly]{.id-note} [U20]{.id-old} → [F26]{.id-new}
:::

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** `pages/sample.qmd` (Sample definition), headers of `scripts/data_quality.R` and `scripts/analysis_setup.R`
:::

**Problem.** The Sample page said only records that "reached the last page" are analysed.
The filter checks page 51, but the survey has 53 pages, and many analysed participants
never reached page 53 or are not flagged as finished by SoSci Survey. So the sentence
looked wrong, or as if incomplete records were analysed.

**Resolution (23 Nov 2026).** Page 51 (open feedback) is the last questionnaire page;
pages 52–53 only lead to the optional raffle. A participant who stops after page 51 has
answered the whole questionnaire. The Sample page and the code comments now say this:
records are analysed if they reached page 51, and stopping before the raffle pages, or
not being flagged as finished, does not mean an incomplete questionnaire. No data
changed.

## F25. Hit or miss page skipped the Dunnett rule {#f25}

::: lineage
[formerly]{.id-note} [U19]{.id-old} → [F25]{.id-new}
:::

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** Hit or miss page; Task 2 two-part model; [A1](addressed.md#a1), [A2 (now F32)](#f32)
:::

**Problem.** Every page compares each visualization with Basic topoplot and corrects the
p values for making six such comparisons (Dunnett, [F14](#f14)). The Hit or miss page
did not, so four comparisons looked significant that are not after the correction. The
audit pages A1 and A2 still quoted those uncorrected p values, and the Task 2 two-part
section gave no overall test.

**Resolution (23 Nov 2026).**

- **Hit or miss page.** The comparisons use `adjust = "mvt"` (switched on 20 Nov in
  F23); the odds-ratio table now has a caption that states the adjustment.
- **Task 2 two-part section.** It now reports the overall test of visualization type
  for each part: exact peak χ²(6) = 8.4, p = .21; misses χ²(6) = 8.7, p = .19 (measured 24 Nov 2026, N = 150).
- **A1 and A2.** The uncorrected p values are replaced by the Dunnett-adjusted ones.
- **F14 table.** It now lists the Hit or miss page.

Dunnett-adjusted p values (measured 24 Nov 2026, N = 150):

| Contrast with Basic topoplot | Uncorrected (N = 146) | Dunnett-adjusted |
|--------------------------------|----------|----------|
| Hit, Adjacent plots | .006 | **.032** |
| Hit, Confidence intervals | .046 | .160 |
| Hit or near hit, Uncertainty markers | .029 | .118 |
| Hit or near hit, Bivariate range | .032 | .123 |

Only Adjacent plots for exact hits stays below .05. The overall tests are not
significant, so this single comparison is read as exploratory.

## F24. Hit-rate probabilities were for a "typical" image, not expected rates {#f24}

::: lineage
[formerly]{.id-note} [U18]{.id-old} → [F24]{.id-new}
:::

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** Hit or miss page; Task 2 two-part model table
:::

**Problem.** The hit-rate tables showed the chance of a hit for one imaginary,
perfectly average participant looking at a perfectly average image. Participants and
images differ a lot, so this "typical" value was far below the rate actually expected
across everyone, and below the observed shares. It also made the differences between
visualizations look larger in relative terms. *Technically:* `emmeans(type = "response")`
on the binomial mixed models sets all three random intercepts to zero.

**Resolution (23 Nov 2026).** The tables now report the expected rate averaged over all
participants, stimuli and images, as the Task 2 page already does for the expected score
(F13).

- **How.** A shared helper, `marginal_response_by_vistype()` in
  `scripts/analysis_setup.R`, integrates over the summed random-intercept variance.
- **95% confidence intervals.** From 4,000 draws of the model parameters.
- **Where it is used.** The Hit or miss table (hit; hit or near hit) and the Task 2
  two-part model table (probability of exact peak; mean score of misses).
- **Typical-image values** are no longer shown.
- **p values** are unchanged: they compare visualizations on the model scale.

Example: Basic topoplot (measured 24 Nov 2026, N = 150).

| What is shown | Old: typical image | New: averaged | Observed |
|--------------------------------|----------|----------|----------|
| Exact hit | 5% [3, 11] | 13% [8, 20] | 14.9% |
| Hit or near hit | 26% | 35% [26, 46] | 38.2% |

The new values are close to the observed shares. Adjacent plots vs Basic topoplot is now
22% vs 13% (was 13% vs 5%).

## F23. Unadjusted copies of the main comparisons with Basic {#f23}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** Task 1, Task 2, Hit or miss
:::

**Problem.** The main results are the six comparisons of each visualization with Basic,
Dunnett-adjusted (F14). Several places still showed the same six comparisons without
adjustment. These copies added nothing and invited picking the smaller p value. Example:
Task 1, Bivariate range vs Basic was p = .033 unadjusted but .13 adjusted.

- **Task 1:** a "p (unadjusted)" column in the main comparison table; an "Unadjusted
  coefficients" sentence; unadjusted intervals, p values and a sentence in the
  conditional-logit sensitivity analysis.
- **Task 1 and Task 2 coefficient tables:** unadjusted p values below .05 were
  highlighted in dark red, so they looked like findings.
- **Hit or miss:** the p values against Basic were unadjusted only.

**Resolution (20 Nov 2026).**

- **Task 1:** the unadjusted column, sentences and intervals are removed. Only the
  Dunnett-adjusted results remain.
- **Coefficient tables:** kept, because they show the whole model (ERP pattern,
  position). The red highlighting is removed, and the caption points to the
  Dunnett-adjusted comparisons for the visualization rows.
- **Hit or miss:** p values and intervals against Basic are now Dunnett-adjusted. Of the
  four comparisons below .05 before, one remains: Adjacent plots for exact hits
  (p = .031).

## F10. A303 measures likelihood of use, not helpfulness {#f10}

::: lineage
[formerly]{.id-note} [U3]{.id-old} → [F10]{.id-new}
:::

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Area:** Subjective ratings, manuscript
:::

**Problem.** A303 (survey label "Usage material", scale "very unlikely" to "very
likely") was called "Helpful for representation" on the Subjective page and in
`journal.typ`.

**Resolution (18 Nov 2026).** The item wording is: "I would prefer to use this
visualization for representing signal mean and standard error in a publication or
presentation."

- **Subjective page.** A303 is now labelled "Would use in publication or presentation"
  in tables, figures (panel title "Would use in publication") and text. A new **Rating
  items** table lists each item's code, wording or survey label, response scale, and
  when it was asked.
- **Manuscript.** Task 3 now quotes the A303 wording and its likelihood scale.
- **Figures page.** The alt texts are updated.

## F11. A301 was asked after Task 1 only {#f11}

::: lineage
[formerly]{.id-note} [U4]{.id-old} → [F11]{.id-new}
:::

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Area:** Subjective ratings, manuscript
:::

**Problem.** A301 ("Helpful for comparison") was answered right after Task 1, and
A302–A304 after Task 2. The manuscript Procedure placed all ratings after both tasks.

**Resolution (18 Nov 2026).**

- **Manuscript.** The Procedure now says that participants rated helpfulness for
  comparison after Task 1 and gave the other three ratings after Task 2. Task 3 states
  the same, and the Limitations section mentions the different timing.
- **Subjective page.** The Rating items table has an "Asked" column.
- **Composite.** The equal-weight composite that mixed the two time points is removed
  (F16).

## F12. Task 1 text overstated weak effects {#f12}

::: lineage
[formerly]{.id-note} [U5]{.id-old} → [F12]{.id-new}
:::

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Area:** Task 1 reporting
:::

**Problem.** The text said Bivariate corner and Bivariate range "were associated with
lower odds" of a correct answer, although every interval included 1 and the omnibus test
gave p = .056.

**Resolution (18 Nov 2026).** All accuracy prose on the Task 1 page comes from one helper
(`task1_effect_sentence`). The page now says a visualization was "lower" or "higher" than
Basic topoplot only when the 95% confidence interval of the difference does not include
"no difference" (0 percentage points, or an odds ratio of 1). Otherwise it says the
interval includes no difference and names the visualizations with the lowest estimates.
This covers the coefficient and conditional-logit conclusions and a
new section, "Summary of the Task 1 accuracy evidence".

**Current numbers** (measured 24 Nov 2026, N = 150).

- Omnibus test: χ²(6) = 12.61, p = .0497.
- Population-average contrasts with Basic (Dunnett-adjusted):
  - Bivariate range: −5.3 pp [−11.5, +0.8], p = .12.
  - Bivariate corner: −4.3 pp [−10.5, +1.8], p = .26.
- Odds ratios (Dunnett-adjusted): Bivariate range 0.66 [0.41, 1.05]; Bivariate corner
  0.71 [0.44, 1.14].
- The page calls the evidence weak: Range and Corner may carry a small accuracy cost
  that the study cannot tell apart from no difference.

## F13. Task 2 "detection score" was μ, not the expected score {#f13}

::: lineage
[formerly]{.id-note} [U6]{.id-old} → [F13]{.id-new}
:::

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** Task 2 reporting
:::

**Problem.** In Task 2 a participant's score can be exactly 0 (completely wrong), exactly 1
(perfect), or somewhere in between. The page reported a "detection score" that was
really the average of only the in-between answers. The perfect and completely wrong
answers were left out. Because many answers were perfect, this made every visualization
look worse than it was, like working out a class's average grade without the students
who got full marks. *Technically:* `emmeans(type = "response")` on the ordered-beta model
returns μ, the mean of the continuous part, and ignores the probability of exact 0 and 1.

**Resolution (18 Nov 2026).** The page now reports the full expected score, E[y]. It
counts all answers: perfect, completely wrong and in between.

- **Formula.** E[y] = P(1) + (1 − P(0) − P(1)) μ. In words: the chance of a perfect
  answer, plus the in-between average weighted by how often in-between answers occur.
- **Where P(0) and P(1) come from.** From the model's two cutpoints (`psi` in glmmTMB).
  We checked that they reproduce the actual shares of 0s and 1s in the data.
- **95% confidence intervals.** We drew 4,000 random sets of model parameters, computed
  the score for each, and took the middle 95%.
- **Two versions.** The main score is averaged over all participants, stimuli and
  images. A second score is for a typical participant on a typical image.
- **Where it is used.** All tables, the figure and the text on the Task 2 page now use
  E[y].

Example: Basic topoplot, Task 2 score computed four ways (measured 24 Nov 2026, N = 150).

| What is shown | Score [95% CI] |
|--------------------------------------|----------|
| Old score: average of the in-between answers only (μ) | 68.4% |
| New score for a typical participant on a typical image (E[y], random effects set to zero) | 73.3% [67.7, 78.2] |
| New score averaged over all participants and images (E[y]; **reported on the page**) | 71.2% [66.0, 75.8] |
| Plain average of the actual answers, no model | 69.8% |

The old score was too low because it left out the perfect answers. The reported new score
is close to the plain average of the data. The two new scores differ because the model
works on a curved scale, so the score of a typical person is not the same as the average
over everyone.

(The original audit quoted 67.6% for the old score. That came from an earlier model
without the per-image term.)

## F14. Multiplicity was handled inconsistently {#f14}

::: lineage
[formerly]{.id-note} [U8]{.id-old} → [F14]{.id-new}
:::

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** All inferential results
:::

**Problem.** There were no primary contrasts, and the same contrast appeared under
different adjustments. For example, Task 2 Bivariate corner vs Basic was p = .070 in the
Tukey table, an interval excluding zero in the Dunnett figure, and p = .005 in the
coefficient table.

**Resolution (18 Nov 2026).** One rule on every page: the primary family is the six
contrasts against Basic topoplot within each outcome, Dunnett-adjusted. Captions name
the adjustment.

| Page | Primary contrasts | Other tables |
|---|---|---|
| Task 1 | Simultaneous (max-\|z\|) intervals for accuracy differences; Dunnett odds ratios (`mvt`); conditional logit with Dunnett intervals | Coefficient p labelled "unadjusted" |
| Task 2 | Dunnett on the logit scale; simultaneous intervals for E[y] differences | Tukey all-pairs in a collapsed "secondary / exploratory" callout; coefficient p labelled "unadjusted" |
| Time | Dunnett ratios to Basic for both tasks | Time–accuracy p labelled "unadjusted" |
| Ratings | Dunnett (`mvt`) within each item | — |
| Hit or miss | Dunnett odds ratios (`mvt`) for hit and for hit or near hit (F23, F25) | Overall likelihood-ratio test per outcome |

**Task 2 Bivariate corner vs Basic is now reported once:** −3.2 pp [−8.3, +1.8],
Dunnett p = .351. With the image intercept in the model, no Task 2 contrast reaches
adjusted p < .05.

## F15. Rating models assumed proportional odds {#f15}

::: lineage
[formerly]{.id-note} [U9]{.id-old} → [F15]{.id-new}
:::

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** Subjective-rating models
:::

**Problem.** The ordinal rating models assume proportional odds: a visualization shifts
every rating step (1→2, 2→3, …) by the same amount, so its effect can be summarised by
one odds ratio. Tests rejected this for all four questions (p = .011 to 3 × 10⁻⁵).

**Resolution (18 Nov 2026).** The Subjective page has a new section, "Model checks and
sensitivity analyses".

- The page no longer interprets odds ratios. It reports *model-smoothed mean ratings*
  instead. These differ from the raw means by at most 0.08.
- **Sensitivity.** A simpler linear model (`rating ~ vistype + (1 | ID)`) gives the same
  answer for 24 of 24 contrasts: the same intervals exclude zero.

## F16. Rating ranking mixed different questions and overstated a leader {#f16}

::: lineage
[formerly]{.id-note} [U10]{.id-old} → [F16]{.id-new}
:::

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** Subjective ratings
:::

**Problem.** The overall ranking summed the mean ratings of the four questions with equal
weight, although they measure different things (one is likelihood of use, F10; one was
asked at a different time, F11), and neighbouring ranks were indistinguishable (e.g.,
Uncertainty markers 12.28 [11.62, 12.88] vs Basic 12.24 [11.70, 12.82]). The tables also
highlighted a "leader" per question, e.g. Confidence intervals for comparison. But its
difference from Basic (+0.18 [−0.09, 0.45]) included zero, so "no difference from Basic"
was still plausible. Its differences from the other visualizations were never tested.

**Resolution (18 Nov 2026).**

- The "Sum of mean ratings" column is removed. The page explains why: the items measure
  different things (F10) and were asked at different times (F11).
- The "leader" highlighting is removed. Red now marks only clear differences from Basic.
  A difference is clear when its Dunnett-adjusted 95% interval does not include zero.
  Zero means "rated the same as Basic". In the code this flag is `excludes_zero`.
  Example: Confidence intervals for comparison has +0.18 [−0.09, 0.45]. This interval
  includes zero, so it is no longer red.
- A generated list under the figure names the contrasts that exclude zero. The page
  states that differences among the uncertainty visualizations were not tested, so it
  names no "best" visualization.

## F17. Time outliers and the time estimand {#f17}

::: lineage
[formerly]{.id-note} [U11]{.id-old} → [F17]{.id-new}
:::

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** Task 1 and Task 2 completion time
:::

**Problem.** The descriptive time tables and the models used different data: the tables
dropped outlier trials (1.5 × IQR per visualization), while the models kept every trial,
including pages left open for 5,264 s and 11,221 s. The model estimate was also labelled
"estimated time", although after back-transforming from the log scale it is a geometric
mean, i.e. the median time of a typical participant.

**Resolution (18 Nov 2026).**

- **One rule for tables and models.** Trial pages longer than 180 s are excluded, and
  the same trials feed the tables, the violin plot, the position checks, the time models
  and the time–accuracy models. The median page time is 12–13 s, so a page open for
  more than 3 minutes almost certainly means an interruption. The page says the cap was
  chosen after seeing the distributions.

  | | Trials removed | Participants affected |
  |---|---|---|
  | Task 1 | 19 of 3,066 (0.6%) | 11 |
  | Task 2 | 21 of 3,066 (0.7%) | 15 |

  The old per-visualization 1.5 × IQR rule removed 8.3% and 7.3% of trials, and only
  from the tables.
- **Estimand.** Model estimates are labelled "Geometric mean time, typical participant
  (s)" everywhere, with a paragraph explaining the estimand.
- **Sensitivity** (collapsed): refits with all trials and with the IQR rule. Only one
  result changes: Task 1 Uncertainty markers is slower than Basic under the cap and with
  all trials, but not under the IQR rule (1.09 [0.99, 1.20]). The time–accuracy findings
  hold under all three rules.

| | Fastest | Slowest | Slowest vs Basic (Dunnett) |
|---|---|---|---|
| Task 1 | Basic 10.5 s | Bivariate corner 14.6 s, Adjacent 14.2 s | 1.39 [1.25, 1.54] |
| Task 2 | Basic 10.2 s | Bivariate corner 16.3 s | 1.59 [1.45, 1.75] |

## F18. Fixed item order in the rating questions {#f18}

::: lineage
[formerly]{.id-note} [U13]{.id-old} → [F18]{.id-new}
:::

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate (design limitation) · **Area:** Subjective ratings, manuscript
:::

**Problem.** In every rating question the visualizations appear in the same order:
Adjacent first, Basic always last. An item's position affects its rating on its own (the
first item sets a reference for the rest, attention drops towards the end, and the last
item is seen in contrast to everything before it). Because every participant saw the
same order, these position effects are mixed up with the visualizations and cannot be
separated statistically. This matters most for Basic: it is the reference in every
comparison and also the item most affected by being last.

**Resolution (18 Nov 2026).** This cannot be fixed after data collection, so it is
reported:

- a "Limitation: fixed item order" callout on the Subjective page;
- the Task 3 description and a first paragraph in the Limitations section of
  `journal.typ`.

## F21. glmmTMB was built against an older TMB {#f21}

::: lineage
[formerly]{.id-note} [U17]{.id-old} → [F21]{.id-new}
:::

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** R environment, all glmmTMB models
:::

**Problem.** Loading the packages warned that glmmTMB 1.1.14 was built with TMB 1.9.21
while TMB 1.9.22 was installed.

**Resolution (18 Nov 2026).** Rtools is not installed, so a source build was not
possible. Instead the current CRAN Windows binaries were installed as a matched pair:
TMB 1.9.25 and glmmTMB 1.1.15.2 (built against it). The mismatch warning is gone. All
page caches were cleared and the whole site was re-rendered from scratch.

**Check.** The visible text of every page (prose and tables) was compared before and
after. Task 1, Task 2, Hit or miss, Time, Sample and Feedback are identical. The only
change was two interval bounds in the Subjective page's linear-mixed-model sensitivity
table (±0.01). That came from the Monte Carlo integration behind `adjust = "mvt"`, not
from glmmTMB. Seeds are now set before every `mvt` contrast on that page, so it
reproduces exactly.

## F19. Sample definition and data quality {#f19}

::: lineage
[formerly]{.id-note} [U14]{.id-old} → [F19]{.id-new}
:::

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** Data preparation
:::

**Problem.** The sample definition was not documented: four completed records from
23 Jul 2026 (probably pilot runs) were excluded by a date cutoff without explanation.
Response quality had never been checked: five participants exceeded SoSci's speeding index
(`TIME_RSI > 2`), and two gave the same rating to all 28 rating items.

**Resolution (18 Nov 2026).** A new script, `scripts/data_quality.R`, documents the sample
definition and a quality screen. The Sample page has a new section, "Sample definition
and data quality", with all numbers generated inline.

- **Launch date.** Records started before 24 Jul 2026 are excluded: 4 completed test runs,
  all from 23 Jul 2026. A further 179 records started after launch were not completed.
- **Quality screen** (flagged, not excluded): 5 participants with `TIME_RSI > 2` and 2
  who gave the same rating to all 28 rating items; 7 in total.
- **Sensitivity** (Subjective page): without these 7, the rating contrasts against Basic
  move by at most 0.07, and 0 of 24 intervals change their position relative to zero.

## F20. Stale hard-coded text and suspicious items {#f20}

::: lineage
[formerly]{.id-note} [U15]{.id-old} → [F20]{.id-new}
:::

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** Task 1 and Task 2 pages
:::

**Problem.** Four unrelated small issues:

- **Task 2 score-distribution caption:** said 2,394 scores, a number typed in at an
  earlier sample size; at N = 146 there were 3,066.
- **Task 2 random-slope note:** gave a position-slope SD of 0.006 that was typed in by
  hand and computed by no code (a refit gave 0.013), and mentioned an alternative model
  that did not exist.
- **Task 2 estimate figure:** the x-axis started at a hard-coded 0.58, just below the
  lowest interval (0.589), so new data could silently cut intervals off.
- **Task 1 items below chance (50%):** target MMN_19 had 41.6% accuracy and one pair 9%
  (n = 11). Below-chance accuracy can mean the answer key is wrong.

**Resolution (18 Nov 2026).**

- **Task 2 score-distribution caption.** The count is now generated (3,066).
- **Task 2 random-slope callout.** The position-slope SD is now computed from a fitted
  `(1 + position_c | ID)` model: 0.013 per trial, against a fixed effect of 0.002. The
  unsupported claim that a diagonal visualization model "remains available" is removed.
- **Task 2 axes.** The estimate and gradient figures take their x-ranges from the data.
- **Task 1 below-chance items.** These are not mis-keyed: all 3,066 trials pass an
  answer-key consistency check. They are hard MMN targets that resemble some N170 maps.
  The diagnostic is a collapsed section on the Task 1 page; the follow-up is
  [U16](index.md#u16).

## F22. Random slopes in the rating models were not explained {#f22}

::: lineage
[formerly]{.id-note} [U9]{.id-old} → [F22]{.id-new}
:::

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** Subjective-rating models
:::

**Problem.** The rating model (`rating_ord ~ vistype + (1 | ID)`) lets participants differ
only in their overall rating level. The page did not say why participant-specific
preferences for visualizations (random slopes) were left out.

**Resolution (18 Nov 2026).** Random slopes cannot be estimated here. Each participant
rated each visualization only once per item. A participant-specific effect per
visualization would rest on a single rating and cannot be told apart from ordinary
noise. So the model keeps only each participant's overall level (random intercept). The
"Model checks and sensitivity analyses" section on the Subjective page explains this.

## F9. Completion times were joined to the wrong trials {#f9}

::: {.finding-meta .sev-critical .status-resolved}
**Severity:** Critical · **Area:** Task 1 and Task 2 completion time
:::

**Problem.** SoSci Survey records "Time spent on page xxx", and each trial page keeps its
questionnaire number when the display order is randomized. The pages treated
`TIME005:TIME025` and `TIME029:TIME049` as times at presentation positions, so every
time was attached to the wrong trial. All time tables, violin plots, time models, and
the Task 1 time–accuracy model were wrong.

**Resolution.**

- Times are now joined on `trial = page − 4` (Task 1) and `trial = page − 28` (Task 2).
  The presentation position comes from the logged display order.
- Both analyses moved to the new **Time analysis** page. The Task 1 and Task 2 trial
  reconstructions are shared scripts (`scripts/task1_trials.R`, `scripts/task2_trials.R`).
- Each task has a visible check plot of time by presentation position. It shows the
  expected learning curve: the first trial shown is the slowest (Task 2: about 31 s,
  falling to about 11 s).
- The Task 1 time–accuracy sentences are now generated from the confidence intervals.

**Corrected results** (geometric-mean time for a typical participant; updated
18 Nov 2026 for the 180 s outlier cap, see [F17](#f17)):

| | Fastest | Slowest |
|---|---|---|
| Task 1 | Basic 10.5 s | Bivariate corner 14.6 s, Adjacent 14.2 s |
| Task 2 | Basic 10.2 s | Bivariate corner 16.3 s |

**Task 1 time–accuracy, corrected:**

- Within participants, slower trials were less often answered correctly.
- After adjustment, generally slower participants were more accurate.

**Still to confirm:** the page numbering in the SoSci questionnaire itself. The data
evidence for the new join is strong, but it has not been checked against the
questionnaire.

## F3. Analytic sample definition {#f3}

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Area:** Data preparation
:::

**Problem.** Inclusion does not require the survey's formal completion marker.

**Resolution.**

- The analytic sample is defined as all respondents who completed every primary
  endpoint: 146 at present.
- All have 21 Task 1 responses, 21 Task 2 responses, and 28 ratings.
- 59 are marked unfinished but stopped after the last outcome page.
- Describe them as endpoint-complete respondents rather than as formal completions.

## F4. Feedback codes filed under the wrong participant {#f4}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** Open-ended feedback
:::

**Problem.**

- Four coded units written by participant 62 were filed under participant 64.
- One unit for participant 77 paraphrased rather than quoted the response.

**Resolution.**

- The four units were reassigned to ID 62.
- The paraphrase was replaced with the participant's words ("not red-green color
  blindness").
- All 298 coded units now match their participant's response, which
  `scripts/check_data_refresh.R` checks automatically.

## F8. Outdated sample sizes in text {#f8}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** Task 2 page, manuscript
:::

**Problem.** Text still described the earlier sample of 114 participants.

**Resolution.**

- The Task 2 sample-size sentence is now computed from the data.
- `journal.typ` reports 146 participants and 142 valid country responses.
- The exact-peak description no longer claims that exactly one region always scores 1.

The remaining hard-coded values were fixed in [F20](#f20).

## F2. Task 1 ignored repeated comparison items {#f2}

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Area:** Task 1 accuracy model
:::

**Problem.** The accuracy model treated responses as independent given the
participant, although target and distractor images recur across participants.

**Resolution.**

- The primary model is
  `correct ~ vistype + pattern + position_c + (1 | ID) + (1 | stimulus) + (1 | wrong_image)`.
- Reported probabilities are averaged over the three ERP patterns and integrated over
  the participant, target, and distractor distributions.
- The Gauss–Hermite integration matches numerical integration to within 2 × 10⁻⁷.
- A participant-specific position slope was singular and is documented.

## F6. Task 2 descriptive error bars {#f6}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** Task 2 descriptive figure
:::

**Problem.** The figure centred a standard deviation on the median and called the
outcome "accuracy".

**Resolution.** The figure shows participant-level means with 95% confidence intervals
and calls the outcome a detection score.

## F1. A304 aesthetic-rating labels were wrong {#f1}

::: {.finding-meta .sev-critical .status-resolved}
**Severity:** Critical · **Area:** Subjective ratings
:::

**Problem.** In the export, A304 is stored in the display order but with nonsequential
suffixes (`A304_01, _06, _02, _03, _04, _05, _07`). Reading the suffix as the display
position mislabeled five of the seven aesthetic conditions.

**Resolution.**

- `pages/subjective.qmd` uses an explicit column key for each question.
- It checks all 28 mappings against the labels embedded in the export and stops
  rendering if they disagree.
- All 28 mappings were re-verified at N = 146.

## F5. Obsolete pilot analysis file {#f5}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** Project structure
:::

**Problem.** A root `Analysis.qmd` from the pilot referenced missing files and old
variables, and its rating logic would have recreated the A304 error.

**Resolution.** The file was removed. Its contents remain in Git history.

## F7. Reduced sample-figure caption {#f7}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** Sample page
:::

**Problem.** The reduced figure dropped small categories while its caption said they
were grouped into "Other".

**Resolution.**

- Countries below 2% and software below 4% are grouped into "Other".
- Each respondent is counted once in the software "Other".
- The caption states the thresholds.
