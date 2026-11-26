#import "@preview/ieee-vgtc:0.0.4": journal

// TVCG regular-paper target: no more than 12 double-column pages,
// including references.
#show: journal.with(
  // Set review to true when preparing an anonymized submission.
  review: false,
  submission-id: 0000,
  category: "Regular Paper",
  title: [
    The Art of Uncertain Topoplots: Designing and Evaluating Uncertainty
    Visualizations for EEG/ERP Data
  ],
  abstract: [TODO: Abstract],
  authors: (
    (
      name: "Vladimir Mikheev",
      organization: [
        Computational Cognitive Science, Institute for Visualization and Interactive
        Systems (VIS), University of Stuttgart, Stuttgart, Germany
      ],
      orcid: "0000-0002-4738-6655",
    ),
    (
      name: "Daniel Weiskopf",
      organization: [
        Visualization Research Center (VISUS) and Institute for Visualization and
        Interactive Systems (VIS), University of Stuttgart, Stuttgart, Germany
      ],
      orcid: "0000-0003-1174-1026",
    ),
    (
      name: "Benedikt Ehinger",
      organization: [
        Computational Cognitive Science, Institute for Visualization and Interactive
        Systems (VIS), Stuttgart Center for Simulation Science (SC SimTech), University
        of Stuttgart, Stuttgart, Germany
      ],
      orcid: "0000-0002-6276-3332",
    ),
  ),
  index-terms: (
    "Data visualization",
    "Electroencephalography",
    "Human factors",
    "Uncertainty",
  ),
  teaser: (
    image: image("figures/example_topoplots.pdf", width: 100%),
    caption: [Overview of the evaluated uncertainty-visualization designs.],
  ),
  bibliography: bibliography("refs.bib"),
)

= Introduction

Scientific estimates are often accompanied by uncertainty, but representing uncertainty for
spatial and multivariate data is challenging task. For individual estimates and curves,
familiar techniques such as error bars and confidence bands provide relatively direct ways
to communicate uncertainty @wilke2019fundamentals. But in spatial visualizations the
estimated signal and its uncertainty vary across space and need to be shown at the same
time.

EEG/ERP topographic plots are a useful case for studying this problem. EEG measures
electrical potentials at electrodes distributed across the scalp. ERP or event-related
potentials are averaged and time-locked EEG trials. A topographic plot or *topoplot* is a
figure with ERP over a two-dimensional representation of the head, often interpolated.
Colour usually represents the sign and magnitude of the estimated voltage, allowing
researchers to inspect the spatial distribution of signals. Topoplots are also one of the
most familiar visualization types in the EEG/ERP community. In our previous survey of 213
M/EEG researchers, 82% of respondents (175) reported having previously plotted a topoplot,
second only to conventional ERP waveform plots (88%, 187) @mikheev2024art.
// Source: mikheev2024art, Fig. 6 (PDF p. 9), "previously plotted" bars; N = 213.

Conventional topoplots generally show the estimated voltage without an accompanying measure
of its precision. There is no established visual convention for integrating uncertainty into
these maps. Although there are some software solutions for representation of uncertaint in
EEG visualization @gerslova2026diegr.

Showing uncertainty could help researchers distinguish regions with relatively stable
estimates from regions with larger variability and provide a visual impression of the local
signal-to-noise structure. On the other hand, adding another visual variable to an already
familiar spatial representation may hinder the perception of the underlying ERP pattern.
This creates a broader visualization question: #strong[how can uncertainty be added to an
established spatial visualization while preserving the primary signal that users already
know how to read?] This difficulty is reflected by @allen2012data. They reviewed 1,451
figures from six neuroscience journals. Figures of three-variable data showed uncertainty
less often than figures of two-variable data: only 20% of them did. These are 2D plots in
which color or another feature shows a third variable, the same structure as a topoplot.

Before the quantitative evaluation, we conducted qualitative interviews with nine EEG/ERP
experts to understand how topoplots are used in practice, how researchers think about
uncertainty, and what they expect from an uncertainty-aware representation. The interviewed
researchers valued uncertainty representation on topoplots but reported a lack of clear
conventions or guidance for doing so. These findings helped us formulate the research gap,
select the visualization approaches, and design the later experimental tasks.

Building on prior uncertainty-visualization work and our qualitative interviews with EEG/ERP
experts, we created several uncertainty representations and compared them with the
conventional topoplot in a user study. We tested whether showing uncertainty changes
participants' ability to recognize the underlying spatial ERP pattern, how well different
representations support judgments that require combining signal and uncertainty, and how
participants experience and interpret the different designs. The study combines formative
expert interviews, controlled performance evaluation, subjective ratings, and open-ended
qualitative explanations of participants' judgments and decisions.

To our knowledge, this is the first systematic study to compare multiple
uncertainty-visualization strategies for EEG/ERP topoplots in a controlled user study. While
uncertainty has occasionally been represented in EEG visualization, there is no established
practice for integrating it into scalp topographies, and the relative effectiveness of
alternative representations has not been systematically evaluated.

Our contributions are fourfold. First, we report qualitative insights from EEG/ERP experts
on current topoplot practices and the challenges of communicating uncertainty in them.
Second, we created a design pool of uncertainty representations for EEG/ERP topoplots.
Third, we provide empirical evidence of how different plot types affect participants’
ability to interpret the underlying spatial ERP pattern and make judgments that combine
signal and uncertainty. This is complemented by participants’ subjective ratings and
qualitative feedback explaining their preferences and interpretation difficulties. Finally,
we derive practical recommendations for the usage of uncertainty-aware EEG/ERP topoplots.

= Related Work

== Uncertainty Is Often Missing from Scientific Reporting and Visualization

Uncertainty is routinely omitted or incompletely communicated across scientific domains.
Boukhelifa and Duke describe a persistent divide between the recognized importance of
uncertainty in visualization research and its limited adoption in practice
@boukhelifa2009uncertainty. Similarly, Hullman's survey of visualization authors found that,
although authors generally acknowledged the value of communicating uncertainty, direct
uncertainty depiction was routinely omitted @hullman2020why. @tab:uncertainty-reporting
summarizes this observation with evidence from neuroscience, ecosystem science, geospatial
mapping, and visualization software.

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

Limited software support is one practical reason why uncertainty visualizations may remain
uncommon. Although many uncertainty visualization techniques have been proposed, they are
not necessarily available as standard functionality in commonly used visualization systems.
Petek et al. compared five visualization tools across 18 example uncertainty visualizations:
for 13 of these examples, all five tools required users to quantify uncertainty themselves
and implement its visual encoding through custom plotting code, rather than relying on
dedicated uncertainty-visualization functionality (their Table 3) @petek2026general.

This software gap has been reported across multiple visualization ecosystems and application
domains. Kay notes that support for uncertainty visualization in existing
Grammar-of-Graphics implementations remains largely limited to conventional representations
such as error bars, uncertainty bands, and density plots, while many techniques proposed in
visualization research remain difficult to construct @kay2024ggdist. In geospatial
visualization, Koo et al. identify a lack of uncertainty-visualization tools in standard GIS
environments and implement dedicated uncertainty encodings as an ArcGIS extension
@koo2018geovisualizing. Earlier work in GIS likewise observed that, despite a broad
conceptual literature on uncertainty visualization, implemented tools and pilot projects
remained rare @kubicek2011thematic. In medical visualization, Gillmann et al. further
reported that, to their knowledge, no commercially available uncertainty-aware visualization
technique was available in medical workstations @gillmann2021uncertainty.

== Visual Encodings for Spatial Uncertainty

Visualising uncertainty in spatial data presents a challenge: viewers need to understand
both the estimated spatial pattern and how uncertain that estimate is. Different approaches
address this challenge by adding uncertainty information to the original map, displaying it
in separate maps, or showing possible outcomes through animation @maceachren1992visualizing
@kinkeldey2014assess.

We examine five approaches that can be adapted to EEG topoplots: markers and glyphs,
bivariate colour maps, adjacent maps, interval-based representations, and hypothetical
outcome plots. These approaches differ in how uncertainty is encoded, whether it is shown
alongside or within the original data, and whether the representation is static or animated.

_Markers_ and _glyphs_ represent uncertainty through graphical elements added to a spatial
display. Their visual properties, such as size, colour, or opacity, can encode uncertainty
independently of the underlying data @maceachren1992visualizing @brodlie2012review.

_Bivariate colour maps_ show two variables in a single spatial view using a two-dimensional
colour legend @strode2019operationalizing. An early example was the U.S. Census Bureau's
bivariate choropleth maps based on the 1970 Census @meyer1975census. These maps combined two
colour scales, making some colours hard to distinguish and match to the legend
@strode2019operationalizing. Early studies found that readers made more errors when
identifying values at specific locations and had more difficulty judging correlations
between variables than with two separate maps @wainer1980colormaps @olson1981spectrally.
MacEachren @maceachren1992visualizing later proposed using bivariate colour maps to show
data values and their uncertainty together, with hue representing the data and colour
saturation indicating uncertainty.

_Adjacent_ or _juxtaposed maps_ or _map pairs_ display an estimate and its uncertainty in
separate, spatially aligned views @brodlie2012review @maceachren1992visualizing. Each
quantity can use its own colour scale, allowing viewers to compare the two maps.

_Interval-based representations_ display an estimate together with its lower and upper
bounds. For spatial data, these bounds can be shown as separate maps alongside the estimate
@gerslova2026diegr. Depending on the statistical method, the bounds may represent confidence
intervals or 1 +- standard error.

_Hypothetical outcome plots_ use animation to display samples from a modelled distribution
@hullman2015hypothetical. For spatial data, each frame shows a possible spatial pattern,
communicating uncertainty through variation across successive frames.

Hullman et al. found that the benefits of HOPs depended on the task: HOPs produced
substantially more accurate ordering judgments involving two or three uncertain quantities,
whereas results for single-variable judgments were mixed. In particular, HOPs produced
greater error than error bars and violin plots when participants estimated the mean of a
high-variance distribution @hullman2015hypothetical.

Within the studies reviewed here, the most favourable results for HOPs came from
one-dimensional scalar or temporal domains, including ordering judgments and trend
discrimination @hullman2015hypothetical @kale2019hypothetical. Comparable positive evidence
for HOP-style animation in spatial domains remains limited: a systematic review of
geospatial uncertainty visualisation found no consistent advantage for dynamic displays over
static alternatives @kinkeldey2014assess. Benefits observed in one-dimensional tasks
therefore should not be assumed to transfer directly to spatial fields such as topoplots.

== Evaluating Uncertainty Visualizations


Previous studies have evaluated uncertainty visualizations using perceptual tasks,
probability judgments, decision-making tasks, and subjective assessments. Table S2 of the
supplementary material summarizes representative empirical studies, distinguishing what
researchers assessed from how they measured it.

_Perceptual studies_ assess how accurately and quickly participants identify areas with high
uncertainty or compare its magnitude across different areas, typically measuring accuracy
and response time @sanyal2009user. Whereas perceptual studies ask _where_ uncertainty is
high, _probability-judgment studies_ ask participants to estimate properties of the depicted
distributions, such as how likely one value is to exceed another, and score these estimates
against the true values @hullman2015hypothetical. Both approaches provide objective
measures, but they test different abilities: reading uncertainty is not the same as using it
to make a decision.

_Decision-making studies_ go beyond interpretation accuracy. Correll et al. @correll2018task
examined whether uncertainty affected participants' choices, whereas Fernandes et al.
@fernandes2018uncertainty measured decision quality through expected payoffs. This
distinction matters because a visualization can change how cautiously people behave without
necessarily improving their decisions. _Subjective assessments_ address another question:
whether a visualization is understandable, useful, or preferred. Studies combining ratings
with behavioral tasks, such as Greis et al. @greis2015investigating, allow these outcomes to
be examined separately.

No single evaluation measure captures all aspects of uncertainty visualization
effectiveness. Reviews by Kinkeldey et al. @kinkeldey2014assess and Hullman et al.
@hullman2019pursuit emphasize the importance of task selection and distinguishing perceptual
performance from decision quality. Accordingly, our study combines two tasks: pattern
comparison, assessing whether users can recognize EEG scalp patterns, and signal-to-noise
integration, assessing whether they can use voltage and standard error together. Subjective
ratings and qualitative feedback complement these performance measures by examining
participants' experiences with each visualization design.
== Uncertainty in EEG/ERP Visualization

In ERP waveforms, uncertainty can be shown, for example, with error bars or shaded bands for
the standard error or a confidence interval @allen2012data @kappenman2021erp
@pernet2011limo, although many published ERP plots omit it @mikheev2024art. EEG scalp maps
can also display statistical results, such as test statistics or significance markers, but
these do not directly show uncertainty in the estimated voltage @pernet2011limo.

Some EEG tools already provide ways to visualize uncertainty. LIMO EEG calculates bootstrap
confidence intervals for individual electrodes and time points, but its published examples
show statistical scalp maps and confidence intervals on selected waveforms separately
@pernet2011limo. The R package `diegr` offers a more direct approach: its `plot_topo_mean()`
function displays three scalp maps showing the lower confidence bound, mean, and upper
confidence bound @gerslova2026diegr.

Although these approaches exist, it remains unclear which uncertainty visualizations work
best for EEG/ERP topoplots. Neither publication systematically evaluates how users interpret
different visualization designs. Our study addresses this gap by comparing ways to display
uncertainty alongside estimated scalp voltage, rather than uncertainty in interpolation or
source localization.


== Research Gap

The literature provides established uncertainty-visualization techniques and individual EEG
implementations, but little comparative evidence for EEG/ERP topoplots. To our knowledge,
the alternative strategies have not been systematically compared in a controlled user study
in this context, and no established visual convention guides their use. The open question is
which representations preserve the underlying spatial signal while supporting
uncertainty-aware judgments. Addressing this question requires evidence about performance as
well as participants' explanations of why they prefer particular representations or struggle
to interpret them.

= Formative Qualitative Study <sec:formative>

At the beginning we conducted a formative qualitative study to understand how EEG/ERP
researchers currently use topoplots, how they conceptualize uncertainty, and which barriers
they encounter when communicating it in spatial EEG representations. The interviews also
served to identify relevant user tasks and requirements for the subsequent visualization
design and quantitative study.

== Participants

We conducted semi-structured interviews with nine participants with experience in EEG/ERP
research or clinical EEG. The sample covered different application contexts, including
fundamental neuroscience, brain-computer interface research, and clinical EEG practice.

== Interview Guide

We used a semi-structured interview guide consisting of 14 main questions; the complete
guide is provided in the supplementary material. A shortened version containing the main
questions was provided to participants, while the interviewer used an extended version
containing optional probes.

The interview covered six main topics: participants' EEG/ERP background and visualization
practices; their understanding and current use of uncertainty; the purposes and audiences
for which they use topoplots; current and potential approaches to showing uncertainty on
topoplots; perceived value and barriers to uncertainty visualization; and requirements for
future topoplot tools.

Questions were deliberately open-ended, and the order and depth of follow-up questions could
vary depending on the participant's responses. The interviewer maintained a neutral stance
and did not suggest that uncertainty should or should not be visualized.

== Procedure and Transcription

The interviews lasted approximately 15--30 minutes and were audio-recorded. The full
interview guide is provided in Table S1 of the supplementary material. At the beginning of
each interview, participants explicitly consented to the recording, to public sharing of an
anonymized transcript for research purposes, and to the use of anonymized quotations in
publications.

Audio recordings were transcribed using Voice AI, the speech-to-text service provided
through the Academic Cloud/GWDG @gwdgVoiceAI. Transcripts were anonymized before analysis
and publication.

// TODO: Report ethics approval or exemption, as applicable.

== Analysis and Implications for the Visualization Design

The interviews were analyzed using a structured qualitative content-analysis approach.
Responses were first organized according to the interview questions and then compared across
participants to identify recurring practices, concerns, and requirements.

Participants saw value in communicating uncertainty, but rarely visualized spread-related
uncertainty directly on topoplots. They reported ambiguity about how to represent it,
limited support in the software they used, and a lack of clear conventions or guidance.
Together with the individual implementations described in the related work, these findings
motivate evaluating alternative representations and developing practical guidance for
communicating uncertainty spatially.

Participants' accounts referred both to variability or precision, such as standard deviation
or standard error, and to statistical evidence or signal reliability, such as
signal-to-noise ratios, test statistics, or significance values. These quantities answer
different questions: significance does not directly describe the precision of a voltage
estimate. We focused the subsequent study on representing standard error alongside estimated
voltage.

Several recurring uses of topoplots were identified, including recognizing expected spatial
ERP patterns, comparing experimental conditions, assessing plausible spatial distributions,
and locating relevant signals. We used these common practices as the basis for constructing
the tasks in the quantitative study.

Participants also proposed possible uncertainty representations. For example, R2 suggested
showing three topoplots representing an uncertainty interval together with the estimate.
This suggestion helped motivate the inclusion of an interval-based representation with
precedent in EEG visualization. We combined these interview-derived requirements with
existing visualization approaches to construct the design pool evaluated in the subsequent
study.

= Design Space of Uncertainty Visualizations

We selected six approaches for representing standard error alongside estimated voltage by
combining designs from prior visualization work with ideas from the formative interviews.
The two bivariate topoplot designs were inspired by the range and corners models described
by Strode et al. and by Correll et al.'s Value-Suppressing Uncertainty Palettes
@strode2019operationalizing @correll2018task. The resulting bivariate topoplots are our
original designs: we used these color-model concepts as starting points and adapted them to
spatially continuous EEG/ERP topoplots that jointly encode signed voltage and standard
error. Adjacent plots, uncertainty markers, and hypothetical outcome animation were also
informed by existing visualization approaches and adapted for our study. The interval-based
representation was suggested by participant R2 and has precedent in the three-map display
provided by `diegr` @gerslova2026diegr. We included a conventional topoplot without
uncertainty information as a baseline.

The designs differ in whether uncertainty is presented in separate maps, integrated into
color, overlaid as markers, or conveyed through animation. This selection allowed us to
examine how these approaches support two needs identified in the interviews: preserving
recognizable spatial patterns and supporting judgments that combine the estimated signal and
its uncertainty.

We aimed to use _RdBu_ or similar diverging red--blue color schemes for voltage wherever
possible, to maintain visual consistency across designs. We used discrete (binned)
colormaps, motivated by Padilla et al.'s study of grayscale 2D scalar fields
@padilla2017binning, which found improved accuracy for value lookup and highest-point
identification under some binning conditions, while continuous encodings were often faster.
For univariate voltage maps, we quantized _RdBu_ into 10 colors. Both bivariate designs used
a $5 times 5$ grid, with five bins each for voltage and standard error, yielding 25 color
combinations.

== Basic topoplot

The basic topoplot served as the baseline condition. It displays only the estimated EEG/ERP
voltage amplitude using a diverging color scale, such that color encodes both the sign and
magnitude of the signal. No information about standard error (SE) is shown.

== Adjacent plots

The adjacent-plots design was inspired by the EEGVIS toolbox @ehinger2018eegvis. It presents
the estimated signal and its SE in two separate topoplots. The signal map uses a diverging
color scale to represent negative and positive voltage amplitudes, whereas the SE map uses a
sequential color scale because SE is non-negative. This design preserves a familiar
univariate encoding for each quantity, but requires viewers to compare corresponding spatial
regions across the two maps.

== Bivariate color: corners

The corner encoding adapts the corners model described by Strode et al.
@strode2019operationalizing, using the TeulingFig3 four-corner, two-dimensional color legend
@teuling2011bivariate to jointly represent signal and SE.

The corners model is intended for analyses that emphasize extreme combinations of two
variables while de-emphasizing intermediate values @strode2019operationalizing. This makes
it suitable for our study tasks, in which viewers must locate and compare regions combining
strongly positive or negative voltage with low or high uncertainty. Strode et al. add two
cautions @strode2019operationalizing. First, readers of a corners map may need to look at
the legend more often. Second, the authors could not build a $4 times 4$ palette with
clearly distinct colors, so they used a $3 times 3$ grid. Our $5 times 5$ grid therefore
makes the colors harder to tell apart.

We selected this palette because Bernard et al. rated it in the top category for elementary
localization and identification (ER1), equal visual importance (ER2), and elementary
comparison (ER3) in their task-based evaluation @bernard2015colormaps. This rating holds for
black backgrounds. On white backgrounds, they did not rate it as suitable for ER1 and ER3.
Our stimuli used a white background, as most EEG publications do. We expect the background
to matter little here: inside a filled topoplot, most colors border other colors, and the
background touches only the outer rim of the head. Its corners use distinct hues so that the
four joint extrema can be identified and compared. We further adjusted the palette to
improve separation between neighboring combinations, following the broader warning that
blue--violet mixtures in bivariate maps can be difficult to distinguish
@strode2019operationalizing. Hatched legend cells mark combinations absent from the
displayed topoplot.

== Bivariate color: range

The range encoding adapts the range model described by Strode et al.
@strode2019operationalizing while retaining the familiar cool-to-warm diverging organization
of conventional EEG/ERP topoplots.

The range model is intended for analyses in which viewers examine the range of one variable
within levels or categories of another @strode2019operationalizing. In our application, it
supports assessing how SE varies within regions of positive or negative voltage while
preserving the spatial signal pattern needed for comparison.

Voltage is represented along a diverging color dimension, with cool and warm hues indicating
opposite polarities. SE is encoded along the second dimension by progressively increasing
lightness and decreasing chroma while approximately preserving the hue associated with each
voltage level. Consequently, regions with greater uncertainty appear lighter and less
saturated, while the underlying color identity of the voltage remains recognizable. As in
the corners design, hatched legend cells indicate color combinations absent from the
displayed topoplot.

== Interval-based representation

The interval-based condition uses three adjacent maps showing the estimated mean, the mean
minus one SE, and the mean plus one SE. In our implementation, the bounds indicate
$plus.minus$ one SE rather than a 95% confidence interval. Viewers compare the spatial
voltage distribution across the three maps: larger differences indicate greater SE, while
smaller differences indicate more precise estimates.

This visualization has precedents in both EEG and fMRI. For EEG, the R package `diegr`
provides a `plot_topo_mean()` function that uses adjacent topographic maps of the mean and
its lower and upper confidence bounds @gerslova2026diegr. For fMRI, Engel and Burton
proposed an analogous three-map representation showing an estimated activation map together
with its lower and upper confidence bounds @engel2013confidence.


== Uncertainty markers

The uncertainty-marker design overlays spatial markers on the voltage topoplot and maps SE
to marker size. Larger markers indicate higher SE and smaller markers indicate lower SE.
This separates the visual channels used for the two quantities: color represents the
estimated signal, while size represents uncertainty.

Marker size is an established visual channel for quantitative uncertainty
@maceachren1992visualizing @brodlie2012review. We included this condition to examine how an
added size encoding affects reading of the underlying voltage pattern and its uncertainty.

== Hypothetical outcome animation

This condition adapts the hypothetical-outcome approach of Hullman et al. to spatial EEG/ERP
data @hullman2015hypothetical. We generated a finite sequence of plausible topoplots from
the estimated signal and its SE and displayed them as an animation with a stable visual
mapping across frames. Each frame depicts one hypothetical outcome, not a successive point
in time. Regions that remain visually similar across frames are comparatively stable,
whereas regions that vary strongly indicate greater uncertainty.

= Quantitative User Study

Following Lam et al.'s evaluation framework @lam2012seven, the formative interviews
(@sec:formative) addressed environments and work practices, and this study addressed user
performance and user experience. Following design-study guidance @sedlmair2012design, we
consulted experts before fixing the designs (PF-1), compared six alternatives instead of
committing to one (PF-20), kept the conventional topoplot as the baseline (PF-15), and did
not treat preference alone as evidence of effectiveness (PF-26).

== Research Questions

The quantitative study addressed three research questions:

#emph[RQ1. Pattern comparison:] To what extent do uncertainty visualizations preserve the
ability to recognize the underlying spatial pattern in an EEG/ERP topoplot?

#emph[RQ2. Uncertainty integration:] How well can users integrate the estimated signal and
its uncertainty to identify spatial regions with a high signal-to-noise ratio, and how does
performance depend on the visualization technique?

#emph[RQ3. Subjective evaluation:] How do users subjectively evaluate the different
approaches to visualizing uncertainty in EEG/ERP topoplots?

== Participants

We recruited participants with experience in EEG/ERP research or analysis. The study
targeted researchers and students familiar with EEG/ERP data and topographic visualizations.
Participation was voluntary.

// Numbers come from numbers.json, written by the analysis pages when they render
// (write_manuscript_numbers() in scripts/analysis_setup.R); do not type them here.
#let num = json("numbers.json")
#let ns = num.sample
#let nq = num.quality
#let nr = num.subjective
#let nt = num.task1
#let n2 = num.task2
#let nh = num.hit_miss
#let ntm = num.time
#let nf = num.feedback
#assert(
  ns.n_participants == nq.n_participants and ns.n_participants == nr.n_participants
    and ns.n_participants == nt.n_participants and ns.n_participants == n2.n_participants
    and ns.n_participants == nh.n_participants and ns.n_participants == ntm.n_participants
    and ns.n_participants == nf.n_participants_total,
  message: "numbers.json sections come from different samples; re-render the pages",
)
#assert(ns.n_country_missing == 0, message: "Some country answers are missing; update the Participants text")

A total of #ns.n_participants participants were included in the quantitative analysis.
Country-of-work percentages were calculated from #ns.n_country_valid valid responses:
#ns.n_country_refused_word participants selected "Prefer not to say," and
#ns.n_country_occupation_word entered occupations rather than countries. #emph[TODO: Add
remaining demographics, EEG experience, and exclusion criteria.]

We screened for careless responding with two checks that were not preregistered: unusually
fast completion (relative speed index above #nq.speed_cutoff @leiner2019too;
#nq.n_speeders_word participants) and the same rating on all #nq.n_rating_items rating items
(#nq.n_straight_liners_word participants). We kept all participants and repeated the rating
analyses without the #nq.n_flagged_word flagged ones; #if nr.quality_n_changed == 0 [no
conclusion changed] else [#nr.quality_n_changed of #nr.quality_n_contrasts comparisons
changed] (Section 1.1 and Table S4 of the supplementary material).

// TODO: Report ethics approval or exemption and informed-consent procedures.

== Stimuli

We used three characteristic ERP topographic patterns: mismatch negativity (MMN), P3, and
N170 @kappenman2021erp. For each pattern, we prepared a pool of ten pattern variations, from
which individual stimuli were selected during the experiment. Some single-participant MMN
and N170 variations look alike, which made a few Task 1 items hard (Section 1.1.2 and Table
S5 of the supplementary material).

The patterns were displayed using seven visualization conditions: a basic topoplot and six
uncertainty visualizations selected from the design pool described above. Each visualization
technique was combined with each of the three ERP patterns, forming a $7 times 3$
within-participant design.

All visualization types were implemented in Julia using Makie @danisch2021makie. We used
this implementation to render the static plots and hypothetical-outcome animations presented
as stimuli in the online survey.

== Tasks

=== Task 1: Pattern comparison

Task 1 tested whether adding uncertainty information interfered with recognition of the
underlying spatial pattern. In each trial, participants saw a target ERP pattern and two
alternative topoplots and selected the alternative that matched the target most closely. One
alternative belonged to the same ERP-pattern class as the target, whereas the other was
drawn from one of the two remaining classes.

Each visualization technique was shown once with MMN, P3, and N170, resulting in 21 trials.
Each trial was shown on a separate page, and trial order was randomized for each
participant. For each trial, the correct and distractor pattern variations were sampled from
their respective stimulus pools. The distractor class was randomly selected from the two
non-target classes. The position of the correct response alternated between the first and
second alternative across the predefined trials.

=== Task 2: Uncertainty integration

Task 2 tested whether participants could combine information about the estimated voltage and
its uncertainty to identify a relevant spatial region. On each trial, participants saw one
topographic visualization and were asked to select the region with the highest
signal-to-noise ratio (SNR), defined in the study as

$ "SNR" = abs("Voltage" / "Standard Error"). $

Responses were collected using a separate 64-region selectable scalp layout displayed next
to the stimulus. We constructed this layout as a fixed SVG representation of the scalp
divided into 64 individually selectable polygonal regions, labelled internally from R01 to
R64. The polygon layer was aligned with a scalp-montage reference, and the same spatial
layout was used for every trial. Participants selected one region by clicking directly on
the corresponding polygon.

As in Task 1, the complete design contained each combination of the seven visualization
techniques and three ERP patterns, giving 21 trials, each presented on a separate page. For
each ERP pattern, seven distinct variations were randomly selected from its pool and
assigned across the seven visualization techniques. Trial order was randomized for each
participant. The interfaces for both tasks are shown in @fig:task-examples.

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    [
      #align(center)[*Task 1: Pattern comparison*]
      #align(center)[#image("figures/example_task1_cropped.pdf", height: 5cm)]
    ],
    [
      #align(center)[*Task 2: Uncertainty integration*]
      #align(center)[#image("figures/example_task2_cropped.pdf", height: 5cm)]
    ],
  ),
  caption: [Examples of the two objective tasks: (a) selecting the topoplot that shows the same dominant neural generator as the target, and (b) integrating voltage and standard error information while selecting a region on the 64-region grid.],
  placement: top,
  scope: "parent",
) <fig:task-examples>

=== Task 3: Subjective evaluation

Participants rated each of the seven visualization techniques on four 5-point items. Two
items asked how helpful the visualization was, from "very unhelpful" to "very helpful": for
comparing spatial patterns and for detecting relevant spatial regions. One item asked how
likely participants were to use it, from "very unlikely" to "very likely": "I would prefer
to use this visualization for representing signal mean and standard error in a publication
or presentation." The last item asked how visually appealing it was, from "very unappealing"
to "very appealing." The comparison item was asked directly after Task 1; the other three
were asked after Task 2. Within each item the visualizations were listed in the same order
for all participants, with the basic topoplot last.

== Procedure

The study was conducted online. Before beginning the study, participants were informed about
data anonymisation, public data sharing, voluntary participation, and their right to
withdraw, and provided informed consent. Participants then answered background questions
concerning their experience with EEG/ERP analysis.

Participants then received an explanation of the visualization techniques, completed Task 1
(pattern comparison), and rated how helpful each visualization was for comparing spatial
patterns. They next received instructions for Task 2 (uncertainty integration), completed
its randomized trials, and gave the remaining three ratings of Task 3 (detection, likelihood
of use, and visual appeal).

At the end, participants were asked to leave feedback about each plot type. The task was:
"Do you have any comments about the visualisations shown below? For example, please explain
why you liked or disliked a particular visualisation, or why you found it helpful or
unhelpful."

== Measures

_Accuracy (Task 1)._ A trial was correct when the selected alternative showed the same ERP
pattern as the target.

_Detection score (Task 2)._ The score is the SNR of the selected region, rescaled within
each stimulus from 0 (weakest region) to 1 (strongest region). We also classified each
click. An _exact hit_ selects the peak region. A _neighbor hit_ selects a region that shares
a border with the peak region. A _runner-up hit_ selects one of the four next-strongest
regions; a runner-up can also be a neighbor.

_Completion time._ We recorded the time spent on each trial page. Pages that took longer
than 3 minutes were excluded.

_Ratings (Task 3)._ The four 5-point items described above.

_Open-ended feedback._ The coded meaning units (@sec:content-analysis). For each
participant, visualization and theme, we took the median evaluation intensity; we call this
an _entry_.

== Statistical Analysis

We analyzed each outcome with a mixed-effects model. Visualization type was the predictor of
interest. The models of accuracy, detection score and hits also included the ERP pattern and
the trial position. Every model had a random intercept for each participant. The Task 1
model added random intercepts for the target and the distractor stimulus. The Task 2 models
added random intercepts for the stimulus and for each image, that is, a stimulus shown with
one visualization. About 15 participants saw each image, so their answers are not
independent.

Accuracy and the hit outcomes used logistic models. The detection score used an ordered beta
model, which allows scores of exactly 0 and 1. Completion time used a linear model of log
time with trial position, so we report ratios of geometric means. Ratings used cumulative
link models.

We tested visualization type with a likelihood-ratio test against the same model without it.
We then compared each visualization with the basic topoplot and adjusted for the six
comparisons (Dunnett). When the overall test was not significant, we treat single
comparisons as exploratory. Accuracy, scores and hit rates are averaged over participants,
stimuli and images. Ratings are expected values for a typical participant on the 1--5 scale.

The centre-bias analysis was exploratory. A quasi-Poisson model of the clicks per region,
with one intercept per stimulus and visualization, asked whether regions on the edge of the
head were chosen less often than their score predicts.

Sensitivity analyses and model checks are reported in the supplement. All analyses were run
in R @rcoreteam2026r with lme4 @bates2015lme4, glmmTMB @brooks2017glmmtmb, ordinal
@christensen2026ordinal and emmeans @lenth2026emmeans.

== Open-ended Feedback Content Analysis <sec:content-analysis>

Responses to the open-ended feedback question were coded with large language model
assistance (GPT-5.6 Sol @openai2026gpt56sol and Claude Opus 5.5 @anthropic2026opus55),
following one fixed prompt with coding rules and a codebook, archived with the study
materials. The models divided responses into evaluative meaning units, retaining
participants' wording. Each unit was assigned to the visualization it evaluated (or to each
of several visualizations, if it evaluated them together), one primary theme from the
codebook, and an evaluation intensity from -2 (strongly negative) to +2 (strongly positive).
For example, the meaning unit "couldn't distinguish colors mapping from legend to scalp" was
assigned to "Bivariate corner", coded under "Legend/color mapping", and given an evaluation
intensity of -2. Missing, blank, and non-substantive responses were excluded. All codes were
then checked for compliance with the coding rules, and units that violated a rule were
recoded (13 of 274).

= Results

// Every number below comes from numbers.json (written by the analysis pages). The
// asserts stop the build when new data would make a sentence wrong.
#assert(
  nt.comparison.all(c => c.p_all.starts-with("1") or float("0" + c.p_all) >= 0.05),
  message: "A Task~1 contrast with Basic is now below .05; update Task Performance",
)
#assert(
  not n2.overall_significant and n2.n_contrasts_significant == 0,
  message: "A Task~2 detection-score test is now significant; update Task Performance",
)
#assert(
  not (nh.overall_hit.significant or nh.overall_neighbour.significant
    or nh.overall_runner.significant),
  message: "A hit-or-miss overall test is now significant; update Task Performance",
)
#let nh-adj = nh.clear_contrasts.at(0, default: none)
#assert(
  nh.clear_contrasts.len() == 1 and nh-adj.outcome == "Hit"
    and nh-adj.vistype == "Adjacent plots" and nh-adj.higher,
  message: "The clear hit-or-miss contrasts changed; update Task Performance",
)
#let nc = nh.centre
#assert(
  nc.ratio_below_one and nc.all_vistypes_below_one,
  message: "The centre bias no longer holds for all visualizations; update Centre Bias",
)
#assert(
  ntm.task1.all_slower and ntm.task2.all_slower and ntm.task1.slowest == "Bivariate corner"
    and ntm.task2.slowest == "Bivariate corner",
  message: "Completion-time results changed; update Completion Time",
)
#let rating-set(item, higher) = nr.items.at(item).clear.filter(c => c.higher == higher).map(c => c.vistype).sorted()
#let rating(item, vis) = nr.items.at(item).clear.find(c => c.vistype == vis).difference
#assert(
  rating-set("A302", true).len() == 6 and nr.items.A302.n_lower == 0
    and rating-set("A301", false) == ("Bivariate corner", "Bivariate range", "Uncertainty markers")
    and nr.items.A301.n_higher == 0
    and rating-set("A303", true) == ("Adjacent plots", "Confidence intervals")
    and nr.items.A303.n_lower == 0
    and rating-set("A304", true) == ("Adjacent plots", "Animation")
    and rating-set("A304", false) == ("Bivariate corner", "Bivariate range", "Uncertainty markers"),
  message: "Rating contrasts changed; update Subjective Evaluation",
)
#let fdir(vis) = nf.direction.find(r => r.vistype == vis)
#let fcell(key) = nf.cells.at(key)
#assert(
  fdir("Adjacent plots").direction == "mostly positive"
    and fdir("Confidence intervals").direction == "mostly positive"
    and fdir("Uncertainty markers").direction == "mixed"
    and fdir("Animation").direction == "mixed"
    and fdir("Bivariate corner").direction == "mostly negative"
    and fcell("Interpretability | Bivariate corner").positive == 0
    and fcell("Interpretability | Adjacent plots").positive == fcell("Interpretability | Adjacent plots").n
    and fcell("Interpretability | Animation").negative > 0
    and fcell("Interpretability | Animation").at_plus2 > 0,
  message: "Feedback directions or cells changed; update Qualitative Feedback",
)

== Task Performance

The seven visualizations performed similarly in both tasks (@fig:performance).

In Task~1, the overall test of visualization type was borderline ($chi^2 (#nt.overall_df) =
#nt.overall_chi$, _p_~=~#nt.overall_p_all). No comparison with the basic topoplot was
significant.

In Task~2, the overall test on the detection score was not significant ($chi^2
(#n2.overall_df) = #n2.overall_chi$, _p_~=~#n2.overall_p), and no comparison with the basic
topoplot was. Expected scores ranged from #n2.score_lowest for
#lower(n2.score_lowest_vistype) to
#n2.score_highest for #lower(n2.score_highest_vistype)\; the basic topoplot reached #n2.score_basic.

Exact hits were rare for every visualization (#nh.hit_min to #nh.hit_max), although far
above chance (#nh.hit_chance). The overall test was not significant ($chi^2
(#nh.overall_hit.df) =
#nh.overall_hit.chi$, _p_~=~#nh.overall_hit.p). Counting neighbor hits or runner-up hits did
not change this (_p_~=~#nh.overall_neighbour.p and _p_~=~#nh.overall_runner.p). One
comparison remained below .05 after adjustment: adjacent plots yielded more exact hits than
the basic topoplot (odds ratio #nh-adj.odds_ratio, 95% CI #(nh-adj.lower)--#(nh-adj.upper),
_p_~=~#nh-adj.p). Because the overall test was not significant, we treat it as exploratory.
The stimulus mattered more than the visualization: hit rates ranged from
#nh.stimulus_hit_min to #nh.stimulus_hit_max across stimuli.

#figure(
  grid(
    columns: (1fr, 1fr),
    gutter: 10pt,
    [(a) Task~1 #image("figures/comparison_accuracy_contrast_figure.pdf", width: 100%)],
    [(b) Task~2 #image("figures/detection_score_contrast_figure.pdf", width: 100%)],
  ),
  caption: [Difference from the basic topoplot in accuracy (a, Task~1) and in expected
    detection score (b, Task~2), in percentage points, averaged over participants and
    stimuli. Bars: Dunnett-adjusted 95% confidence intervals for the six comparisons.
    Dashed line: no difference.],
  placement: top,
  scope: "parent",
) <fig:performance>

== Additional Finding: Centre Bias <sec:centre-bias>

Participants avoided the edge of the head (@fig:centre-bias). In #nc.peak_border_stimuli of
the #nc.n_stimuli stimuli, the peak lay on the border of the head. Yet border regions
received only #nc.border_click_share of the clicks, about their share of the grid
(#nc.border_region_share). For regions with the same score, a border region received
#nc.ratio times as many clicks as an interior one (95% CI #(nc.lower)--#(nc.upper)). Every
visualization showed this bias, from #nc.vistype_min for #lower(nc.vistype_min_name) to
#nc.vistype_max for #lower(nc.vistype_max_name). This centre bias likely explains much of why exact
hits were rare.

#figure(
  image("figures/centre_bias_head_map.pdf", width: 100%),
  caption: [Clicks on each region relative to what its score predicts, pooled over all
    stimuli and visualizations. Green: chosen more often than the score predicts; brown:
    less often.],
  placement: auto,
) <fig:centre-bias>

== Completion Time

Every uncertainty visualization took longer than the basic topoplot (@fig:time). The basic
topoplot took #ntm.task1.basic_time s per trial in Task~1 and #ntm.task2.basic_time s in
Task~2 . The other visualizations took #ntm.task1.longer_min to #ntm.task1.longer_max longer
in Task~1
 and #ntm.task2.longer_min to #ntm.task2.longer_max longer in Task~2. Bivariate corner was
the slowest in both tasks (#sym.times#ntm.task1.slowest_ratio and
#sym.times#ntm.task2.slowest_ratio).

#figure(
  image("figures/time_ratio_figure.pdf", width: 100%),
  caption: [Ratio of each visualization's geometric mean completion time to the basic
    topoplot in Task~1 (left) and Task~2 (right). Bars: Dunnett-adjusted 95% confidence
    intervals. Dashed line: no difference.],
  placement: top,
  scope: "parent",
) <fig:time>

== Subjective Evaluation

Ratings differed much more than performance (@fig:ratings). All six uncertainty
visualizations were rated more helpful for detection than the basic topoplot (from
#nr.items.A302.clear.last().difference to #nr.items.A302.clear.first().difference points on
the 1--5 scale). For comparison, however, the two bivariate maps and uncertainty markers
were rated less helpful (corner #rating("A301", "Bivariate corner"), range
#rating("A301", "Bivariate range"), markers #rating("A301", "Uncertainty markers")).

Only adjacent plots (#rating("A303", "Adjacent plots")) and confidence intervals
(#rating("A303", "Confidence intervals")) were more likely to be used in a publication.
Adjacent plots (#rating("A304", "Adjacent plots")) and animation
(#rating("A304", "Animation")) were rated more appealing. Uncertainty markers
(#rating("A304", "Uncertainty markers")) and both bivariate maps (corner
#rating("A304", "Bivariate corner"), range #rating("A304", "Bivariate range")) were rated
less appealing.

#figure(
  image("figures/likert_contrast_figure.pdf", width: 100%),
  caption: [Difference in expected rating from the basic topoplot for each item.
    Dunnett-adjusted 95% confidence intervals; filled points: the interval excludes zero.],
  placement: top,
  scope: "parent",
) <fig:ratings>

== Qualitative Feedback

#nf.n_participants_coded of #nf.n_participants_total participants commented on the
visualizations (@fig:feedback). Comments were mostly positive for adjacent plots
(#fdir("Adjacent plots").positive positive and #fdir("Adjacent plots").negative negative
entries) and confidence intervals (#fdir("Confidence intervals").positive and
#fdir("Confidence intervals").negative). They were mixed for uncertainty markers
(#fdir("Uncertainty markers").positive and #fdir("Uncertainty markers").negative) and
animation (#fdir("Animation").positive and #fdir("Animation").negative), and mostly negative
for bivariate corner (#fdir("Bivariate corner").positive and
#fdir("Bivariate corner").negative).

Some judgments were nearly unanimous. Of the #fcell("Interpretability | Bivariate corner").n
participants who discussed how interpretable bivariate corner is,
#fcell("Interpretability | Bivariate corner").at_minus2 gave the strongest negative rating.
All #fcell("Interpretability | Adjacent plots").n who discussed the interpretability of
adjacent plots were positive. Animation split opinion: on interpretability,
#fcell("Interpretability | Animation").negative participants were negative and
#fcell("Interpretability | Animation").at_plus2 strongly positive.

#figure(
  image("figures/a305_intensity_distribution_figure.pdf", width: 100%),
  caption: [Open-ended comments by theme and visualization. Each dot is one participant, in
    the row of their median evaluation intensity (+2 at the top, −2 at the bottom); cell
    colour is the median across participants.],
  placement: top,
  scope: "parent",
) <fig:feedback>

= Discussion

== Uncertainty Kept the Pattern Readable but Did Not Help Integration

None of the six uncertainty visualizations measurably impaired pattern comparison. Adding
uncertainty to a topoplot therefore need not break the map that EEG researchers know how to
read. However, no design clearly helped participants find the region with the strongest
signal either. We see three likely reasons. First, participants avoided the edge of the
head, where #nc.peak_border_stimuli of the #nc.n_stimuli peaks lay (@sec:centre-bias).
Second, some participants may have looked for the voltage peak rather than the SNR peak: for
#n2.p3_low_modal_n of #n2.p3_n P3 stimuli, the most chosen region ranked only
#n2.p3_rank_min to #n2.p3_rank_max by score. Third, participants are practised at reading
plain topoplots and had little time to learn the new designs.

Uncertainty did cost time: every design was slower than the basic topoplot, by up to
#ntm.task2.longer_max. Uncertainty displays are therefore most useful where uncertainty can
change a decision.

== Preferences Diverged from Performance

Ratings and comments differed much more than performance. Designs that keep the familiar
voltage map intact, adjacent plots and confidence intervals, were preferred. Designs that
change its colors or cover it, the bivariate maps and uncertainty markers, were rated less
helpful for comparison and less appealing. Since accuracy hardly differed, these preferences
likely reflect familiarity, reading effort and legend complexity. They still matter: a
display that researchers find hard to read is unlikely to be used. Animation divided
participants, and its value depends on the medium.

== Reading the Edge of a Topoplot

The centre bias suggests that EEG researchers discount maxima at the rim of a topoplot. This
may be sensible, because values there are extrapolated beyond the outermost electrodes.
Designs could make this explicit, for example by marking the extrapolated area. Future
studies of topoplot reading should balance target positions between the centre and the rim.

== Recommendations

@tab:recommendations summarizes when to use each design. Because performance hardly
differed, the recommendations rest mainly on completion time, ratings and comments. Two
general rules follow: keep the familiar voltage map intact, and do not mix uncertainty into
the voltage color scale.

#figure(
  {
  set text(size: 8pt)
  set par(justify: false)
  table(
    columns: (auto, 1fr, 1fr),
    align: left,
    stroke: none,
    inset: (x: 3pt, y: 2pt),
    table.hline(),
    table.header([*Design*], [*Recommended use*], [*Main drawback*]),
    table.hline(stroke: 0.5pt),
    [Basic topoplot], [Uncertainty shown elsewhere; quick pattern comparison], [Shows no uncertainty],
    [Adjacent plots], [Default for papers and reports], [Slower; two maps to compare],
    [Bivariate corner], [Not recommended], [Hardest to read; slowest],
    [Bivariate range], [Only when a single map is required], [Less helpful for comparison],
    [Uncertainty markers], [Exploring where effects are reliable], [Least appealing; markers cover the map],
    [Confidence intervals], [When the range of plausible maps matters], [Three maps; state that bounds are ±1 SE],
    [Animation], [Talks, web pages and teaching], [Unsuited to print; divides opinion],
    table.hline(),
  )
  },
  kind: table,
  caption: [When to use each design. These recommendations are interpretations of the
    completion times, ratings and comments.],
  placement: auto,
) <tab:recommendations>

= Limitations

_Setting._ Participants were a self-selected online sample and used their own screens, so
display size and color rendering varied. The tasks were controlled and do not reproduce full
EEG/ERP analysis workflows, so the study is not a real-world case study @sedlmair2012design
(PF-25). Participants also saw each design only briefly and without training. Performance
after practice may differ.

_Stimuli._ The stimuli were #nc.n_stimuli sampled ERP topographies, ten per pattern. The
conclusions generalize to new stimuli only as far as these represent the topographies that
researchers encounter. Most peaks lay on the rim of the head (@sec:centre-bias), which
limits the hit rates.

_Ratings._ The visualizations were listed in the same order in every rating item, with the
basic topoplot last. Position effects therefore cannot be separated from differences between
designs, and this affects the basic topoplot, the reference for all comparisons. The
comparison item was also asked after Task~1, the other three after Task~2.

_Corner palette._ Bernard et al. rated the palette for black backgrounds, whereas our
stimuli used a white one. We expect little effect, because the background touches only the
rim of the head, but we cannot rule it out.

_Feedback coding._ The comments were coded with language-model assistance and checked
against the coding rules, but not yet coded by a second human coder. We therefore report no
agreement statistic.

_Exploratory analyses._ The centre-bias analysis was not planned. It should be confirmed
with stimuli whose peaks are balanced between the centre and the rim.

= Conclusion

[TODO: Conclusion]

// References are generated automatically from refs.bib by the journal template.
// TODO: Add and cite all manuscript references.

// TODO: Add funding and acknowledgments statement.
// TODO: Add data and code availability statement.
// TODO: Add an AI-use disclosure if required by IEEE or the venue.
// TODO: Describe and cite the separate supplementary material where relevant.
