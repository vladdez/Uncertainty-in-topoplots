# Claim audit — journal Table 1

26 October 2026

**Manuscript location:** [`journal.typ`](../../journal.typ), table label `tab:uncertainty-reporting` (currently lines 158–201).  
**Caption:** “Representative evidence of incomplete uncertainty reporting and visualization across scientific domains and limited software support.”

This is an authored source-to-claim audit for journal Table 1. It is not primary evidence. Verify claims through the linked archived passages and inspect the original PDF when extraction or layout matters.

The manuscript labels the evidence design in each row because publication audits, a practitioner survey, and a software comparison do not yield directly comparable percentages.
Publication years are shown explicitly in the Study column and match the records in `refs.bib`.

## Audit summary

| Row | Overall status | Required qualification |
| --- | --- | --- |
| Allen et al. (2012) | Supported; wording refinement recommended | The source states exactly **20% of audited 3D graphics**, not “about 20% of visualisations with three features.” The manuscript footnote correctly explains the authors’ use of “3D.” |
| Yanai et al. (2021) | Supported | The 42% mean and 54% below-half result refer to the fraction of uncertainty sources judged applicable that papers quantified. |
| Mikheev et al. (2024) | Supported | This is a self-reported practitioner-survey result rather than a direct publication audit, and error bars are only one uncertainty representation. |
| Jain et al. (2026) | Supported | The two percentages describe different outcomes: visual integration in maps (3/66) and complete omission from the papers (26/66). |
| Petek et al. (2026) | Supported as a reproducible project calculation | The paper presents an 18-row tool-comparison table. The value 13/18 is obtained by counting rows marked `×` for all five tools; it is not stated as “72%” in the prose. |

## Cell-level evidence matrix

| Table row and cell | Manuscript claim | Claim type | Exact project evidence | Assessment |
| --- | --- | --- | --- | --- |
| Allen — evidence and sample | Publication audit: 288 articles; 1,451 figures | Empirical corpus description | [PDF p. 1](../raw/allen2012data.md#p001-b007) | Directly supported. The sample covered articles published in 2010 in six neuroscience journals. |
| Allen — main finding | Only about 20% of visualisations with three features represented uncertainty | Empirical finding, paraphrased | [PDF p. 1](../raw/allen2012data.md#p001-b007) | Numerically supported, but use the source’s term: “Only 20% of audited 3D graphics portrayed uncertainty.” The present footnote correctly notes that “3D” means three data variables and does not necessarily mean 3D spatial rendering. |
| Yanai — evidence and sample | Publication audit: 132 articles | Empirical corpus description | [Abstract, PDF p. 1](../raw/yanai2021current.md#p001-b004) | Directly supported. The papers were published in 2019 and randomly sampled from 100 journals. |
| Yanai — main finding, mean | Papers quantified 42% of relevant uncertainty sources on average | Empirical finding | [Discussion, PDF p. 11](../raw/yanai2021current.md#p011-b002) | Directly supported. The source calls this the mean “uncertainty score”; the median was 40%. |
| Yanai — main finding, below half | 54% quantified fewer than half of applicable uncertainty sources | Empirical finding | [Discussion, PDF p. 11](../raw/yanai2021current.md#p011-b002) | Directly supported. Preserve “judged applicable,” because applicability was determined by the review coding. |
| Mikheev — evidence and sample | Practitioner survey (cross-sectional): 213 M/EEG practitioners; 157 had published an ERP plot | Empirical sample description | [Methods and sample, PDF pp. 6–7](../raw/mikheev2024art.md#p006-b002); [result denominator, PDF p. 12](../raw/mikheev2024art.md#p012-b004) | Supported. Recruitment produced a convenience sample, and the result is conditional on the 157 respondents who reported having published an ERP plot. |
| Mikheev — main finding | Among those 157 respondents, 40% reported not including error bars | Empirical self-report finding | [PDF p. 12](../raw/mikheev2024art.md#p012-b004); [Figure 11, PDF p. 13](../raw/mikheev2024art.md#p013-b002) | Directly supported. This is not a direct audit of published ERP figures, and absence of error bars does not establish absence of every possible uncertainty encoding. |
| Jain — evidence and sample | Publication audit (systematic scoping review): 66 articles containing Asia-Pacific climate-related infectious-disease maps | Empirical corpus description | [Abstract, PDF p. 1](../raw/jain2026communicating.md#p001-b005); [methods evidence](../raw/jain2026communicating.md#p003-b002) | Supported. More precisely, 66 included manuscripts contained one or more maps and concerned climate-sensitive human disease in the Asia-Pacific region. |
| Jain — visually integrated uncertainty | 3 of 66 studies (4.5%) visually integrated uncertainty into maps | Empirical finding plus project percentage calculation | [Results/discussion, PDF p. 10](../raw/jain2026communicating.md#p010-b002) | The numerator and denominator are direct. `4.5%` is the rounded calculation `3 / 66 × 100 = 4.545…%`. |
| Jain — no uncertainty reported | 26 studies (39%) did not report uncertainty at all | Empirical finding | [Concordance results, PDF p. 9](../raw/jain2026communicating.md#p009-b002) | Directly supported: `n = 26, 39%` did not report uncertainty in their papers. Do not conflate this with the 43 studies that either omitted uncertainty or mentioned it only in text without linking it to visualizations. |
| Petek — evidence and sample, tools | Software comparison: five tools—Matplotlib, ggplot2, ggdist, Seaborn, and ggdibbler | Descriptive documentation | [Table 3, PDF p. 18](../raw/petek2026general.md#p018-b002) | Directly supported. PGoG was excluded because it was a prototype. |
| Petek — evidence and sample, scenarios | 18 uncertainty-visualization scenarios | Project count from source table | [Table 3, PDF p. 18](../raw/petek2026general.md#p018-b002) | Supported by counting the 18 visualization rows in Table 3. |
| Petek — all tools require manual work | In 13 of 18 scenarios, all five tools required manual uncertainty quantification and visual-encoding construction | Project count from source table | [Table 3 and symbol definitions, PDF p. 18](../raw/petek2026general.md#p018-b002) | Reproducible count: 13 rows contain `×` for every tool. The table defines `×` as requiring the user to quantify uncertainty and design the visual encoding, including overlay choices where relevant. |
| Petek — 72% | 13 of 18 = 72% | Project arithmetic | [Table 3, PDF p. 18](../raw/petek2026general.md#p018-b002) | Correct when rounded to the nearest whole percentage: `72.2%`. Label as a count derived from Table 3 rather than an author-reported percentage. |

## Source records and limitations

### Allen et al. (2012)

[Evidence record](../evidence/allen2012data.md) · [paper index](../index/allen2012data.md) · [raw text](../raw/allen2012data.md)

- **Source type:** descriptive practice audit plus methodological commentary.
- **Scope:** a 2010 snapshot of six neuroscience journals, not a systematic review of all neuroscience literature.
- **Audit decision:** the row supports incomplete uncertainty depiction in the audited corpus; it should not be generalized to all contemporary neuroscience figures without qualification.

### Yanai et al. (2021)

[Evidence record](../evidence/yanai2021current.md) · [paper index](../index/yanai2021current.md) · [raw text](../raw/yanai2021current.md)

- **Source type:** systematic audit of randomly selected ecosystem papers.
- **Scope:** 2019 ecosystem literature across four topic areas; the authors sometimes could not judge applicability when papers omitted necessary methodological information.
- **Audit decision:** both reported percentages are direct findings, but “relevant” should retain the meaning “judged applicable under the review coding.”

### Mikheev et al. (2024)

[Evidence record](../evidence/mikheev2024art.md) · [paper index](../index/mikheev2024art.md) · [raw text](../raw/mikheev2024art.md)

- **Source type:** cross-sectional online practitioner survey.
- **Scope:** 213 completed responses from a convenience sample of M/EEG practitioners; the error-bar result is conditional on 157 respondents who reported having published an ERP plot.
- **Audit decision:** the 40% result directly supports incomplete use of error bars in self-reported ERP plotting practice. It should not be presented as a direct audit of published figures or as evidence that every respondent omitted all forms of uncertainty representation.

### Jain et al. (2026)

[Evidence record](../evidence/jain2026communicating.md) · [paper index](../index/jain2026communicating.md) · [raw text](../raw/jain2026communicating.md)

- **Source type:** PRISMA-guided systematic scoping review.
- **Scope:** English-language peer-reviewed studies of climate-sensitive human disease in the Asia-Pacific region; it evaluates reporting practice, not the effectiveness of particular uncertainty encodings.
- **Audit decision:** both findings are direct, but they answer different questions and should remain separated in the table wording.

### Petek et al. (2026)

[Evidence record](../evidence/petek2026general.md) · [paper index](../index/petek2026general.md) · [raw text](../raw/petek2026general.md)

- **Source type:** methods paper with a proof-of-concept implementation and author-constructed software feature comparison.
- **Scope:** Table 3 assesses whether wrappers handle uncertainty quantification and encoding for 18 examples selected from the paper. It is not a systematic benchmark of every feature, version, or workflow supported by the five tools.
- **Audit decision:** the manuscript’s `13/18 (72%)` is accurate and reproducible, but should be understood as a project-derived summary of Petek et al.’s Table 3 rather than an independently reported empirical effect.

## Recommended manuscript correction

One wording change would make the Allen row exact without changing its meaning:

> Only 20% of audited 3D graphics portrayed uncertainty.

No other numerical correction is required based on the archived sources. This audit does not itself authorize editing `journal.typ`.
