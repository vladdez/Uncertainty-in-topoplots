---
id: "petek2026general"
title: "A General Approach to Visualizing Uncertainty in Statistical Graphics"
source_type: "general statistical-graphics framework and proof-of-concept implementation"
topics: ["distribution over images", "general uncertainty graphics", "coverage"]
---

# Research evidence: A General Approach to Visualizing Uncertainty in Statistical Graphics

[Concise summary](../summaries/petek2026general.md) · [Paper index](../index/petek2026general.md) · [Full extracted text](../raw/petek2026general.md)

> This is a navigation and synthesis record, not primary evidence. Verify literature-review statements in the linked raw passage and inspect the archived PDF for figures, tables, equations, or extraction ambiguity.

**Source type:** general statistical-graphics framework and proof-of-concept implementation  
**Evidence topics:** `distribution over images`, `general uncertainty graphics`, `coverage`

## Research question

- Can uncertainty for arbitrary statistical graphics be visualized by propagating uncertain inputs into a distribution over rendered images? **Evidence:** [PDF p. 1](../raw/petek2026general.md#p001-b006) (passage)

## Contributions

- Defines a distribution-over-images construction in which sampled plots are aggregated, allowing intervals and bands to emerge without chart-specific uncertainty code. **Evidence:** [PDF p. 1](../raw/petek2026general.md#p001-b006) (passage); [PDF p. 19](../raw/petek2026general.md#p019-b007) (passage)

## Methods

| Component | Extracted detail |
| --- | --- |
| Design | Mathematical framework, implementation, and illustrative examples. |
| Sample | Not applicable; no human-participant sample. |
| Conditions | Uncertain model quantities are repeatedly sampled, rendered, and aggregated as raster images. |
| Measurements | Coverage properties and correspondence with standard inferential displays. |
| Analysis | Theoretical derivation plus examples and implementation discussion. |
| Evidence | [PDF p. 1](../raw/petek2026general.md#p001-b006) (passage); [PDF p. 7](../raw/petek2026general.md#p007-b006) (passage); [PDF p. 19](../raw/petek2026general.md#p019-b007) (passage) |

## Claim-level evidence

<a id="claim-petek-distribution-images"></a>

### petek-distribution-images

**Type:** `methodological_claim`  
**Claim:** Sampling uncertain quantities, rendering each sample, and aggregating pixels yields a general uncertainty display for plots treated as functions of those quantities.  
**Quantitative detail:** No single sample size; algorithmic construction.  
**Evidence:** [PDF p. 1](../raw/petek2026general.md#p001-b006) (passage)
<a id="claim-petek-coverage"></a>

### petek-coverage

**Type:** `methodological_claim`  
**Claim:** Under the paper's assumptions, the construction has coverage guarantees linked to standard statistical inference.  
**Quantitative detail:** See source for formal guarantee and assumptions.  
**Evidence:** [PDF p. 19](../raw/petek2026general.md#p019-b007) (passage)


## Conclusions

- Image-space aggregation can generalize uncertainty overlays, but perceptual appearance and implementation details still matter. **Evidence:** [PDF p. 19](../raw/petek2026general.md#p019-b007) (passage)

## Limitations

- The proof of concept is raster-only; anti-aliasing, intensity perception, color mixing, and dependence beyond IID settings require care. **Provenance:** `authors`. **Evidence:** [PDF p. 7](../raw/petek2026general.md#p007-b006) (passage)

## Citation discipline

- Keep empirical findings, author interpretations, methodological claims, theoretical arguments, and documentation distinct.
- Do not convert `wiki_scope_note` or `source_quality_note` into an author-stated limitation.
- If a needed number is absent or extraction is ambiguous, report it as not available and inspect the archived PDF rather than infer it.
