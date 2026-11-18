---
title: "Unresolved"
subtitle: "Open issues in the analysis (N = 146), most severe first"
---

::: {.callout-note}
## Status, 18 November 2026

U3–U15 were worked through on 18 November 2026. Eleven are fixed ([F10–F20](fixed.md)).
Two still need something that code cannot do: a human second coder (U12, now
[A5](addressed.md#a5)) and a decision on the Task 2 scoring construct (U7, now
[A4](addressed.md#a4)). The two items below are new and came up while fixing the others.
:::

| | Issue | Area |
|--|------------------|----|
| [Low]{.badge .sev-low} | [U16. Two MMN targets are hard to tell from N170](#u16) | Task 1, manuscript |
| [Low]{.badge .sev-low} | [U17. glmmTMB was built against an older TMB](#u17) | All models |

: {.findings-table}

## U16. Two MMN targets are hard to tell from N170 {#u16}

::: {.finding-meta .sev-low}
**Severity:** Low · **Area:** Task 1 stimuli, manuscript
:::

**Problem.** The below-chance items from F20 are not mis-keyed: every trial passes the
answer-key check. MMN_19 (41.6% correct as target) and MMN_29 (45.5%) fail only
against N170 distractors (15.5% and 20.5% correct), not against P3 distractors. Both are
weak maps (±1.5 and ±1.7 µV) with lateral rather than posterior positivity, and some
N170 variations (N170_7, N170_12, N170_16) look like the MMN template. Across all MMN
targets, accuracy is 56.3% against N170 distractors and 85.8% against P3 distractors.

The hard items are spread evenly across visualizations, so they add noise rather than
bias. They stay in the primary analysis.

**Exploratory refit** (items chosen after seeing the data): dropping the two targets
moves the omnibus test from p = .056 to p = .028. The Bivariate corner and range odds
ratios become 0.64 and 0.65, with Dunnett-adjusted intervals still including 1
(adjusted p = .11 and .12).

**To decide.**

- Whether the manuscript mentions the exploratory refit.
- The Stimuli section should say that some single-subject MMN and N170 maps look alike.

## U17. glmmTMB was built against an older TMB {#u17}

::: {.finding-meta .sev-low}
**Severity:** Low · **Area:** R environment, all glmmTMB models
:::

**Problem.** Loading the packages warns: "glmmTMB was built with TMB package version
1.9.21. Current TMB package version is 1.9.22." The fits run and the numbers match
earlier fits, but TMB's guidance is to reinstall glmmTMB from source after a TMB update.

**Fix.** Run `install.packages("glmmTMB", type = "source")`, clear the page caches, and
re-render. Confirm that the Task 1, Task 2, Hit or miss and Time estimates do not change.
