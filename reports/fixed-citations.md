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
| [High]{.badge .sev-high} | [A4. Allen's 20% was attributed to "more than three features"](#a4) | Introduction |
| [High]{.badge .sev-high} | [A17. Petek: "quantifying" counted rows where tools only draw](#a17) | Table 1 |
| [Moderate]{.badge .sev-moderate} | [A36. Perceptual studies were cited to a probability-judgment study](#a36) | Related Work |
| [Moderate]{.badge .sev-moderate} | [A41. ERP error bands were called "common"](#a41) | Related Work |
| [Moderate]{.badge .sev-moderate} | [B5. EEGVIS attribution had no archived source](#b5) | Design Space |
| [Moderate]{.badge .sev-moderate} | [B7. Strode corners model: legend and grid-size caveats were missing](#b7) | Design Space |
| [Moderate]{.badge .sev-moderate} | [B8. Bernard: palette top-rated only on black backgrounds; stimuli were white](#b8) | Design Space, Limitations |
| [High]{.badge .sev-high} | [C26. Sanyal 1D least uncertain: ranking reversed Table 1](#c26) | Supplement S3 |
| [High]{.badge .sev-high} | [C27. Sanyal 1D most uncertain: unreported glyph size > error bars](#c27) | Supplement S3 |
| [High]{.badge .sev-high} | [C43. Correll 2018 E2: VSUPs ranked best despite higher danger](#c43) | Supplement S3 |
| [Moderate]{.badge .sev-moderate} | [C2. Wainer & Francolini: S2 gave one N for two experiments](#c2) | Supplement S2 |
| [Moderate]{.badge .sev-moderate} | [C10. Greis: data type "M" not supported by the archived paper](#c10) | Supplement S2 |
| [Moderate]{.badge .sev-moderate} | [C17. Kale: E2 N = 150 is not stated in the paper](#c17) | Supplement S2 |
| [Moderate]{.badge .sev-moderate} | [C28. Sanyal 2D most uncertain: glyph colour was not a co-winner](#c28) | Supplement S3 |
| [Moderate]{.badge .sev-moderate} | [C32. Correll & Gleicher E1: box plots did not tie on confidence](#c32) | Supplement S3 |
| [Moderate]{.badge .sev-moderate} | [C35. Scholz & Lu: "mean rank" was a preference score](#c35) | Supplement S3 |
| [Moderate]{.badge .sev-moderate} | [C37. Greis E1: rating items misdescribed](#c37) | Supplement S3 |
| [Moderate]{.badge .sev-moderate} | [C40. Gschwandtner average duration: centred error bars were alone best](#c40) | Supplement S3 |
| [Moderate]{.badge .sev-moderate} | [C48. Kusumastuti: post-practice and practised display not stated](#c48) | Supplement S3 |
| [Moderate]{.badge .sev-moderate} | [C50. Sterzik E2: a tie presented as an order](#c50) | Supplement S3 |
| [Moderate]{.badge .sev-moderate} | [C51. Sterzik E3: texture not best on every representation](#c51) | Supplement S3 |
| [Low]{.badge .sev-low} | [C3. Wainer & Francolini: bivariate maps are not an uncertainty encoding](#c3) | Supplement S2 |
| [Low]{.badge .sev-low} | [C7. Correll & Gleicher 2014: "prediction accuracy" was strategy adherence](#c7) | Supplement S2 |
| [Low]{.badge .sev-low} | [C12. Hullman 2015: measures were more than probability error](#c12) | Supplement S2 |
| [Low]{.badge .sev-low} | [C19. Kusumastuti: display classes not tied to the displays](#c19) | Supplement S2 |
| [Low]{.badge .sev-low} | [C21. Sterzik: task type and measures incomplete](#c21) | Supplement S2 |
| [Low]{.badge .sev-low} | [C22. Hullman 2015: inconsistent bold N](#c22) | Supplement S2 |
| [Low]{.badge .sev-low} | [C24. Wainer & Francolini: E2 was not just a legend-free repeat](#c24) | Supplement S3 |
| [Low]{.badge .sev-low} | [C29. Sanyal: "highest" vs "most" labels](#c29) | Supplement S3 |
| [Low]{.badge .sev-low} | [C31. MacEachren: grain missing from the lower group](#c31) | Supplement S3 |
| [Low]{.badge .sev-low} | [C41. Gschwandtner: E3a/E3b labels clashed with the paper's tasks](#c41) | Supplement S3 |
| [Low]{.badge .sev-low} | [C45. Fernandes: text-interval results simplified](#c45) | Supplement S3 |

| [Low]{.badge .sev-low} | [BB1, BB2, BB9, BB10. Bibliography metadata did not match the archived sources](#bb-metadata) | `refs.bib` |
| [Low]{.badge .sev-low} | [BB3, BB16–BB18. Unarchived web sources, undated GWDG entry, uncited entries](#bb-sources) | `refs.bib`, `papers/` |
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

# Supplement Tables S2 and S3 (fixed 18 November 2026)

All 25 section-C findings that were not *Supported* were applied to `supplement.typ`
as proposed in the audit, with two choices where the audit gave options: Greis's data
type is now `n.r.` with a caption note (C10), and Kale's E2 sample size carries a ‡
note that it comes from the authors' released data (C17). `supplement.pdf` was
recompiled and both tables were checked in the PDF.

## A41. ERP error bands were called "common" {#a41}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `journal.typ:293–295`, Related Work (Uncertainty in EEG/ERP Visualization) · **Fixed:** 24 November 2026
:::

**Problem.** The sentence said: "In ERP waveforms, uncertainty is commonly shown using
error bars or shaded confidence intervals @allen2012data @kappenman2021erp
@pernet2011limo." The three sources only give examples, and none says how common the
practice is. Kappenman shades ±1 SEM, not a confidence interval; Pernet shows bootstrap
95% confidence intervals; Allen describes the typical ERP panel as having "no portrayal
of uncertainty" and adds 95% bands as a recommendation. Mikheev et al. (2024), where
40% of ERP plots had no error bars, points the other way.

**Fix.** The sentence now reads: "In ERP waveforms, uncertainty can be shown, for
example, with error bars or shaded bands for the standard error or a confidence interval
@allen2012data @kappenman2021erp @pernet2011limo, although many published ERP plots omit
it @mikheev2024art." It no longer claims a prevalence, covers both the SEM bands and the
confidence intervals the sources show, and adds the counterpoint from Mikheev et al.
(2024).
`journal.pdf` was recompiled with `scripts/compile-journal.ps1`.

## A36. Perceptual studies were cited to a probability-judgment study {#a36}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `journal.typ:269–276`, Related Work (Evaluating Uncertainty Visualizations) · **Fixed:** 25 November 2026
:::

**Problem.** Perceptual studies that "identify areas with high uncertainty or compare its
magnitude across different areas, typically measuring accuracy and response time" were
cited to Hullman et al. (2015). That study asked people to estimate properties of one to
three distributions, with no spatial search. The description fits Sanyal et al. (2009).
After the citation was corrected (24 Nov), the next sentence, "Both approaches provide
objective measures", had no antecedent: the overview names four kinds of evaluation, but
the probability-judgment studies were no longer described.

**Fix.** The perceptual sentence cites `sanyal2009user` (24 Nov). A sentence on
probability-judgment studies, cited to Hullman et al. (2015), now comes before "Both
approaches" (25 Nov): "Whereas perceptual studies ask _where_ uncertainty is high,
_probability-judgment studies_ ask participants to estimate properties of the depicted
distributions, such as how likely one value is to exceed another, and score these
estimates against the true values @hullman2015hypothetical." "Both approaches" now refers
to the two approaches just described.
`journal.pdf` was recompiled with `scripts/compile-journal.ps1`.

## C26. Sanyal 1D least uncertain: ranking reversed Table 1 {#c26}

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Location:** `supplement.typ:295`, S3, Sanyal · **Source:** Sanyal et al. 2009 · **Verdict:** Not supported · **Fixed:** 18 November 2026
:::

**Was.** "_1D_ least: glyph colour ≈ surface colour > error bars"

**Evidence.** [`papers/sanyal2009user.pdf`](../The%20Art%20of%20Uncertain%20Topoplots/papers/sanyal2009user.pdf) p. 7 Table 1, 1D SLU: glyph size beats glyph colour, surface colour and error bars, and **error bars beat surface colour** (p ≤ .0083). The paper gives no per-task means (Figs. 10–11 pool tasks), so the cell reverses the only reported lower-order contrast.

**Fix.** → `_1D_ least: error bars > surface colour; glyph colour ≈ both`

## C27. Sanyal 1D most uncertain: unreported glyph size > error bars {#c27}

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Location:** `supplement.typ:295–296`, S3, Sanyal · **Source:** Sanyal et al. 2009 · **Verdict:** Not supported · **Fixed:** 18 November 2026
:::

**Was.** "_1D_ highest: glyph size > error bars"

**Evidence.** [`papers/sanyal2009user.pdf`](../The%20Art%20of%20Uncertain%20Topoplots/papers/sanyal2009user.pdf) p. 7 Table 1, 1D SHU: only glyph colour and surface colour beat glyph size and error bars. No glyph size vs error bars difference is reported, and the table lists significant results only (p. 7 text).

**Fix.** → `_1D_ most: glyph size ≈ error bars`

## C43. Correll 2018 E2: VSUPs ranked best despite higher danger {#c43}

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Location:** `supplement.typ:381`, `385`, S3, Correll 2018 · **Source:** Correll, Moritz & Heer 2018 · **Verdict:** Not supported · **Fixed:** 18 November 2026
:::

**Was.** Best "*E2:* VSUP + wedge legend ≈ VSUP + square legend"; others "Traditional bivariate + wedge ≈ square" (i.e., VSUP > traditional)

**Evidence.** [`raw/correll2018task.md#p007-b008`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/correll2018task.md#p007-b008): no effect of quantization on mean placement uncertainty (p = .83); the KS test shows VSUP users avoided very-high-uncertainty cells. `#p008-b002`: VSUP placements had **higher** average danger, i.e. lower expected value (p = .02). The paper reports a shift in risk profile, not a performance win.

**Fix.** Best → `*E2:* no clear winner: VSUPs reduced very-high-uncertainty placements but produced higher average danger than traditional bivariate maps; legend shape had no effect.`; others → `*E2:* not ranked (trade-off between avoiding high uncertainty and expected value).`

## C2. Wainer & Francolini: S2 gave one N for two experiments {#c2}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `supplement.typ:124`, S2, Wainer · **Source:** Wainer & Francolini 1980 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** "N: 16"

**Evidence.** [`raw/wainer1980colormaps.md#p009-b004`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/wainer1980colormaps.md#p009-b004) (16 students, E1); `#p011-b001` ("eight of the same subjects were re-recruited", E2). S3 ranks E2 separately, and the S2 caption promises separate values when samples differ.

**Fix.** `[N: 16],` → `[*E1:* 16; *E2:* 8],`

## C10. Greis: data type "M" not supported by the archived paper {#c10}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `supplement.typ:163`, S2, Greis · **Source:** Greis et al. 2015 · **Verdict:** Not supported · **Fixed:** 18 November 2026
:::

**Was.** Data "M" (mixed real and simulated)

**Evidence.** [`raw/greis2015investigating.md#p288-b004`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/greis2015investigating.md#p288-b004) ("All representations show the expected rainfall for the next three days") and `#p292-b002` ("the forecasted weather, the real weather" refers to in-game realised weather). The archived article never states whether any data were measured. The ledger's M rests on the non-archived dissertation.

**Fix.** Either archive the dissertation passage and cite it, or replace `[M]` with `[n.r.]` and add to the caption "n.r. = data origin not reported in the archived source."

## C17. Kale: E2 N = 150 is not stated in the paper {#c17}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `supplement.typ:216`, S2, Kale · **Source:** Kale et al. 2019 · **Verdict:** Not verifiable (source not archived) · **Fixed:** 18 November 2026
:::

**Was.** "*E2:* 150"

**Evidence.** No E2 sample size appears in [`raw/kale2019hypothetical.md`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/kale2019hypothetical.md) (searched "recruited", "participants", "150"). The ledger derives it from the external `E2-AnonymousStats.csv`, which is not archived.

**Fix.** Archive the CSV, or write `[*E1:* 50; *E2:* 150#super[‡]]` and add to the caption "‡ From the authors' released data; not stated in the paper."

## C28. Sanyal 2D most uncertain: glyph colour was not a co-winner {#c28}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `supplement.typ:291–292` and `296–297`, S3, Sanyal · **Source:** Sanyal et al. 2009 · **Verdict:** Overstated · **Fixed:** 18 November 2026
:::

**Was.** 2D best for most uncertain: "glyph colour and surface colour"; others "_2D_ highest: glyph size > error bars"

**Evidence.** [`papers/sanyal2009user.pdf`](../The%20Art%20of%20Uncertain%20Topoplots/papers/sanyal2009user.pdf) p. 7 Table 1, 2D SHU: surface colour beats glyph size* and error bars**; glyph size** and glyph colour** beat error bars. Glyph colour is **not** reported better than glyph size, so it is not a co-winner.

**Fix.** Best → `surface colour (≈ glyph colour) for locating the most uncertain value`; others → `_2D_ most: glyph colour ≈ glyph size > error bars; surface colour > glyph size`

## C32. Correll & Gleicher E1: box plots did not tie on confidence {#c32}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `supplement.typ:322`, S3, Correll & Gleicher · **Source:** Correll & Gleicher 2014 · **Verdict:** Overstated · **Fixed:** 18 November 2026
:::

**Was.** "*E1:* gradient ≈ violin ≈ box plot."

**Evidence.** [`raw/correll2014error.md#p006-b014`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/correll2014error.md#p006-b014): all three symmetric encodings avoided within-bar bias and beat bars on strategy adherence (89.2/88.5/87.4 vs 83.2%). On confidence, however, gradient (5.12) and violin (5.06) beat bar charts **and box plots** (both 4.86; Tukey HSD).

**Fix.** → `*E1:* gradient ≈ violin; box plots matched them on strategy adherence and absence of within-bar bias but not on confidence (box = bar).`

## C35. Scholz & Lu: "mean rank" was a preference score {#c35}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `supplement.typ:334`, S3, Scholz · **Source:** Scholz & Lu 2014 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** "(mean rank 3.35)"

**Evidence.** [`raw/scholz2014uncertainty.md#p005-b004`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/scholz2014uncertainty.md#p005-b004): ranks were recoded as preference scores (rank 1 → 4). A "mean rank" of 3.35 would read as near-last.

**Fix.** → `(mean preference score 3.35; 4 = most preferred)`

## C37. Greis E1: rating items misdescribed {#c37}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `supplement.typ:339`, S3, Greis · **Source:** Greis et al. 2015 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** "Rate how well 12 weather-forecast displays communicated uncertainty."

**Evidence.** [`raw/greis2015investigating.md#p289-b002`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/greis2015investigating.md#p289-b002): participants rated decision support, familiarity, ease of understanding and visual appeal; none of the items asks how well a display communicated uncertainty. The S3 values are the overall mean (O) of these four items (`#p291-b002`). The Friedman tests were run per statement, not on O (`#p290-b004`).

**Fix.** → `*E1*#super[†]: Rate 12 weather-forecast displays on decision support, familiarity, ease of understanding, and visual appeal (5-point scales; order uses the overall mean).`

## C40. Gschwandtner average duration: centred error bars were alone best {#c40}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `supplement.typ:366`, `371`, S3, Gschwandtner · **Source:** Gschwandtner et al. 2016 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** "*E3b:* centred error bars ≈ error bars ≈ ambiguation."

**Evidence.** [`raw/gschwandtner2016visual.md#p008-b003`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/gschwandtner2016visual.md#p008-b003) (H4): only centred EB is reported significantly better than gradient, acc. prob. and violin. [`papers/gschwandtner2016visual.pdf`](../The%20Art%20of%20Uncertain%20Topoplots/papers/gschwandtner2016visual.pdf) p. 9 Fig. 8: centred EB median error is near 0, well below EB and ambiguation (≈ 2 h). The "≈" contradicts the point estimates the caption says rankings follow.

**Fix.** Best → `*E3c:* centred error bars (significantly lower error than gradient, accumulated probability, and violin); error bars ≈ ambiguation next.`; others → `*E3c:* gradient, accumulated probability, and violin.`

## C48. Kusumastuti: post-practice and practised display not stated {#c48}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `supplement.typ:404–410`, S3, Kusumastuti · **Source:** Kusumastuti et al. 2023 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** Rankings given without stating they are post-practice or which display was practised

**Evidence.** [`raw/kusumastuti2023practice.md#p009-b005`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/kusumastuti2023practice.md#p009-b005) (Fig. 10: E1 practised with scatter, E2 with ellipse); `#p011-b002` (practice with the summary display gave a specific advantage on it). The earlier S3 audit retained this qualification, but the current text lacks it.

**Fix.** → `*E1* (practised with scatter), post-practice two-source accuracy: ellipse ≈ interlace ≈ scatter; three-source: scatter ≈ ellipse.#linebreak() *E2* (practised with ellipse), post-practice three-source accuracy: ellipse; time in both experiments: interlace ≈ scatter.`

## C50. Sterzik E2: a tie presented as an order {#c50}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `supplement.typ:419–420`, S3, Sterzik · **Source:** Sterzik et al. 2025 · **Verdict:** Overstated · **Fixed:** 18 November 2026
:::

**Was.** "*E2* approximate partial order: texture > colour ≈ waves ≈ contours > hulls > ensemble ≈ clouds > sausages."

**Evidence.** [`raw/sterzik2025.md#p009-b002`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/sterzik2025.md#p009-b002): "texture, waves, contours, color, and hulls were similar, with accuracies of approximately 0.7"; ensemble, clouds and sausages ≈ 0.5. [`papers/sterzik2025.pdf`](../The%20Art%20of%20Uncertain%20Topoplots/papers/sterzik2025.pdf) p. 9 Fig. 5 (filtered, the set the 90% comes from): colour ≈ 0.76 is the highest of the middle group, with texture ≈ 0.73 and hulls ≈ 0.66, all with overlapping CIs. Sausages are lowest (< 0.5).

**Fix.** → `*E2* (filtered): texture ≈ colour ≈ waves ≈ contours ≈ hulls (≈ 70%) > ensemble ≈ clouds ≈ sausages (≈ 50%; sausages lowest).`

## C51. Sterzik E3: texture not best on every representation {#c51}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `supplement.typ:418`, `421–422`, S3, Sterzik · **Source:** Sterzik et al. 2025 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** Best "*E3:* texture (lowest error; most well-rounded)"; others "noise, waves, and colour generally formed the next group"

**Evidence.** [`raw/sterzik2025.md#p010-b003`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/sterzik2025.md#p010-b003), `#p011-b003`. Tube: texture MAE 14; waves 22; sausages, noise, contours and colour 23; hulls 28; ensembles 34; clouds 39. SES: texture ≈ colour (13). Sticks: "color performs best". Authors' overall verdict that texture was best and most well-rounded: `#p012-b002`, `#p013-b002`.

**Fix.** Best → `*E3:* texture on tube (MAE 14) and tied with colour on SES (MAE 13); colour best on sticks; authors judge texture most well-rounded overall.`; others → `*E3:* order below the best changed by representation (tube: waves ≈ sausages ≈ noise ≈ contours ≈ colour > hulls > ensembles > clouds).`

## C3. Wainer & Francolini: bivariate maps are not an uncertainty encoding {#c3}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `supplement.typ:119–125`, S2, Wainer · **Source:** Wainer & Francolini 1980 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** Row included under "Empirical evaluations of uncertainty visualization techniques"

**Evidence.** [`raw/wainer1980colormaps.md#p010-b001`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/wainer1980colormaps.md#p010-b001): the two variables are census attributes, not a value plus its uncertainty.

**Fix.** Add to the S2 caption: "Wainer & Francolini evaluate two-variable (bivariate) colour maps rather than an uncertainty encoding; they are included as a bivariate-map precedent."

## C7. Correll & Gleicher 2014: "prediction accuracy" was strategy adherence {#c7}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `supplement.typ:151`, S2, Correll & Gleicher · **Source:** Correll & Gleicher 2014 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** "Prediction accuracy; likelihood judgments; judgment confidence"

**Evidence.** [`raw/correll2014error.md#p005-b009`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/correll2014error.md#p005-b009), `#p006-b014`: Q1 is scored as adherence to the expected strategy, not as accuracy against a true outcome. `#p008-b031`: E3 also measured predicted effect size. The earlier ledger flagged "prediction accuracy" as misleading.

**Fix.** → `[Adherence to the expected inference strategy; likelihood and effect-size judgments; judgment confidence]`

## C12. Hullman 2015: measures were more than probability error {#c12}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `supplement.typ:177`, S2, Hullman · **Source:** Hullman et al. 2015 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** "Probability-estimation error"

**Evidence.** [`raw/hullman2015hypothetical.md#p012-b003`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/hullman2015hypothetical.md#p012-b003) (one-variable tasks include mean (μ) estimation); `#p012-b002` (completion time analysed). Table 4, PDF p. 13.

**Fix.** → `[Absolute error of mean and probability estimates; completion time]`

## C19. Kusumastuti: display classes not tied to the displays {#c19}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `supplement.typ:222`, S2, Kusumastuti · **Source:** Kusumastuti et al. 2023 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** "Ensemble, summary, distribution displays" (S3 uses scatter/ellipse/interlace)

**Evidence.** [`raw/kusumastuti2023practice.md#p004-b003`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/kusumastuti2023practice.md#p004-b003) (ellipse = summary; interlace = distributional; scatter = ensemble)

**Fix.** → `[Ensemble (scatter), summary (ellipse), and distributional (interlace) displays]`

## C21. Sterzik: task type and measures incomplete {#c21}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `supplement.typ:231–233`, S2, Sterzik · **Source:** Sterzik et al. 2025 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** Type "PT, QF"; measures "Mapping-direction judgments; uncertainty-estimation accuracy; qualitative expert feedback"

**Evidence.** [`raw/sterzik2025.md#p008-b003`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/sterzik2025.md#p008-b003) (E1 free-text descriptions); `#p009-b003` (E3 timed and followed by 5-point ratings of appeal, confusion and perceived performance); `#p011-b003` (Fig. 9 ratings)

**Fix.** Type → `[PT, SR, QF]`; measures → `[Free-text associations; mapping-direction judgments; uncertainty-estimation error and response time; confusion/appeal ratings; qualitative expert feedback]`

## C22. Hullman 2015: inconsistent bold N {#c22}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `supplement.typ:176`, S2, Hullman · **Source:** Hullman et al. 2015 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** "*N:* 288" (bold), while other rows use plain "N:"

**Evidence.** Formatting consistency only

**Fix.** `[*N:* 288],` → `[N: 288],`

## C24. Wainer & Francolini: E2 was not just a legend-free repeat {#c24}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `supplement.typ:278`, S3, Wainer · **Source:** Wainer & Francolini 1980 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** "*E2*: Repeat the task without the colour legend."

**Evidence.** [`raw/wainer1980colormaps.md#p011-b001`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/wainer1980colormaps.md#p011-b001): E2 repeated the four legend trials and added a fifth legend-free trial, with 8 returning participants.

**Fix.** → `*E2*#super[†]: Eight E1 participants repeated the task, with an added fifth trial per map type without the colour legend.`

## C29. Sanyal: "highest" vs "most" labels {#c29}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `supplement.typ:295–297`, S3, Sanyal · **Source:** Sanyal et al. 2009 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** Labels "least/highest" vs "least/most" in the adjacent column

**Evidence.** Consistency only (paper: "low/high uncertainty")

**Fix.** Replace "highest" with "most" in both places (covered by the C27 and C28 replacements).

## C31. MacEachren: grain missing from the lower group {#c31}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `supplement.typ:310–311`, S3, MacEachren · **Source:** MacEachren et al. 2012 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** "arrangement, size, and transparency > saturation, hue, orientation, and shape"

**Evidence.** [`raw/maceachren2012semiotics.md#p004-b002`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/maceachren2012semiotics.md#p004-b002) classifies only 10 of the 11 variables, leaving grain out. [`papers/maceachren2012semiotics.pdf`](../The%20Art%20of%20Uncertain%20Topoplots/papers/maceachren2012semiotics.pdf) p. 5 Fig. 4: grain (intuitive direction) has a mean of roughly 3.8 by visual reading, i.e. in the "< 4" group.

**Fix.** Append: `(grain, not classified in the text, also had a mean below 4 in Fig. 4)`

## C41. Gschwandtner: E3a/E3b labels clashed with the paper's tasks {#c41}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `supplement.typ:359–366`, S3, Gschwandtner · **Source:** Gschwandtner et al. 2016 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** Labels "E3a" (min/max duration) and "E3b" (average duration)

**Evidence.** [`raw/gschwandtner2016visual.md#p005-b003`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/gschwandtner2016visual.md#p005-b003), `#p005-b004`: the paper's Tasks 3a/3b are max/min duration and 3c is average duration. The S3 labels clash with the source numbering.

**Fix.** Rename `E3a` → `E3a–b` and `E3b` → `E3c` throughout the row.

## C45. Fernandes: text-interval results simplified {#c45}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `supplement.typ:391–393`, S3, Fernandes · **Source:** Fernandes et al. 2018 · **Verdict:** Supported – needs qualification · **Fixed:** 18 November 2026
:::

**Was.** "CDF ≈ 20-dot … > remaining displays; … high-probability text approached their mean performance with greater variability"

**Evidence.** [`raw/fernandes2018uncertainty.md#p008-b002`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/fernandes2018uncertainty.md#p008-b002): dot50, cdf and dot20 beat **most** other conditions. Both text99 **and text60** "performed nearly as well as dot20". Only text99's higher variance is quantified, and text85 resembled the no-uncertainty baseline.

**Fix.** → `*E1:* CDF ≈ 20-dot quantile dotplot > most remaining displays; 99% and 60% text intervals approached 20-dot mean performance (99% text with higher variability), while 85% text resembled the no-uncertainty baseline; no complete lower-order ranking was reported.`

## BB1, BB2, BB9, BB10. Bibliography metadata did not match the archived sources {#bb-metadata}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `refs.bib` (journal and supplement reference lists) · **Fixed:** 26 November 2026
:::

**Problem.** Four entries disagreed with the archived sources or printed wrongly:
Strode et al. had `year = {2020}`, but the archived article (and its key) say 2019
(BB1); the Wilke ISBN was 9781492031079, but the archived copyright page gives
978-1-492-03108-6 (BB2); Fernandes et al. (CHI 2018) had no pages, while the PDF shows
"Paper 144", 12 pages (BB9); and Yanai et al. printed as "p. e3535" instead of the article
number e03535 (BB10).

**Fix.**

- **BB1.** `year = {2019}`; the reference now prints "Cartographic Perspectives, no. 94,
  pp. 5–24, 2019".
- **BB2.** `isbn = {9781492031086}` (the style does not print ISBNs, so only the file
  changes).
- **BB9.** `pages = {144:1--144:12}`, ACM's article-number pagination; prints as
  "pp. 144:1–144:12".
- **BB10.** The Typst bibliography engine reads the field as a number and drops the
  leading zero in every form tested (braces, zero-width characters, `eid`), short of
  printing "p. Art. e03535". The `pages` field is removed; the reference keeps volume,
  issue and the DOI 10.1002/ecs2.3535, which identifies the article.

Journal compiled through `scripts/compile-journal.ps1`; supplement recompiled.

## B7. Strode corners model: legend and grid-size caveats were missing {#b7}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `journal.typ`, Design Space → Bivariate color: corners · **Fixed:** 26 November 2026
:::

**Problem.** The manuscript said that the corners model suits our tasks, citing Strode et
al. In the same passage Strode et al. warn that the corners model may require map readers
to consult the legend more often, and that they could not blend a 4×4 palette with enough
distinctness, so they used 3×3. Our design uses 5×5, and neither caution was mentioned.

**Evidence.** [`raw/strode2019operationalizing.md#p011-b001`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/strode2019operationalizing.md#p011-b001).

**Fix.** Four short sentences follow the "suitable for our study tasks" sentence:
"Strode et al. add two cautions @strode2019operationalizing. First, readers of a corners
map may need to look at the legend more often. Second, the authors could not build a
4 × 4 palette with clearly distinct colors, so they used a 3 × 3 grid. Our 5 × 5 grid
therefore makes the colors harder to tell apart." Journal compiled through
`scripts/compile-journal.ps1`.

## BB3, BB16–BB18. Unarchived web sources, undated GWDG entry, uncited entries {#bb-sources}

::: {.finding-meta .sev-low .status-resolved}
**Severity:** Low · **Location:** `refs.bib`, `papers/` · **Fixed:** 26 November 2026
:::

**Problem.** Four cited sources were web pages with no archived copy (EEGVIS,
GPT-5.6 Sol, Codex, and the GWDG Voice-AI documentation), so their claims could not be
checked. The GWDG entry had no year and pointed to a different document from the one
archived. Seven bibliography entries were not cited anywhere.

**Fix.**

- **Archived** (printed to PDF with headless Edge on 26 November 2026, listed in
  `papers/README.md`): `ehinger2018eegvis.pdf` (GitHub README) and
  `ehinger2018eegvis_zenodo.pdf` (release record), `openai2026gpt56sol.pdf`,
  `openai2026codex.pdf` (Codex product page) and `openai2026codex_api_guide.pdf` (the old
  URL), and `anthropic2026opus55.pdf` (the Claude models page, cited in the journal since
  the audit; its old URL redirects to platform.claude.com, which the entry now uses).
- **GWDG (BB3).** The entry now cites the archived article: N. Lux, "Introducing
  Voice-AI: Advanced Transcription and Captioning Service", *GWDG-Nachrichten* 47(7),
  2024, ISSN 0940-4686. The author is the person named under "Text and Contact".
- **Codex (BB18).** The entry points to the Codex product documentation instead of the
  generic API code-generation guide. The journal no longer cites it.
- **Uncited entries.** Kept by decision, with a comment at the top of `refs.bib`: the
  literature wiki (`llm-wiki/tools/build_wiki.py`) takes the bibliographic fields of every
  archived PDF from this file, and Typst prints only cited entries.
- **EEGVIS content.** The README's figure shows adjacent rows of topoplot series, which
  supports claim B5 (see [B5](#b5)).

Journal compiled through `scripts/compile-journal.ps1`; supplement recompiled.

## B8. Bernard: palette top-rated only on black backgrounds; stimuli were white {#b8}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `journal.typ`, Design Space → Bivariate color: corners; Limitations · **Fixed:** 26 November 2026
:::

**Problem.** The manuscript justified the TeulingFig3 palette by its top rating (++) for
ER1–ER3 in Bernard et al.'s Table 3. That rating holds for black backgrounds; on white
backgrounds the same table excludes the palette for ER1 and ER3. The stimuli were shown
on a white background (confirmed by the author), and the manuscript did not say so.

**Evidence.** Bernard et al. (2015), Table 3 (PDF p. 11, visually inspected);
[`raw/bernard2015colormaps.md#p009-b003`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/bernard2015colormaps.md#p009-b003).

**Fix.** The choice is stated and justified, without changing the stimuli:

- *Design Space:* "…in their task-based evaluation @bernard2015colormaps. This rating
  holds for black backgrounds. On white backgrounds, they did not rate it as suitable for
  ER1 and ER3. Our stimuli used a white background, as most EEG publications do. We expect
  the background to matter little here: inside a filled topoplot, most colors border other
  colors, and the background touches only the outer rim of the head."
- *Limitations:* "The corner palette was rated by Bernard et al. for black backgrounds,
  whereas our stimuli used a white one. We expect little effect, because the background
  touches only the rim of the head, but we cannot rule it out."

Journal compiled through `scripts/compile-journal.ps1`.

## B5. EEGVIS attribution had no archived source {#b5}

::: {.finding-meta .sev-moderate .status-resolved}
**Severity:** Moderate · **Location:** `journal.typ`, Design Space → Adjacent plots · **Fixed:** 26 November 2026
:::

**Problem.** The manuscript says the adjacent-plots design was inspired by the EEGVIS
toolbox. No EEGVIS documentation was archived, so the claim could not be checked; the
only archived mention (Mikheev et al. 2024) links EEGVIS to 2D colour maps.

**Evidence.** [`papers/ehinger2018eegvis.pdf`](../The%20Art%20of%20Uncertain%20Topoplots/papers/ehinger2018eegvis.pdf)
(GitHub README, archived 26 November 2026), PDF p. 2: the "Butterfly + Topoplots" figure
shows a butterfly plot above three adjacent rows of topoplot series, one row per quantity,
each with its own colour scale. The README text does not name the quantities in the
lower rows.

**Fix.** No text change needed: the archived source shows adjacent topoplots of several
quantities, the layout the adjacent-plots design builds on. (An earlier note on 26 Nov
said the opposite; it was based on the extracted text only, which does not include the
figure, and has been corrected.)

## A4. Allen's 20% was attributed to "more than three features" {#a4}

::: {.finding-meta .sev-high .status-resolved}
**Severity:** High · **Location:** `journal.typ`, Introduction · **Fixed:** 26 November 2026
:::

**Problem.** The Introduction said that in Allen et al.'s review uncertainty was "particularly
underrepresented in visualizations of data with more than three features, with only 20%
indicating uncertainty". Allen et al.'s 20% concerns "3D" graphics, which have exactly
three variables: two independent variables and one dependent variable shown by colour.
As the author notes, these are not true 3D displays but 2D plots with one extra encoded
feature.

**Evidence.** [`raw/allen2012data.md#p001-b007`](../The%20Art%20of%20Uncertain%20Topoplots/llm-wiki/raw/allen2012data.md#p001-b007)
("Compared to 2D data, 3D displays … rarely provide an indication of uncertainty … only
20% portray the uncertainty of reported effects"); Fig. 1A, PDF p. 3.

**Fix.** The sentence is replaced by short sentences in Allen et al.'s own scope: "This
difficulty is reflected by @allen2012data. They reviewed 1,451 figures from six
neuroscience journals. Figures of three-variable data showed uncertainty less often than
figures of two-variable data: only 20% of them did. These are 2D plots in which color or
another feature shows a third variable, the same structure as a topoplot." Journal
compiled through `scripts/compile-journal.ps1`.
