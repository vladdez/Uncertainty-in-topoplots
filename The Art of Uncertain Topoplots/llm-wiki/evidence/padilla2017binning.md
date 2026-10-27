---
id: "padilla2017binning"
title: "Evaluating the Impact of Binning 2D Scalar Fields"
source_type: "controlled crowdsourced experiment"
topics: ["binning", "speed-accuracy tradeoff", "scalar fields"]
---

# Research evidence: Evaluating the Impact of Binning 2D Scalar Fields

[Concise summary](../summaries/padilla2017binning.md) · [Paper index](../index/padilla2017binning.md) · [Full extracted text](../raw/padilla2017binning.md)

> This is a navigation and synthesis record, not primary evidence. Verify literature-review statements in the linked raw passage and inspect the archived PDF for figures, tables, equations, or extraction ambiguity.

**Source type:** controlled crowdsourced experiment  
**Evidence topics:** `binning`, `speed-accuracy tradeoff`, `scalar fields`

## Research question

- When does binning a continuous 2D scalar field improve or harm speed, accuracy, and confidence across geospatial tasks? **Evidence:** [PDF p. 1](../raw/padilla2017binning.md#p001-b004) (passage); [PDF p. 3](../raw/padilla2017binning.md#p003-b003) (passage)

## Contributions

- Tests the expressiveness principle against five grayscale encoding conditions and twelve tasks ranging from lookup to multistep spatial judgments. **Evidence:** [PDF p. 1](../raw/padilla2017binning.md#p001-b003) (passage); [PDF p. 3](../raw/padilla2017binning.md#p003-b003) (passage)

## Methods

| Component | Extracted detail |
| --- | --- |
| Design | Between-participant Amazon Mechanical Turk experiment with task as a within-participant factor. |
| Sample | 499 U.S. master-class workers: continuous n=101; 10 m n=100; 20 m n=99; 30 m n=99; 40 m n=100. |
| Conditions | One perceptually linear continuous grayscale encoding and four approximately perceptually linear binned encodings; each participant completed 12 randomized tasks. |
| Measurements | Task accuracy, completion time, 1–7 confidence ratings, and display checks. |
| Analysis | Task-specific ANOVAs, logistic/ordinal regressions, planned contrasts, and Tukey HSD corrections. |
| Evidence | [PDF p. 3](../raw/padilla2017binning.md#p003-b003) (passage); [PDF p. 5](../raw/padilla2017binning.md#p005-b010) (passage); [PDF p. 7](../raw/padilla2017binning.md#p007-b005) (passage) |

## Claim-level evidence

<a id="claim-padilla-speed-accuracy"></a>

### padilla-speed-accuracy

**Type:** `empirical_finding`  
**Claim:** Continuous encodings were generally faster but never clearly more accurate; binned encodings were more accurate for some tasks.  
**Quantitative detail:** Five conditions; N=499; 12 tasks.  
**Evidence:** [PDF p. 1](../raw/padilla2017binning.md#p001-b004) (passage); [PDF p. 5](../raw/padilla2017binning.md#p005-b010) (passage)
<a id="claim-padilla-highest-point"></a>

### padilla-highest-point

**Type:** `empirical_finding`  
**Claim:** For the highest-point task, the coarsest 40 m binning reduced error relative to the continuous display.  
**Quantitative detail:** Mean CIELAB error 3.25 (SD 3.06) versus 4.93 (SD 4.55), p<.05.  
**Evidence:** [PDF p. 5](../raw/padilla2017binning.md#p005-b010) (passage)
<a id="claim-padilla-task-guidance"></a>

### padilla-task-guidance

**Type:** `author_interpretation`  
**Claim:** The authors recommend choosing binning when accuracy is primary and continuous encoding when speed is primary, while treating this as task- and domain-dependent guidance.  
**Quantitative detail:** Not applicable.  
**Evidence:** [PDF p. 9](../raw/padilla2017binning.md#p009-b003) (passage)


## Conclusions

- Strict expressiveness is not always optimal; discretization can improve some judgments at a cost in speed, and confidence showed no consistent pattern. **Evidence:** [PDF p. 8](../raw/padilla2017binning.md#p008-b012) (passage); [PDF p. 9](../raw/padilla2017binning.md#p009-b003) (passage)

## Limitations

- The study used grayscale elevation stimuli, online displays, and specific tasks; palette, domain, spatial working memory, and multistep demands may change the tradeoff. **Provenance:** `authors`. **Evidence:** [PDF p. 6](../raw/padilla2017binning.md#p006-b010) (passage); [PDF p. 9](../raw/padilla2017binning.md#p009-b003) (passage)

## Citation discipline

- Keep empirical findings, author interpretations, methodological claims, theoretical arguments, and documentation distinct.
- Do not convert `wiki_scope_note` or `source_quality_note` into an author-stated limitation.
- If a needed number is absent or extraction is ambiguous, report it as not available and inspect the archived PDF rather than infer it.
