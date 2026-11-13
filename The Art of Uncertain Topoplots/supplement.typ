#import "@preview/ieee-vgtc:0.0.4": journal

// Keep all supplementary content in this separate document.
#show: journal.with(
  review: false,
  submission-id: 0000,
  category: "Supplementary Material",
  title: [The Art of Uncertain Topoplots: Designing and Evaluating Uncertainty
    Visualizations for EEG/ERP Data],
  abstract: [TODO: Supplementary-material overview],
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
  index-terms: ("TODO: Supplementary Material",),
  teaser: (
    image: box(),
    caption: none,
  ),
  bibliography: none,
)

= Supplementary Material

#set figure(numbering: n => [S#n])

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
      [N: 16],
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
      [Prediction accuracy; likelihood judgments; judgment confidence],

      [Scholz & Lu @scholz2014uncertainty],
      [Texas precipitation and crop siting],
      [R],
      [Boundary fuzziness, colour lightness, symbol shape, and symbol transparency],
      [SR],
      [N: 37],
      [Subjective ranking],

      [Greis et al. @greis2015investigating],
      [Weather forecasts in a farming game],
      [M],
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
      [*N:* 288],
      [Probability-estimation error],

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
      [*E1:* 50; *E2:* 150],
      [Trend-identification accuracy; perceptual sensitivity (JND); judgment confidence],

      [Kusumastuti et al. @kusumastuti2023practice],
      [Abstract bivariate Gaussian uncertainty],
      [S],
      [Ensemble, summary, distribution displays],
      [DM],
      [*E1:* 118; *E2:* 56],
      [Decision accuracy; response time],

      [Sterzik et al. @sterzik2025],
      [Protein positional uncertainty],
      [M],
      [Colour, clouds, ensembles, hulls, sausages, contours, texture, waves, noise],
      [PT, QF],
      [*E1:* 540; *E2:* varies by metaphor (793 total); *E3:* 423; experts: 6],
      [Mapping-direction judgments; uncertainty-estimation accuracy; qualitative expert feedback],
    )
  },
  caption: [
    Empirical evaluations of uncertainty visualization techniques. This table and
    @tab:uncertainty-ranking summarize only the parts of each study that directly
    compare uncertainty visualisations; they do not describe the studies in full.#linebreak()
    Data: S = synthetic or simulated data;
    R = real observational data;
    M = mixed real and simulated data;#linebreak()
    Task type: PT = perceptual tasks;
    PJ = probability judgments;
    DM = decision-making tasks;
    SR = subjective ratings;
    QF = qualitative feedback.#linebreak()
    N = number of participants. Sample size (valid) reports participants included in
    the relevant analysis rather than all participants recruited; separate values are
    shown when the analytic sample differed across experiments or conditions.#linebreak()
    *E1–E3* = separate experiments.
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
       *E2*#super[†]: Repeat the task without the colour legend.],
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
       locating the least uncertain value; glyph colour and surface colour for locating
       the most uncertain value.#linebreak()
       *E2:* _1D_: no clear winner. _2D_: surface colour for
       counting uncertainty features; glyph size for counting data features.],
      [*E1:* _1D_ least: glyph colour ≈ surface colour > error bars; _1D_ highest: glyph size
       > error bars; _2D_ least: glyph size ≈ glyph colour ≈ error bars; _2D_ highest:
       glyph size > error bars.#linebreak()
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
       hue, orientation, and shape.#linebreak()
       *E2,* Series 1: fuzziness ≈ colour value.],

      [Correll & Gleicher @correll2014error],
      [*E1*#super[†]: A chart showed an estimate and a marked possible outcome. Participants
       predicted whether the actual outcome would be higher or lower, rated their
       confidence, and judged how likely the marked outcome was.#linebreak()
       *E2*#super[†]: Judge a proposed outcome when the outcome and/or margin of error was
       presented as text.#linebreak()
       *E3*#super[†]: Compare two uncertain groups, predict which will have the higher outcome,
       rate confidence, and estimate how large the difference will be.],
      [*E1:* gradient ≈ violin ≈ box plot.#linebreak()
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
      [*E1:* boundary fuzziness (mean rank 3.35).],
      [*E1:* colour lightness (2.97) > symbol transparency (2.38) > symbol shape
       (1.30).],

      [Greis et al. @greis2015investigating],
      [*E1*#super[†]: Rate how well 12 weather-forecast displays communicated uncertainty.#linebreak()
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
       *E3a*#super[†]: Effectiveness in representing minimum and maximum duration.#linebreak()
       *E3b*#super[†]: Effectiveness in representing average duration.#linebreak()
       *E4*#super[†]: Effectiveness in representing probability of start and end time.#linebreak()
       *E5:* Preferences about visualization types.],
      [*E2:* ambiguation ≈ error bars ≈ centred error bars.#linebreak()
       *E3a:* ambiguation ≈ error bars ≈ centred error bars ≈ gradient.#linebreak()
       *E3b:* centred error bars ≈ error bars ≈ ambiguation.#linebreak()
       *E4:* gradient.#linebreak()
       *E5:* ambiguation.],
      [*E2:* gradient > accumulated probability ≈ violin.#linebreak()
       *E3a:* accumulated probability ≈ violin.#linebreak()
       *E3b:* gradient, accumulated probability, and violin.#linebreak()
       *E4:* accumulated probability ≈ violin.#linebreak()
       *E5:* accumulated probability > centred error bars ≈ error bars > violin >
       gradient.],

      [Correll et al. @correll2018task],
      [*E1*#super[†]: Find the grid cell matching a specified value and uncertainty.#linebreak()
       *E2*#super[†]: Place a ship where value was high while avoiding uncertain locations.],
      [*E1:* VSUP + square legend ≈ VSUP + wedge legend ≈ Traditional bivariate + wedge
       legend ≈ Traditional bivariate + square legend.#linebreak()
       *E2:* VSUP + wedge legend ≈ VSUP + square legend.],
      [*E1:* Juxtaposed univariate + discrete colorbar > Juxtaposed univariate +
       continuous colorbar > Continuous bivariate + wedge legend > Continuous bivariate +
       square legend.#linebreak()
       *E2:* Traditional bivariate + wedge legend ≈ Traditional bivariate + square legend.],

      [Fernandes et al. @fernandes2018uncertainty],
      [*E1:* Choose when to leave to catch a bus while balancing waiting cost against the risk
       of missing it.],
      [*E1:* 50-dot quantile dotplot.],
      [*E1:* CDF ≈ 20-dot quantile dotplot > remaining displays; the complete lower-order
       ranking was not reported, and high-probability text approached their mean
       performance with greater variability.],

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
      [*E1* two-source accuracy: ellipse ≈ interlace ≈ scatter; three-source: scatter ≈
       ellipse.#linebreak()
       *E2* three-source accuracy: ellipse; time in both experiments: interlace ≈ scatter.],
      [*E1* three-source accuracy: interlace.#linebreak()
       *E2* three-source accuracy: interlace ≈ scatter; time: ellipse.],

      [Sterzik et al. @sterzik2025],
      [*E1:* State what each metaphor appeared to represent without instruction.#linebreak()
       *E2:* Identify the region that appeared most uncertain.#linebreak()
       *E3:* Estimate the uncertainty value at a highlighted position.],
      [*E1:* no clear winner.#linebreak()
       *E2:* noise (approximately 90%).#linebreak()
       *E3:* texture (lowest error; most well-rounded).],
      [*E2* approximate partial order: texture > colour ≈ waves ≈ contours > hulls >
       ensemble ≈ clouds > sausages.#linebreak()
       *E3:* the remaining order changed by molecular representation; noise, waves, and
       colour generally formed the next group.],
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

#place.flush()

#set text(size: 8pt)
#bibliography(
  "refs.bib",
  style: "ieee",
  title: text(size: 9pt, weight: "bold")[REFERENCES],
)
