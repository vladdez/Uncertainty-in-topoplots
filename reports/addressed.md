---
title: "Addressed"
subtitle: "Issues where work has been done but something remains"
---

| | Issue | Area |
|--|------------------|----|
| [Moderate]{.badge .sev-moderate} | [A1. Model-adequacy checks](#a1) | All models |
| [High]{.badge .sev-high} | [A2. Task 2 random-effects structure](#a2) | Task 2 |
| [Moderate]{.badge .sev-moderate} | [A3. Feedback codes are linked by row position](#a3) | Feedback, data |

: {.findings-table}

## A1. Model-adequacy checks {#a1}

::: {.finding-meta .sev-moderate .status-partial}
**Severity:** Moderate · **Area:** All models
:::

**Done.**

- Task 2 has a posterior predictive check of exact-peak (score = 1) responses.
- Task 2 has a two-part sensitivity model: a logistic model for finding the strongest
  region and a beta model for the remaining trials.
- These show that Adjacent plots and Confidence intervals increase exact-peak hits.
  The ordered-beta contrast does not detect this.
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
  `score ~ vistype + pattern + position_c + (1 | ID) + (1 | stimulus)`, adjusting for
  ERP pattern and presentation position, with crossed participant and stimulus
  intercepts.
- The page checks that no responses are lost and that each stimulus maps to one
  pattern.
- Participant-specific slopes were tested and their omission is explained on the page:
  - the full correlated visualization structure does not converge;
  - the position slope is negligible;
  - a diagonal visualization structure converges and is available as a sensitivity
    model.

**Remaining.**

- The image-level intercept changes the inference ([U2](index.md#u2)).
- State that generalization to new stimuli rests on 30 sampled stimuli.

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
