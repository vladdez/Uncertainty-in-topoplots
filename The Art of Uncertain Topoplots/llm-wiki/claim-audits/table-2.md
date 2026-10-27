# Evidence ledger — uncertainty visualization evaluation table

26 October 2026

**Coding:** PT = perceptual tasks; PJ = probability judgments; DM = decision-making tasks; SR = subjective ratings; QF = qualitative feedback. S = synthetic, R = real, M = mixed.

**Project use:** This is the claim-level audit trail for manuscript Table 2. It is an authored project record, not a generated wiki page and not primary evidence. For each study, use the project evidence record for discovery, the index for source metadata, and the linked raw passages for verification. External links are supplementary and must not replace the archived source. `P1`/`P2` locators below are legacy source labels retained from the original ledger.

## Corrections and cautions

- Correll, Moritz & Heer (2018): E2 recruited 24 participants but excluded 3. Report E2: 24 recruited / 21 analyzed, not 24 analyzed.
- Scholz & Lu (2014): 72 people surveyed but 60 surveys entered analysis (only 37 gave valid rankings for the preference item).
- Greis et al. (2015): the archived 2015 paper reports a 90-person survey and a separate controlled game experiment with 12 participants, 480 total rounds, and 442 forecast-opened rounds analyzed. Do not substitute dissertation sample counts for the paper's sample.
- MacEachren et al. (2012): the archived full paper directly verifies pilot N=31, Experiment 1 N=72, and Experiment 2 N=30. The complete encoding list still requires care because the study tests many abstract and iconic symbol sets.
- MacEachren data-origin code S is tentative. Designed map symbols do not, by themselves, prove that every map input was synthetic.
- Sanyal et al. (2009): the PubMed abstract confirms 27 people and search/count tasks but does not explicitly list response time as a dependent measure.
- The category PJ includes broad inferential judgments in Correll & Gleicher (2014); these are not always the same as numeric probability-estimation error in Hullman et al. (2015).
- The study on VSUPs presents real-world examples, but its user-experiment stimuli are generated; Data=S refers to experimental stimuli, not every figure in the paper.

## 1. Sanyal et al. (2009) — A user study to compare four uncertainty visualization methods for 1D and 2D datasets

**Typst:** `@sanyal2009user`  **DOI:** https://doi.org/10.1109/TVCG.2009.114

**Project evidence:** [record](../evidence/sanyal2009user.md) · [index](../index/sanyal2009user.md) · [raw abstract](../raw/sanyal2009user.md#p001-b003). **Source caveat:** the archived PDF's font map is broken; verify detailed methods and results in the rendered PDF.

- **Field:** General; 1D and 2D data. **Evidence:** The abstract explicitly describes one-dimensional and two-dimensional datasets, with no application domain required. **Exact locator:** P1, Abstract. **Status:** Direct.
- **Data:** S — generated. **Evidence:** The paper states the datasets were generated to include systematic and random uncertainty. **Exact locator:** P1, Abstract. **Status:** Direct.
- **Visualizations:** Error bars; glyph size; glyph colour; surface colour. **Evidence:** The abstract names traditional error bars, size-scaled glyphs, glyph-colour mapping and colour mapping on the surface. **Exact locator:** P1, Abstract. **Status:** Direct.
- **Types:** PT. **Evidence:** Two search tasks and two counting tasks test locating uncertainty extrema and counting features; PT is our classification. **Exact locator:** P1, Abstract. **Status:** Interpretive.
- **Participants:** N = 27. **Evidence:** The abstract reports 27 users. **Exact locator:** P1, Abstract. **Status:** Direct.
- **Measures:** Search/counting performance; response time (check). **Evidence:** Search/counting tasks and differences in user performance are explicit. The abstract does not itself enumerate all time measures, so response time needs checking in the full methods. **Exact locator:** P1, Abstract. **Status:** Partial.

**External source links (supplementary):**
- P1: [PubMed record / authors’ abstract](https://pubmed.ncbi.nlm.nih.gov/19834191/)

## 2. MacEachren et al. (2012) — Visual semiotics & uncertainty visualization: An empirical study

**Typst:** `@maceachren2012semiotics`  **DOI:** https://doi.org/10.1109/TVCG.2012.279

**Project evidence:** [record](../evidence/maceachren2012semiotics.md) · [index](../index/maceachren2012semiotics.md) · [framework](../raw/maceachren2012semiotics.md#p002-b002) · [Experiment 1 sample and design](../raw/maceachren2012semiotics.md#p003-b003) · [Experiment 2 sample and design](../raw/maceachren2012semiotics.md#p007-b003) · [Experiment 2 result tables](../raw/maceachren2012semiotics.md#p008-b002).

- **Field:** Geospatial mapping. **Evidence:** Experiment 2 evaluated how viewers interpret uncertainty signs in a map-reading task. **Exact locator:** P1, Abstract. **Status:** Direct.
- **Data:** S — illustrative map stimuli (provisional). **Evidence:** Designed signs and map regions are documented, but the abstract alone does not prove the origin of every map attribute. S should be re-checked in the full methods. **Exact locator:** P1, Abstract; P2, figure descriptions. **Status:** Partial.
- **Visualizations:** Size, colour, transparency vs. pictorial symbols (overcompressed). **Evidence:** The experiments contrast abstract visual variables with iconic signs. The current table lists only three abstract channels and may omit blur, positional variation and other symbols. **Exact locator:** P1, Abstract; P2, figures. **Status:** Partial.
- **Types:** PT, SR. **Evidence:** Experiment 1 assesses intuitiveness of signification (coded SR); Experiment 2 tests relative map-reading performance (coded PT). **Exact locator:** P1, Abstract. **Status:** Interpretive.
- **Participants:** E1: 72; E2: 30; pilot: 31. **Evidence:** The archived full paper reports the pilot and Experiment 1 samples in the Experiment 1 methods and the Experiment 2 sample in its design section. **Exact locator:** [pilot and E1](../raw/maceachren2012semiotics.md#p003-b003); [E2](../raw/maceachren2012semiotics.md#p007-b003). **Status:** Direct.
- **Measures:** Intuitiveness judgments; map comparison accuracy; response time. **Evidence:** Experiment 1 records 1–7 intuitiveness ratings and response time; Experiment 2 analyzes accuracy and response time. **Exact locator:** [Experiment 1 measures](../raw/maceachren2012semiotics.md#p004-b002); [Experiment 2 analysis](../raw/maceachren2012semiotics.md#p008-b002). **Status:** Direct.

**External source links (supplementary):**
- P1: [IEEE record and abstract](https://ieeexplore.ieee.org/document/6327255/)
- P2: [ResearchGate full-paper listing](https://www.researchgate.net/publication/260582970_Visual_Semiotics_Uncertainty_Visualization_An_Empirical_Study)

## 3. Correll & Gleicher (2014) — Error bars considered harmful: Exploring alternate encodings for mean and error

**Typst:** `@correll2014error`  **DOI:** https://doi.org/10.1109/TVCG.2014.2346298

**Project evidence:** [record](../evidence/correll2014error.md) · [index](../index/correll2014error.md) · [display definitions](../raw/correll2014error.md#p001-b020) · [within-the-bar result](../raw/correll2014error.md#p006-b013) · [discussion and limitations](../raw/correll2014error.md#p009-b002).

- **Field:** General / inferential statistical judgments. **Evidence:** The introduction and tasks concern conclusions from sample means and intervals under illustrative framing rather than a single measured domain. **Exact locator:** P1, pp. 2142–2145, Sections 1–4. **Status:** Direct.
- **Data:** S — controlled task stimuli. **Evidence:** The experiments vary sample means, margins of error and hypothetical outcomes to test predicted patterns of inference; synthetic task scenarios. **Exact locator:** P1, Sections 4.2–4.4. **Status:** Interpretive.
- **Visualizations:** Error bars; modified box; gradient; violin. **Evidence:** All four are depicted and described in Fig. 1. **Exact locator:** P1, p. 2142, Fig. 1. **Status:** Direct.
- **Types:** PJ (broad sense; inferential judgments). **Evidence:** Participants predict outcomes, likelihoods and confidence, but this is not solely numerical probability estimation; PJ is a simplified coding choice. **Exact locator:** P1, Sections 4.2–4.4. **Status:** Interpretive.
- **Participants:** E1: 96; E2: 48; E3: 96. **Evidence:** The three results sections separately state these recruited samples. **Exact locator:** P1, pp. 2146, 2148, 2149, Sections 4.2.1, 4.3.1, 4.4.1. **Status:** Direct.
- **Measures:** Predicted outcomes/effects; judged likelihood; judgment confidence. **Evidence:** Analyses relate participants’ outcome judgments and confidence to expected distributions, effect size and inferential benchmarks. It is misleading to call every measure simple prediction accuracy. **Exact locator:** P1, Sections 4.2.1–4.4.1. **Status:** Direct.

**External source links (supplementary):**
- P1: [Full journal article PDF](https://vis.csail.mit.edu/classes/6.859/readings/pdfs/Corell-ErrorBarsConsideredHarmful.pdf)

## 4. Scholz & Lu (2014) — Uncertainty in geographic data on bivariate maps

**Typst:** `@scholz2014uncertainty`  **DOI:** https://doi.org/10.3390/ijgi3041180

**Project evidence:** [record](../evidence/scholz2014uncertainty.md) · [index](../index/scholz2014uncertainty.md) · [method](../raw/scholz2014uncertainty.md#p004-b002) · [60 analyzed and 37 valid rankings](../raw/scholz2014uncertainty.md#p005-b004) · [preference results](../raw/scholz2014uncertainty.md#p007-b004) · [decision results](../raw/scholz2014uncertainty.md#p008-b005).

- **Field:** Geospatial mapping / precipitation planning. **Evidence:** Map tasks are framed as decisions involving annual precipitation and crop-growing choices. **Exact locator:** P1, pp. 1183–1188, Sections 3.1–4. **Status:** Direct.
- **Data:** R — observed Texas precipitation. **Evidence:** Annual precipitation observations from selected Texas stations (2001–2010) provide means and SDs; the maps predict a future year using those historical measurements. **Exact locator:** P1, p. 1183, Section 3.1. **Status:** Direct.
- **Visualizations:** Boundary fuzziness; lightness; transparency; shape. **Evidence:** The survey presents four visual variables used to communicate spatial uncertainty. **Exact locator:** P1, Section 3.2 and survey figures. **Status:** Direct.
- **Types:** DM, SR. **Evidence:** Survey asks about map preferences/rankings and a crop-location decision using precipitation and uncertainty. **Exact locator:** P1, Sections 3.2–3.3 and 4. **Status:** Interpretive.
- **Participants:** N = 60 analyzed (72 surveyed). **Evidence:** Methods report 72 undergraduate survey respondents; analysis specifies 60 included surveys, of which 37 valid rankings for the preference item. **Exact locator:** P1, p. 1181; p. 1184, Section 3.3. **Status:** Direct.
- **Measures:** Decision choices; preference ranking/rating. **Evidence:** Correct choice of crop location and relative map ranking are analyzed; this is not an objective reaction-time evaluation. **Exact locator:** P1, pp. 1184–1189, Tables 2–4. **Status:** Direct.

**External source links (supplementary):**
- P1: [Original open-access article PDF](https://pdfs.semanticscholar.org/94de/b9c3b4dda04845e9ab3b7ff261667966f0ad.pdf)

## 5. Greis et al. (2015) — Investigating representation alternatives for communicating uncertainty to non-experts

**Typst:** `@greis2015investigating`  **DOI:** https://doi.org/10.1007/978-3-319-22723-8_21

**Project evidence:** [record](../evidence/greis2015investigating.md) · [index](../index/greis2015investigating.md) · [article abstract](../raw/greis2015investigating.md#p286-b004) · [twelve survey displays](../raw/greis2015investigating.md#p289-b002) · [survey sample](../raw/greis2015investigating.md#p290-b003) · [12-person game experiment](../raw/greis2015investigating.md#p292-b002) · [authors' limitations](../raw/greis2015investigating.md#p293-b002). **Source caveat:** the archived PDF is the full INTERACT proceedings; this article occupies PDF pages 286–293.

- **Field:** Weather forecast / farming game. **Evidence:** Paper abstract explicitly describes a farming scenario with a displayed weather forecast. **Exact locator:** P1, Abstract. **Status:** Direct.
- **Data:** M — real weather series and simulated forecasts (provisional source linkage). **Evidence:** Earlier supporting work attributes the underlying series to measured Stuttgart precipitation and the forecasts to simulated distributions; verify matching passage in P2 before submission. **Exact locator:** P2, farming-game methods; location pending. **Status:** Partial.
- **Visualizations:** 3 textual; line+area; box; 2 bars; stacked bars; area; shaded bars; PDF and CDF plots. **Evidence:** Paper Fig. 1 and Table 1 explicitly enumerate REPR 1–12. Those text extracts were supplied in the project discussion and should be retained as the immediate source record. **Exact locator:** P1, Fig. 1 and Table 1 (user-provided excerpt). **Status:** Direct.
- **Types:** DM, SR. **Evidence:** Survey rated comprehensibility/familiarity/appearance and decision support; game required decisions under a weather forecast. **Exact locator:** P1, Abstract. **Status:** Interpretive.
- **Participants:** Survey: 90; game experiment: 12. **Evidence:** The archived paper directly reports 90 completed surveys and a controlled experiment with 12 participants. Participants completed 480 game rounds; 442 rounds in which the forecast was opened entered analysis. **Exact locator:** [survey sample](../raw/greis2015investigating.md#p290-b003); [game sample and analyzed rounds](../raw/greis2015investigating.md#p292-b002). **Status:** Direct.
- **Measures:** Subjective ratings; game choices relative to an optimal decision; display preference. **Evidence:** The survey collected representation ratings; the game logged forecasts, realized weather, and crop choices and compared choices with an optimal decision. **Exact locator:** [survey procedure](../raw/greis2015investigating.md#p289-b002); [game analysis](../raw/greis2015investigating.md#p292-b002). **Status:** Direct for the paper; dissertation-only outcomes are out of scope for this row.

**External source links (supplementary):**
- P1: [Paper record with abstract and illustrations](https://www.researchgate.net/publication/283580251_Investigating_Representation_Alternatives_for_Communicating_Uncertainty_to_Non-experts)
- P2: [M. Greis, A Systematic Exploration of Uncertainty in Interactive Systems (dissertation)](https://elib.uni-stuttgart.de/server/api/core/bitstreams/e0427ac3-8561-4ff8-aace-217e2cb4f9af/content)

## 6. Hullman, Resnick & Adar (2015) — HOPs outperform error bars and violin plots

**Typst:** `@hullman2015hypothetical`  **DOI:** https://doi.org/10.1371/journal.pone.0142444

**Project evidence:** [record](../evidence/hullman2015hypothetical.md) · [index](../index/hullman2015hypothetical.md) · [study overview](../raw/hullman2015hypothetical.md#p001-b004) · [methods and tasks](../raw/hullman2015hypothetical.md#p005-b003) · [limitations](../raw/hullman2015hypothetical.md#p018-b003).

- **Field:** Illustrative seawater chemical concentrations. **Evidence:** Instructions describe hypothetical concentrations of chemical solutes in seawater vials. **Exact locator:** P1, Methods, subsection on framing/instructions. **Status:** Direct.
- **Data:** S — simulated normal draws. **Evidence:** Authors simulated 5,000 draws per distribution and used these draws in the three displays. **Exact locator:** P1, Methods, stimulus generation. **Status:** Direct.
- **Visualizations:** Animated HOPs; error bars; violin plots. **Evidence:** These are the three experimental visualization conditions. **Exact locator:** P1, Sections 3–4 and figures. **Status:** Direct.
- **Types:** PJ. **Evidence:** Participants estimate ordering probabilities for one, two and three uncertain quantities. **Exact locator:** P1, Methods and tasks. **Status:** Interpretive.
- **Participants:** N = 288 (96 per display). **Evidence:** Method states 96 subjects per condition; final analysis includes all 288 passing quality control. **Exact locator:** P1, Sections 4–5, power/sample and preliminary steps. **Status:** Direct.
- **Measures:** Mean absolute probability-estimation error; total completion time (secondary). **Evidence:** Probability answers were compared with correct distributional probabilities; study-wide completion time reported separately, with no significant display difference. **Exact locator:** P1, Results §5.1 and later results. **Status:** Direct.

**External source links (supplementary):**
- P1: [Original PLOS ONE article](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0142444)

## 7. Gschwandtner et al. (2016) — Visual encodings of temporal uncertainty

**Typst:** `@gschwandtner2016visual`  **DOI:** https://doi.org/10.1109/TVCG.2015.2467752

**Project evidence:** [record](../evidence/gschwandtner2016visual.md) · [index](../index/gschwandtner2016visual.md) · [participants and tasks](../raw/gschwandtner2016visual.md#p004-b003) · [72 analyzed submissions](../raw/gschwandtner2016visual.md#p005-b004) · [task sample sizes](../raw/gschwandtner2016visual.md#p006-b002) · [limitations](../raw/gschwandtner2016visual.md#p009-b004).

- **Field:** Uncertain event time intervals. **Evidence:** Study manipulates earliest/latest start and end of time intervals and duration. **Exact locator:** P1, p. 1, Fig. 1; Section 3. **Status:** Direct.
- **Data:** S — controlled interval stimuli. **Evidence:** Authors created alternative displays of controlled temporal bounds/distributions for tasks, without introducing an observational dataset. **Exact locator:** P1, Sections 2–3. **Status:** Interpretive.
- **Visualizations:** Gradient; violin; accumulated probability; error bars; centered error bars; ambiguation. **Evidence:** The six designs are identified directly in Fig. 1 and the abstract. **Exact locator:** P1, p. 1, Fig. 1. **Status:** Direct.
- **Types:** PT, PJ. **Evidence:** Tasks 2–3 ask for temporal bounds/durations; Task 4 requests numeric probabilities of an event having started/ended. **Exact locator:** P1, Section 3, Tasks 2–4. **Status:** Interpretive.
- **Participants:** N = 72 submissions analyzed. **Evidence:** Authors report 73 submissions and exclude one with missing logs, leaving 72. **Exact locator:** P1, Section 4, Results. **Status:** Direct.
- **Measures:** Correctness/absolute estimation error; completion time. **Evidence:** Article explicitly says responses are scored as correct/incorrect or absolute deviation, with completion time measured for tasks except 1 and 5. **Exact locator:** P1, Section 3 final paragraph; Section 4. **Status:** Direct.

**External source links (supplementary):**
- P1: [Authors’ manuscript PDF](https://www.cvast.tuwien.ac.at/sites/default/files/gschwandtner_uncertainty_pubdat.pdf)

## 8. Correll, Moritz & Heer (2018) — Value-suppressing uncertainty palettes

**Typst:** `@correll2018task`  **DOI:** https://doi.org/10.1145/3173574.3174216

**Project evidence:** [record](../evidence/correll2018task.md) · [index](../index/correll2018task.md) · [study purpose](../raw/correll2018task.md#p001-b013) · [identification experiment](../raw/correll2018task.md#p006-b006) · [prediction experiment and exclusions](../raw/correll2018task.md#p007-b008) · [limitations](../raw/correll2018task.md#p009-b002).

- **Field:** Abstract spatial grids / Battleship-like decision game. **Evidence:** Experiments use small heatmaps and fictional ship-placement hazards rather than empirical geographic observations. **Exact locator:** P1, Identification and Prediction Experiment sections. **Status:** Direct.
- **Data:** S — generated map values. **Evidence:** Figure 1 states a random 10×10 grid; experimental heatmaps and ship-game values are constructed task stimuli. Note that separate demonstration figures use real datasets. **Exact locator:** P1, Fig. 1; Experiment sections; Examples section. **Status:** Direct.
- **Visualizations:** Juxtaposed univariate maps; continuous/discrete bivariate maps; VSUPs (8 conditions). **Evidence:** Fig. 6 identifies 8 encoding + legend combinations including juxtaposition, conventional bivariate, and VSUP. **Exact locator:** P1, pp. 5–6, Fig. 6. **Status:** Direct.
- **Types:** PT, DM. **Evidence:** Experiment 1 asks participants to click a heatmap cell matching a specified value/uncertainty pair. Experiment 2 asks for ship placement under risk. **Exact locator:** P1, Identification and Prediction Experiment sections. **Status:** Interpretive.
- **Participants:** E1: 24 recruited; E2: 24 recruited, 21 analyzed. **Evidence:** Each experiment recruited 24; second excluded 3 after training accuracy criteria. Earlier table “E2: 24” should not be labeled analyzed n. **Exact locator:** P1, pp. 5 and 7, Participants paragraphs. **Status:** Direct.
- **Measures:** E1 identification accuracy + response time; E2 distribution of chosen value and uncertainty. **Evidence:** Authors explicitly give both E1 measures and for E2 quantify the chosen tokens’ values and danger/uncertainty. **Exact locator:** P1, Identification section; Prediction section. **Status:** Direct.

**External source links (supplementary):**
- P1: [Original conference paper PDF](https://www.domoritz.de/papers/2018-VSUPs-CHI.pdf)

## 9. Fernandes et al. (2018) — Uncertainty displays using quantile dotplots or CDFs improve transit decision-making

**Typst:** `@fernandes2018uncertainty`  **DOI:** https://doi.org/10.1145/3173574.3173718

**Project evidence:** [record](../evidence/fernandes2018uncertainty.md) · [index](../index/fernandes2018uncertainty.md) · [display comparison](../raw/fernandes2018uncertainty.md#p002-b002) · [predictive distributions](../raw/fernandes2018uncertainty.md#p004-b003) · [analysis model](../raw/fernandes2018uncertainty.md#p007-b002) · [sample and demographics](../raw/fernandes2018uncertainty.md#p008-b002) · [decision-quality result](../raw/fernandes2018uncertainty.md#p009-b011).

- **Field:** Transit / simulated bus-arrival decisions. **Evidence:** Incentivized choices concern when to leave to catch a predicted arriving bus. **Exact locator:** P1, Abstract and experiment descriptions. **Status:** Direct.
- **Data:** S — simulated from observationally fitted model. **Evidence:** Authors fit a model to Seattle arrivals/predictions then generated distributions from it; actual trial distribution is generated, not an unchanged measured series. **Exact locator:** P1, p. 4, Bus Arrival Time Predictive Distributions. **Status:** Direct.
- **Visualizations:** Dotplots; CDFs; PDF and PDF-interval hybrid; intervals; text; no-uncertainty baseline. **Evidence:** Methods enumerate 20/50-dot quantile plots, CDF, PDF, PDF-interval hybrid, standard intervals, textual quantiles and no-information control. **Exact locator:** P1, pp. 4–5, Uncertainty Displays. **Status:** Direct.
- **Types:** DM. **Evidence:** Subjects selected when to catch a bus under an incentivized payoff structure. **Exact locator:** P1, Abstract; Method. **Status:** Interpretive.
- **Participants:** N = 408 analyzed. **Evidence:** Results explicitly report 408 individuals in analyzed dataset. **Exact locator:** P1, p. 7, Results. **Status:** Direct.
- **Measures:** Expected payoff / optimal expected payoff; within-subject variability. **Evidence:** The abstract/results report ratio to optimal payoffs and dispersion across choices (including SD). **Exact locator:** P1, Abstract; pp. 7–9. **Status:** Direct.

**External source links (supplementary):**
- P1: [Original CHI paper PDF](https://users.eecs.northwestern.edu/~jhullman/pn1957-fernandes.pdf)

## 10. Kale et al. (2019) — HOPs help untrained observers judge trends in ambiguous data

**Typst:** `@kale2019hypothetical`  **DOI:** https://doi.org/10.1109/TVCG.2018.2864909

**Project evidence:** [record](../evidence/kale2019hypothetical.md) · [index](../index/kale2019hypothetical.md) · [study overview](../raw/kale2019hypothetical.md#p001-b004) · [Experiment 1 sample and procedure](../raw/kale2019hypothetical.md#p005-b003) · [Experiment 2 displays](../raw/kale2019hypothetical.md#p007-b003) · [limitations](../raw/kale2019hypothetical.md#p009-b002).

- **Field:** Illustrative employment/jobs trends. **Evidence:** Study scenarios adapt a media visualization about jobs reports, judging growing versus stagnant employment. **Exact locator:** P1, Introduction, Section 3 and Fig. 3. **Status:** Direct.
- **Data:** S — simulated job counts. **Evidence:** Authors construct generated noisy jobs-report samples under growth/no-growth models with a specified SD and trend. **Exact locator:** P1, Section 4.1.3, Stimuli and Trial Generation. **Status:** Direct.
- **Visualizations:** Error-bar bars; bar HOPs; static line ensembles; line HOPs. **Evidence:** Fig. 1 explicitly names four techniques across E1 and E2, not only three broad families. **Exact locator:** P1, p. 1, Fig. 1. **Status:** Direct.
- **Types:** PT (perceptual trend classification); not an incentivized DM task. **Evidence:** Subjects infer which trend model likely generated a time series. PT is our operational category, though authors also call it perceptual decision-making. **Exact locator:** P1, Abstract, experiment descriptions. **Status:** Interpretive.
- **Participants:** E1: 50 analyzed after recruiting 62; E2: 150 in the released analyzed dataset (50 per condition). **Evidence:** The paper directly documents E1's sequential recruitment and target of 50 retained participants; the E2 denominator is independently derived from the authors' released CSV rather than a claim in the archived paper passage. **Exact locator:** [E1 method](../raw/kale2019hypothetical.md#p005-b003); P2, E2-AnonymousStats.csv. **Status:** Direct for E1; external-data verification for E2.
- **Measures:** Trend-choice correctness vs strength of evidence; psychometric/JND threshold; judgment confidence. **Evidence:** Authors fit psychometric functions to repeated correct/incorrect classifications and analyze just-noticeable difference (JND) and confidence fitness. **Exact locator:** P1, Sections 4.1.5, 4.2 and 5. **Status:** Direct.

**External source links (supplementary):**
- P1: [Original IEEE/TVCG manuscript](https://idl.cs.washington.edu/files/2019-HOPsTrends-InfoVis.pdf)
- P2: [Authors’ analyzed E2 data (CSV)](https://github.com/kalealex/jobs-report-hops/blob/master/Experiment%202/E2-AnonymousStats.csv)

## 11. Kusumastuti et al. (2023) — Practice improves 2D uncertainty integration

**Typst:** `@kusumastuti2023practice`  **DOI:** https://doi.org/10.1109/TVCG.2022.3173889

**Project evidence:** [record](../evidence/kusumastuti2023practice.md) · [index](../index/kusumastuti2023practice.md) · [abstract and experiment counts](../raw/kusumastuti2023practice.md#p001-b003) · [Experiment 1 recruitment](../raw/kusumastuti2023practice.md#p005-b003) · [Experiment 2 exclusions](../raw/kusumastuti2023practice.md#p007-b004) · [limitations](../raw/kusumastuti2023practice.md#p011-b002).

- **Field:** Generic bivariate Gaussian uncertainty. **Evidence:** The authors explicitly specify bivariate Gaussian uncertainty and do not require a single domain. **Exact locator:** P1, Abstract. **Status:** Direct.
- **Data:** S — modeled Gaussian distributions. **Evidence:** Ensemble, summary and distribution encodings visualize controlled Gaussian uncertainty in experiments. **Exact locator:** P1, Abstract. **Status:** Interpretive.
- **Visualizations:** Ensemble; summary; distributional displays. **Evidence:** Three display categories appear by name in the abstract. **Exact locator:** P1, Abstract. **Status:** Direct.
- **Types:** DM. **Evidence:** The researchers describe making decisions using two-dimensional uncertainty and the impact of training. **Exact locator:** P1, Abstract. **Status:** Interpretive.
- **Participants:** E1: 118; E2: 56. **Evidence:** The two experiment counts are given directly. **Exact locator:** P1, Abstract. **Status:** Direct.
- **Measures:** Decision accuracy and response time, before/after practice. **Evidence:** Abstract explicitly reports faster and more accurate decisions after practice, with transfer to new display types. **Exact locator:** P1, Abstract. **Status:** Direct.

**External source links (supplementary):**
- P1: [PubMed record with complete abstract](https://pubmed.ncbi.nlm.nih.gov/35536797/)

## 12. Sterzik et al. (2025) — Uncertainty visualization for biomolecular structures: An empirical evaluation

**Typst:** `@sterzik2025`  **DOI:** https://doi.org/10.1109/TVCG.2025.3596385

**Project evidence:** [record](../evidence/sterzik2025.md) · [index](../index/sterzik2025.md) · [abstract](../raw/sterzik2025.md#p001-b003) · [study design](../raw/sterzik2025.md#p007-b002) · [quantitative evaluation](../raw/sterzik2025.md#p009-b003) · [limitations](../raw/sterzik2025.md#p013-b002).

- **Field:** Biomolecular protein structures. **Evidence:** Work addresses uncertainty in the spatial positions of molecular/protein structures. **Exact locator:** P1, Abstract. **Status:** Direct.
- **Data:** M — NMR experimentally determined ensembles + MD simulations. **Evidence:** Study describes seven NMR ensembles and two molecular-dynamics simulations used as stimuli in a perceptual study; NMR structures are observation-derived and MD conformations computational. **Exact locator:** P2, Section IV.B, Directionality; original paper methods. **Status:** Direct.
- **Visualizations:** Colour, clouds, ensemble, hulls, sausages, contours, texture, waves, noise. **Evidence:** Nine named representatives appear in original abstract. **Exact locator:** P1, Abstract. **Status:** Direct.
- **Types:** PT, QF (also initial qualitative associations). **Evidence:** Three perceptual evaluations test intuitiveness, mapping direction and numeric uncertainty reading; six experts assessed the methods. **Exact locator:** P1, Abstract. **Status:** Interpretive.
- **Participants:** 1,756 participants across 3 perceptual studies; 6 experts. **Evidence:** The combined figures are explicit; do not imply 1,756 per experiment. **Exact locator:** P1, Abstract. **Status:** Direct.
- **Measures:** Mapping direction; uncertainty estimation accuracy; expert assessments and open responses. **Evidence:** The paper specifies directionality and numeric estimation outcomes and expert assessments. The character of every qualitative response should be checked before labelling it an “interview.” **Exact locator:** P1, Abstract; P2, Section IV.B. **Status:** Direct.

**External source links (supplementary):**
- P1: [PubMed record and original abstract](https://pubmed.ncbi.nlm.nih.gov/40768449/)
- P2: [IEEE paper page (methods sections)](https://ieeexplore.ieee.org/document/11118311)

