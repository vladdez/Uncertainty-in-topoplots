---
title: "Table S3 literature audit"
subtitle: "Source-to-claim trail for the criterion-specific rankings"
---

::: {.callout-warning}
## Re-checked 17 November 2026: open issues

The source-to-claim trail below was written in October. The full re-check in the
[manuscript citation audit, part C](manuscript-citations-audit.md#c.-supplement-tables-s2-and-s3) found that 11 of the 13 rows need changes
to the **current** Table S3 text, two of them High severity (Sanyal, Correll 2018).
The last column summarizes each row; exact replacement text is in part C.
:::

## Scope and interpretation

This audit supports the criterion-specific rankings added to Supplementary Table S3.
It covers the 13 empirical evaluations already listed in Supplementary Table S2. A
ranking is reported only when the paper provides a point-estimate order, an inferential
comparison, or an explicit author conclusion. `≈` denotes a tie, an inconclusive
contrast, or no reliable difference; it does not assert numerical equality. Partial
orders are retained where the paper does not support a complete ranking.

The archived PDFs were inspected for every table- or figure-based ranking. This was
especially important for Sanyal et al., whose extracted text has a broken font mapping.

## Source-to-claim trail

| Table S3 row | Evidence used | Qualification retained | Re-check (17 Nov 2026) |
| --- | --- | --- | --- |
| Wainer & Francolini (1980) | [Experiment 1 results](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/wainer1980colormaps.md#p011-b001); [legend-removal results](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/wainer1980colormaps.md#p012-b003) | Accuracy and response time favor different displays. | [Low]{.badge .sev-low} E2 task wording: eight E1 participants repeated it, adding a no-legend trial (C24). |
| Sanyal et al. (2009) | [Closing discussion](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/sanyal2009user.md#p009-b002); archived PDF, pp. 7–9, especially Table 1 and Figs. 10–11 | The paper reports only Bonferroni pairwise significance tests (Table 1), not per-task means; orders differ between 1D and 2D tasks; no universal winner. | [High]{.badge .sev-high} Lower-order rankings contradict Table 1: in 1D least-uncertain, **error bars beat surface colour**; 1D most-uncertain "glyph size > error bars" is not reported (C26–C27). 2D most-uncertain: glyph colour is not a co-winner (C28). |
| MacEachren et al. (2012) | [Experiment 1 design/results](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/maceachren2012semiotics.md#p004-b002); [Experiment 2 Table 4](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/maceachren2012semiotics.md#p008-b002); [response-time interpretation](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/maceachren2012semiotics.md#p009-b003) | Iconicity had no consistent accuracy effect; abstract symbols were faster overall but not in every category. | [Low]{.badge .sev-low} Grain also had a mean below 4 in Fig. 4 (C31). |
| Correll & Gleicher (2014) | [one-sample likelihood results](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/correll2014error.md#p006-b013); [confidence results](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/correll2014error.md#p008-b023); [discussion](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/correll2014error.md#p009-b002) | The evidence supports a contrast between bar charts and the symmetric alternatives, not a reliable ordering among the alternatives. | [Moderate]{.badge .sev-moderate} E1: box plots tied bar charts on confidence, not gradient and violin (C32). |
| Scholz & Lu (2014) | [preference ranks](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/scholz2014uncertainty.md#p007-b004); [decision case](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/scholz2014uncertainty.md#p008-b005) | Only the preference task ranks the four encodings; the decision case is not a between-encoding comparison. | [Moderate]{.badge .sev-moderate} "Mean rank 3.35" is a mean preference score (4 = most preferred) (C35). |
| Greis et al. (2015) | [survey means](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/greis2015investigating.md#p291-b002); [game outcomes and preferences](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/greis2015investigating.md#p292-b002) | Survey ratings and behavioral performance are reported separately; the game sample was only 12. | [Moderate]{.badge .sev-moderate} Task wording: 12 displays rated on four 5-point scales (C37). |
| Hullman et al. (2015) | [completion time](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/hullman2015hypothetical.md#p012-b002); [task-specific errors](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/hullman2015hypothetical.md#p013-b005) | HOPs dominate multi-variable ordering tasks but not every one-variable estimate; the time difference was not significant. | Supported. |
| Gschwandtner et al. (2016) | [error tests, Tables 1–2](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/gschwandtner2016visual.md#p006-b002); [task-specific results, Fig. 6](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/gschwandtner2016visual.md#p007-b003); [interpretation results](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/gschwandtner2016visual.md#p007-b004) | Boundary, duration, probability, and time tasks yield different orders. | [Moderate]{.badge .sev-moderate} Average duration: only centred error bars were significantly best; E3a/E3b labels do not match the paper's tasks 3a–3c (C40–C41). |
| Correll et al. (2018) | [identification conditions and Fig. 6](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/correll2018task.md#p006-b006); [identification and decision results](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/correll2018task.md#p008-b002) | E1 supports discrete superposition; E2 supports a change in uncertainty-sensitive choices, not a universal decision advantage. | [High]{.badge .sev-high} E2 ranks VSUPs best, but they had **higher average danger**; the qualification above is not in the table (C43). |
| Fernandes et al. (2018) | [learning and consistency results](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/fernandes2018uncertainty.md#p008-b002); [final-trial comparison](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/fernandes2018uncertainty.md#p009-b011) | Dot50 is the clearest winner; the paper does not establish a complete order among all lower-performing conditions. | [Low]{.badge .sev-low} Lower order needs the text-interval qualification (C45). |
| Kale et al. (2019) | [E1 JND result](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/kale2019hypothetical.md#p006-b002); [E2 JND result](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/kale2019hypothetical.md#p007-b003); [E2 qualifications](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/kale2019hypothetical.md#p008-b003) | Regular HOPs beat the static comparator in each experiment; the fast-HOP contrast with line ensembles was inconclusive. | Supported in S3; the S2 sample size (E2 N = 150) is not in the archived paper. |
| Kusumastuti et al. (2023) | [E1 post-practice results](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/kusumastuti2023practice.md#p007-b003); [E2 post-practice results](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/kusumastuti2023practice.md#p008-b003) | Practice and number of sources alter the ordering; the E2 ellipse advantage follows practice with ellipse stimuli. | [Moderate]{.badge .sev-moderate} The table does not say the orders are post-practice or which display was practised (C48). |
| Sterzik et al. (2025) | [directionality results](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/sterzik2025.md#p009-b002); [value-estimation results](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/sterzik2025.md#p011-b003); [cross-study interpretation](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/sterzik2025.md#p012-b002); [conclusion](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/sterzik2025.md#p013-b002) | Directionality and value-estimation criteria favor different metaphors; the lower-order ranking changes by molecular representation. | [Moderate]{.badge .sev-moderate} E2: authors call five metaphors similar (≈ 70%), not ordered; E3: texture ties colour on SES, colour best on sticks (C50–C51). |

## Corrections made to Table S2

- Scholz & Lu: replaced the single `N: 60` with the study-specific counts: 72
  survey entrants, 37 valid preference rankings, and 60 responses in the decision
  case.
- Greis et al.: corrected the game sample from 44 to 12 participants; the survey
  sample remains 90.
