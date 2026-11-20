---
title: "Fixed"
subtitle: "Resolved issues and how they were resolved"
---

| | Issue | Area | Fixed on |
|--|------------------|----|----|
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

## F10. A303 measures likelihood of use, not helpfulness (was U3) {#f10}

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

## F11. A301 was asked after Task 1 only (was U4) {#f11}

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

## F12. Task 1 text overstated weak effects (was U5) {#f12}

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Area:** Task 1 reporting
:::

**Problem.** The text said Bivariate corner and Bivariate range "were associated with
lower odds" of a correct answer, although every interval included 1 and the omnibus test
gave p = .056.

**Resolution (18 Nov 2026).** All accuracy prose on the Task 1 page comes from one helper
(`task1_effect_sentence`). A difference is called lower or higher only when its interval
excludes the null; otherwise the text says the interval includes it and names the
weakest estimates. This covers the coefficient and conditional-logit conclusions and a
new section, "Summary of the Task 1 accuracy evidence".

**Current numbers.**

- Omnibus test: χ²(6) = 12.30, p = .056.
- Population-average contrasts with Basic (Dunnett-adjusted):
  - Bivariate range: −4.4 pp [−10.6, +1.9], p = .27.
  - Bivariate corner: −4.2 pp [−10.5, +2.1], p = .31.
- Odds ratios (Dunnett-adjusted): Bivariate range 0.71 [0.44, 1.15]; Bivariate corner
  0.72 [0.45, 1.16].
- The page calls the evidence weak: Range and Corner may carry a small accuracy cost
  that the study cannot tell apart from no difference.

## F13. Task 2 "detection score" was μ, not the expected score (was U6) {#f13}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** Task 2 reporting
:::

**Problem.** `emmeans(type = "response")` on the ordered-beta model returns μ, the mean of
the continuous part. It ignores the probability mass at 0 and 1.

**Resolution (18 Nov 2026).** The page now reports E[y] = P(1) + (1 − P(0) − P(1)) μ.
It is computed from the glmmTMB cutpoints (`psi`), which were checked against the
observed shares of exact 0s and 1s. Intervals come from 4,000 draws of the model
parameters. The estimates are averaged over the participant, stimulus and image effects
(primary), and also given with those effects set to zero. Tables, the figure and the text
use E[y].

| Basic topoplot | Value |
|---|---|
| μ (old label "estimated detection score") | 68.3% |
| E[y], random effects at zero | 73.3% |
| E[y], averaged over random effects | 71.2% [66.0, 75.7] |
| Observed mean | 69.8% |

(The audit's μ of 67.6% came from a fit without the image intercept.)

## F14. Multiplicity was handled inconsistently (was U8) {#f14}

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

**Task 2 Bivariate corner vs Basic is now reported once:** −3.2 pp [−8.3, +1.8],
Dunnett p = .351. With the image intercept in the model, no Task 2 contrast reaches
adjusted p < .05.

## F15. Rating models assumed proportional odds (was U9) {#f15}

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

## F16. Rating ranking mixed different questions and overstated a leader (was U10) {#f16}

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

## F17. Time outliers and the time estimand (was U11) {#f17}

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

## F18. Fixed item order in the rating questions (was U13) {#f18}

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

## F21. glmmTMB was built against an older TMB (was U17) {#f21}

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

## F19. Sample definition and data quality (was U14) {#f19}

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

## F20. Stale hard-coded text and suspicious items (was U15) {#f20}

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

## F22. Random slopes in the rating models were not explained (was U9) {#f22}

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
