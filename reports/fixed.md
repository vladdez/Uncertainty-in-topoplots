---
title: "Fixed"
subtitle: "Resolved issues and how they were resolved"
---

| | Issue | Area |
|--|------------------|----|
| [Critical]{.badge .sev-critical} | [F9. Completion times were joined to the wrong trials](#f9) | Task 1, Task 2 |
| [Critical]{.badge .sev-critical} | [F1. A304 aesthetic-rating labels were wrong](#f1) | Ratings |
| [High]{.badge .sev-high} | [F2. Task 1 ignored repeated comparison items](#f2) | Task 1 |
| [High]{.badge .sev-high} | [F3. Analytic sample definition](#f3) | Data |
| [Moderate]{.badge .sev-moderate} | [F4. Feedback codes filed under the wrong participant](#f4) | Feedback |
| [Moderate]{.badge .sev-moderate} | [F5. Obsolete pilot analysis file](#f5) | Project |
| [Low]{.badge .sev-low} | [F6. Task 2 descriptive error bars](#f6) | Task 2 |
| [Low]{.badge .sev-low} | [F7. Reduced sample-figure caption](#f7) | Sample |
| [Low]{.badge .sev-low} | [F8. Outdated sample sizes in text](#f8) | Task 2, manuscript |

: {.findings-table}

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

**Corrected results** (geometric-mean time for a typical participant):

| | Fastest | Slowest |
|---|---|---|
| Task 1 | Basic 10.6 s | Bivariate corner 15.3 s, Adjacent 14.6 s |
| Task 2 | Basic 10.3 s | Bivariate corner 16.7 s |

**Task 1 time–accuracy, corrected:**

- Within participants, slower trials were less often answered correctly.
- After adjustment, generally slower participants were more accurate.

**Still to confirm:** the page numbering in the SoSci questionnaire itself. The data
evidence for the new join is strong, but it has not been checked against the
questionnaire.

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

## F5. Obsolete pilot analysis file {#f5}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Area:** Project structure
:::

**Problem.** A root `Analysis.qmd` from the pilot referenced missing files and old
variables, and its rating logic would have recreated the A304 error.

**Resolution.** The file was removed. Its contents remain in Git history.

## F6. Task 2 descriptive error bars {#f6}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** Task 2 descriptive figure
:::

**Problem.** The figure centred a standard deviation on the median and called the
outcome "accuracy".

**Resolution.** The figure shows participant-level means with 95% confidence intervals
and calls the outcome a detection score.

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

## F8. Outdated sample sizes in text {#f8}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Area:** Task 2 page, manuscript
:::

**Problem.** Text still described the earlier sample of 114 participants.

**Resolution.**

- The Task 2 sample-size sentence is now computed from the data.
- `journal.typ` reports 146 participants and 142 valid country responses.
- The exact-peak description no longer claims that exactly one region always scores 1.

The remaining hard-coded values are listed in [U15](index.md#u15).
