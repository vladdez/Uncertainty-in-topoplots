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
        [*Field*],
        [*Data*],
        [*Visualizations compared*],
        [*Type*],
        [*Sample size*],
        [*How it was measured*],
      ),

      [Wainer & Francolini @wainer1980colormaps],
      [Geospatial mapping],
      [R],
      [Univariate and bivariate colour maps],
      [PT],
      [N: 16],
      [Elementary map-reading error rate; response time],

      [Sanyal et al. @sanyal2009user],
      [General],
      [S],
      [Error bars, glyph size, glyph colour, surface colour],
      [PT],
      [N: 27],
      [Search and counting accuracy; response time],

      [MacEachren et al. @maceachren2012semiotics],
      [Geospatial mapping],
      [S],
      [Size, colour, transparency vs. recognizable pictorial symbols],
      [PT, SR],
      [E1: 72; E2: 30; pilot: 31],
      [Intuitiveness judgments; comparison accuracy; response time],

      [Correll & Gleicher @correll2014error],
      [General],
      [S],
      [Error bars, box plots, gradients, violin plots],
      [PJ],
      [E1: 96; E2: 48; E3: 96],
      [Prediction accuracy; likelihood judgments; judgment confidence],

      [Scholz & Lu @scholz2014uncertainty],
      [Geospatial mapping],
      [R],
      [Fuzziness, lightness, transparency, shape],
      [DM, SR],
      [N: 60],
      [Decision choices; preference ratings and rankings],

      [Greis et al. @greis2015investigating],
      [Weather forecasting],
      [M],
      [Textual estimates, SD and quantiles; line/area charts, boxplots, bar charts,
      shaded bars, PDF/CDF plots],
      [DM, SR],
      [Survey: 90; game: 44 (38 rated)],
      [Subjective ratings; farming-game decision choices],

      [Hullman et al. @hullman2015hypothetical],
      [Chemical concentrations],
      [S],
      [HOPs, error bars, violin plots],
      [PJ],
      [N: 288],
      [Probability-estimation error; total completion time],

      [Gschwandtner et al. @gschwandtner2016visual],
      [Event time intervals],
      [S],
      [Gradients, violin plots, probability plots, error bars, ambiguation],
      [PT, PJ],
      [N: 72],
      [Accuracy; estimation error; response time],

      [Correll et al. @correll2018task],
      [Spatial mapping],
      [S],
      [Adjacent maps, bivariate maps, VSUPs],
      [PT, DM],
      [E1: 24; E2: 24],
      [Identification accuracy; response time; decision choices],

      [Fernandes et al. @fernandes2018uncertainty],
      [Public transport],
      [S],
      [Dotplots, CDFs, PDFs, intervals, text, baseline],
      [DM],
      [N: 408],
      [Expected reward relative to optimal; variability across trials],

      [Kale et al. @kale2019hypothetical],
      [Employment trends],
      [S],
      [HOPs, error bars, line ensembles],
      [PT],
      [E1: 50; E2: 150],
      [Trend-identification accuracy; perceptual sensitivity (JND); judgment confidence],

      [Kusumastuti et al. @kusumastuti2023practice],
      [General],
      [S],
      [Ensemble, summary, distribution displays],
      [DM],
      [E1: 118; E2: 56],
      [Decision accuracy; response time],

      [Sterzik et al. @sterzik2025],
      [Biomolecular structures],
      [M],
      [Colour, clouds, ensembles, hulls, sausages, contours, texture, waves, noise],
      [PT, QF],
      [Total: 1,756; experts: 6],
      [Mapping-direction judgments; uncertainty-estimation accuracy; qualitative expert feedback],
    )
  },
  caption: [
    Empirical evaluations of uncertainty visualization techniques.#linebreak()
    Data: S = synthetic or simulated data;
    R = real observational data;
    M = mixed real and simulated data;#linebreak()
    Task type: PT = perceptual tasks;
    PJ = probability judgments;
    DM = decision-making tasks;
    SR = subjective ratings;
    QF = qualitative feedback.#linebreak()
    N = number of participants;
    E1–E3 = separate experiments.
  ],
) <tab:uncertainty-evaluations>

#place.flush()

#set text(size: 8pt)
#bibliography(
  "refs.bib",
  style: "ieee",
  title: text(size: 9pt, weight: "bold")[REFERENCES],
)
