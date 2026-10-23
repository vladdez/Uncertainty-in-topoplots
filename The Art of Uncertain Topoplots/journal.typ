#import "@preview/ieee-vgtc:0.0.4": journal

// TVCG regular-paper target: no more than 12 double-column pages,
// including references.
#show: journal.with(
  // Set review to true when preparing an anonymized submission.
  review: false,
  submission-id: 0000,
  category: "Regular Paper",
  title: [The Art of Uncertain Topoplots: Designing and Evaluating Uncertainty Visualizations for EEG/ERP Data],
  abstract: [TODO: Abstract],
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

Scientific estimates are often accompanied by uncertainty, 
but representing uncertainty for spatial and multivariate data is challenging task. 
For individual estimates and curves,
familiar techniques such as error bars and confidence bands provide relatively direct ways
to communicate uncertainty @wilke2019fundamentals. But in spatial visualizations the 
estimated signal and its uncertainty vary across space
and need to be shown at the same time.

EEG/ERP topographic plots are a useful case for studying this problem. EEG measures
electrical potentials at electrodes distributed across the scalp. 
ERP or event-related potentials are averaged and time-locked EEG trials.
A topographic plot or *topoplot* is a figure with ERP over a two-dimensional representation of
the head, often interpolated. Colour usually represents the sign and magnitude of the
estimated voltage, allowing researchers to inspect the spatial distribution of
signals. Topoplots are also one of the most familiar visualization types in the EEG/ERP
community. In our previous survey of 213 M/EEG researchers, 52% of respondents reported
having previously created topoplots. This is the second results after conventional ERP waveforms
(61%) @mikheev2024art. 

Conventional topoplots generally show the estimated voltage
without an accompanying measure of its precision. There is no established visual
convention for integrating uncertainty into these maps. Although there are some software solutions for representation of 
uncertaint in EEG visualization @gerslova2026diegr. 

Showing uncertainty could help
researchers distinguish regions with relatively stable estimates from regions with
larger variability and provide a visual impression of the local
signal-to-noise structure. On the other hand, adding another visual variable to an already
familiar spatial representation may hinder the perception of the underlying ERP pattern.
This creates a broader visualization question: #strong[how can uncertainty be added to an
established spatial visualization while preserving the primary signal that users already
know how to read?]. This difficulty is reflected by @allen2012data: they reviewed 1,451 figures 
from six neuroscience journals, finding that uncertainty was particularly underrepresented 
in visualizations of data with more than three features, with only 20% indicating uncertainty.

Before the quantitative evaluation, we conducted qualitative interviews with nine EEG/ERP
experts to understand how topoplots are used in practice, how researchers think about
uncertainty, and what they expect from an uncertainty-aware representation. The
interviewed researchers valued uncertainty representation on topoplots but reported a
lack of clear conventions or guidance for doing so. These findings helped us formulate the
research gap, select the visualization approaches, and design the later experimental
tasks.

Building on prior uncertainty-visualization work and our qualitative interviews with
EEG/ERP experts, we created several uncertainty representations and compared them with the
conventional topoplot in a user study. We tested whether showing uncertainty changes
participants' ability to recognize the underlying spatial ERP pattern, how well different
representations support judgments that require combining signal and uncertainty, and how
participants experience and interpret the different designs. The study combines formative
expert interviews, controlled performance evaluation, subjective ratings, and open-ended
qualitative explanations of participants' judgments and decisions.

To our knowledge, this is the first systematic study to compare multiple
uncertainty-visualization strategies for EEG/ERP topoplots in a controlled user study.
While uncertainty has occasionally been represented in EEG visualization, there is no
established practice for integrating it into scalp topographies, and the relative
effectiveness of alternative representations has not been systematically evaluated.

Our contributions are fourfold. First, we report qualitative insights from EEG/ERP experts
on current topoplot practices and the challenges of communicating uncertainty in them.
Second, we created a design pool of uncertainty
representations for EEG/ERP topoplots. Third, we provide empirical evidence of how
different plot types affect participants’ ability to interpret the underlying spatial
ERP pattern and make judgments that combine signal and uncertainty. 
This is complemented by participants’ subjective ratings and qualitative 
feedback explaining their preferences and interpretation difficulties. Finally, we
derive practical recommendations for the usage of uncertainty-aware EEG/ERP topoplots.

= Related Work

== Uncertainty Visualization in Scientific and Spatial Data

Research on visualizing uncertainty in spatial data extends back several decades. An
early contribution is MacEachren's 1992 discussion of cartographic symbols and interfaces
for communicating uncertainty during exploratory analysis @maceachren1992visualizing.
By 2009, Sanyal et al. had published a controlled comparison of uncertainty encodings for
one- and two-dimensional datasets @sanyal2009user. In 2012, Brodlie et al. reviewed
uncertainty visualization across a broader range of scientific applications
@brodlie2012review. These works illustrate both the development of representations and
efforts to evaluate their interpretation.

Subsequent contributions refined the characterization and communication of uncertainty.
Hullman et al. introduced hypothetical outcome plots in 2015
@hullman2015hypothetical, and Correll et al. presented Value-Suppressing Uncertainty
Palettes in 2018 @correll2018task. More recent work continues to investigate these
questions in specific scientific domains, including Sterzik et al.'s 2025 evaluation of
biomolecular uncertainty visualizations @sterzik2025. These examples show sustained
interest in both representation design and empirical evaluation across scientific domains.

Across this literature, representations differ in whether viewers encounter numerical
uncertainty summaries, intervals, or possible outcomes @wilke2019fundamentals. The
following subsections examine reporting practices, encoding choices, and the evidence
about their use before considering the remaining gap in EEG/ERP visualization.

== Uncertainty Is Often Missing from Scientific Reporting and Visualization

Uncertainty is routinely omitted or incompletely communicated across scientific
domains. Boukhelifa and Duke describe a persistent divide between the recognized
importance of uncertainty in visualization research and its limited adoption in
practice @boukhelifa2009uncertainty. Similarly, Hullman's survey of visualization
authors found that, although authors generally acknowledged the value of communicating
uncertainty, direct uncertainty depiction was routinely omitted @hullman2020why.
@tab:uncertainty-reporting summarizes this observation with evidence from neuroscience,
ecosystem science, geospatial mapping, and visualization software.

#figure(
  table(
    columns: (1.1fr, 1.4fr, 1.8fr, 3fr),
    inset: 5pt,
    align: (left, left, left, left),
    table.header([*Field*], [*Study*], [*Data sources*], [*Main finding*]),
    [Neuroscience],
    [Allen et al. @allen2012data],
    [288 articles; 1,451 figures],
    [Only about 20% of visualisations with three features represented uncertainty.#footnote[In Allen et al.'s terminology, three-dimensional graphics represent three data
variables, which can be shown in a flat figure using two axes and colour; the term does
not necessarily imply a 3D spatial rendering @allen2012data.]],
    [Ecosystem science],
    [Yanai et al. @yanai2021current],
    [132 articles],
    [Studies reported numerical estimates for only 42% of relevant uncertainty sources on average; 
    54% of studies reported such estimates for fewer than half.],,
    [Geospatial / public-health mapping],
    [Jain et al. @jain2026communicating],
    [66 articles containing maps of climate-related infectious diseases
    in the Asia-Pacific region],
    [Only 3 of 66 studies (4.5%) visually integrated uncertainty into their maps;
    26 studies (39%) did not report uncertainty at all.],
    [Visualization software],
    [Petek et al. @petek2026general],
    [5 visualization tools (Matplotlib, ggplot2, ggdist, Seaborn, and ggdibbler);
    18 example uncertainty-visualization scenarios],
    [In 13 of 18 scenarios (72%), all five tools required users to quantify
    uncertainty and construct its visual encoding manually.],
  ),
  caption: [Representative evidence of incomplete uncertainty reporting and
    visualization across scientific domains and limited software support.],
  kind: table,
  placement: top,
  scope: "parent",
) <tab:uncertainty-reporting>

Limited software support is one practical reason why uncertainty visualizations may
remain uncommon. Although many uncertainty visualization techniques have been
proposed, they are not necessarily available as standard functionality in commonly
used visualization systems. Petek et al. compared five visualization tools across
18 example uncertainty visualizations and found that, for 13 of these examples, all
five tools required users to quantify uncertainty themselves and implement its visual
encoding through custom plotting code, rather than relying on dedicated
uncertainty-visualization functionality (their Table 3) @petek2026general.

This software gap has been reported across multiple visualization ecosystems and
application domains. These observations were not based on reported
systematic audits of software packages, but together they indicate a recurring gap
between uncertainty-visualization research and routinely available software
functionality. Kay notes that support for uncertainty visualization in existing
Grammar-of-Graphics implementations remains largely limited to conventional
representations such as error bars, uncertainty bands, and density plots, while many
techniques proposed in visualization research remain difficult to construct
@kay2024ggdist. In geospatial visualization, Koo et al. identify a lack of
uncertainty-visualization tools in standard GIS environments and implement dedicated
uncertainty encodings as an ArcGIS extension @koo2018geovisualizing. Earlier work in
GIS likewise observed that, despite a broad conceptual literature on uncertainty
visualization, implemented tools and pilot projects remained rare
@kubicek2011thematic. In medical visualization, Gillmann et al. further reported
that, to their knowledge, no commercially available uncertainty-aware visualization
technique was available in medical workstations @gillmann2021uncertainty. 

== Visual Encodings for Spatial Uncertainty

Decades of research have produced various approaches to visualizing uncertainty in spatial data. 
Here, we focus on those relevant to our study.

*Bivariate colour maps* have a long history in cartography. They encode two quantities within
 a single spatial view using a two-dimensional colour legend @wainer1980colormaps @strode2019operationalizing. 
 The same principle can be applied to display an estimate together with its uncertainty, 
 although distinguishing the resulting colour combinations can be difficult @kaye2012mapping.
However, interpreting these maps can be challenging. Readers must match colours in the spatial display 
to their corresponding positions in a two-dimensional legend. Moreover, colour properties such as hue 
and saturation are not perceptually independent, making it difficult to distinguish some combinations 
of values and uncertainty @correll2018task. Bernard et al. @bernard2015colormaps showed that the suitability 
of a bivariate colour map depends on the task, such as identifying individual values or comparing different regions.

Multiple coordinated views place related quantities in separate displays
@brodlie2012review. For spatial data, aligned maps can preserve a separate encoding for
each quantity, while placing the burden of comparing corresponding locations on the
viewer. This differs from integrating both quantities within a single colour legend.

Glyphs, markers, texture, and opacity provide additional channels for spatial uncertainty
@maceachren1992visualizing @brodlie2012review. They can supplement an existing map, but
their visual prominence must be considered alongside that of the primary data. Sanyal et
al. included glyph size, glyph colour, and surface colour among the uncertainty encodings
they evaluated @sanyal2009user.

Interval-based representations summarize uncertainty using lower and upper bounds. These
may be displayed as bands around a curve or as separate maps of the bounds
@wilke2019fundamentals @gerslova2026diegr. Interpretation depends on which interval is
shown and on distinguishing uncertainty in an estimate from the spread of individual
observations.

Hypothetical outcome plots use animation to present samples from a modeled distribution
@hullman2015hypothetical. They communicate uncertainty through concrete possible outcomes,
requiring viewers to integrate information across successive frames. For spatial
applications, this provides a way to consider variation in entire patterns alongside
static summaries of uncertainty.

== Evaluating Uncertainty Visualizations

Controlled perceptual tasks allow researchers to isolate particular reading operations.
Sanyal et al. compared four uncertainty-visualization methods using search and counting
tasks on one- and two-dimensional datasets, finding that relative performance depended on
the task @sanyal2009user. Hullman et al. compared hypothetical outcome plots with error
bars and violin plots for judgments about the reliability of variable ordering
@hullman2015hypothetical. These studies illustrate why results should be interpreted in
relation to the operations that participants performed.

Correll et al. evaluated Value-Suppressing Uncertainty Palettes using an identification
task, measuring accuracy and response time when decoding value and uncertainty, and a
decision-making task requiring participants to integrate both quantities @correll2018task.
More recently, Sterzik et al. combined expert assessment with controlled perceptual
studies of biomolecular uncertainty visualizations. They examined whether uncertainty
encodings were interpreted intuitively, whether their mapping direction was understood as
intended, and how accurately participants could infer uncertainty values @sterzik2025.
These evaluations address complementary concerns: decoding an encoding correctly, doing so
efficiently, and using uncertainty in a judgment.

Performance and subjective experience are distinct evaluation targets @lam2012seven.
Subjective ratings can capture perceived usefulness, difficulty, or visual appeal, while
open-ended explanations can reveal which features participants relied on and where they
encountered confusion. Such accounts help interpret performance and preference, although
participant-reported explanations alone do not establish the mechanisms underlying
observed behaviour.

== Uncertainty in EEG/ERP Visualization

Uncertainty is commonly represented for one-dimensional ERP waveforms using standard
errors or confidence intervals, displayed as error bars or shaded bands @allen2012data
@kappenman2021erp @pernet2011limo. Statistical scalp maps and significance markers are
also familiar in EEG analysis. These indicate evidence from hypothesis tests, such as test
statistics or thresholded significance, and do not directly show uncertainty in the
estimated voltage itself @pernet2011limo.

LIMO EEG provides bootstrap confidence intervals for estimates at individual electrodes
and time points @pernet2011limo. Its published examples typically separate statistical
topographies from interval displays: scalp maps show test statistics, while waveforms for
selected electrodes show estimated responses or model coefficients with confidence
intervals (their Fig. 4). This supports inspecting statistical evidence across the scalp
and uncertainty in selected time courses.

The R package `diegr` provides a particularly relevant precedent @gerslova2026diegr. Its
`plot_topo_mean()` function displays three scalp maps corresponding to the lower
confidence bound, mean, and upper confidence bound. It therefore provides a direct example
of interval-based uncertainty visualization in EEG topographies. Neither the LIMO EEG
paper nor the `diegr` documentation reports a systematic perceptual or user evaluation
comparing alternative uncertainty encodings for EEG/ERP topoplots.

These individual implementations demonstrate prior use of uncertainty displays without
establishing a shared convention for EEG/ERP topoplots. Their relevance here concerns
uncertainty in estimated sensor-space voltage. Interpolation accuracy and confidence
regions for source-localization estimates concern different targets of uncertainty and do
not by themselves provide an encoding of voltage uncertainty alongside the scalp signal.

== Research Gap

The literature provides established uncertainty-visualization techniques and individual
EEG implementations, but little comparative evidence for EEG/ERP topoplots. To our
knowledge, the alternative strategies have not been systematically compared in a
controlled user study in this context, and no established visual convention guides their
use. The open question is which representations preserve the underlying spatial signal
while supporting uncertainty-aware judgments. Addressing this question requires evidence
about performance as well as participants' explanations of why they prefer particular
representations or struggle to interpret them.

= Formative Qualitative Study

Before adapting and quantitatively evaluating the uncertainty visualizations, we conducted
a formative qualitative study to understand how EEG/ERP researchers currently use
topoplots, how they conceptualize uncertainty, and which barriers they encounter when
communicating it in spatial EEG representations. The interviews also served to identify
relevant user tasks and requirements for the subsequent visualization design and
quantitative study.

== Participants

We conducted semi-structured interviews with nine participants with experience in EEG/ERP
research or clinical EEG. The sample covered different application contexts, including
fundamental neuroscience, brain-computer interface research, and clinical EEG practice.

== Interview Guide

We used a semi-structured interview guide consisting of 14 main questions. A shortened
version containing the main questions was provided to participants, while the interviewer
used an extended version containing optional probes.

The interview covered six main topics: participants' EEG/ERP background and visualization
practices; their understanding and current use of uncertainty; the purposes and audiences
for which they use topoplots; current and potential approaches to showing uncertainty on
topoplots; perceived value and barriers to uncertainty visualization; and requirements for
future topoplot tools.

Questions were deliberately open-ended, and the order and depth of follow-up questions
could vary depending on the participant's responses. The interviewer maintained a neutral
stance and did not suggest that uncertainty should or should not be visualized.

== Procedure and Transcription

The interviews lasted approximately 15--30 minutes and were audio-recorded. At the
beginning of each interview, participants explicitly consented to the recording, to public
sharing of an anonymized transcript for research purposes, and to the use of anonymized
quotations in publications.

Audio recordings were transcribed using Voice AI, the speech-to-text service provided
through the Academic Cloud/GWDG @gwdgVoiceAI. Transcripts were anonymized before analysis
and publication.

// TODO: Report ethics approval or exemption, as applicable.

== Analysis and Implications for the Visualization Design

The interviews were analyzed using a structured qualitative content-analysis approach.
Responses were first organized according to the interview questions and then compared
across participants to identify recurring practices, concerns, and requirements.

Participants saw value in communicating uncertainty, but rarely visualized spread-related
uncertainty directly on topoplots. They reported ambiguity about how to represent it,
limited support in the software they used, and a lack of clear conventions or guidance.
Together with the individual implementations described in the related work, these findings
motivate evaluating alternative representations and developing practical guidance for
communicating uncertainty spatially.

Participants' accounts referred both to variability or precision, such as standard
deviation or standard error, and to statistical evidence or signal reliability, such as
signal-to-noise ratios, test statistics, or significance values. These quantities answer
different questions: significance does not directly describe the precision of a voltage
estimate. We focused the subsequent study on representing standard error alongside
estimated voltage.

Several recurring uses of topoplots were identified, including recognizing expected
spatial ERP patterns, comparing experimental conditions, assessing plausible spatial
distributions, and locating relevant signals. We used these common practices as the basis
for constructing the tasks in the quantitative study.

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
original designs: we used these color-model concepts as starting points and adapted them
to spatially continuous EEG/ERP topoplots that jointly encode signed voltage and standard
error. Adjacent plots, uncertainty markers, and hypothetical outcome animation were also
informed by existing visualization approaches and adapted for our study. The interval-based
representation was suggested by participant R2 and has precedent in the three-map display
provided by `diegr` @gerslova2026diegr. We included a conventional topoplot without
uncertainty information as a baseline.

The designs differ in whether uncertainty is presented in separate maps, integrated into
color, overlaid as markers, or conveyed through animation. This selection allowed us to
examine how these approaches support two needs identified in the interviews: preserving
recognizable spatial patterns and supporting judgments that combine the estimated signal
and its uncertainty.

We aimed to use RdBu or similar diverging red--blue color schemes for voltage wherever
possible, to maintain visual consistency across designs. We used discrete (binned)
colormaps, motivated by Padilla et al.'s study of grayscale 2D scalar fields
@padilla2017binning, which found improved accuracy for value lookup and highest-point
identification under some binning conditions, while continuous encodings were often
faster. For univariate voltage maps, we quantized RdBu into 10 colors. Both bivariate
designs used a $5 times 5$ grid, with five bins each for voltage and standard error,
yielding 25 color combinations.

== Basic topoplot

The basic topoplot served as the baseline condition. It displays only the estimated
EEG/ERP voltage amplitude using a diverging color scale, such that color encodes both the
sign and magnitude of the signal. No information about standard error (SE) is shown.

== Adjacent plots

The adjacent-plots design was inspired by the EEGVIS toolbox @ehinger2018eegvis. It
presents the estimated signal and its SE in two separate topoplots. The signal map uses a
diverging color scale to represent negative and positive voltage amplitudes, whereas the
SE map uses a sequential color scale because SE is non-negative. This design preserves a
familiar univariate encoding for each quantity, but requires viewers to compare
corresponding spatial regions across the two maps.

== Bivariate color: corners

The corner encoding adapts the corners model described by Strode et al.
@strode2019operationalizing, using the TeulingFig3 four-corner, two-dimensional color
legend @teuling2011bivariate to jointly represent signal and SE.

The corners model is intended for analyses that emphasize extreme combinations of two
variables while de-emphasizing intermediate values @strode2019operationalizing. This makes
it suitable for our study tasks, in which viewers must locate and compare regions
combining strongly positive or negative voltage with low or high uncertainty.

We selected this palette because it received the highest assessment category for
elementary localization and identification (ER1), equal visual importance (ER2), and
elementary comparison (ER3) on dark backgrounds in Bernard et al.'s task-based evaluation
@bernard2015colormaps. Its corners use distinct hues so that the four joint extrema can be
identified and compared. We further adjusted the palette to improve separation between
neighboring combinations, following the broader warning that blue--violet mixtures in
bivariate maps can be difficult to distinguish @strode2019operationalizing. Hatched legend
cells mark combinations absent from the displayed topoplot.

== Bivariate color: range

The range encoding adapts the range model described by Strode et al.
@strode2019operationalizing while retaining the familiar cool-to-warm diverging
organization of conventional EEG/ERP topoplots.

The range model is intended for analyses in which viewers examine the range of one
variable within levels or categories of another @strode2019operationalizing. In our
application, it supports assessing how SE varies within regions of positive or negative
voltage while preserving the spatial signal pattern needed for comparison.

Voltage is represented along a diverging color dimension, with cool and warm hues
indicating opposite polarities. SE is encoded along the second dimension by progressively
increasing lightness and decreasing chroma while approximately preserving the hue
associated with each voltage level. Consequently, regions with greater uncertainty appear
lighter and less saturated, while the underlying color identity of the voltage remains
recognizable. As in the corners design, hatched legend cells indicate color combinations
absent from the displayed topoplot.

== Interval-based representation

The interval-based condition uses three adjacent maps showing the estimated mean, the mean minus one SE, and the
mean plus one SE. In our implementation, the bounds indicate $plus.minus$ one SE rather
than a 95% confidence interval. Viewers compare the spatial voltage distribution across
the three maps: larger differences indicate greater SE, while smaller differences indicate
more precise estimates.

This visualization has precedents in both EEG and fMRI. For EEG, the R package `diegr`
provides a `plot_topo_mean()` function that uses adjacent topographic maps of the mean and
its lower and upper confidence bounds @gerslova2026diegr. For fMRI, Engel and Burton
proposed an analogous three-map representation showing an estimated activation map
together with its lower and upper confidence bounds @engel2013confidence.


== Uncertainty markers

The uncertainty-marker design overlays spatial markers on the voltage topoplot and maps SE
to marker size. Larger markers indicate higher SE and smaller markers indicate lower SE.
This separates the visual channels used for the two quantities: color represents the
estimated signal, while size represents uncertainty.

Marker size is an established visual channel for quantitative uncertainty
@maceachren1992visualizing @brodlie2012review. We included this condition to examine how
an added size encoding affects reading of the underlying voltage pattern and its
uncertainty.

== Hypothetical outcome animation

This condition adapts the hypothetical-outcome approach of Hullman et al. to spatial
EEG/ERP data @hullman2015hypothetical. We generated a finite sequence of plausible
topoplots from the estimated signal and its SE and displayed them as an animation with a
stable visual mapping across frames. Each frame depicts one hypothetical outcome, not a
successive point in time. Regions that remain visually similar across frames are
comparatively stable, whereas regions that vary strongly indicate greater uncertainty.

= Quantitative User Study

== Research Questions

The quantitative study addressed three research questions:

#emph[RQ1. Pattern comparison:] To what extent do uncertainty visualizations preserve the
ability to recognize the underlying spatial pattern in an EEG/ERP topoplot?

#emph[RQ2. Uncertainty integration:] How well can users integrate the estimated signal and
its uncertainty to identify spatial regions with a high signal-to-noise ratio, and how
does performance depend on the visualization technique?

#emph[RQ3. Subjective evaluation:] How do users subjectively evaluate the different
approaches to visualizing uncertainty in EEG/ERP topoplots?

== Participants

We recruited participants with experience in EEG/ERP research or analysis. The study
targeted researchers and students familiar with EEG/ERP data and topographic
visualizations. Participation was voluntary.

A total of \[N\] participants were included in the quantitative analysis. #emph[TODO: Add
demographics, EEG experience, and exclusion criteria.]

// TODO: Report ethics approval or exemption and informed-consent procedures.

== Stimuli

We used three characteristic ERP topographic patterns: mismatch negativity (MMN), P3, and
N170 @kappenman2021erp. For each pattern, we prepared a pool of ten pattern variations,
from which individual stimuli were selected during the experiment.

The patterns were displayed using seven visualization conditions: a basic topoplot and six
uncertainty visualizations selected from the design pool described above. Each
visualization technique was combined with each of the three ERP patterns, forming a $7
times 3$ within-participant design.

All visualization types were implemented in Julia using Makie @danisch2021makie. We used
this implementation to render the static plots and hypothetical-outcome animations
presented as stimuli in the online survey.

== Tasks

=== Task 1: Pattern comparison

Task 1 tested whether adding uncertainty information interfered with recognition of the
underlying spatial pattern. In each trial, participants saw a target ERP pattern and two
alternative topoplots and selected the alternative that matched the target most closely.
One alternative belonged to the same ERP-pattern class as the target, whereas the other
was drawn from one of the two remaining classes.

Each visualization technique was shown once with MMN, P3, and N170, resulting in 21
trials. Each trial was shown on a separate page, and trial order was randomized for each
participant. For each trial, the correct and distractor pattern variations were sampled
from their respective stimulus pools. The distractor class was randomly selected from the
two non-target classes. The position of the correct response alternated between the first
and second alternative across the predefined trials.

=== Task 2: Uncertainty integration

Task 2 tested whether participants could combine information about the estimated voltage
and its uncertainty to identify a relevant spatial region. On each trial, participants saw
one topographic visualization and were asked to select the region with the highest
signal-to-noise ratio (SNR), defined in the study as

$ "SNR" = abs("Voltage" / "Standard Error"). $

Responses were collected using a separate 64-region selectable scalp layout displayed next
to the stimulus. We constructed this layout as a fixed SVG representation of the scalp
divided into 64 individually selectable polygonal regions, labelled internally from R01 to
R64. The polygon layer was aligned with a scalp-montage reference, and the same spatial
layout was used for every trial. Participants selected one region by clicking directly on
the corresponding polygon.

As in Task 1, the complete design contained each combination of the seven visualization
techniques and three ERP patterns, giving 21 trials, each presented on a separate page.
For each ERP pattern, seven distinct variations were randomly selected from its pool and
assigned across the seven visualization techniques. Trial order was randomized for each
participant.

=== Task 3: Subjective evaluation

After completing the objective tasks, participants evaluated each of the seven
visualization techniques subjectively. Four aspects were assessed on 5-point Likert
scales: how helpful the visualization was for comparing spatial patterns, how helpful it
was for detecting relevant spatial regions, how helpful it was for representing signal and
uncertainty, and how visually appealing it was.

== Procedure

The study was conducted online. Before beginning the study, participants were informed
about data anonymisation, public data sharing, voluntary participation, and their right to
withdraw, and provided informed consent. Participants then answered background questions
concerning their experience with EEG/ERP analysis.

Participants then received an explanation of the visualization techniques and completed
Task 1 (pattern comparison), followed by brief feedback questions. They next received
instructions for Task 2 (uncertainty integration) and completed its randomized trials.
Finally, participants completed Task 3 (subjective evaluation).

== Measures

[TODO: Measures]

== Statistical Analysis

[TODO: Statistical analysis]

= Results

== Task Performance

[TODO: Task-performance results]

== Subjective Evaluation

[TODO: Subjective-evaluation results]

== Qualitative Feedback

[TODO: Qualitative-feedback results]

= Discussion

Following Lam et al.'s evaluation framework @lam2012seven, our study combines
understanding of environments and work practices (UWP) through formative expert interviews
with controlled evaluation of user performance (UP) and user experience (UE) in the
subsequent quantitative study.

Our study design was informed by several pitfalls identified in design study methodology
@sedlmair2012design. We aimed to avoid #emph[premature advance] and #emph[premature design
commitment] (PF-1, PF-20) by conducting formative interviews with EEG/ERP researchers
before finalizing the visualization designs and quantitative tasks, grounding the study in
domain practices. We also retained the conventional topoplot as a baseline and preserved
familiar aspects of its encoding in several conditions, reflecting the recommendation not
to ignore existing practices that already work well (PF-15). Finally, we did not treat
subjective preference as sufficient evidence of effectiveness: objective task performance
was combined with subjective ratings and open-ended feedback, addressing the concern
captured by PF-26. At the same time, the controlled quantitative tasks do not reproduce
the full complexity of real EEG/ERP analysis workflows, so the study should not be
interpreted as a full real-world case study, consistent with the caution expressed in
PF-25.

[TODO: Discussion]

= Limitations

[TODO: Limitations]

= Conclusion

[TODO: Conclusion]

// References are generated automatically from refs.bib by the journal template.
// TODO: Add and cite all manuscript references.

// TODO: Add funding and acknowledgments statement.
// TODO: Add data and code availability statement.
// TODO: Add an AI-use disclosure if required by IEEE or the venue.
// TODO: Describe and cite the separate supplementary material where relevant.
