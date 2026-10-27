---
id: "pernet2011limo"
title: "LIMO EEG: A Toolbox for Hierarchical LInear MOdeling of ElectroEncephaloGraphic Data"
source_type: "statistical-methods and software paper"
topics: ["EEG statistics", "single-trial variability", "mass-univariate inference"]
---

# Research evidence: LIMO EEG: A Toolbox for Hierarchical LInear MOdeling of ElectroEncephaloGraphic Data

[Concise summary](../summaries/pernet2011limo.md) · [Paper index](../index/pernet2011limo.md) · [Full extracted text](../raw/pernet2011limo.md)

> This is a navigation and synthesis record, not primary evidence. Verify literature-review statements in the linked raw passage and inspect the archived PDF for figures, tables, equations, or extraction ambiguity.

**Source type:** statistical-methods and software paper  
**Evidence topics:** `EEG statistics`, `single-trial variability`, `mass-univariate inference`

## Research question

- How can hierarchical linear modeling retain single-trial EEG variability while supporting inference across electrodes and time? **Evidence:** [PDF p. 1](../raw/pernet2011limo.md#p001-b008) (passage)

## Contributions

- Introduces the EEGLAB-compatible LIMO EEG toolbox for massive-univariate hierarchical modeling, robust bootstrap inference, and multiple-comparison correction. **Evidence:** [PDF p. 1](../raw/pernet2011limo.md#p001-b008) (passage); [PDF p. 2](../raw/pernet2011limo.md#p002-b003) (passage)

## Methods

| Component | Extracted detail |
| --- | --- |
| Design | Statistical framework and toolbox demonstration. |
| Sample | No single human sample defines the methodological contribution; example datasets are used for illustration. |
| Conditions | First-level single-trial models followed by group-level analysis over channels and time. |
| Measurements | Regression parameters, robust statistics, bootstrap tests, and corrected significance maps. |
| Analysis | Hierarchical linear models in a massive-univariate framework with resampling and correction options. |
| Evidence | [PDF p. 1](../raw/pernet2011limo.md#p001-b008) (passage); [PDF p. 2](../raw/pernet2011limo.md#p002-b003) (passage); [PDF p. 10](../raw/pernet2011limo.md#p010-b002) (passage) |

## Claim-level evidence

<a id="claim-pernet-single-trial"></a>

### pernet-single-trial

**Type:** `methodological_claim`  
**Claim:** Modeling single trials hierarchically can preserve within-subject variability that conventional averaging discards while enabling group inference across space and time.  
**Quantitative detail:** No universal effect size; method capability.  
**Evidence:** [PDF p. 1](../raw/pernet2011limo.md#p001-b008) (passage)


## Conclusions

- The toolbox expands flexible EEG inference but remains a massive-univariate approach with covariance, computation, and multiplicity constraints. **Evidence:** [PDF p. 10](../raw/pernet2011limo.md#p010-b002) (passage)

## Limitations

- The software stack reflects 2011 and the authors note covariance and computational limitations; a methods paper does not by itself validate a visual uncertainty encoding. **Provenance:** `authors`. **Evidence:** [PDF p. 10](../raw/pernet2011limo.md#p010-b002) (passage)

## Citation discipline

- Keep empirical findings, author interpretations, methodological claims, theoretical arguments, and documentation distinct.
- Do not convert `wiki_scope_note` or `source_quality_note` into an author-stated limitation.
- If a needed number is absent or extraction is ambiguous, report it as not available and inspect the archived PDF rather than infer it.
