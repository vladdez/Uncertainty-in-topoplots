---
name: statistical-audit
description: Audit scientific analyses across code implementation, methodological fit, and manuscript reporting. Use when reviewing statistical code, models, estimands, study-design alignment, generated results, tables, figures, or statistical claims. Ground methodological checks in the project's Gelman handbook index and domain evidence where relevant. Do not use for purely stylistic code review or figure aesthetics.
---

# Statistical Audit

Audit three linked layers: intended scientific question → implemented calculation → reported claim. Read applicable project `AGENTS.md` files before inspecting files.

## Evidence retrieval

For statistical principles, retrieve progressively from `The Art of Uncertain Topoplots/llm-wiki/`: `topics/statistical-interpretation-audit.md` → `index/gelman2020regression/README.md` → `evidence/gelman2020regression.md` → linked raw passages. Use EEG-specific evidence records when the issue concerns trials, channels, interpolation, noise, or topoplots. Treat handbooks as methodological support, not proof that the project's implementation is correct.

## 1. Code review

- Reconstruct the intended estimand, inputs, units, exclusions, grouping, transformations, uncertainty definition, and output before judging syntax.
- Trace every reported statistic backward through generated output to the exact calculation and data subset.
- Check joins, filters, missing-data handling, factor/reference levels, aggregation order, weighting, resampling units, random seeds, multiplicity corrections, interval construction, and back-transformations.
- Verify that repeated observations, participants, trials, electrodes, time points, and conditions are indexed at the intended level. Look for leakage, pseudoreplication, circular selection, and silent denominator changes.
- Run proportionate read-only checks or tests when possible. Distinguish confirmed defects from suspicions requiring data or runtime evidence.

## 2. Methodological review

- Map each research question to its outcome, predictor or contrast, estimand, population, and study design.
- Check model family, link, likelihood, hierarchy, dependence structure, random effects, nonlinearity, interactions, measurement error, missingness, and multiple comparisons against that design.
- Examine assumptions and diagnostics, including graphical or predictive checks and sensitivity analyses. Do not accept a model merely because it converged or produced a small p-value.
- Separate association, prediction, description, and causal inference. Flag causal language unsupported by assignment, identification assumptions, overlap, or adjustment strategy.
- Check whether uncertainty intervals cover the claimed source of uncertainty; identify important unmodeled sampling, measurement, preprocessing, interpolation, or model uncertainty.

## 3. Reporting review

- Compare manuscript wording, tables, captions, and figures with actual outputs and model scope.
- Check numerical consistency, denominators, units, signs, reference groups, interval levels, effect sizes, multiplicity, exclusions, and rounding.
- Reject significant/nonsignificant dichotomies as evidence that effects differ. Preserve null, uncertain, and sensitivity results.
- Ensure conclusions do not exceed the sampled population, observed conditions, model assumptions, or design's causal reach.
- Require enough method detail to reproduce the result and to distinguish variability, standard error, confidence/credible intervals, prediction intervals, and model uncertainty.

## Output contract

Lead with prioritized findings, ordered by scientific impact. For each finding provide: severity, affected file and line or output, intended versus actual behavior, evidence, consequence for results or claims, and a concrete correction or verification test. Then list open questions and checks that passed.

Review is read-only by default. Do not modify analysis code, generated results, figures, or manuscript text unless the user explicitly asks for implementation after reviewing the findings. Never invent missing design details or numerical results.
