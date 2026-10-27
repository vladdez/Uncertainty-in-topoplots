---
id: "kappenman2021erp"
title: "ERP CORE: An Open Resource for Human Event-Related Potential Research"
source_type: "open-resource methods paper with benchmark dataset"
topics: ["ERP methods", "benchmark data", "noise and variability"]
---

# Research evidence: ERP CORE: An Open Resource for Human Event-Related Potential Research

[Concise summary](../summaries/kappenman2021erp.md) · [Paper index](../index/kappenman2021erp.md) · [Full extracted text](../raw/kappenman2021erp.md)

> This is a navigation and synthesis record, not primary evidence. Verify literature-review statements in the linked raw passage and inspect the archived PDF for figures, tables, equations, or extraction ambiguity.

**Source type:** open-resource methods paper with benchmark dataset  
**Evidence topics:** `ERP methods`, `benchmark data`, `noise and variability`

## Research question

- Can standardized paradigms, pipelines, and benchmark data improve reproducibility and quality control across common ERP components? **Evidence:** [PDF p. 1](../raw/kappenman2021erp.md#p001-b006) (passage); [PDF p. 1](../raw/kappenman2021erp.md#p001-b007) (passage)

## Contributions

- Provides ERP CORE: optimized tasks, experiment scripts, processing pipelines, a priori analysis parameters, and shared data for seven widely used ERP components. **Evidence:** [PDF p. 1](../raw/kappenman2021erp.md#p001-b006) (passage); [PDF p. 11](../raw/kappenman2021erp.md#p011-b002) (passage)

## Methods

| Component | Extracted detail |
| --- | --- |
| Design | Within-participant acquisition of six tasks eliciting seven ERP components, followed by standardized preprocessing, component quantification, and noise characterization. |
| Sample | 40 neurotypical young adults. |
| Conditions | N170, mismatch negativity, N2pc, N400, P3, lateralized readiness potential, and error-related negativity paradigms. |
| Measurements | Difference-wave amplitudes and latencies, behavioral responses, amplitude spectra, and multiple noise estimates including plus-minus averages. |
| Analysis | A priori time windows/electrodes, standardized artifact procedures, component-specific quantification, and across-participant summaries. |
| Evidence | [PDF p. 1](../raw/kappenman2021erp.md#p001-b006) (passage); [PDF p. 2](../raw/kappenman2021erp.md#p002-b002) (passage); [PDF p. 4](../raw/kappenman2021erp.md#p004-b005) (passage); [PDF p. 6](../raw/kappenman2021erp.md#p006-b002) (passage) |

## Claim-level evidence

<a id="claim-kappenman-open-benchmark"></a>

### kappenman-open-benchmark

**Type:** `methodological_claim`  
**Claim:** ERP CORE supplies common tasks and reproducible pipelines that can serve as benchmarks for method development and quality control.  
**Quantitative detail:** N=40; seven ERP components.  
**Evidence:** [PDF p. 1](../raw/kappenman2021erp.md#p001-b006) (passage); [PDF p. 11](../raw/kappenman2021erp.md#p011-b002) (passage)
<a id="claim-kappenman-sem-shading"></a>

### kappenman-sem-shading

**Type:** `descriptive_documentation`  
**Claim:** The published difference waveforms show ±1 SEM, explicitly described as reflecting both measurement error and true participant differences.  
**Quantitative detail:** ±1 SEM.  
**Evidence:** [Fig. 2, PDF p. 7](../raw/kappenman2021erp.md#p007-b002) (figure)
<a id="claim-kappenman-noise-resource"></a>

### kappenman-noise-resource

**Type:** `empirical_finding`  
**Claim:** The paper reports component-level noise distributions and benchmark summaries that are not ordinarily supplied in ERP papers.  
**Quantitative detail:** Noise summaries are tabulated in Table 4 with distributions in Figure 3 and supplementary material.  
**Evidence:** [Table 4, PDF p. 9](../raw/kappenman2021erp.md#p009-b011) (table); [Fig. 3, PDF p. 8](../raw/kappenman2021erp.md#p008-b020) (figure); [PDF p. 10](../raw/kappenman2021erp.md#p010-b014) (passage)


## Conclusions

- The resource can reduce implementation errors and researcher degrees of freedom, but reuse requires matching the paradigm, population, and analysis assumptions to the new study. **Evidence:** [PDF p. 11](../raw/kappenman2021erp.md#p011-b002) (passage)

## Limitations

- The benchmark comprises 40 neurotypical young adults and deliberately selected tasks and analysis parameters; some potentially power-improving alternatives were outside scope. **Provenance:** `authors`. **Evidence:** [PDF p. 5](../raw/kappenman2021erp.md#p005-b005) (passage); [PDF p. 11](../raw/kappenman2021erp.md#p011-b002) (passage)

## Citation discipline

- Keep empirical findings, author interpretations, methodological claims, theoretical arguments, and documentation distinct.
- Do not convert `wiki_scope_note` or `source_quality_note` into an author-stated limitation.
- If a needed number is absent or extraction is ambiguous, report it as not available and inspect the archived PDF rather than infer it.
