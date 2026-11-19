---
title: "Addressed"
subtitle: "Issues where work has been done but something remains"
---

| | Issue | Area |
|--|------------------|----|
| [Moderate]{.badge .sev-moderate} | [A1. Model-adequacy checks](#a1) | All models |
| [High]{.badge .sev-high} | [A2. Task 2 random-effects structure](#a2) | Task 2 |
| [Moderate]{.badge .sev-moderate} | [A3. Feedback codes are linked by row position](#a3) | Feedback, data |
| [Moderate]{.badge .sev-moderate} | [A4. Task 2 scores are not comparable across stimuli (was U7)](#a4) | Task 2 |
| [Moderate]{.badge .sev-moderate} | [A5. Qualitative coding is not validated (was U12)](#a5) | Feedback |

: {.findings-table}

## A1. Model-adequacy checks {#a1}

::: {.finding-meta .sev-moderate .status-partial}
**Severity:** Moderate · **Area:** All models
:::

**Done.**

- Task 2 has a posterior predictive check of exact-peak (score = 1) responses.
- Task 2 has a two-part sensitivity model: a logistic model for finding the strongest
  region and a beta model for the remaining trials.
- These show that Adjacent plots increase exact-peak hits (p = .006 with the image
  intercept); Confidence intervals do so only marginally (p = .046). The ordered-beta
  contrast does not detect this.
- The fitted Task 1 and Task 2 models are checked for convergence and a
  positive-definite Hessian.

**Remaining.**

- Simulated residual diagnostics for all models.
- Influence checks for participants, stimuli, and comparison pairs.
- Residual behaviour of the time models.
- The proportional-odds check (U9).
- Restoring matching TMB/`glmmTMB` versions. The page YAML suppresses the
  version-mismatch warning.

## A2. Task 2 random-effects structure {#a2}

::: {.finding-meta .sev-high .status-partial}
**Severity:** High · **Area:** Task 2 detection-score model
:::

**Done.**

- The primary model is
  `score ~ vistype + pattern + position_c + (1 | ID) + (1 | stimulus) + (1 | stimulus:vistype)`,
  adjusting for ERP pattern and presentation position, with crossed participant and
  stimulus intercepts and an intercept for each of the 210 images (formerly U2). The
  same structure is used in the two-part sensitivity model and in the hit / near-hit
  models on the Hit or miss page.
- Evidence for the image intercept (N = 146):

  | Model | AIC without → with | Image SD | Overall visualization LRT, without → with |
  |---|---|---|---|
  | Score (ordered beta) | 1178 → 1107 | 0.27 | χ²(6) = 23.1, p = .0008 → χ²(6) = 8.0, p = .23 |
  | Exact hit (logistic) | 2497 → 2448 | 0.82 | χ²(6) = 14.6, p = .023 → χ²(6) = 8.6, p = .20 |
  | Hit or near hit (logistic) | 3347 → 3161 | 1.12 | χ²(6) = 19.9, p = .003 → χ²(6) = 9.0, p = .17 |

  Point estimates barely move; standard errors grow 1.5–2.2×. Contrasts with Basic
  that remain at p < .05 (unadjusted): exact hit, Adjacent plots (p = .006) and
  Confidence intervals (p = .046); hit or near hit, Uncertainty markers (p = .029)
  and Bivariate range (p = .032). The Bivariate corner score deficit does not
  (p = .005 → .093); it is concentrated in three images (MMN_30, N170_16, N170_27).
- The page checks that no responses are lost and that each stimulus maps to one
  pattern.
- Participant-specific slopes were tested and their omission is explained on the page:
  - the full correlated visualization structure does not converge;
  - the position slope is now computed on the page (SD 0.013 logit per trial, against
    a fixed position effect of 0.002), not asserted to be negligible (F20);
  - a diagonal visualization structure was tried during model building, but it is not
    refitted on the page, so the page no longer cites it as a sensitivity model.

**Remaining.**

- Check the analogous term in Task 1 (target stimulus × visualization); Task 1
  already has `(1 | wrong_image)`.
- State that generalization to new stimuli rests on 30 sampled stimuli.
- Manuscript: describe the visualization effects as weak overall; no omnibus test
  is significant once image-level variation is modelled.

## A3. Feedback codes are linked by row position {#a3}

::: {.finding-meta .sev-moderate .status-partial}
**Severity:** Moderate · **Area:** Open-ended feedback, data preparation
:::

**Problem.** Participant `ID` is `row_number()` after the inclusion filters. The A305
coding workbook is keyed by this ID, so a reordered or differently filtered export
would silently attach codes to the wrong participants.

**Done.**

- `scripts/check_data_refresh.R` checks, after every data update, that each coded unit
  appears in the response of the participant it is filed under. It stops if not.
- The `data-refresh` agent runs this check before re-rendering.

**Remaining.** Key the workbook on the survey's `CASE` number instead of the row
position.

## A4. Task 2 scores are not comparable across stimuli (was U7) {#a4}

::: {.finding-meta .sev-moderate .status-partial}
**Severity:** Moderate · **Area:** Task 2 outcome
:::

**Problem.** Region values are min–max rescaled within each stimulus, so the same score
means different things for different stimuli: the 10th-strongest region scores between
0.24 and 0.90 depending on the stimulus.

**Done (18 Nov 2026).** The Task 2 page has a new section, "Sensitivity analysis: rank and
top-3 outcomes", with the numbers generated in code. It also warns against comparing
score magnitudes across stimuli.

| Outcome | Bivariate corner vs Basic | Dunnett p |
|---|---|---|
| Score (expected score E[y]) | −3.2 pp [−8.3, +1.8] | .351 |
| Rank among 64 regions (0–1) | −0.19 logit (unadjusted p = .041) | .175 |
| Top 3 (logistic; 39% of responses) | −0.20 logit | .941 |

No visualization differs from Basic on any of the three outcomes after adjustment.

**Remaining: a construct question.** For 4 of 10 P3 stimuli, R25 is the most selected
region but ranks only 10th–14th by score. Participants may target the voltage peak
rather than the SNR peak. The page states this, with a per-stimulus table of the most
selected region and its rank, but does not answer it. It needs a decision on how the
task and its scoring should be described in the manuscript.

## A5. Qualitative coding is not validated (was U12) {#a5}

::: {.finding-meta .sev-moderate .status-partial}
**Severity:** Moderate · **Area:** Open-ended feedback
:::

**Problem.** The A305 coding comes from a single LLM coder, with no second coder or
agreement statistic.

**Done (18 Nov 2026).**

- **General-bivariates rule enforced.** 13 units that named neither bivariate variant
  but were coded to both Corner and Range are now coded once to General bivariates (IDs
  7, 15, 18, 30, 41, 51 [2 units], 54, 56, 61, 65, 76, 79). On 19 Nov 2026 the
  corrections were written into `data/a305_content_analysis.xlsx` (298 → 285 rows) and
  the separate corrections file was removed; it remains in git history (commit
  182d840, `data/a305_coding_corrections.csv`, with a reason quoting each response).
- **Duplicated units.** Each meaning unit has an ID (`MU###`): 271 unique units in 285
  rows, 12 of which evaluate more than one visualization. Such a unit counts once for
  each visualization it evaluates, never twice within one. The page says that
  comparisons across visualizations are therefore not independent.
- **Sparse cells.** Theme × visualization cells with n ≤ 2 participants (39 of 68) show
  "n ≤ 2" instead of a mean and are faded in the figures. Means are rounded to one
  decimal.
- **Scale use.** The method note says the neutral code 0 was used for 2 of 271 units.
- **Double-coding sample prepared.** `data/a305_double_coding_sample.csv` (git-ignored,
  because it holds full responses) has 63 of 271 units (23%), drawn with seed 305 and
  stratified by visualization. It has empty columns for the second coder and does not
  contain the first coder's codes. The page computes percent agreement and Cohen's kappa
  as soon as the codes are filled in.

**Remaining.**

- A human fills in the double-coding file; the page then reports agreement.
- Decide on IDs 74 and 102, which mention both bivariate versions and keep both codes.
- Agreement on where units begin and end (unitizing) is not assessed.
