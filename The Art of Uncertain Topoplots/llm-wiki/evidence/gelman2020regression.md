---
id: "gelman2020regression"
title: "Regression and Other Stories"
source_type: "applied statistical-methods handbook"
topics: ["statistical uncertainty", "model checking", "causal interpretation"]
---

# Research evidence: Regression and Other Stories

[Concise summary](../summaries/gelman2020regression.md) · [Paper index](../index/gelman2020regression.md) · [Full extracted text](../raw/gelman2020regression.md)

> This is a navigation and synthesis record, not primary evidence. Verify literature-review statements in the linked raw passage and inspect the archived PDF for figures, tables, equations, or extraction ambiguity.

**Source type:** applied statistical-methods handbook  
**Evidence topics:** `statistical uncertainty`, `model checking`, `causal interpretation`

## Research question

- How should regression be used and critically evaluated for comparison, estimation, prediction, and causal inference in real scientific problems? **Evidence:** [PDF p. 3](../raw/gelman2020regression.md#p003-b002) (passage)

## Contributions

- Integrates regression, simulation, uncertainty assessment, graphical model checking, design, generalization, and causal inference in an applied workflow using R and Stan. **Evidence:** [PDF p. 3](../raw/gelman2020regression.md#p003-b002) (passage); [PDF p. 3](../raw/gelman2020regression.md#p003-b003) (passage); [PDF p. 181](../raw/gelman2020regression.md#p181-b010) (passage)

## Methods

| Component | Extracted detail |
| --- | --- |
| Design | Instructional synthesis with worked real and simulated examples. |
| Sample | Not applicable; the book is not one empirical study and examples use different datasets and simulations. |
| Conditions | Linear and generalized linear models, design and missing data, prediction, model checking, and causal inference. |
| Measurements | Example-specific estimates, uncertainty intervals, predictive performance, diagnostics, and simulated-data comparisons. |
| Analysis | Frequentist and Bayesian regression workflows with an emphasis on simulation and graphical checking. |
| Evidence | [PDF p. 3](../raw/gelman2020regression.md#p003-b002) (passage); [PDF p. 68](../raw/gelman2020regression.md#p068-b004) (passage); [PDF p. 174](../raw/gelman2020regression.md#p174-b003) (passage); [PDF p. 181](../raw/gelman2020regression.md#p181-b010) (passage) |

## Claim-level evidence

<a id="claim-gelman-unmodeled-uncertainty"></a>

### gelman-unmodeled-uncertainty

**Type:** `methodological_claim`  
**Claim:** Model-based standard errors and confidence intervals do not cover all uncertainty when measurements, sampling, or modeling assumptions are imperfect; important unmodeled uncertainty must be considered separately.  
**Quantitative detail:** The chapter presents total uncertainty as a combination of modeled standard error and an additional independent uncertainty component; this is methodological illustration, not a universal estimated value.  
**Evidence:** [PDF p. 73](../raw/gelman2020regression.md#p073-b004) (passage); [PDF p. 73](../raw/gelman2020regression.md#p073-b006) (passage)
<a id="claim-gelman-significance-dichotomy"></a>

### gelman-significance-dichotomy

**Type:** `methodological_claim`  
**Claim:** A sharp distinction between statistically significant and nonsignificant results is a common error and should not replace examination of estimates, uncertainty, and substantive context.  
**Quantitative detail:** Not applicable.  
**Evidence:** [PDF p. 78](../raw/gelman2020regression.md#p078-b003) (passage); [PDF p. 84](../raw/gelman2020regression.md#p084-b002) (passage)
<a id="claim-gelman-coefficients-comparisons"></a>

### gelman-coefficients-comparisons

**Type:** `methodological_claim`  
**Claim:** Regression coefficients encode conditional comparisons and should not automatically be described as causal effects.  
**Quantitative detail:** Illustrated with a survey example of 1,816 respondents.  
**Evidence:** [PDF p. 102](../raw/gelman2020regression.md#p102-b002) (passage)
<a id="claim-gelman-predictive-checking"></a>

### gelman-predictive-checking

**Type:** `methodological_claim`  
**Claim:** Posterior predictive checking evaluates a fitted model by simulating replicated datasets and comparing them with observed data.  
**Quantitative detail:** No single effect size; a model-checking procedure.  
**Evidence:** [PDF p. 181](../raw/gelman2020regression.md#p181-b010) (passage)
<a id="claim-gelman-graphs-comparisons"></a>

### gelman-graphs-comparisons

**Type:** `theoretical_argument`  
**Claim:** Graphs gain meaning through comparisons, and exploratory graphics should be connected to the comparisons and model checks the analysis requires.  
**Quantitative detail:** Not applicable.  
**Evidence:** [PDF p. 43](../raw/gelman2020regression.md#p043-b005) (passage); [PDF p. 174](../raw/gelman2020regression.md#p174-b003) (passage)


## Conclusions

- For a rigorous review, numerical estimates should be reported with uncertainty and assumptions, causal language should match design, and fitted models should be checked against data rather than accepted from coefficients alone. **Evidence:** [PDF p. 73](../raw/gelman2020regression.md#p073-b004) (passage); [PDF p. 102](../raw/gelman2020regression.md#p102-b002) (passage); [PDF p. 181](../raw/gelman2020regression.md#p181-b010) (passage)

## Limitations

- This is a wide-ranging textbook, not a primary study or systematic review; its examples demonstrate methods but do not supply domain-specific evidence about EEG topoplot perception. **Provenance:** `wiki_scope_note`. **Evidence:** [PDF p. 3](../raw/gelman2020regression.md#p003-b002) (passage)

## Citation discipline

- Keep empirical findings, author interpretations, methodological claims, theoretical arguments, and documentation distinct.
- Do not convert `wiki_scope_note` or `source_quality_note` into an author-stated limitation.
- If a needed number is absent or extraction is ambiguous, report it as not available and inspect the archived PDF rather than infer it.
