---
title: "Fixed citations"
subtitle: "Literature findings that have been corrected in the manuscript or supplement"
---

Findings move here from the [manuscript citation audit](manuscript-citations-audit.md)
once the manuscript or supplement text is corrected. IDs keep their audit numbers
(A = Introduction and Related Work, B = Methods to Conclusion, C = supplement tables).

| | Finding | Location |
|--|------------------|----|
| [High]{.badge .sev-high} | [A2. Mikheev survey percentages did not exist in the paper](#a2) | Introduction |
| [High]{.badge .sev-high} | [A17. Petek: "quantifying" counted rows where tools only draw](#a17) | Table 1 |

: {.findings-table}

## A2. Mikheev survey percentages did not exist in the paper {#a2}

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Location:** `journal.typ:70–73`, Introduction · **Fixed:** 18 November 2026
:::

**Problem.** The Introduction said: "In our previous survey of 213 M/EEG researchers,
52% of respondents reported having previously created topoplots. This is the second
results after conventional ERP waveforms (61%) @mikheev2024art." Neither number
appears in the paper as a plotting rate. 52% occurs nowhere; the only 61% is an
unrelated result (61% of 185 respondents read a topoplot series as time-point
snapshots). The ranking was right.

**Evidence.** Figure 6 of Mikheev et al. (2024), PDF p. 9
([caption anchor](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/mikheev2024art.md#p009-b002),
[archived PDF](../The%20Art%20of%20Uncertain%20Topoplots/papers/mikheev2024art.pdf)):
175 of 213 respondents had plotted a topoplot (82%) and 187 of 213 an ERP plot (88%).
These counts exist only as bar labels in the chart, so they are not in the extracted
text, which is why text-based checks could not catch the error.

**Fix.**

- The sentence now reads: "In our previous survey of 213 M/EEG researchers, 82% of
  respondents (175) reported having previously plotted a topoplot, second only to
  conventional ERP waveform plots (88%, 187) @mikheev2024art." It carries a source
  comment, `// Source: mikheev2024art, Fig. 6 (PDF p. 9) …`, which does not print.
  `journal.pdf` was recompiled with `scripts/compile-journal.ps1`.
- Prevention: the Figure 6 counts for all eight plot types were added to the wiki as
  evidence claim
  [`mikheev-plot-familiarity`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/evidence/mikheev2024art.md#claim-mikheev-plot-familiarity),
  noting that they must be checked against the figure. The wiki was rebuilt and
  validated.

## A17. Petek: "quantifying" counted rows where tools only draw {#a17}

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Location:** `journal.typ`, Table 1, Petek et al. (2026) row · **Fixed:** 18 November 2026
:::

**Problem.** The cell said: "For only 5 of the 18 visualizations did at least one tool
provide built-in support for quantifying uncertainty. For the remaining 13 (72%), users
had to construct the visual encoding themselves." Petek et al. rate each tool on each
visualization as ✓ (the tool quantifies uncertainty and draws it), ◦ (the user
quantifies, the tool draws) or × (the user does both). Only 3 rows have a ✓; on 2 more
the best any tool offers is ◦, so users still quantify there. "5 … quantifying" was
therefore wrong, and the second sentence left out that the 13 remaining rows also need
the user to quantify. The 13/18 (72%) count was correct. This error appeared after the
26 October Table 1 audit.

**Evidence.** Petek et al. (2026), Table 3 and its legend, PDF p. 18
([raw passage](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/petek2026general.md#p018-b002),
[archived PDF](../The%20Art%20of%20Uncertain%20Topoplots/papers/petek2026general.pdf)):
✓ rows are confidence interval for mean, point-wise confidence band around a regression
line, and bar chart with confidence interval for mean; ◦-only rows are uncertain binary
heat map and uncertain bivariate means; the other 13 rows are × for all five tools.

**Fix.** The cell now reads: "Only 3 of the 18 visualizations had a tool that both
quantified and drew the uncertainty; for 2 more, tools drew it but users had to quantify
it. For the remaining 13 (72%), users had to do both themselves." A source comment with
the row counts sits under the cell and does not print. `journal.pdf` was recompiled with
`scripts/compile-journal.ps1`; the rendered table was checked.
