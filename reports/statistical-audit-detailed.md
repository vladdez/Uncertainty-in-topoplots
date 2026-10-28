# Statistical analysis audit: detailed findings

**Audit date:** 27 October 2026  
**Companion summary:** [statistical-audit-summary.md](statistical-audit-summary.md)

## Scope and interpretation

This audit connects three layers:

1. the intended scientific question and study design;
2. the calculations actually implemented in the R/Quarto analysis; and
3. the claims that the resulting estimates could support.

Severity describes potential impact on scientific interpretation, not code
style. Sensitivity results below are diagnostic: changes in whether a p-value
falls above or below 0.05 are evidence of model sensitivity, not a recommended
significance-based decision rule.

## 1. A304 aesthetic-rating labels were incorrect

**Severity:** Critical  
**Status:** 🟢 **Resolved in code and regenerated outputs**

### Intended behavior

Each response column should be associated with the visualization shown to the
participant.

### Original behavior and evidence

One suffix-based order was originally imposed on A301–A304. In the final
LimeSurvey export, A304 is physically stored in the common display order but
uses nonsequential suffixes:

`A304_01, A304_06, A304_02, A304_03, A304_04, A304_05, A304_07`.

Treating the suffix as a display position therefore mislabeled five of the
seven aesthetic conditions. The correctly associated observed A304 means are:

| Visualization | Mean aesthetic rating |
|---|---:|
| Adjacent plots | 4.03 |
| Animation | 3.78 |
| Basic topoplot | 3.33 |
| Confidence intervals | 3.53 |
| Bivariate range | 2.61 |
| Bivariate corner | 2.39 |
| Uncertainty markers | 2.30 |

### Resolution

[`pages/subjective.qmd`](../pages/subjective.qmd) now uses an explicit
question-specific column key while assigning every question the same
visualization order. It validates all 28 mappings against the embedded survey
labels, reports the checks, and stops rendering if the labels disagree. The
subjective page and publication figures were regenerated.

## 2. Task 2 omitted stimulus, pattern, and presentation-position structure

**Severity:** High  
**Status:** 🟡 **Primary structure addressed; random-slope and diagnostic sensitivity remain**

### Intended behavior

Estimate visualization effects while accounting for the repeated randomized
trial design and the sources across which the result is intended to generalize.

### Resolution implemented

The existing trial-design fields are now retained in the modeling data; no
new measurements or inferred study variables were created. The original model
is preserved as `model_task2_base` for sensitivity comparison. The primary
model at [`pages/task2.qmd`](../pages/task2.qmd) uses:

```r
score ~ vistype + pattern + position_c +
  (1 | ID) + (1 | stimulus)
```

This model adjusts for the existing spatial-pattern category and centered
presentation position and includes crossed random intercepts for participants
and the 30 reused EEG stimuli. All downstream estimated scores and contrasts
now use this extended model.

The page also checks that model preparation loses no responses, that each
stimulus maps to exactly one pattern, and that the fitted model has convergence
code 0 and a positive-definite Hessian. The verified analysis retains all
2,394 responses.

### Sensitivity evidence

An audit sensitivity model incorporating pattern, position, participant, and
stimulus structure changed some comparisons materially. The confidence-
interval visualization comparison moved from approximately `p = .007` to
`p = .058`, whereas bivariate corner moved from approximately `p = .196` to
`p = .017`.

These values show that conclusions depend on the dependence structure. They do
not establish which model is correct and should not be interpreted through a
significant/non-significant dichotomy.

The extended model has substantially better information criteria than the
base model (AIC 829.978 versus 1397.193; BIC 916.689 versus 1460.781). This
comparison supports retaining the added structure but is not, by itself, a
complete model-adequacy assessment.

### Remaining action

- Evaluate participant-specific visualization slopes or document why a reduced
  random-effects structure is necessary.
- Complete the residual, predictive, and influence diagnostics listed in
  Problem 6.
- State explicitly that stimulus-level generalization is model-based and rests
  on only 30 sampled EEG stimuli.
- Compare effect estimates and predictive adequacy rather than interpreting
  whether individual p-values cross 0.05.

## 3. Task 1 omits repeated comparison-item structure

**Severity:** High  
**Status:** Open

### Current behavior and evidence

Item information is reconstructed near the beginning of
[`pages/task1.qmd`](../pages/task1.qmd), but the fitted model at line 163 is:

```r
correct ~ vistype + position_c + (1 | ID)
```

The data contain 300 comparison pairs reused between 2 and 17 times. Each of
the 30 stimuli occurs under all seven visualization types.

In a sensitivity model that retained comparison-pair and target structure, the
estimated comparison-pair variance was 0.587, compared with participant
variance of 0.197. Standard errors changed, although the main point estimates
were comparatively stable.

### Consequence

The model handles participant clustering but not dependence among repeated
comparison items. Its intervals therefore do not support unrestricted
generalization beyond the sampled comparisons. A common visualization effect
is also imposed on all participants.

### Required action

- Retain comparison-pair and target identifiers in the modeling data.
- Fit a crossed item structure.
- Evaluate participant-specific visualization slopes or a documented reduced
  slope structure.
- Report how the added structure affects estimates and intervals.

## 4. Endpoint-complete sample does not require the formal completion marker

**Severity:** High, conditional on the intended target sample  
**Status:** 🟢 **Resolved by analytic-sample decision on 27 October 2026**

### Current behavior

[`scripts/analysis_setup.R`](../scripts/analysis_setup.R) line 109 includes
records with a parseable `TIME051`; it does not require
`STATUS == "complete"`.

The resulting sample contains 114 participants:

- 69 records marked `complete`;
- 45 records with missing `STATUS`.

All 114 have all 21 Task 1 responses, all 21 Task 2 responses, and all 28
subjective ratings.

### Resolution

The analytic sample is defined as all 114 respondents who completed every
primary experimental endpoint. Because all 114 have complete Task 1, Task 2,
and subjective-rating outcomes, `STATUS == "complete"` is not required for
inclusion. A separate primary analysis restricted to the 69 formally submitted
records is therefore not required.

When documenting the sample, describe these records as endpoint-complete
respondents rather than stating that all 114 formally submitted the survey.
This resolves the inclusion and missing-outcome concern; it does not by itself
make a claim about statistical power or precision.

## 5. Time analyses use inconsistent populations and an ambiguous estimand

**Severity:** Moderate  
**Status:** Open

### Current behavior

The descriptive time summaries remove groupwise 1.5-IQR observations using
`remove_group_iqr_outliers()`, whereas the models retain all positive times.

- Task 1 removes 220 of 2,394 records descriptively.
- Task 2 removes 170 of 2,394 records descriptively.
- Observed maxima are 5,264 seconds for Task 1 and 11,221 seconds for Task 2.

In sensitivity calculations, trimmed back-transformed estimates were 10–17%
lower for Task 1 and 8–12% lower for Task 2.

The models use `log(time_sec)` and then back-transform the fitted values.
Without an appropriate marginal correction, this estimates
`exp(E[log(T)])`—a conditional geometric mean or lognormal median—not the
arithmetic mean time.

### Consequence

The descriptive table and fitted model describe different populations, while
the phrase “estimated time” does not identify the estimated quantity.

### Required action

- Define the target time estimand.
- Establish an interruption/outlier rule before interpreting the results.
- Use a consistent primary population and show the alternative as sensitivity.
- Label the back-transformed quantity accurately.
- If arithmetic mean time is intended, use an appropriate marginal or
  bias-adjusted lognormal estimate.

## 6. Model-adequacy checks are not implemented

**Severity:** Moderate  
**Status:** Open

### Missing checks

- fitted-versus-observed patterns;
- simulated or otherwise appropriate residual diagnostics;
- influential participants, trials, stimuli, and comparison items;
- time-model residual behavior;
- reproduction of boundary scores in the ordinal-beta model;
- adequacy of random-effects structures;
- proportional-odds assessment for the cumulative-link models.

Warnings are suppressed in the page YAML. The installed `glmmTMB` has also
reported that it was built with TMB 1.9.21 while TMB 1.9.22 was loaded; the
suppression can hide this environment warning in rendered pages.

### Required action

Add explicit diagnostic chunks and pass/fail checks, restore compatible
TMB/`glmmTMB` versions, and rerun the complete analysis before manuscript
interpretation.

## 7. Multiplicity and confirmatory contrast families are not defined consistently

**Severity:** Moderate  
**Status:** Open

### Current behavior

- Task 2 applies Tukey adjustment to the complete pairwise family, but a later
  display retains only adjusted-significant results.
- Task 1 reports unadjusted treatment-coefficient p-values.
- Subjective ratings use four separately fitted outcomes and six versus-basic
  contrasts per outcome, without defining whether correction applies within or
  across criteria.

### Consequence

Selective result displays and undefined comparison families can overstate
evidence. An interval excluding zero for one technique but not another does not
itself establish that the two effects differ.

### Required action

Prespecify primary outcomes, primary contrasts, and the relevant multiplicity
families. Report all effect estimates and intervals, including null and
uncertain results.

## 8. Subjective models assume only a participant intercept

**Severity:** Moderate  
**Status:** Open

Each participant rates all seven visualization techniques. The cumulative-link
models in [`pages/subjective.qmd`](../pages/subjective.qmd) currently use:

```r
rating_ord ~ vistype + (1 | ID)
```

This imposes a common visualization effect and a simple within-participant
dependence structure.

### Required action

Evaluate participant-specific visualization slopes or an alternative
repeated-measures ordinal model, and assess proportional odds. If the simpler
model is retained, report the limitation and show a defensible sensitivity
analysis.

## 9. “Sum of mean ratings” is an unvalidated composite

**Severity:** Moderate  
**Status:** Open

The subjective summary adds four distinct criteria with equal weight and uses
the total to order techniques. The four criteria—comparison, detection and
integration, representation, and aesthetic appeal—were measured separately.

### Consequence

The sum implies an overall ranking that was not directly measured and may not
represent a coherent construct.

### Required action

Remove the composite unless it was prespecified and theoretically justified,
or identify it clearly as an exploratory equal-weight index. Do not use it as
confirmatory evidence of overall superiority.

## 10. Root `Analysis.qmd` is obsolete and non-reproducible

**Severity:** Moderate  
**Status:** 🟢 **Resolved on 27 October 2026**

The removed root `Analysis.qmd` expected the absent files `correct.xlsx` and
`data_uncertain_topoplots_pilot1.csv`. It was excluded from `_quarto.yml`, was
not linked from the website, referenced variables absent from the final export,
and contained pilot-era calculations replaced by the current modular pages.

Its old subjective-rating logic would also recreate the A304 labeling problem
if adapted to the final export.

### Resolution

The obsolete file was removed. Its historical contents remain recoverable from
Git history, while the active entry points remain the modular `pages/` files
listed in `_quarto.yml` and the shared `scripts/analysis_setup.R` setup.

## 11. Reduced sample-figure caption contradicted its code

**Severity:** Low  
**Status:** 🟢 **Resolved on 27 October 2026**

The original reduced figure retained categories satisfying
`round(percent_score) > 3`, while its caption said categories were combined
into “Other.” The code therefore excluded small categories instead of grouping
them, and the caption used the threshold in the wrong direction.

### Resolution

[`pages/sample.qmd`](../pages/sample.qmd) now implements the intended rules:
country categories below 2% and software categories below 4% are combined into
“Other.” The labels state the per-category thresholds directly. Country counts
are aggregated directly. Software is aggregated at the respondent level, so a
participant selecting several grouped software options is counted only once in
“Other.” The heading, caption, rendered page, and publication figure were
updated accordingly.

## 12. Task 2 descriptive error bars lack a coherent interpretation

**Severity:** Low  
**Status:** Open

The descriptive figure in [`pages/task2.qmd`](../pages/task2.qmd) centers a
standard deviation around the median (`median ± SD`) and calls the graded
outcome “accuracy.” Standard deviation is conventionally interpreted relative
to the mean and is not an uncertainty interval for the median.

### Required action

Show participant-level distributions, quantiles, or an uncertainty interval
for a defined estimand. Refer to the outcome as a detection score.

## Open scientific and analytic questions

1. Should claims generalize across participants only, or also across EEG
   stimuli and comparison pairs?
2. Which outcomes and contrasts are confirmatory, and what multiplicity family
   was planned?
3. Is completion time intended as an arithmetic mean, geometric mean/median,
   or another robust estimand?
4. Was an interruption or outlier policy preregistered?
5. Were the four subjective criteria intended to form an overall composite?
6. For the qualitative workbook, how many coders were used, how were
   disagreements adjudicated, and was reliability assessed?
7. IDs are generated with `row_number()` after filtering, while the feedback
   analysis uses them to link an external workbook. A stable pseudonymous
   source identifier is needed before future data updates.

## Checks that passed

- Both tasks reconstruct exactly 2,394 records: 114 participants × 21 trials.
- Every participant has three trials for each of seven visualization types.
- No duplicate join keys, unmatched visualization labels, or missing primary
  outcomes were found.
- Task 1 outcomes contain 1,853 correct and 541 incorrect responses.
- All selections for Task 2's 30 stimuli matched one of 64 region scores.
- All three Task 2 patterns are exactly balanced across visualization types.
- Presentation order is approximately balanced across visualization types.
- The current Task 1 generalized linear mixed model was non-singular and had no
  optimizer message.
- The current Task 2 model returned convergence code 0 with a positive-definite
  Hessian.
- All four cumulative-link models used 798 observations, had maximum gradients
  below 0.001, and had positive Hessian eigenvalues.
- No subjective ratings are missing among the included 114 participants.
- Task 2 explicitly uses Tukey adjustment for its complete pairwise family.

## Audit provenance

The audit was conducted against the project files and local source data. It
included direct reconstruction checks and sensitivity fits. Methodological
recommendations follow the project's statistical-audit protocol: trace the
intended estimand through implementation and reporting, represent relevant
hierarchical dependence, and judge models using effect estimates and model
adequacy rather than thresholded significance alone.

Creating this report did not modify analysis code, generated results, figures,
or manuscript text.
