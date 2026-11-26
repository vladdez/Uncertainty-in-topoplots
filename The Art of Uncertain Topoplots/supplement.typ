#import "@preview/ieee-vgtc:0.0.4": journal

// Keep all supplementary content in this separate document.
#show: journal.with(
  review: false,
  submission-id: 0000,
  category: "Supplementary Material",
  title: [The Art of Uncertain Topoplots: Designing and Evaluating Uncertainty
    Visualizations for EEG/ERP Data],
  abstract: [This supplement contains the interview guide, the literature tables, the data
    quality checks, the model specifications, robustness analyses for both tasks, completion
    time and ratings, and the codebook of the open-ended feedback.],
  authors: (
    (
      name: "Vladimir Mikheev",
      organization: [Computational Cognitive Science, Institute for Visualization and Interactive Systems (VIS), University of Stuttgart, Stuttgart, Germany],
      orcid: "0000-0002-4738-6655",
    ),
    (
      name: "Daniel Weiskopf",
      organization: [Visualization Research Center (VISUS) and Institute for Visualization and Interactive Systems (VIS), University of Stuttgart, Stuttgart, Germany],
      orcid: "0000-0003-1174-1026",
    ),
    (
      name: "Benedikt Ehinger",
      organization: [Computational Cognitive Science, Institute for Visualization and Interactive Systems (VIS), Stuttgart Center for Simulation Science (SC SimTech), University of Stuttgart, Stuttgart, Germany],
      orcid: "0000-0002-6276-3332",
    ),
  ),
  index-terms: ("Supplementary Material",),
  teaser: (
    image: box(),
    caption: none,
  ),
  bibliography: none,
)

= Supplementary Material

#set figure(numbering: n => [S#n])
// The template's empty teaser counts as an image figure; restart at S1.
#counter(figure.where(kind: image)).update(0)

#figure(
  kind: table,
  caption: [Semi-structured interview guide used in nine qualitative interviews.],
  table(
    columns: (auto, 1fr),
    align: (center, left),
    inset: (x: 6pt, y: 5pt),
    stroke: 0.4pt + luma(210),

  table.header(
    [*ID*],
    [*Interview question*],
  ),

  table.cell(colspan: 2, fill: luma(240))[*Warm-up*],

  [Q1], [Could you briefly describe your background in EEG/ERP research?],

  [Q2], [What types of EEG visualizations do you most commonly use in your work, and for what purposes?],

  table.cell(colspan: 2, fill: luma(240))[*Thinking About Uncertainty*],

  [Q3], [When you think about quantifying uncertainty in EEG or ERP data, what kinds of methods come to mind?],

  [Q4], [Do you currently include uncertainty information when you visualize EEG/ERP data? If so, what type of uncertainty do you include, and why?],

  table.cell(colspan: 2, fill: luma(240))[*Use of Topoplots*],

  [Q5], [At what stages of your research do you use topoplots, and for which audiences?],

  [Q6], [When you create a topoplot, what purposes does it serve?],

  [Q7], [Why do you think other researchers use topoplots?],

  table.cell(colspan: 2, fill: luma(240))[*Uncertainty in Topoplots*],

  [Q8], [Do you ever show uncertainty in topoplots specifically? If not, why not?],

  [Q9], [If you wanted to show uncertainty in a topoplot, how might you visualize it?],

  table.cell(colspan: 2, fill: luma(240))[*Value and Barriers*],

  [Q10], [Do you think visualizing uncertainty in topoplots would be helpful? Why or why not?],

  [Q11], [Why do you think many researchers currently do not include uncertainty in their topoplots?],

  table.cell(colspan: 2, fill: luma(240))[*Future Needs*],

  [Q12], [Is there anything you wish topoplot tools did better?],

  [Q13], [What requirements would an ideal topoplot need to meet?],

  table.cell(colspan: 2, fill: luma(240))[*Closing*],

    [Q14], [Is there anything I did not ask about that you think is important regarding topoplots or uncertainty visualization?],
  ),
) <tab:interview-guide>

#figure(
  placement: top,
  scope: "parent",
  {
    set text(size: 7.5pt)

    table(
      columns: (1.25fr, 0.9fr, 0.4fr, 2.1fr, 0.6fr, 1.1fr, 2fr),
      inset: 3.5pt,
      align: (left, left, center, left, center, left, left),

      table.header(
        [*Paper*],
        [*Study scenario*],
        [*Data*],
        [*Visualizations compared*],
        [*Type*],
        [*Sample size (valid)*],
        [*How it was measured*],
      ),

      [Wainer & Francolini @wainer1980colormaps],
      [Census two-variable maps],
      [R],
      [Univariate and bivariate colour maps],
      [PT],
      [*E1:* 16; *E2:* 8],
      [Elementary map-reading error rate; response time],

      [Sanyal et al. @sanyal2009user],
      [Abstract 1D and 2D datasets],
      [S],
      [Error bars, glyph size, glyph colour, surface colour],
      [PT],
      [N: 27],
      [Search and counting accuracy; response time],

      [MacEachren et al. @maceachren2012semiotics],
      [Regional uncertainty maps],
      [S],
      [*E1,* Series 1: location, size, colour hue, colour value, colour saturation,
       orientation, grain, arrangement, shape, fuzziness, and transparency.#linebreak()
       *E2,* Series 1: fuzziness and colour value.],
      [PT, SR],
      [*E1:* 72; *E2:* 30],
      [Intuitiveness ranking (from 1 to 7); comparison accuracy; response time],

      [Correll & Gleicher @correll2014error],
      [Generic mean-and-interval judgments],
      [S],
      [Error bars, box plots, gradients, violin plots],
      [PJ],
      [*E1:* 96; *E2:* 48; *E3:* 96],
      [Adherence to the expected inference strategy; likelihood and effect-size judgments;
       judgment confidence],

      [Scholz & Lu @scholz2014uncertainty],
      [Texas precipitation and crop siting],
      [R],
      [Boundary fuzziness, colour lightness, symbol shape, and symbol transparency],
      [SR],
      [N: 37],
      [Subjective ranking],

      [Greis et al. @greis2015investigating],
      [Weather forecasts in a farming game],
      [n.r.],
      [Text: expected value, expected value + SD, and quantiles; graphics: line chart +
       CI, box-and-whisker plot, bar + error bars, histogram bars, stacked histogram,
       area histogram, shaded probability bars, PDF, and CDF],
      [DM, SR],
      [Survey: 90; game: 12],
      [Subjective ratings; farming-game decision choices],

      [Hullman et al. @hullman2015hypothetical],
      [Fictitious seawater-solute concentrations],
      [S],
      [HOPs, error bars, violin plots],
      [PJ],
      [N: 288],
      [Absolute error of mean and probability estimates; completion time],

      [Gschwandtner et al. @gschwandtner2016visual],
      [Abstract uncertain time intervals],
      [S],
      [Gradient plots, violin plots, accumulated probability plots, error bars,
       centred error bars, ambiguation],
      [PT, PJ, SR],
      [N: 72],
      [Start/end-time, duration, and probability-estimation error; completion time;
       five-point preference ratings],

      [Correll et al. @correll2018task],
      [Abstract heatmaps and Battleship game],
      [S],
      [*E1:* VSUP + wedge legend; VSUP + square legend;
       Traditional bivariate + wedge legend; Traditional bivariate + square legend;
       Continuous bivariate + wedge legend; Continuous bivariate + square legend;
       Juxtaposed univariate + discrete colorbar; Juxtaposed univariate + continuous
       colorbar.#linebreak()
       *E2:* VSUP + wedge legend; VSUP + square legend; Traditional bivariate + wedge
       legend; Traditional bivariate + square legend.],
      [PT, DM],
      [*E1:* 24; *E2:* 21],
      [Identification accuracy; response time; decision choices],

      [Fernandes et al. @fernandes2018uncertainty],
      [Simulated real-time bus arrivals],
      [S],
      [Dotplots, CDFs, PDFs, intervals, text, baseline],
      [DM],
      [N: 408],
      [Expected reward relative to optimal; variability across trials],

      [Kale et al. @kale2019hypothetical],
      [Simulated monthly jobs-report trends],
      [S],
      [HOPs, error bars, line ensembles],
      [PT],
      [*E1:* 50; *E2:* 150#super[‡]],
      [Trend-identification accuracy; perceptual sensitivity (JND); judgment confidence],

      [Kusumastuti et al. @kusumastuti2023practice],
      [Abstract bivariate Gaussian uncertainty],
      [S],
      [Ensemble (scatter), summary (ellipse), and distributional (interlace) displays],
      [DM],
      [*E1:* 118; *E2:* 56],
      [Decision accuracy; response time],

      [Sterzik et al. @sterzik2025],
      [Protein positional uncertainty],
      [M],
      [Colour, clouds, ensembles, hulls, sausages, contours, texture, waves, noise],
      [PT, SR, QF],
      [*E1:* 540; *E2:* varies by metaphor (793 total); *E3:* 423; experts: 6],
      [Free-text associations; mapping-direction judgments; uncertainty-estimation error and
       response time; confusion/appeal ratings; qualitative expert feedback],
    )
  },
  caption: [
    Empirical evaluations of uncertainty visualization techniques. This table and
    @tab:uncertainty-ranking summarize only the parts of each study that directly
    compare uncertainty visualisations; they do not describe the studies in full.#linebreak()
    Data: S = synthetic or simulated data;
    R = real observational data;
    M = mixed real and simulated data;
    n.r. = data origin not reported in the archived source.#linebreak()
    Task type: PT = perceptual tasks;
    PJ = probability judgments;
    DM = decision-making tasks;
    SR = subjective ratings;
    QF = qualitative feedback.#linebreak()
    N = number of participants. Sample size (valid) reports participants included in
    the relevant analysis rather than all participants recruited; separate values are
    shown when the analytic sample differed across experiments or conditions.#linebreak()
    *E1–E3* = separate experiments.#linebreak()
    #super[‡] From the authors' released data; not stated in the paper.#linebreak()
    Wainer & Francolini evaluate two-variable (bivariate) colour maps rather than an
    uncertainty encoding; they are included as a bivariate-map precedent.
  ],
) <tab:uncertainty-evaluations>

#place.flush()

#figure(
  placement: top,
  scope: "parent",
  {
    set text(size: 6.5pt)
    set par(leading: 0.45em)

    table(
      columns: (1.05fr, 1.35fr, 1.55fr, 2.15fr),
      inset: (x: 3pt, y: 2.5pt),
      align: left,

      table.header(
        [*Paper*],
        [*Experiment/task*],
        [*Best-performing visualization*],
        [*Other visualizations, in descending order*],
      ),

      [Wainer & Francolini @wainer1980colormaps],
      [*E1*#super[†]: Identify the level of both variables at a marked map location.#linebreak()
       *E2*#super[†]: Eight E1 participants repeated the task, with an added fifth trial per
       map type without the colour legend.],
      [*E1:* paired univariate maps;#linebreak()
      time: bivariate map.#linebreak()
       *E2:* paired univariate maps.],
      [*E1*: bivariate map;#linebreak()
      time: paired univariate maps.#linebreak()
       *E2:* bivariate map.],

      [Sanyal et al. @sanyal2009user],
      [*E1*#super[†]: Find the least or most uncertain value.#linebreak()
       *E2*#super[†]: Count values matching a specified data or uncertainty feature.],
      [*E1:* _1D_: glyph size for locating the least uncertain value; glyph colour and
       surface colour for locating the most uncertain value. _2D_: surface colour for
       locating the least uncertain value; surface colour (≈ glyph colour) for locating
       the most uncertain value.#linebreak()
       *E2:* _1D_: no clear winner. _2D_: surface colour for
       counting uncertainty features; glyph size for counting data features.],
      [*E1:* _1D_ least: error bars > surface colour; glyph colour ≈ both; _1D_ most: glyph
       size ≈ error bars; _2D_ least: glyph size ≈ glyph colour ≈ error bars; _2D_ most:
       glyph colour ≈ glyph size > error bars; surface colour > glyph size.#linebreak()
       *E2:* _1D_: all four performed similarly; _2D_ uncertainty features:
       glyph size ≈ glyph colour ≈
       error bars; _2D_ data features: glyph colour ≈ error bars > surface colour.],



      [MacEachren et al. @maceachren2012semiotics],
      [*E1,* Series 1#super[†]: Rate the intuitiveness of 22 abstract symbol sets (11 visual variables × 2 encoding directions) for representing three ordered levels of uncertainty, using a 1–7 scale.#linebreak()
       *E2,* Series 1#super[†]: Compare two map regions, each containing nine locations with three possible uncertainty levels, and select the region with greater overall uncertainty.],
      [*E1,* Series 1: fuzziness, location, and value; response time: no clear
       winner.#linebreak()
       *E2,* Series 1: no clear winner for accuracy or response time.],
      [*E1,* Series 1: arrangement, size, and transparency > saturation,
       hue, orientation, and shape (grain, not classified in the text, also had a mean
       below 4 in Fig. 4).#linebreak()
       *E2,* Series 1: fuzziness ≈ colour value.],

      [Correll & Gleicher @correll2014error],
      [*E1*#super[†]: A chart showed an estimate and a marked possible outcome. Participants
       predicted whether the actual outcome would be higher or lower, rated their
       confidence, and judged how likely the marked outcome was.#linebreak()
       *E2*#super[†]: Judge a proposed outcome when the outcome and/or margin of error was
       presented as text.#linebreak()
       *E3*#super[†]: Compare two uncertain groups, predict which will have the higher outcome,
       rate confidence, and estimate how large the difference will be.],
      [*E1:* gradient ≈ violin; box plots matched them on strategy adherence and absence
       of within-bar bias but not on confidence (box = bar).#linebreak()
       *E2:* no clear winner.#linebreak()
       *E3:* gradient ≈ violin ≈ box plot.],
      [*E1:* bar chart with error bars; values inside the bar were judged more
       likely.#linebreak()
       *E2:* moving both elements to text reduced within-bar bias but also reduced
       accuracy and increased unjustified confidence.#linebreak()
       *E3:* bar chart with error bars; participants predicted larger group differences
       and reported greater confidence.],

      [Scholz & Lu @scholz2014uncertainty],
      [*E1*#super[†]: Rank four uncertainty visualisations from most to least preferred.],
      [*E1:* boundary fuzziness (mean preference score 3.35; 4 = most preferred).],
      [*E1:* colour lightness (2.97) > symbol transparency (2.38) > symbol shape
       (1.30).],

      [Greis et al. @greis2015investigating],
      [*E1*#super[†]: Rate 12 weather-forecast displays on decision support, familiarity,
       ease of understanding, and visual appeal (5-point scales; order uses the overall
       mean).#linebreak()
       *E2:* Use a weather forecast to choose a crop in a farming game, then select a
       preferred display.],
      [*E1:* line chart with confidence interval (4.00/5).#linebreak()
       *E2:* probability-density function (69% optimal; preferred by 8/12).],
      [*E1:* histogram bars (3.87) > PDF (3.71) > expected value (3.63) > stacked
       histogram (3.41) > CDF (3.34) > shaded bars (3.31) > mean + SD (3.26) >
       bar + error bars (3.16) > area histogram (3.04) > boxplot (2.74) > quantiles
       (2.43).#linebreak()
       *E2* decisions: histogram bars (64%) > expected value (60%) > line + CI (57%).],

      [Hullman et al. @hullman2015hypothetical],
      [*E1*#super[†]: Estimate properties of one uncertain quantity.#linebreak()
       *E2*#super[†]: Estimate how often B > A for two uncertain quantities.#linebreak()
       *E3*#super[†]: Estimate how often B is largest for three uncertain quantities.],
      [*E1:* no clear winner.#linebreak()
       *E2–E3:* HOPs.],
      [*E2–E3:* violin ≈ error bars.],

      [Gschwandtner et al. @gschwandtner2016visual],
      [*E2*#super[†]: Effectiveness in representing start and end time.#linebreak()
       *E3a–b*#super[†]: Effectiveness in representing maximum and minimum duration.#linebreak()
       *E3c*#super[†]: Effectiveness in representing average duration.#linebreak()
       *E4*#super[†]: Effectiveness in representing probability of start and end time.#linebreak()
       *E5:* Preferences about visualization types.],
      [*E2:* ambiguation ≈ error bars ≈ centred error bars.#linebreak()
       *E3a–b:* ambiguation ≈ error bars ≈ centred error bars ≈ gradient.#linebreak()
       *E3c:* centred error bars (significantly lower error than gradient, accumulated
       probability, and violin); error bars ≈ ambiguation next.#linebreak()
       *E4:* gradient.#linebreak()
       *E5:* ambiguation.],
      [*E2:* gradient > accumulated probability ≈ violin.#linebreak()
       *E3a–b:* accumulated probability ≈ violin.#linebreak()
       *E3c:* gradient, accumulated probability, and violin.#linebreak()
       *E4:* accumulated probability ≈ violin.#linebreak()
       *E5:* accumulated probability > centred error bars ≈ error bars > violin >
       gradient.],

      [Correll et al. @correll2018task],
      [*E1*#super[†]: Find the grid cell matching a specified value and uncertainty.#linebreak()
       *E2*#super[†]: Place a ship where value was high while avoiding uncertain locations.],
      [*E1:* VSUP + square legend ≈ VSUP + wedge legend ≈ Traditional bivariate + wedge
       legend ≈ Traditional bivariate + square legend.#linebreak()
       *E2:* no clear winner: VSUPs reduced very-high-uncertainty placements but produced
       higher average danger than traditional bivariate maps; legend shape had no
       effect.],
      [*E1:* Juxtaposed univariate + discrete colorbar > Juxtaposed univariate +
       continuous colorbar > Continuous bivariate + wedge legend > Continuous bivariate +
       square legend.#linebreak()
       *E2:* not ranked (trade-off between avoiding high uncertainty and expected
       value).],

      [Fernandes et al. @fernandes2018uncertainty],
      [*E1:* Choose when to leave to catch a bus while balancing waiting cost against the risk
       of missing it.],
      [*E1:* 50-dot quantile dotplot.],
      [*E1:* CDF ≈ 20-dot quantile dotplot > most remaining displays; 99% and 60% text
       intervals approached 20-dot mean performance (99% text with higher variability),
       while 85% text resembled the no-uncertainty baseline; no complete lower-order
       ranking was reported.],

      [Kale et al. @kale2019hypothetical],
      [*E1*#super[†]: Decide whether noisy employment reports showed growth or no growth.#linebreak()
       *E2*#super[†]: Repeat the trend decision with different displays and report confidence.],
      [*E1:* HOPs.#linebreak()
       *E2:* regular HOPs; no clear winner for confidence calibration.],
      [*E1:* error bars.#linebreak()
       *E2:* fast HOPs ≈ line ensemble.],

      [Kusumastuti et al. @kusumastuti2023practice],
      [*E1* and *E2:* Combine two or three uncertain location estimates to select the
       most likely hidden location, before and after practice.],
      [*E1* (practised with scatter), post-practice two-source accuracy: ellipse ≈
       interlace ≈ scatter; three-source: scatter ≈ ellipse.#linebreak()
       *E2* (practised with ellipse), post-practice three-source accuracy: ellipse; time in
       both experiments: interlace ≈ scatter.],
      [*E1* three-source accuracy: interlace.#linebreak()
       *E2* three-source accuracy: interlace ≈ scatter; time: ellipse.],

      [Sterzik et al. @sterzik2025],
      [*E1:* State what each metaphor appeared to represent without instruction.#linebreak()
       *E2:* Identify the region that appeared most uncertain.#linebreak()
       *E3:* Estimate the uncertainty value at a highlighted position.],
      [*E1:* no clear winner.#linebreak()
       *E2:* noise (approximately 90%).#linebreak()
       *E3:* texture on tube (MAE 14) and tied with colour on SES (MAE 13); colour best
       on sticks; authors judge texture most well-rounded overall.],
      [*E2* (filtered): texture ≈ colour ≈ waves ≈ contours ≈ hulls (≈ 70%) > ensemble ≈
       clouds ≈ sausages (≈ 50%; sausages lowest).#linebreak()
       *E3:* order below the best changed by representation (tube: waves ≈ sausages ≈
       noise ≈ contours ≈ colour > hulls > ensembles > clouds).],
    )
  },
  caption: [
    Task-specific outcomes from the evaluations summarized in
    @tab:uncertainty-evaluations. *E* labels distinguish task groups, experiments, or studies
    within a paper. Rankings follow reported point estimates and authors' stated
    comparisons; they do not imply statistically significant differences. “>” means
    better performance for the stated task, “≈” denotes a reported tie, an
    inconclusive contrast, or no reliable difference, and “not reported” indicates that
    the source did not support a complete ranking.#linebreak()
    #super[†] An inferential significance test of visualization differences was reported.
    The symbol does not imply that every displayed ordering was significant; unmarked
    evaluations may still report estimates and confidence or credible intervals.
  ],
) <tab:uncertainty-ranking>

#figure(
  table(
    columns: (1.1fr, 1.4fr, 1.8fr, 3fr),
    inset: 5pt,
    align: (left, left, left, left),
    table.header([*Field*], [*Study*], [*Evidence and sample*], [*Main finding*]),
    [Neuroscience],
    [Allen et al. (2012) @allen2012data],
    [Publication audit: 288 articles; 1,451 figures],
    [Only about 20% of visualisations with three features represented
    uncertainty.#footnote[In Allen et al.'s terminology, three-dimensional graphics
    represent three data variables, which can be shown in a flat figure using two axes and
    colour; the term does not necessarily imply a 3D spatial rendering
    @allen2012data.]],
    [Ecosystem science],
    [Yanai et al. (2021) @yanai2021current],
    [Publication audit: 132 articles],
    [Studies reported numerical estimates for only 42% of relevant uncertainty sources on average; 
    54% of studies reported such estimates for fewer than half.],
    [ERP visualization practice],
    [Mikheev et al. (2024) @mikheev2024art],
    [Practitioner survey: 157 M/EEG practitioners who had published a paper with an
    ERP plot],
    [Among the 157 respondents who had published an ERP plot, 40% reported not including
    error bars.],
    [Geospatial / public-health mapping],
    [Jain et al. (2026) @jain2026communicating],
    [Publication audit: 66 articles containing maps of
    climate-related infectious diseases
    in the Asia-Pacific region],
    [Only 3 of 66 studies (4.5%) visually integrated uncertainty into their maps;
    26 studies (39%) did not report uncertainty at all.],
    [Visualization software],
    [Petek et al. (2026) @petek2026general],
    [Software comparison: 5 visualization tools: Matplotlib, ggplot2, ggdist, Seaborn,
    and ggdibbler;
    18 example uncertainty visualization ],
    [Only 3 of the 18 visualizations had a tool that both quantified and drew the
     uncertainty; for 2 more, tools drew it but users had to quantify it. For the
     remaining 13 (72%), users had to do both themselves.],
    // Source: petek2026general, Table 3 (PDF p. 18): rows with a ✓ in any tool = 3;
    // best symbol ◦ = 2 (binary heat map, bivariate means); × for all tools = 13.
  ),
  caption: [Representative evidence of incomplete uncertainty reporting and
    visualization across scientific domains and limited software support.],
  kind: table,
  placement: top,
  scope: "parent",
) <tab:uncertainty-reporting>

#place.flush()

== Data quality checks <sec:quality-checks>

// Numbers come from numbers.json, written by the analysis pages when they render
// (write_manuscript_numbers() in scripts/analysis_setup.R). Re-render the pages
// and recompile after a data refresh; do not type numbers here.
#let num = json("numbers.json")
#let nq = num.quality
#let nr = num.subjective
#let nt = num.task1
#assert(
  nq.n_participants == nt.n_participants and nq.n_participants == nr.n_participants,
  message: "numbers.json sections come from different samples; re-render the pages",
)
#let cap(word) = upper(word.first()) + word.slice(1)
#let p-eq(p) = if p.starts-with("<") [$p #p$] else [$p = #p$]
#let vis-name = (
  animation: "Hypothetical outcome animation",
  triple_CI: "Interval-based representation",
  adjacent: "Adjacent plots",
  uncert_markers: "Uncertainty markers",
  bivariate_corner: "Bivariate color: corners",
  bivariate_range: "Bivariate color: range",
)
#let h1 = nt.hard_targets.at(0)
#let h2 = nt.hard_targets.at(1)
#let refit-effect = if nt.without_hard_any_excludes_zero [at least one interval
  excludes zero] else [no conclusion changes]

The checks below were not preregistered. The participant thresholds follow Leiner
@leiner2019too; the item-level check was added after inspecting the data. We excluded no
participant and no trial: every check served as a sensitivity analysis, and the primary
analyses use all data. @tab:quality-summary summarizes the checks.

#figure(
  kind: table,
  {
    set text(size: 7.5pt, hyphenate: false)
    set par(justify: false)
    table(
      columns: (1fr, 1.25fr, 0.8fr, 1.35fr),
      align: left,
      inset: (x: 4pt, y: 3.5pt),
      stroke: 0.4pt + luma(210),

      table.header(
        [*Check*], [*Criterion*], [*Flagged*], [*Action and effect*],
      ),

      [Too fast], [Relative speed index above #nq.speed_cutoff @leiner2019too],
      [#nq.n_speeders participants],
      table.cell(rowspan: 2)[Kept. Ratings re-analyzed without all #nq.n_flagged:
        #if nr.quality_n_changed == 0 [no conclusion changes] else [#nr.quality_n_changed
        of #nr.quality_n_contrasts intervals change] (@sec:sensitivity)],

      [Same rating everywhere], [Same rating on all #nq.n_rating_items rating items],
      [#nq.n_straight_liners participants],

      [Answer key (Task 1)], [Correct option, files and scoring consistent],
      [#nt.n_key_failures of #nt.n_trials trials], [None needed],

      [Target below chance (Task 1)], [Target matched correctly in less than 50% of
        trials], [#nt.hard_targets.len() images (#nt.n_hard_trials trials)],
      [Kept. Exploratory refit without them: #refit-effect (@tab:task1-hard-items)],
    )
  },
  caption: [
    Data quality checks. No participant or trial was excluded.
  ],
) <tab:quality-summary>

=== Participant-level checks

*Too fast.* SoSci Survey's relative speed index (TIME_RSI) @leiner2019too divides, on each
page, the median time of all participants by the participant's own time, caps the value at
3, and averages over pages; 1 means typical speed. Following Leiner @leiner2019too, we
flagged indices above #nq.speed_cutoff. #cap(nq.n_speeders_word) participants exceeded
this threshold (#nq.speed_index_min–#nq.speed_index_max\; median of all participants
#nq.speed_index_median_all). Speed is not a valid indicator of carelessness in tasks that
test knowledge or skill, because experts are faster @leiner2019too, so we treated the flag
only as a hint. #if nq.speeders_above_chance [All #nq.n_speeders_word participants
performed above chance in both tasks] else [Not all of them performed above chance in both
tasks] (Task 1: #nq.speeders_task1_min_number–#nq.speeders_task1_max correct, chance 50%; Task 2:
mean scores #nq.speeders_task2_min–#nq.speeders_task2_max, random clicking
#nq.task2_chance).

*Same rating everywhere.* #cap(nq.n_straight_liners_word) participants gave the same rating
(#nq.straight_liner_values, respectively) to all #nq.n_rating_items subjective rating
items, a pattern known as straight-lining @leiner2019too.

=== Item-level checks <sec:item-checks>

*Answer key.* In #if nt.n_key_failures == 0 [all] else [all but #nt.n_key_failures of the]
#nt.n_trials Task 1 trials, the correct option was the target image, its file belonged to
the target's ERP class, the other option was the logged distractor, and the recorded answer
matched the scoring.

*Target images below chance.* Two MMN target images were matched correctly less often than
chance: #h1.stimulus (#h1.accuracy, $n = #h1.n$) and #h2.stimulus (#h2.accuracy,
$n = #h2.n$). The difficulty was specific to N170 distractors: against an N170 distractor,
these targets were matched correctly in #h1.vs_n170 and #h2.vs_n170 of trials, against a
P3 distractor in #h1.vs_p3 and #h2.vs_p3. The same asymmetry appeared, more mildly, for all
MMN targets (#nt.mmn_vs_n170 correct against N170 and #nt.mmn_vs_p3 against P3
distractors). Both images are single-participant maps with a low voltage range (color
scales of ±1.5 and ±1.7 µV) and a lateral rather than posterior positivity, whereas
several N170 variations resemble the MMN template. The trials with these targets were
spread evenly over the seven visualizations (#nt.hard_trials_per_vis_min–#nt.hard_trials_per_vis_max
per visualization), so they add noise but do not favor any visualization.

=== Sensitivity analyses <sec:sensitivity>

*Without flagged participants.* Without the #nq.n_flagged_word flagged participants, the
subjective-rating contrasts against the basic topoplot changed by at most
#nr.quality_max_shift scale points, and #if nr.quality_n_changed == 0 [none of the
#nr.quality_n_contrasts intervals changed] else [#nr.quality_n_changed of the
#nr.quality_n_contrasts intervals changed] its position relative to zero.

*Without the hard target images.* In an exploratory refit without the #nt.n_hard_trials
trials whose target was #h1.stimulus or #h2.stimulus, the Task 1 estimates are shown in
@tab:task1-hard-items; #if nt.without_hard_any_excludes_zero [at least one
Dunnett-adjusted interval excludes zero] else [all six Dunnett-adjusted intervals still
include zero]. The overall test of visualization type changed from #p-eq(nt.overall_p_all)
to #p-eq(nt.overall_p_without). Because the two images were identified after inspecting
the data, this refit does not replace the primary analysis.

#figure(
  kind: table,
  {
    set text(size: 7.5pt, hyphenate: false)
    set par(justify: false)
    table(
      columns: (1fr, auto, auto, auto, auto),
      align: (left, right, right, right, right),
      inset: (x: 4pt, y: 3.5pt),
      stroke: 0.4pt + luma(210),

      table.header(
        table.cell(rowspan: 2, align: bottom)[*Visualization*],
        table.cell(colspan: 2, align: center)[*All trials*],
        table.cell(colspan: 2, align: center)[*Without hard trials*],
        [*Diff. [95% CI]*], [*$p$*],
        [*Diff. [95% CI]*], [*$p$*],
      ),

      ..nt.comparison
        .map(row => (
          vis-name.at(row.vistype), row.all, row.p_all, row.without, row.p_without,
        ))
        .flatten(),
    )
  },
  caption: [
    Task 1 accuracy difference from the basic topoplot, in percentage points, on all trials
    and without the #nt.n_hard_trials trials whose target was #h1.stimulus or
    #h2.stimulus (exploratory). Intervals are Dunnett-adjusted simultaneous 95% CIs for the
    six comparisons; $p$ values are adjusted in the same way.
  ],
) <tab:task1-hard-items>


#let n2 = num.task2
#let nh = num.hit_miss
#let ntm = num.time
#let nf = num.feedback
#let tbl(body) = {
  set text(size: 7.5pt, hyphenate: false)
  set par(justify: false)
  body
}

== Statistical models <sec:models>

@tab:model-specs lists the models. Every comparison with the basic topoplot used
`emmeans` @lenth2026emmeans with Dunnett adjustment for the six comparisons. The overall test
of visualization type was a likelihood-ratio test against the same model without it. For
accuracy, detection score and hits, estimates average over the random intercepts (a new
participant, stimulus and image) at the middle trial position and over the three ERP
patterns. For ratings, estimates are expected ratings for a typical participant.

#figure(
  kind: table,
  tbl(table(
    columns: (1.1fr, 1fr, 1.1fr, 1.2fr),
    align: left,
    inset: (x: 4pt, y: 3.5pt),
    stroke: 0.4pt + luma(210),
    table.header([*Outcome*], [*Model*], [*Fixed effects*], [*Random intercepts*]),
    [Task~1 accuracy], [Logistic (lme4, glmmTMB)], [Visualization, pattern, trial position],
    [Participant, target stimulus, distractor stimulus],
    [Task~2 detection score], [Ordered beta (glmmTMB)], [Visualization, pattern, trial position],
    [Participant, stimulus, image (stimulus × visualization)],
    [Exact hit; hit or neighbor hit; hit or runner-up hit], [Logistic (glmmTMB)],
    [Visualization, pattern, trial position], [Participant, stimulus, image],
    [Completion time (log seconds)], [Linear (lme4)], [Visualization, trial position],
    [Participant],
    [Ratings (four items)], [Cumulative link (ordinal)], [Visualization], [Participant],
    [Centre bias (exploratory)], [Quasi-Poisson on clicks per region], [Region score (cubic),
      border region], [Fixed intercept per stimulus × visualization],
  )),
  caption: [Model specifications. Software: R @rcoreteam2026r with lme4 @bates2015lme4,
    glmmTMB @brooks2017glmmtmb, ordinal @christensen2026ordinal and emmeans
    @lenth2026emmeans.],
) <tab:model-specs>

*Why Task~2 models have an intercept per image.* Each image (one stimulus in one
visualization) was seen by about 15 participants. Some images were harder than others, so
their answers are not independent. @tab:image-term compares the Task~2 models with and
without an intercept per image. The intercept improved the fit of every model, and no
overall test of visualization type remained significant once it was included.

#let image-rows = (n2.image_term, nh.image_term.Hit, nh.image_term.at("Hit or neighbour hit"))
#assert(
  image-rows.all(x => float(x.aic_with) < float(x.aic_without)),
  message: "The image intercept no longer improves every Task 2 model; update Statistical models",
)
#assert(
  image-rows.all(x => not x.overall_with.p.starts-with("<") and float("0" + x.overall_with.p) >= 0.05),
  message: "An overall test with the image intercept is now significant; update Statistical models",
)

#let it(x) = [#x.aic_without → #x.aic_with]
#let lrt(x) = [$chi^2 (#x.df) = #x.chi$, #p-eq(x.p)]
#figure(
  kind: table,
  tbl(table(
    columns: (1.2fr, 0.9fr, 0.6fr, 1.2fr, 1.2fr),
    align: (left, left, right, left, left),
    inset: (x: 4pt, y: 3.5pt),
    stroke: 0.4pt + luma(210),
    table.header([*Outcome*], [*AIC without → with*], [*Image SD*],
      [*Overall test without*], [*Overall test with*]),
    [Detection score], it(n2.image_term), n2.image_term.image_sd,
    lrt(n2.image_term.overall_without), lrt(n2.image_term.overall_with),
    [Exact hit], it(nh.image_term.Hit), nh.image_term.Hit.image_sd,
    lrt(nh.image_term.Hit.overall_without), lrt(nh.image_term.Hit.overall_with),
    [Hit or neighbor hit], it(nh.image_term.at("Hit or neighbour hit")),
    nh.image_term.at("Hit or neighbour hit").image_sd,
    lrt(nh.image_term.at("Hit or neighbour hit").overall_without),
    lrt(nh.image_term.at("Hit or neighbour hit").overall_with),
  )),
  caption: [Task~2 models without and with an intercept per image. Image SD on the logit
    scale. Overall test: likelihood-ratio test of visualization type.],
) <tab:image-term>

*Task~1 needs no intercept per image.* Adding the same term (target stimulus ×
visualization) to the Task~1 model did not improve it: AIC #nt.image_term.aic_without →
#nt.image_term.aic_with, image SD #nt.image_term.image_sd against #nt.image_term.stimulus_sd
for the stimulus, $chi^2 (#nt.image_term.term_df) = #nt.image_term.term_chi$,
$p = #nt.image_term.term_p$. The overall test of visualization type changed only from
$chi^2 (#nt.overall_df) = #nt.overall_chi$, #p-eq(nt.overall_p_all) to
$chi^2 (#nt.image_term.overall_df_with) = #nt.image_term.overall_chi_with$,
#p-eq(nt.image_term.overall_p_with). The Task~1 model therefore keeps intercepts for
participant, target and distractor only.

#assert(
  not nt.image_term.supported,
  message: "The Task 1 image term is now supported; update Statistical models",
)

== Task 2 robustness <sec:task2-robustness>

*Two-part model.* The detection score mixes exact hits with the closeness of misses. A
logistic model of exact peaks and a beta model of the misses gave these overall tests:
#n2.two_part.overall.map(r => [#lower(r.part) $chi^2 (#r.df) = #r.chi$, #p-eq(r.p)]).join("; ").
#if n2.two_part.clear.len() == 0 [No comparison with the basic topoplot excluded zero in
either part.] else [#if n2.two_part.clear.len() == 1 [One comparison] else [#n2.two_part.clear.len() comparisons]
with the basic topoplot excluded zero:
#n2.two_part.clear.map(r => [#r.vistype, #lower(r.model.split(" (").at(0)) model,
#if r.higher [higher] else [lower]]).join("; ").]

*Rank and top-3 outcomes.* The score is rescaled within each stimulus, so we also analyzed
the rank of the chosen region and whether it was among the three strongest.
#if n2.scale_free_n_significant == 0 [For neither outcome did any visualization differ
from the basic topoplot.] else [#n2.scale_free_n_significant comparisons differed from the
basic topoplot.]

*Posterior predictive check.* In #n2.ppc.n_sim data sets simulated from the primary model,
the observed share of exact-peak responses lay inside the 95% interval for
#n2.ppc.level_inside of #n2.ppc.level_n visualizations, and the observed difference from the
basic topoplot for #n2.ppc.diff_inside of #n2.ppc.diff_n (@fig:ppc).
#if n2.ppc.outside.len() > 0 [Outside the interval:
#n2.ppc.outside.map(r => [#r.vistype #r.statistic (observed #r.observed pp, simulated
#r.lower to #r.upper pp)]).join("; "). The single ordered-beta predictor does not fully
reproduce exact peaks, which is why the two-part model is reported.]

#figure(
  image("figures/task2_peak_ppc_figure.png", width: 100%),
  caption: [Posterior predictive check of exact-peak responses in Task~2. Blue: median and
    95% interval of the simulated data sets; dots: observed values.],
) <fig:ppc>

== Hits, neighbor hits and runner-up hits <sec:hit-miss>

@tab:hit-rates gives the observed rates per visualization. A runner-up region can also
border the peak (#nh.runner_neighbour_share of runner-up regions do), so the neighbor and
runner-up columns overlap. The last column is the centre bias per visualization: clicks on
a border region relative to an interior region with the same score.

#let centre-of(vis) = nh.centre_by_vistype.find(r => r.vistype == vis)
#figure(
  kind: table,
  tbl(table(
    columns: (1.3fr, 0.6fr, 0.8fr, 0.8fr, 1.2fr),
    align: (left, right, right, right, left),
    inset: (x: 4pt, y: 3.5pt),
    stroke: 0.4pt + luma(210),
    table.header([*Visualization*], [*Hit*], [*Neighbor hit*], [*Runner-up hit*],
      [*Border ÷ interior [95% CI]*]),
    ..nh.rates.map(r => {
      let c = centre-of(r.vistype)
      (r.vistype, r.hit, r.neighbour, r.runner, [#c.ratio [#c.lower, #c.upper]])
    }).flatten(),
    [Random click], nh.chance.hit, nh.chance.neighbour, nh.chance.runner, [--],
  )),
  caption: [Observed share of responses per visualization (#nh.rates.at(0).n responses each)
    and the centre bias per visualization (quasi-Poisson choice model; intervals not
    adjusted for comparisons).],
) <tab:hit-rates>

== Completion time <sec:time-checks>

*Outlier rule.* Trial pages longer than #ntm.cap_sec s were excluded:
#ntm.rule_task1.removed of #ntm.rule_task1.trials pages in Task~1
(#ntm.rule_task1.participants participants) and #ntm.rule_task2.removed of
#ntm.rule_task2.trials in Task~2 (#ntm.rule_task2.participants participants). Refitting with
all pages kept, or with a 1.5 × IQR rule within each visualization, #if ntm.sensitivity_n_changed == 0 [left every comparison with the basic topoplot unchanged] else [changed the result for #ntm.sensitivity_n_changed comparison#if ntm.sensitivity_n_changed > 1 [s]
with the basic topoplot: #ntm.sensitivity_changes.map(r => [#lower(r.vistype) in
#r.task (main rule: #r.cap\; all pages kept: #r.all\; IQR rule: #r.iqr)]).join("; ")].

*Time and accuracy (Task~1).* Within participants, a trial that took twice the usual time
had an odds ratio of #ntm.time_accuracy.log_time_within.odds_ratio for a correct answer (95% CI
#ntm.time_accuracy.log_time_within.lower to #ntm.time_accuracy.log_time_within.upper).
Between participants, twice the typical completion time gave an odds ratio of
#ntm.time_accuracy.log_time_between_c.odds_ratio (#ntm.time_accuracy.log_time_between_c.lower
to #ntm.time_accuracy.log_time_between_c.upper). These are associations, not effects of time.

== Subjective ratings <sec:ratings-checks>

*Proportional odds.* A likelihood-ratio test rejected proportional odds for #nr.po_rejected
of #nr.po_n items ($p$ from #nr.po_p_min to #nr.po_p_max): the visualizations differ in how
ratings spread over the scale, not only in their location. We therefore report expected
ratings, which stay within #nr.max_raw_model_difference scale points of the raw means
(@fig:rating-estimates), rather than odds ratios.

*Linear mixed model.* A linear mixed model of the 1--5 ratings, which does not assume
proportional odds, reached the same conclusion (interval excluding zero or not) for
#nr.lmm_agree of #nr.lmm_n comparisons with the basic topoplot.

#figure(
  image("figures/likert_estimate_figure.pdf", width: 100%),
  caption: [Expected rating of a typical participant for each item, with pointwise 95%
    confidence intervals.],
) <fig:rating-estimates>

== Open-ended feedback <sec:feedback-codebook>

The coding produced #nf.n_units meaning units from #nf.n_participants_coded participants. A
unit that evaluates several visualizations counts once for each, giving #nf.n_rows coded rows.
@tab:codebook lists the #nf.n_themes themes.

#figure(
  kind: table,
  tbl(table(
    columns: (0.8fr, 2fr),
    align: left,
    inset: (x: 4pt, y: 3pt),
    stroke: 0.4pt + luma(210),
    table.header([*Theme*], [*Definition*]),
    ..nf.codebook.map(r => (r.Theme, r.Explanation)).flatten(),
  )),
  caption: [Codebook of the open-ended feedback.],
) <tab:codebook>

== Task~2 response grid <sec:region-grid>

In Task~2, participants clicked one of 64 regions on a grid next to the stimulus. The
regions have nearly equal area (coefficient of variation of the areas 0.3%). They are cells
of a power diagram, a weighted Voronoi partition, whose seeds lie in rows, mirrored left to
right, with one column of seeds on the midline. Midline electrodes fall inside midline
regions, and the grid is aligned with the electrode montage of the stimuli.

We compared six seed layouts with eight or ten midline seeds (@fig:grid-candidates) on three
criteria: equal area, elongation (aspect ratio) and the distance from each electrode to the
nearest region border. All six had nearly equal areas. The selected layout, with ten midline
seeds, kept the electrodes farthest from region borders (minimum distance 0.031 against at
most 0.014 for the others, in head-template units), and its regions were among the least
elongated (mean aspect ratio 1.27, maximum 1.72). @fig:grid-labels shows the final grid with
the region labels used in the data. Participants saw the grid without labels.

#figure(
  image("figures/candidate_comparison.png", width: 100%),
  caption: [Six candidate grids of 64 regions. Each title gives the coefficient of
    variation of the region areas, the mean and maximum aspect ratio, and the minimum
    distance from an electrode (dots) to a region border. The selected layout is marked with
    a star.],
  placement: auto,
  scope: "parent",
) <fig:grid-candidates>

#figure(
  image("figures/preview_labels.png", width: 75%),
  caption: [Final Task~2 grid with the region labels R01 (front) to R64 (back).],
) <fig:grid-labels>

#set text(size: 8pt)
#bibliography(
  "refs.bib",
  style: "ieee",
  title: text(size: 9pt, weight: "bold")[REFERENCES],
)
