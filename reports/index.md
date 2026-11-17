---
title: "Unresolved"
subtitle: "Open issues in the analysis (N = 146), most severe first"
---

::: {.callout-warning}
## The analysis is not yet ready for manuscript interpretation

U3–U5 change results or how they must be described. Fix them first, in this order:

1. Correct the labels and timing of the rating items (U3, U4).
2. Regenerate the remaining result sentences from the estimates (U5).

The Task 2 image-level intercept (formerly U2) is now in the models; see
[A2](addressed.md#a2).
:::

| | Issue | Area |
|--|------------------|----|
| [High]{.badge .sev-high} | [U3. A303 measures likelihood of use, not helpfulness](#u3) | Ratings |
| [High]{.badge .sev-high} | [U4. A301 was asked after Task 1 only](#u4) | Ratings |
| [High]{.badge .sev-high} | [U5. Task 1 text overstates weak or contradicted effects](#u5) | Task 1 |
| [Moderate]{.badge .sev-moderate} | [U6. "Estimated detection score" is not the expected score](#u6) | Task 2 |
| [Moderate]{.badge .sev-moderate} | [U7. Task 2 scores are not comparable across stimuli](#u7) | Task 2 |
| [Moderate]{.badge .sev-moderate} | [U8. Multiplicity is handled inconsistently](#u8) | All |
| [Moderate]{.badge .sev-moderate} | [U9. Rating models: intercept only, proportional odds violated](#u9) | Ratings |
| [Moderate]{.badge .sev-moderate} | [U10. Composite ranking and "leader" highlighting](#u10) | Ratings |
| [Moderate]{.badge .sev-moderate} | [U11. Time outliers and the time estimand](#u11) | Task 1, Task 2 |
| [Moderate]{.badge .sev-moderate} | [U12. Qualitative coding is not validated](#u12) | Feedback |
| [Moderate]{.badge .sev-moderate} | [U13. Fixed item order in the rating questions](#u13) | Ratings |
| [Low]{.badge .sev-low} | [U14. Sample definition and data quality are undocumented](#u14) | Data |
| [Low]{.badge .sev-low} | [U15. Stale hard-coded text and suspicious items](#u15) | Task 1, Task 2 |

: {.findings-table}

## U3. A303 measures likelihood of use, not helpfulness {#u3}

::: {.finding-meta .sev-high}
**Severity:** High · **Area:** Subjective ratings, manuscript
:::

**Problem.** The survey label of A303 is "Usage material", and its scale runs from
"very unlikely" to "very likely". `pages/subjective.qmd` and `journal.typ` call it
"helpful for representation" and describe it as helpfulness for representing signal
and uncertainty.

**Fix.** Take the exact item text from the questionnaire and relabel it in the pages,
figures, and manuscript.

## U4. A301 was asked after Task 1 only {#u4}

::: {.finding-meta .sev-high}
**Severity:** High · **Area:** Subjective ratings, manuscript
:::

**Problem.** A301 ("helpful for comparison") is on the page after the Task 1 trials.
A302–A304 come after Task 2.

**Evidence.** 23 respondents who stopped before the end of Task 2 had answered
A301_01; none had answered A302.

**Consequence.**

- The manuscript Procedure, which places all ratings after both tasks, is wrong.
- The four criteria were measured at different points in the study (see U10).

**Fix.** Correct the Procedure section and describe the timing of A301 in the methods.

## U5. Task 1 text overstates weak or contradicted effects {#u5}

::: {.finding-meta .sev-high}
**Severity:** High · **Area:** Task 1 reporting
:::

**Problem.** The text says Bivariate corner and Bivariate range "were associated with
lower odds" of a correct answer. The evidence:

- odds ratios 0.72 [0.50, 1.04], p = .084, and 0.71 [0.49, 1.03], p = .073;
- omnibus LRT p = .056;
- every population-average contrast interval includes zero;
- conditional-logit sensitivity p = .068 and .055.

**Already done.** The time–accuracy sentences on the Time analysis page are now
generated from the confidence intervals.

**Fix.** Generate the accuracy sentences on the Task 1 page from the estimates as well.

## U6. "Estimated detection score" is not the expected score {#u6}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Area:** Task 2 reporting
:::

**Problem.** For the ordered-beta family, `emmeans(type = "response")` returns μ, the
mean of the continuous beta part. It ignores the probability mass at 0 and 1. The
expected score is E[y] = P(1) + (1 − P(0) − P(1)) μ.

| Basic topoplot | Value |
|---|---|
| Reported (μ) | 67.6% |
| E[y], random effects at zero | 72.8% |
| E[y], averaged over random effects | 71.0% |
| Observed mean | 69.8% |

Contrasts are almost unchanged; the levels and the label "on the detection-score
scale" are wrong.

**Fix.** Compute E[y] from the cutpoints, with delta-method or simulation intervals.
State whether it is conditional on the random effects or averaged over them.

## U7. Task 2 scores are not comparable across stimuli {#u7}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Area:** Task 2 outcome
:::

**Problem.** Region values are min–max rescaled within each stimulus, so the same
score means different things for different stimuli. For example, the 10th-best region
scores between 0.24 and 0.90 depending on the stimulus.

**Evidence.**

- **Rank outcome:** Bivariate corner −0.21, p = .002.
- **Top-3 logistic outcome:** no visualization effect reaches p < .05.

**Fix.** Report a rank or top-k sensitivity analysis, and avoid interpreting score
magnitudes across stimuli.

**Open question.** For 4 of 10 P3 stimuli, the most chosen region (R25) ranks only
10th–14th by score. Participants may target the voltage peak rather than the SNR peak.
That is a construct-validity question for the scoring.

## U8. Multiplicity is handled inconsistently {#u8}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Area:** All inferential results
:::

**Problem.** No primary contrasts or multiplicity families are defined, and the same
contrast is shown under different adjustments.

- **Task 2, Bivariate corner vs Basic:**
  - Tukey table: p = .070.
  - Dunnett figure: interval [−7.2, −0.3] pp, which excludes zero.
  - Coefficient table: unadjusted p = .005.
- **Task 1:** unadjusted coefficient p-values are reported.
- **Ratings:** the contrast figure is Dunnett-adjusted but labelled only "95%
  confidence intervals". Four outcomes × six contrasts have no stated family.

**Fix.** Choose the primary contrasts and one adjustment family (for example, Dunnett
against Basic within each outcome). Use it in every table and figure and name it in
captions. Report all estimates, including null results.

## U9. Rating models: intercept only, proportional odds violated {#u9}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Area:** Subjective-rating models
:::

**Problem.**

- The cumulative-link models use `rating_ord ~ vistype + (1 | ID)`, although each
  participant rates every visualization.
- Likelihood-ratio tests on fixed-effects `clm` fits reject proportional odds for all
  four questions (p = .011 to 3 × 10⁻⁵).
- Model-based expected ratings differ from raw means by at most 0.08.

**Fix.**

- Evaluate participant-specific visualization effects, or justify the simpler
  structure with a sensitivity analysis.
- Report the proportional-odds check, and describe the estimates as model-smoothed
  means.

## U10. Composite ranking and "leader" highlighting {#u10}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Area:** Subjective ratings
:::

**Problem.**

- **Composite.** "Sum of mean ratings" adds four separately measured criteria with
  equal weight. One of them is a likelihood-of-use item (U3), and one was asked at a
  different time (U4).
  - With participant-bootstrap intervals, neighbouring ranks overlap. For example,
    Uncertainty markers 12.28 [11.62, 12.88] vs Basic 12.24 [11.70, 12.82].
- **Leader highlighting.** `is_leader` highlights Confidence intervals for
  "comparison". Its difference from Basic is +0.18 [−0.09, 0.45], and its differences
  from the runners-up were never tested.

**Fix.** Remove the composite, or show it with intervals and label it as an
exploratory equal-weight index. Highlight a leader only if pairwise contrasts support
it.

## U11. Time outliers and the time estimand {#u11}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Area:** Task 1 and Task 2 completion time
:::

**Problem.**

- **Different data.** The descriptive tables on the Time analysis page drop trials with
  a per-visualization 1.5 × IQR rule. The models keep everything, including pages of
  5,264 s and 11,221 s.
- **Mislabelled estimate.** The back-transformed model estimate is a geometric mean
  (median time for a typical participant), but it is labelled "estimated time".

**Fix.**

- Define one outlier rule in advance and apply it to tables and models.
- Show the alternative as a sensitivity analysis.
- Label the estimate as a geometric mean.

## U12. Qualitative coding is not validated {#u12}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate · **Area:** Open-ended feedback
:::

**Problem.** The A305 coding comes from a single LLM coder, with no second coder or
agreement statistic.

- **Rule not applied.** Generic "bivariate plots" comments are sometimes coded to both
  Corner and Range instead of General bivariates (IDs 7, 41, 77).
- **Duplicated units.** 51 of 298 rows (17%) are one unit duplicated across
  visualizations.
- **Scale use.** Only 2 of 298 units are coded 0.
- **Sparse cells.** 31 of 69 theme × visualization rows rest on two or fewer
  participants, yet are shown with means to two decimals.

**Fix.**

- Have a human double-code at least a subsample and report agreement.
- Enforce the General-bivariates rule.
- Flag or suppress cells with n ≤ 2.

## U13. Fixed item order in the rating questions {#u13}

::: {.finding-meta .sev-moderate}
**Severity:** Moderate (design limitation) · **Area:** Subjective ratings
:::

**Problem.** Within every rating question the visualizations appear in the same order:
Adjacent first, Basic always last. Order and context effects cannot be separated from
visualization effects.

**Fix.** Report this as a limitation in the manuscript.

## U14. Sample definition and data quality are undocumented {#u14}

::: {.finding-meta .sev-low}
**Severity:** Low · **Area:** Data preparation
:::

**Problem.**

- **Excluded by the date cutoff:** four completed records dated 2026-07-23, probably
  pilot runs, are excluded without documentation.
- **Possible quality problems:**
  - five participants exceed SoSci's speeding index (`TIME_RSI > 2`);
  - two gave the same rating to all 28 rating items.
- Excluding these seven moves rating contrasts by at most 0.07 and changes no
  interval's position relative to zero.

**Fix.** Document the date cutoff and a quality screen, and report the sensitivity
analysis.

## U15. Stale hard-coded text and suspicious items {#u15}

::: {.finding-meta .sev-low}
**Severity:** Low · **Area:** Task 1 and Task 2 pages
:::

**Problem.**

- **Task 2 score-distribution caption:** says 2,394 scores; there are 3,066.
- **Task 2 random-slope callout:** states a position-slope SD of 0.006 that no code on
  the page computes; a refit gives 0.013.
- **Task 2 estimate figure:** x-limit hard-coded at 0.58, while the lowest interval
  bound is 0.589.
- **Task 1 items below chance:** MMN_19 as target has 41.6% accuracy, and one pair is
  at 9% (n = 11).

**Fix.**

- Compute the numbers and limits in code.
- Check the below-chance items for mislabeled or ambiguous stimuli.
