# Statistical interpretation and audit foundations

[Evidence matrix](../matrices/statistical-interpretation-audit.md) · [Claim catalog](../catalog/claims.md)

## Research question

What checks help align statistical code, study design, and reported scientific claims?

## Scope and synthesis boundary

Gelman, Hill, and Vehtari provide methodological framing, while EEG and reporting sources provide domain context. This matrix is an audit guide, not evidence that a particular project implementation is correct.

## Evidence map

- **`method_check` — [Regression and Other Stories](../evidence/gelman2020regression.md#claim-gelman-unmodeled-uncertainty):** Check whether calculations omit important sampling, measurement, or model uncertainty.
- **`reporting_check` — [Regression and Other Stories](../evidence/gelman2020regression.md#claim-gelman-significance-dichotomy):** Check for significant/nonsignificant dichotomies that overstate differences.
- **`interpretation_check` — [Regression and Other Stories](../evidence/gelman2020regression.md#claim-gelman-coefficients-comparisons):** Check whether conditional associations are mislabeled as causal effects.
- **`code_and_model_check` — [Regression and Other Stories](../evidence/gelman2020regression.md#claim-gelman-predictive-checking):** Check fitted models against observed data and replicated predictions.
- **`eeg_context` — [LIMO EEG: A Toolbox for Hierarchical LInear MOdeling of ElectroEncephaloGraphic Data](../evidence/pernet2011limo.md#claim-pernet-single-trial):** Check whether the analysis preserves or discards trial-level variability consistently with the research question.
- **`eeg_context` — [ERP CORE: An Open Resource for Human Event-Related Potential Research](../evidence/kappenman2021erp.md#claim-kappenman-noise-resource):** Check whether measurement noise and participant variation are defined and reported rather than conflated.
- **`reporting_context` — [The Current State of Uncertainty Reporting in Ecosystem Studies: A Systematic Evaluation of Peer-Reviewed Literature](../evidence/yanai2021current.md#claim-yanai-reporting-rates):** Incomplete source-specific uncertainty reporting motivates an explicit reporting checklist.

## Research gaps

- A project audit still requires reading the actual analysis code, data transformations, model objects, and manuscript claims; handbook principles cannot substitute for execution checks.
- The archived sources do not define one universally correct EEG topoplot uncertainty model.
- Simulation-based calibration, sensitivity analysis, and validation targets must be chosen for the actual estimand and study design.
- Every reported number should be traceable from manuscript text to generated output and the code/data state that produced it.

## How to use this page

Open the matrix for side-by-side methods and quantitative details. Then open the claim record and verify the linked raw passage before citing. Relations such as `mixed`, `qualifies`, or `challenges_integration` are synthesis labels, not labels used by the original authors.
