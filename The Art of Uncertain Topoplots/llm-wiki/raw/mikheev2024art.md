---
id: "mikheev2024art"
title: "The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices"
source_file: "The Art of Uncertain Topoplots/papers/mikheev2024art.pdf"
source_sha256: "fb6e0189ffb31dc5c02a572ac1ab7f0d34adcf304e073b33cbd13b4d5aacfdc7"
extraction_format: 1
---

# The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
Mikheev V, Skukies R, Ehinger BV. The Art of Brainwaves: A Survey on Event-Related
                                                                              Potential Visualization Practices. Aperture Neuro. 2024;4. doi:10.52294/001c.116386

<a id="p001-b002"></a>

<!-- p001-b002 -->
Original Research Articles

<a id="p001-b003"></a>

<!-- p001-b003 -->
The Art of Brainwaves: A Survey on Event-Related Potential
Visualization Practices
                          a
Vladimir Mikheev1             , Rene Skukies1,2 , Benedikt V. Ehinger1,2
1 Institute for Visualization and Interactive Systems, University of Stuttgart, 2 Stuttgart Center for Simulation Science, University of Stuttgart

<a id="p001-b004"></a>

<!-- p001-b004 -->
Keywords: Electroencephalography, Visualization, User experience survey, EEG software, Visualisation awareness, Expert survey
https://doi.org/10.52294/001c.116386

<a id="p001-b005"></a>

<!-- p001-b005 -->
Aperture Neuro
Vol. 4, 2024

<a id="p001-b006"></a>

<!-- p001-b006 -->
Electroencephalography (EEG) and event-related potentials (ERPs) have been analyzed
                    for more than 70 years. Yet, we know little about how practitioners visualize the results
                    of their analyses. Here, we designed an online survey (n=213) targeting M/EEG
                    practitioners from novice to expert level. Our primary goal is to better understand the
                    visualization tools currently in use, the challenges researchers face, and their experiences
                    and opinions on how best to display their brain data. Finally, we explored whether
                    researchers are aware of more general visualization issues related to visualization of
                    uncertainty and color maps. In this paper, we provide an overview of the most popular
                    ERP visualization tools. Additionally, we found that the community does not have a
                    unique nomenclature to refer to some plot types, and we propose a set of
                    recommendations to name the most popular ERP plot types. Finally, we provide an
                    analysis of practitioner feature preferences for software developers and conclude with
                    further recommendations for ERP practitioners.

<a id="p001-b007"></a>

<!-- p001-b007 -->
1
1. INTRODUCTION                                                                 want to switch to a butterfly plot (Figure 1C), a topoplot
                                                                                (Figure 1D), or a channel plot, at the cost of selecting a sin-
Electroencephalography (EEG) is used to detect and record                       gle condition. If we limit ourselves to a selection (and/or
electrical voltages of the brain. These voltages are recorded                   averaging) across sensors and time, we can even use more
through an array of electrodes placed on the scalp, result-                     traditional scatter plots (Figure 1A). However, there is no
ing in a multivariate timeseries. To analyse the data, re-                      single way to visualize all dimensions of the hypercube in
searchers often transform the raw data into event-related                       one figure.
potentials (ERPs) by aligning the timeseries to events of                          The problem of dimensionality is even more pronounced
interest and averaging over repeated events. The resulting                      in the more general regression-based ERP framework
ERP data may consist of five (or fewer) dimensions: sensors                     (rERP),1 which allows for the analysis of more naturalistic
x time x conditions x subjects x trials. Each dimension can                     experiments, including eye movements2 or mobile/VR
be represented as a side on an ERP hypercube, i.e. an n-di-                     EEG.3‑7 Instead of computing means and pairwise differ-
mensional cube (Figure 1).                                                      ences between conditions, with rERPs one fits a multiple
   Unfortunately, visualization of all dimensions directly                      regression model that encodes the experimental conditions
is not possible, so the cube has to be sliced, averaged or                      to each time point and channel, and then interprets the re-
segmented. A variety of different plot types is commonly                        gression coefficients. This allows important generalizations
used, each highlighting different features of different di-                     to multi-level categorical effects, continuous variables, and
mensions. For example, the ERP plot allows us to highlight                      even modeling of non-linear effects.2,8
slices of the condition and time dimension, at the cost of                         However, these generalizations come at the cost of new,
collapsing over the sensor and subject dimensions (Figure                       additional visualization complexities introduced by the
1B). Contrary, if we want to display all sensors, we might                      multiple regression model. To name just two examples:
                                                                                First, interactions are already difficult to interpret in a nor-

<a id="p001-b008"></a>

<!-- p001-b008 -->
a Corresponding Author:
     Vladimir Mikheev
     University of Stuttgart
     Institute for Visualization and Interactive Systems
     vladimir.mikheev@vis.uni-stuttgart.de

<a id="p001-b009"></a>

<!-- p001-b009 -->
1 For clarity we decided to immediately use our naming conventions for the plot types, as discussed in section 5.1, rather than other
     nomenclatures.

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p002-b002"></a>

<!-- p002-b002 -->
Figure 1. ERP hypercubes. The cubes are depictions of the high-dimensional arrays (or tensors) representing the
measured voltages. It is possible to visualize certain aspects of a dataset by (A) Averaging over time and space in
regions of interest (ROIs). Typically, these ROIs allow easy comparison across conditions. (B) Sub-selection of
channels and conditions, resulting in the common ERP plot with multiple conditions. (C) Omission of
information of one dimension, e.g. the spatial layout of the channel, or (D) Omission of the continuous temporal
resolution. In all plots, categorical colors (blue, green, yellow, orange, red) are assumed to indicate experimental
conditions. Colored areas in each plot represent information displayed by a given plot type, while striped colors
indicate that information is only partially displayed. Brackets in (D) indicate inclusive ‘[’ and exclusive ‘(’ ranges.
Note that the subject and uncertainty dimensions are omitted in this figure.

<a id="p002-b003"></a>

<!-- p002-b003 -->
mal multiple regression, but in rERP they extend over time              quires using plot_topomap, and in fieldtrip ft_topoplotER or
and space. Second, when trying to interpret linear and non-             ft_multiplotTFR.
linear effects, it is helpful to evaluate them at different pre-            Additionally, there are several ERP visualization prac-
dictor values. But this again is very challenging due to the            tices on which researchers have yet to reach a consensus.
greatly increased dimensionality. These challenges high-                These include visualization of the baseline period, the pro-
light the importance of having a strong theoretical un-                 portion of electrodes analyzed, polarity notation, and inter-
derstanding of current EEG data visualization methods. To               pretation of topoplot timeseries (see Section 2.2. in Back-
develop new effective representations of complex data re-               ground for details).
quiring rERP analysis, it seems helpful to first understand                 Ideally, researchers should know 1) which plot types ex-
the techniques for representing “simpler” data from the                 ist, 2) what kind of dimensions they can represent, 3) how
more classical EEG paradigms and analyses.                              to plot a figure with a particular tool, 4) what kind of infor-
   To emphasize a particular dimension, EEG practitioners               mation is crucial to show on a plot for better generalizabil-
should be aware of the available and appropriate plot types.            ity, 5) what is the common notation for plot names, and 6)
Currently, there are plenty of ways to visualize data using             they should follow recommendations to avoid controversial
a variety of different types of plots: an initial literature re-        visualization practices.
view revealed more than 30 different EEG analysis tools                     To get an overview of how EEG users visualize their ERP
with widely varying popularity. By contrast, the literature             results, we collected data from 213 completed surveys, in-
on EEG visualization is scarce, so understanding of how to              cluding responses from novice to senior researchers. We
present EEG data properly is limited. In addition, each tool            wanted to assess the challenges analysts face when visu-
has its own approach to usability and naming of EEG visu-               alizing EEG data, how they would like to see current tools
alizations, which might confuse an inexperienced user. For              improved, and what they know about ERP plot types, their
example, plotting a figure in one tool requires selecting an            characteristics, and their implementation.
option from a GUI, while in another tool it requires writ-                  The survey aimed to answer the following questions:
ing actual code. Similarly, creating a topoplot in EEGLAB
                                                                                RQ 1: Do ERP researchers use consistent names for the
involves using the function topoplot, whereas in MNE it re-
                                                                                ERP plot types they present?

<a id="p002-b004"></a>

<!-- p002-b004 -->
Aperture Neuro                                                           2

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p003-b002"></a>

<!-- p003-b002 -->
RQ 2: Which ERP visualization tools are known and in                  cussion for details). Exemplary plots for all eight visualiza-
     use?                                                                  tions are shown in Figure 1. Similar plots were used in the
     RQ 3: What features are important in current ERP visu-                survey (Supplementary Figure 1).
     alization tools and what are potential improvements for                  Previously, two initiatives proposed recommendations
     tools?
                                                                           for plotting and categorizing ERP visualizations. First, Per-
     RQ 4: What does the EEG community think about some of
                                                                           net et al. have developed COBIDAS (Committee on Best
     the controversies surrounding ERP visualization?
     RQ 5: What proportion of ERP researchers are familiar
                                                                           Practices in Data Analysis and Sharing), the M/EEG best
     with visualization issues related to color maps and uncer-            practices guide.12 Part of their recommendations relate to
     tainty visualization?                                                 plotting: label all axes and report units, plot all channels
     RQ 6: How does proficiency in EEG correlate with tool us-             and conditions, show error measures (CI or SD). Second,
     age, tool feature preferences, and ERP visualization prac-            ARTEM-IS (Agreed Reporting Template for Electroen-
     tices?                                                                cephalography Methodology) is a documentation tool for
                                                                           EEG studies.13,14 It facilitates reporting critical parameters
   We believe that answering these questions will be help-
                                                                           of EEG analysis pipelines on replicability. Currently, it con-
ful in creating a better theoretical framework for ERP plot
                                                                           sists of 8 sections, including one for visualization. One can
types. Such information would be helpful to improve exist-
                                                                           specify plot type and post-processing for visualization pur-
ing visualization tools and to create new ones.
                                                                           poses.
                                                                              However, while such initiatives are a step in the right
2. BACKGROUND                                                              direction, an earlier study showed that the publication of
                                                                           guidelines is not enough to change the actual methodolog-
2.1. STATE-OF-THE-ART TECHNIQUES FOR ERP                                   ical practices.15 Concurrently, it could be helpful to directly
VISUALIZATION                                                              implement such guidelines into the analysis software. Fur-
                                                                           ther, the categorization of ERP plot types still hasn’t been
To our knowledge, only ten Caat et al9,10 explicitly worked                a focus in these guidelines, which we aim to address in this
on the topic of ERP visualization. Through a literature re-                paper.
view, they identified seven common types of EEG plots. Fur-
ther, they qualitatively assessed the contextual information               2.2. CONTROVERSIES IN ERP VISUALIZATION
display based on such criteria as the number of time steps
that could be visualized, clarity of time order, number of                 Based on a literature review, discussions, and our own ex-
channels shown, and spatial order preservation. According                  periences, we decided to investigate several controversies
to the authors, none of the identified plots “can success-                 in the ERP community regarding the analysis and visual-
fully visualize simultaneous information from all channels                 ization of ERP data. In particular, we identified four con-
in use at all time steps”. They proposed a new type of ERP                 troversies: A) Which channels should be recorded, analyzed
visualization: tiled parallel coordinates, a multiple minia-               and visualized: single channel, region of interest, or all
ture version of parallel coordinates plots. In their study,                channels?11,16 B) How much, if any, of the baseline period
this new plot type outperformed all other plots in terms                   should be visualized?17‑19 C) Should ERP positivity be plot-
of the amount of information displayed and time spent by                   ted upwards or downwards?18‑27 D) Should one depicts sin-
users for completing parameter evaluation tasks.                           gle timesteps or average time windows in a topoplot time-
   We used ten Caat’s list of plot types for our survey with               series?28‑30
three considerations (Table 1). First, we included only the                   A) Channel exclusion. It is common that not all mea-
basic parallel coordinates plot visualization, because the                 sured electrodes are actually analyzed, begging the ques-
more advanced tiled parallel coordinates plot has so far                   tion of why they were recorded in the first place. If one
not gained traction in the field (see Figure 2H). Second, we               studies a well-known effect, with a consensus on the timing
added a channel image, a heatmap similar to a single-trial                 and location, focusing on the singular necessary electrodes
ERP image, but depicting time and channel activity, which                  is best practice. In this case, only those electrodes would
is commonly used in e.g. the LIMO toolbox.11 Third, we                     need to be recorded. The situation is quite different if mass-
considered single topoplot and topoplot series as distinct                 univariate analyses are required, or if “excess” electrodes
plot types.                                                                are used for average referencing, independent component
                                                        2
   Note, that due to lack of adoption in the field, we                     analysis or other multivariate preprocessing methods.
changed some of their suggested plot type names based on                   Other reasons are less well motivated, for instance if fewer
two principles. Either they were the result of a user con-                 channels are used solely to simplify the interpretation or
sensus shown in this survey, or we proposed a new conven-                  to ease computational burden. In these cases, important ef-
tion after carefully analyzing the raw responses and taking                fects might be dismissed too early. And finally, a reason
other considerations into account (see Section 5.1 in Dis-                 relevant to this study and potentially addressable reason

<a id="p003-b003"></a>

<!-- p003-b003 -->
2 One of the reasons for this is that the paper is currently not widely cited (36 citations on Google Scholar, none from EEG studies). It is
    not entirely clear why, but one explanation could be that there is a mismatch between the communities of visualization researchers and
    ERP practitioners.

<a id="p003-b004"></a>

<!-- p003-b004 -->
Aperture Neuro                                                                 3

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p004-b002"></a>

<!-- p004-b002 -->
Table 1. The eight ERP visualizations used in this study, and the data dimension they can effectively depict.

<a id="p004-b003"></a>

<!-- p004-b003 -->
would be, if channels are excluded because the required vi-               ization to plot negative voltages upward on the Cartesian
sualizations are not known by users or are not readily avail-             coordinate system.19 Defendants of this practice typically
able in software.                                                         point towards historical reasons, often quoting the earli-
   To shed light on the prevalence of analyzing subsets of                est20 or outstanding ERP studies.21,22 Further, some re-
electrodes, we included a question in our survey asking                   searcher explain their preference by relating ERPs to the
about the number of electrodes recorded and subsequently                  underlying physiological processes, which are often asso-
analyzed. We did not ask more detailed questions about in-                ciated with negative electrical charges.25 However, there
dividual researchers’ reasons for possibly not using all elec-            is no established consensus in the EEG community on the
                                                                                                       3
trodes. Future questionnaires could explore this issue in                 “right” polarity convention. In this survey, we assessed
more detail.                                                              how much support currently exists for either polarity pref-
   B) Baseline visualization. Baseline correction is a data               erence, and how this varies across EEG research fields.
preprocessing technique commonly employed in ERP                             D) Topoplot timeseries interpretation. Topographic
analysis or visualization, mainly used to correct for un-                 timeseries show voltages at multiple miniature topoplots
expected offsets between conditions. These offsets might                  over time. A topoplot can represent a single point in time
happen due to e.g. non-electrophysiological activity (mus-                (one sample) or an average over a period of time (multiple
cles, sweating etc.) triggering systematic variations in                  samples). This can lead to ambiguity in interpretation be-
data.17 Our focus is not related to the actual baseline cor-              cause toolboxes have different defaults, and only some al-
rection and whether it is necessary (for a discussion on                  low plotting both options. For example, with EEGLAB and
this topic we recommend,18 but rather the visualization of                MNE any one topoplot represents one sample by default,
the baseline period. It is commonly recommended to dis-                   while Fieldtrip and EEGVIS use the average over a
play some part of the baseline period to visually estimate                range.28‑30
data quality and identify potential confounds in random-                     In the survey, we assessed whether researchers share
ization.19 However, how much baseline period should be                    a common intuition on what is depicted in an unlabeled
shown (if any) remains unclear, and no empirical data on                  topoplot timeseries.
this issue has been collected.
   C) Polarity convention. Contrary to the established
mathematical standard, it is quite common in ERP visual-

<a id="p004-b004"></a>

<!-- p004-b004 -->
3 Early pioneers of electroencephalography, such as Richard Caton, Hans Berger, Alfred Lumis, and Edgar Adrian, did not consistently in-
    dicate polarity notation.24‑27 In one of the earliest cases from 1925 made on dog EEG we could find, where the sign of EEG waveforms
    was noted the positive was up,74 but the time axis was reversed from right to left, which is of course even more contrary to current stan-
    dards.

<a id="p004-b005"></a>

<!-- p004-b005 -->
Aperture Neuro                                                                  4

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p005-b002"></a>

<!-- p005-b002 -->
Figure 2. Plots of the eight visualizations used in our survey using UnfoldMakie.jl. A) ERP plot, B) Butterfly plot,
C) Topoplot, D) Topoplot timeseries, E) ERP image, G) Channel image. H) parallel coordinate plot.

<a id="p005-b003"></a>

<!-- p005-b003 -->
2.3. COMMON MISLEADING VISUALIZATION                                   quite common in scientific papers. A study of visualizations
TECHNIQUES                                                             in the more general neuroscience literature analyzed 1,451
                                                                       figures from 288 articles.31 Around 20% of the 2D plots
Inadequate visualizations have the potential to be mislead-            (bar/box/violin plots) lacked uncertainty labels. Of those
ing or hinder understanding of the results. There are two is-          that had uncertainty depictions, 30% did not label the type
sues we addressed in our survey: 1) the visualization of un-           of uncertainty used e.g., standard error bars or confidence
certainty and 2) the use of perceptually problematic color             intervals. Results for 3D graphs (i.e. heatmaps) were much
maps.                                                                  worse, with 80% lacking uncertainty depictions and no un-
                                                                       certainty labeling in the remaining. We expect this to be
2.3.1. UNCERTAINTY VISUALIZATION                                       even worse for timeseries ERP data because error bands are
                                                                       difficult to add to timeseries in most plotting tools.
Omitting uncertainty on a graph, or wrongly inferring what
                                                                          Depiction of uncertainty is notoriously difficult to do in
type of uncertainty is depicted can lead to misinterpreta-
                                                                       heatmaps. One solution is to use 2D color maps (aka bi-
tion of data. However, omitting uncertainty depictions is

<a id="p005-b004"></a>

<!-- p005-b004 -->
Aperture Neuro                                                      5

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p006-b002"></a>

<!-- p006-b002 -->
variate color maps or cross-maps). 2D color maps were first
used by the US Census Bureau in 1974 to describe the age
of older Americans and the population size of counties on
the US map.32 Later Correll picked up on that to graphically
show the relation between statistical power and raw effect
size.33 However, to our knowledge 2D color maps are only
available in a few selected analysis/visualization packages
(e.g., EEGVIS or FieldTrip with custom code).
   In our survey, we investigated how commonly uncer-
tainty estimates are reported for time-resolved ERP plots,
what type of uncertainty is typically reported (standard er-
ror, confidence interval, or other), and if people are aware
                                                                       Figure 3. Example of two-color maps depicted as a
of 2D color maps.
                                                                       linear center-surround gradient: Jet (A) and Plasma
2.3.2. PROBLEMATIC COLOR MAPS                                          (B).38 One can see that Jet creates spurious “bands”
                                                                       while Plasma color map shows a linear change.
Color maps are used to map numerical values to color, most
commonly in heatmaps. However, some color maps are not                 at colloquia and conferences. To encourage participation,
“veridical”, meaning they cannot truthfully display the un-            we raffled 3 Muse-2 devices (~300€ each) among those who
derlying data. Visualization researchers34‑36 have identi-             agreed to participate.
fied three major problems that can occur when using color                 Since we collected a convenience sample in the first
maps.                                                                  place, we took no further measures to determine why re-
   A) Violation of perceptually uniformity. The perceived              spondents dropped out of the survey.
difference between two colors on the color map does not                   The survey was approved by the Ethics Committee of the
correspond to their numerical representation. For example,             University of Stuttgart before it was conducted. Respondents
a segment in one part of the color map represents the hues             were asked for informed consent as well as to agree to a
of the same color, while in another part a segment of the              privacy statement before participating in the study. Addi-
same length represents two different colors. B) Violation of           tionally, they were informed that they could stop the survey
perceptual order. The lightness and brightness change non-             at any time. The anonymous raw data are available in the
linearly, for instance first comes a bright color, then dark           DaRUS repository.39
color, then again bright. That makes the order of colors not
intuitive, and readers need to constantly check the color              3.2. SURVEY STRUCTURE
bar. C) Unfriendliness to colorblindness. Typically, color
maps become problematic when red and green have simi-                  The survey was divided into four sections covering different
lar luminosity, making them indistinguishable to colorblind            aspects of the respondents’ experiences and opinions. The
people. Proportions of colorblind people can vary by eth-              first page collected basic information about the participants
nicity and gender, for example, red-green color deficiency             and their experience with plotting. The second page con-
is prevalent in ~8% of males and 0.5% of females in the Eu-            tained questions about the tools they used for analysis,
ropean Caucasian population.1                                          their preferred features in those tools, and their ability
   The “jet” color map has all three problems. Which leads             to identify different types of ERP plots. The third section
to the fact that the jet color map creates spurious “bands”            asked participants about their familiarity with color map-
when a uniform area is plotted (Figure 3).37 Still, it is used         ping and color bar awareness. The final section allowed par-
as the default option in EEGLAB, the most popular EEG                  ticipants to provide feedback.
analysis toolbox. On this issue, we set out to identify if the             Within and across sections, we used a conditional de-
perceptual controversies around the color map (by way of               cision-tree structure: certain responses opened additional
example of the “jet” color map) are known to researchers.              questions. For example, in the second section, we asked re-
                                                                       spondents to identify which of the visually depicted ERP
3. METHODS                                                             plot types they are familiar with. Based on their responses,
                                                                       they then received further questions about the plots they
                                                                       recognized. As a result, some questions received fewer re-
3.1. SURVEY
                                                                       sponses than others. For instance, to answer the question
To investigate the general state of visualization in ERP               “What did the error bars in your figure represent?” (85 re-
research, we conducted an online questionnaire using                   sponses out of 213), respondents first had to positively an-
LimeSurvey Community Edition v5.4.7 hosted by the Uni-                 swer two questions: did they recognize the ERP plot and
versity of Stuttgart. The survey was open from January to              have they ever used it in one of their papers.
July 2023, and a convenience sample was collected by pro-                  On the survey landing page, we informed respondents
moting it through various channels: mailing lists (EEGLAB,             of the purpose of the survey, the opportunity to enter the
FieldTrip, MNE communities), social networks (Twitter,                 raffle, and the opportunity to opt out of the study. On the
Mastodon, VK, Telegram, and Facebook), and by speaking                 second-to-last page of the survey, participants were asked
                                                                       to provide any additional comments or suggestions for im-

<a id="p006-b003"></a>

<!-- p006-b003 -->
Aperture Neuro                                                      6

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p007-b002"></a>

<!-- p007-b002 -->
proving ERP plotting tools. The final page of the survey                   Figures were generated using R v4.2.1 with the library
contained a link to a separate survey for those who wanted              ggplot2 v3.4.140 and Julia v1.9.1 with the packages Makie
to enter a raffle and/or receive news about this study, a re-           v0.19.8,41 UnfoldMakie v0.4.1,42 UnfoldSim v0.1.7.43 All
quest to share the survey with colleagues, and a short list of          analysis figures are freely available under MIT license.44
publications on perceptual controversies with color maps.
                                                                        3.6. CITATIONS

<a id="p007-b003"></a>

<!-- p007-b003 -->
3.3. EFFECT OF PROFICIENCY                                              To count the citations per year for the most popular tools,
                                                                        we used the Web of Science Core Collection portal. For each
We wanted to understand whether expertise of respondents
                                                                        software, we selected the most cited paper on the portal
affects their responses of tool-feature preference. To do so,
                                                                        and downloaded the data using the following click path: Re-
we first identified a latent research proficiency factor, out of
                                                                        sults cited -> Analyze results -> choose Publication years,
our five proficiency-related items.
                                                                        Bar chart, sort by Results count by date -> Data rows dis-
    Since our dataset contained a mix of two numerical
                                                                        played in table.45 The data was retrieved on 02.11.2023.
(number of papers published, years of experience) and three
categorical (research occupation, self-assessed level of pro-
                                                                        4. RESULTS
ficiency, and code contribution for any EEG analyses) vari-
ables we used Factor Analysis for Mixed Data (FAMD), as                 In an online survey, we asked EEG practitioners (n=213)
implemented in the FactoMineR v2.8 package, for dimen-                  about their opinions and use of ERP visualization tools. The
sionality reduction. In short, FAMD combines principal                  average respondent is currently working in Europe or the
component analysis for continuous variables with multiple               USA (Figure 4) on their doctoral degree (37%) in a funda-
correspondence analysis for categorical ones. Through                   mental field (86%) using scalp EEG (70%). The sample fur-
FAMD we reduced the data from five dimensions down to                   ther consists of a mix of postdoctoral researchers (29%),
two principal components (as specified by ncp=2). The com-              and a considerable number of professors (20%) and industry
ponent explaining most of the variance was subsequently                 experts (6%). The median respondent has 6 years of expe-
used as our proficiency variable.                                       rience with EEG analysis and 3 publications on the topic
    Finally, to correlate tool-feature preference with profi-           (Figure 5), while the majority identify themselves as re-
ciency factor we used Spearman’s rank correlations for con-             searchers with intermediate experience. More than half of
ditional variables and logistic regressions for binary vari-            the respondents have published code/software for EEG,
ables. Confidence intervals were computed through                       MEG, or iEEG analysis methods or contributed to code
bootstrapping using the spearman.ci function from the                   maintained by others.
RVAideMemoire v0.9-83-7 package.
                                                                        4.1. DO ERP RESEARCHERS USE CONSISTENT NAMES
3.4. ANALYSIS OF FREE-FORM NAMING                                       FOR THE ERP PLOT TYPES THEY PRESENT?

<a id="p007-b004"></a>

<!-- p007-b004 -->
We presented respondents with eight ERP plots and asked                 We were interested in how our respondents would name
them to select the ones they recognize. Conditional on this,            each of the eight ERP visualization types. First, we pre-
they were asked to name the recognized plot types in a free             sented them with depictions of eight plots and asked them
form later in the survey.                                               to select the ones they recognized. Later in the survey, we
   To analyze the free-form name responses, we first con-               additionally asked participants to name these plots in a free
verted them to lowercase, removed unimportant words                     form. The attrition of respondents can be seen in Figure
such as articles and certain terms (“wise”, “like”, “s”,                6. The majority of participants have plotted ERP plots and
“plot(s)”), and manually eliminated nonsensical or missing              topoplots, while only a tiny portion are familiar with the
responses. Due to the high variability of the responses, we             parallel plot. We further see that e.g. many researchers rec-
categorized each response into summary names, with sum-                 ognized the channel image and provided a name, but less
mary names identified by manual assessment. For example,                than half of those have actually plotted it.
when analyzing the ERP plot, we grouped responses con-                     Second, we look at the actual suggested names. To do
taining “erp” and “average(d)” into “averaged erp,” while               this, we compiled the raw names into aggregated plot
those containing “erp” and “time” or “time(series)” were                names (see Methods). The most popular aggregated plot
classified as “erp timecourse / timeseries”. A full list of             names, 3 for each plot type, are listed in Table 2. None
aggregated names for each plot type can be found in the                 of the aggregated plot names reached more than 50% of
DaRUS-Dataverse repository.39                                           the respective sample. At first sight, this shows that there
                                                                        is little consistency in the naming of ERP plots between
3.5. CHALLENGES IN FIGURE CREATION                                      researchers. However, at a second look, some names are
                                                                        more closely clustered than others (e.g. 79% majority for
Based on the condition above we asked participants to
                                                                        the names ‘topoplot’ or ‘topography plot’). A summary and
share the challenges they encountered in creating the re-
                                                                        distillation of these results can be found in the Discussion.
spective figures and to provide suggestions on how to im-
prove the tool used to create them. This feedback was col-
lected and made available in full to all tool maintainers if
they received more than 5 suggestions.

<a id="p007-b005"></a>

<!-- p007-b005 -->
Aperture Neuro                                                      7

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p008-b002"></a>

<!-- p008-b002 -->
Figure 4. Sample description. D was a multiple-choice question.(N of respondents: A, B, D - 213; C - 212)

<a id="p008-b003"></a>

<!-- p008-b003 -->
Figure 5. Research experience of respondents (N of respondents: A - 210; B, D, C - 213)

<a id="p008-b004"></a>

<!-- p008-b004 -->
4.2. WHICH ERP VISUALIZATION TOOLS ARE KNOWN                          are commonly used as well (42%). They are followed by the
AND IN USE?                                                           Python-based MNE (41%), and a commercial product, Brain
                                                                      Vision Analyzer (22%) (Figure 6).
Most respondents to our survey have experience with MAT-                  The main caveat to these numbers is that we generally
LAB-based tools (EEGLAB - 63%, FieldTrip - 46%, and ER-               asked about experience with tools, not about the currently
PLAB - 22%, Brainstorm - 16%). The number of users with               preferred tool. As such, participants were able to select
experience in at least one MATLAB-based tool in our sam-              multiple answers: one respected researcher outperformed
ple is higher than 83%. Custom scripts written in program-            all others by reporting experience with 11 tools.
ming languages such as R, Python, Julia, or other languages

<a id="p008-b005"></a>

<!-- p008-b005 -->
Aperture Neuro                                                   8

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p009-b002"></a>

<!-- p009-b002 -->
Figure 6. Number of respondents who recognized, named, or had previously plotted the respective plot types. (N
of respondents - 213)

<a id="p009-b003"></a>

<!-- p009-b003 -->
Table 2. The most popular plot names for eight types of ERP visualization. The names were aggregated. To
illustrate the notation: e.g. “ERP (plot)” means that response like “ERP” and “ERP plot” were united,
“time(series/course)” means that instances “time”, “timeseries”, “time series”, “timecourse” and “time course”
were combined. The word “over” in some names is also an aggregation including all other omitted prepositions
like “by” or “with”.

<a id="p009-b004"></a>

<!-- p009-b004 -->
Aperture Neuro                                        9

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p010-b002"></a>

<!-- p010-b002 -->
Figure 7. A: User experience with EEG analysis tools (multiple choice, N of respondents - 213). B: The yearly (not
cumulative) number of citations for the four most popular tools.

<a id="p010-b003"></a>

<!-- p010-b003 -->
To complement these results, we obtained annual ci-                    tioners generally did not find it important to generate plots
tations for the four publications of the most popular                     via GUI interfaces.
tools,46‑49 indicated “to-be-cited” on their respective tool-                Additionally, we asked respondents to indicate problems
              45
box websites. Of this list, EEGLAB was the earliest avail-                they encountered when plotting a figure using their favorite
able tool to analyze EEG data (Figure 7), and is currently the            tools. For example, when it came to creating the ERP plot,
most popular, with yearly citations of over 1600. FieldTrip               32% of respondents indicated that they struggled with
received two times fewer yearly citations by 2022, while                  adding uncertainty to their plots. For ERP and channel im-
MNE and ERPLAB received four times fewer.                                 ages, sorting was the most common problem. Three the
                                                                          most mentioned problems for each plot are summarized in
4.3. WHAT FEATURES ARE IMPORTANT IN CURRENT ERP                           Table 3. We omitted parallel plots due to lack of responses.
VISUALIZATION TOOLS AND WHAT ARE POTENTIAL
IMPROVEMENTS FOR TOOLS?                                                   4.4. WHAT DOES THE EEG COMMUNITY THINK ABOUT
                                                                          SOME OF THE CONTROVERSIES SURROUNDING ERP
We asked users to rate the importance of various features                 VISUALIZATION?
for EEG visualization tools. Figure 8 shows Likert scale
scores ranging from -2 (not important) to +2 (very im-                    Previously, we identified four visualization controversies
portant) averaged over participants. The majority of users                and asked participants to provide some input on specific
unanimously emphasized the value of customization (flex-                  aspects: baseline period visualization, proportion of elec-
ibility of tweaking plot attributes like colors, line widths,             trodes analyzed, polarity notation and interpretation of
margins, etc.), reproducibility, publishable plots, and gen-              topoplot timeseries.
erating plots by coding.                                                     First, participants most commonly answered to show a
   Interestingly, some features received mixed responses.                 baseline period of 200 ms (45%) or 100 ms (22%) prior to
For example, the ability for inset subplotting was consid-                event onset (Figure 9A). Further 48 (~30%) of the respon-
ered neutral by some users and important by others. A sig-                dents rather provided additional explanations: 25 said that
nificant proportion of users did not see the importance of                it depends on the experimental design, 11 noted that it
speed of plotting and interactive data selection (e.g. direct             should be the same as the baseline correction, 9 said that it
selection of electrodes in the plot). In addition, EEG practi-            depends on the trial duration.

<a id="p010-b004"></a>

<!-- p010-b004 -->
4 Brain Vision Analyser has not been included because it is a commercial tool, and no paper has been published for citation.

<a id="p010-b005"></a>

<!-- p010-b005 -->
5 SPM has not been included because it is mainly used for methods other than EEG, making it incompatible to compare with ‘pure’ EEG
    tools. Also, no respondent mentioned that tool.

<a id="p010-b006"></a>

<!-- p010-b006 -->
Aperture Neuro                                                         10

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p011-b002"></a>

<!-- p011-b002 -->
Figure 8. User preferences regarding the features of the EEG analysis tool (N of respondents - 213). To avoid
cluttering we split the figure into two panels and used two different range limits for y-axes.

<a id="p011-b003"></a>

<!-- p011-b003 -->
Table 3. The most common plotting problems for each ERP visualization type.

<a id="p011-b004"></a>

<!-- p011-b004 -->
Second, as shown in Figure 9B, most respondents (38%)               negative up. However, even in those fields, the majority
used all recorded electrodes for analysis (c.f. Figure 2 with          preferred positive up.
marginal histograms in Supplementary material).                           Lastly, in a topoplot series, we found that 61% of the
   Thirdly, a vast majority (82% of 199 participants) pre-             185 respondents understand each topoplot as a snapshot
ferred to plot positive voltage upward on the Cartesian                of scalp electrical activity at a particular time point. While
graph (Figure 10). Comparing different research fields, we             39% interpret it as an average over a time interval.
found that researchers working with language and in cogni-
tive control and attention seem to be more likely to choose

<a id="p011-b005"></a>

<!-- p011-b005 -->
Aperture Neuro                                                     11

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p012-b002"></a>

<!-- p012-b002 -->
Figure 9. A: Recommendations for baseline period visualization in ERP analysis (N of respondents - 163). B:
Ratio of analyzed vs. recorded electrodes (N of respondents - 208).

<a id="p012-b003"></a>

<!-- p012-b003 -->
Figure 10. User preferences concerning voltage orientation by field of research (N of respondents - 188)

<a id="p012-b004"></a>

<!-- p012-b004 -->
4.5. WHAT PROPORTION OF ERP RESEARCHERS ARE                           all respondents who had previously published an ERP plot
FAMILIAR WITH PERCEPTUAL ISSUES RELATING TO                           (n=157) 40% did not include error bars (Figure 11A).
COLOR MAPS AND UNCERTAINTY VISUALIZATION?                                 We were further interested in whether researchers are
                                                                      aware of 2D color maps: 68% of the 213 respondents in-
To test visualization literacy, we asked respondents about            dicated that they had heard of it. Interestingly, more than
their awareness of issues related to color maps and error             76% (of those being aware) would like to use 2D color maps
bars. Out of 213 respondents, 39% were unaware of the                 for uncertainty visualization in the future if they were eas-
perceptual controversies regarding color maps. Next, out of           ily available in their software packages.

<a id="p012-b005"></a>

<!-- p012-b005 -->
Aperture Neuro                                                    12

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p013-b002"></a>

<!-- p013-b002 -->
Figure 11. The error ribbons on a line graph and how researchers interpret them (N of respondents: A - 157, B -
85)

<a id="p013-b003"></a>

<!-- p013-b003 -->
4.6. HOW DOES PROFICIENCY IN EEG CORRELATE WITH                         perienced researchers tend to keep all recorded channels in
TOOL USAGE, TOOL FEATURE PREFERENCES, AND ERP                           the analysis.
VISUALIZATION PRACTICES?                                                   Lastly, we want to stress that none of these findings
                                                                        show any causal effects, they all depend on a biased sample
In this section, we wanted to test how proficiency affects              and the effect sizes are quite small. We also did not correct
preferences, habits, and awareness of ERP visualization.                for multiple testing, as taking such p-values at face value is
    First, we explored if there was a correlation between pro-          a fool’s errand in the first place.
ficiency and preference for a specific research tool. Out of
27 tools, 10 tools plus custom scripts as a unique category
                                                                        5. DISCUSSION
were selected for analysis based on the criteria that more
than 10 people used this tool. We used 10 separate univari-
                                                                        In this study, we explored the current state of ERP visual-
ate logistic regressions to evaluate traces of potential re-
                                                                        ization practice in the EEG community and tried to under-
lationships between higher proficiency of researchers and
                                                                        stand the challenges faced by practitioners. Our research
the experience with using any such tool. Importantly, the
                                                                        questions focused on identifying popular ERP visualization
p-values are merely indicative of a potential effect, besides
                                                                        tools, determining which features of these tools are impor-
the problems of a likely biased convenience sample and
                                                                        tant for practitioners, investigating controversies in ERP vi-
the small effect sizes. We further did not correct for mul-
                                                                        sualization, and assessing the awareness of researchers re-
tiple comparisons and we recommend the reader applies a
                                                                        garding visualization issues.
suitable critical value themselves: EEGLAB (log(OR)=0.27,
CI=(0.08, 0.44), p=0.006), ERPLAB (log(OR)=0.2, CI=(0.01,
                                                                        5.1. RECOMMENDATIONS ON THE PLOT NAMING
0.39), p=0.04), FieldTrip (log(OR)=0.19, CI=(0.03, 0.36),
p=0.02), and LIMO (log(OR)=0.34, CI=(0.05, 0.63), p=0.02).              No consensus plot name was found for most ERP plots. The
Please find all results in Supplementary Table 1.                       strongest results were for the “topoplot”, which combined
    Second, the same Spearman rank correlations were used               with the “topographical plot” received more than 80% of
to analyze associations of proficiency with indication of im-           the responses. For some, even after aggressive aggregation,
portance of software features. Out of eight software fea-               no common plot name remained, as in the case of “ERP grid
tures, only the importance of “generating a figure by cod-              plot”.
ing” correlated significantly with proficiency, showing a                  Even though it became clear that no consistent naming
small positive relation (b=0.17, CI=(0.03, 0.31), ρ=0.01). See          scheme exists, there are still several reasons why it would
all results in Supplementary Table 2 for interpretation with            be very helpful to define one. 1) Discoverability of func-
the same caveats as previously discussed.                               tions. A common lexicon is useful for naming visualization
    Third, three logistic regressions were conducted to as-             functions. The research software should be intuitive and
sess attitudes toward polarity notation, awareness of color             accessible to new users. Function names should therefore
map controversies, and willingness to use bidimensional                 be easy to find in the documentation. 2). Consistent re-
color maps. We found only one significant correlation: with             porting. It is helpful to have clear options in the visualiza-
higher proficiency, researchers were more likely to know                tion section when standardizing reports such as ARTEM-IS,
about the perceptual controversies surrounding color map                which is beneficial for reproducibility and meta-analysis. 3)
controversies (log(OR)=0.34, CI=(0.16, 0.53), p<0.001).                 Education. It is easier if teaching materials and resources
    Finally, using Spearman rank correlations, we observed              do not use different names for the same visualization.
that there is a positive significant correlation between pro-              For each plot type name, we carefully weighed the pop-
ficiency and the number of tools used (ρ=0.31, CI=(0.17,                ularity of the proposed names among researchers, unique-
0.44), p<0.001), and the ratio of channels analyzed to chan-            ness compared to other commonly used plot types, and
nels recorded (ρ=0.26, CI=(0.13, 0.39), p<0.001). While the             their logic and memorability.
first result is rather obvious, the latter is less so: more ex-

<a id="p013-b004"></a>

<!-- p013-b004 -->
Aperture Neuro                                                     13

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p014-b002"></a>

<!-- p014-b002 -->
• ERP plot.                                                               (“multi-channel ERP” could be confused with either a
  With 40% of the votes this name was the most popu-                      “butterfly plot”, or an “ERP plot” averaged over mul-
  lar among EEG practitioners. The runner up sugges-                      tiple channels). We therefore suggest “ERP grid” as
  tions, such as “averaged ERP” seemed a bit redun-                       the name for this plot type, even though we are aware
  dant (the great majority of ERPs are averaged) or did                   of the issues with proposing yet another standard
  not receive many votes (e.g. “ERP waveform plot”).                      (Munroe, 2013)
  While a typical “ERP plot” is technically a type of line              • ERP image
  plot, it is not referred to by this name among EEG re-                  This plot is technically a heatmap but known to most
  searchers (3%).                                                         as an “ERP image” (27%). It was proposed under this
• Butterfly plot.                                                         name by Jung et al.50
  The name “butterfly” (48%) doesn’t describe the un-                   • Channel image
  derlying plot type or data, such as names “multi-                       The two most popular options, “channels ERP” (35%)
  channel line plot” or “multi-channel ERP plot”. How-                    and “heatmap” (16%), are both misleading: “chan-
  ever, it is still a catchy and popular description of the               nel(s) ERP” could be confused with the “butterfly
  resulting pattern as the mirror symmetry of the lines                   plot”, and “heatmap” is too general and can be con-
  is reminiscent of the symmetry of a butterfly. One                      fused with the “ERP image” plot type. For consistency
  question remains: what is the difference between a                      and simplicity, we therefore used the third most pop-
  butterfly plot and a multi-line ERP plot? We suggest                    ular choice (9%): “channel image”.
  that a butterfly plot is one instance of a multi-line                 • Parallel coordinate plot (parallel plot).
  ERP plot, which refers to the plotting of multiple                      This plot type is very rarely used in the EEG literature
  channels, whereas the plotting of multiple single tri­                  (one example in ten Caat et al., 2007), which also re-
  als or multiple subjects could be referred to with a                    flects in the answers to our survey: only 8 respon-
  qualifier, e.g. “single-trial/multi-trial ERP plot” or                  dents recognized this plot type. We therefore decided
  “multi-subject ERP plot” whenever appropriate.                          to keep the formal name from the visualization liter-
• Topography plot (short “topoplot”).                                     ature, coined in 1885.51
  The topography plot is a 2D projection and inter-
  polation of the 3D distributed sensor activity. The               5.2. POPULARITY OF ERP VISUALIZATION TOOLS
  name stems from physical geography, but instead of
  height, the contour lines represent voltage levels. Re-           This distribution of software experience is useful for infer-
  spondents were fairly unanimous that either topog-                ring trends in software experience. Users should know what
  raphy plot (40%) or topoplot (39%) should be chosen.              tool to learn and software developers where to invest time
  We decided to promote both names, as topoplot is a                and effort. Furthermore, the selection of software toolboxes
  convenient and unequivocal nickname to topography                 or versions may contribute to variations in the results,52
  plot.                                                             thus knowing the most popular tools helps to be aware
• Topography timeseries (short “topoplot series”).                  about possible methodological biases in the field.
  Technically, a multiple miniature topography plot,                   According to our survey, most EEG practitioners (82%)
  most of the suggested names included prepositions                 have experience with MATLAB-based tools, including
  (e.g. “by”, “on”, “at”), but we decided to leave them             EEGLAB, FieldTrip, ERPLAB and Brainstorm. The Python-
  out for the sake of brevity. The most popular result              based MNE and commercial software Brain Vision Analyzer
  was “topoplot/topography timeseries” (23%/22%).                   also showed significant usage, as well as custom scripts
  The runner up “topoplots” is ambiguous with the                   written in programming languages such as R, Python, Julia.
  topography plot introduced above, so we decided to                However, experience with a tool does not directly reflect in
  add ‘timeseries’ for clarity. This retains the link to            citing the tool. About 1.5 times more respondents had ex-
  traditional topography plots but highlights the differ-           perience with EEGLAB than with its closest competitor, but
  ences.                                                            the yearly citations show a gap of 2 to 4 times. This is ei-
• ERP grid (plot)                                                   ther an indication that our question asked for experience
  This is the most challenging plot to name for EEG                 and not application, or a sampling bias in our survey.
  practitioners, as the community could not agree on                   It is interesting to compare these results with the pre-
  a unique, descriptive plot title. We chose “ERP grid”             vious survey from 2011 on research software in neuro-
  because the multiple miniatures of the ERP plot in                science.53 This allows us to make some careful comparisons
  this figure are typically arranged according to elec-             of what changed in EEG software popularity during the last
  trode positions, mimicking a grid across the scalp. Al-           12 years (Table 4). In 2011 the first three leading positions
  ternative names were “ERP montage / scalp”, “ERP                  were taken by EEGLAB, Fieldtrip and Brainstorm. Brainvi-
  channels” or “multi-channel ERP”, “multi-axis ERP”                sion Analyzer was fourth, MNE only seventh, while ERPLAB
  or “topographic ERP / array”. However, the terms                  got only one user. One can observe the following trends:
  were either not well known (such as “montage”, “ar-               1) Users still have the most experience with MATLAB-based
  ray”), misleading (“topographic” - there are no height            toolboxes; 2) Brainstorm’s popularity decreased and ER-
  lines, “multi-axis” - a name that typically refers to             PLAB took its place; 3) MNE moved from seventh to third
  e.g. two y-axes in one plot), or potentially confusing            place (excluding custom scripts). Note that the survey sam-
                                                                    pled all of neuroscience (we used numbers only for M/EEG

<a id="p014-b003"></a>

<!-- p014-b003 -->
Aperture Neuro                                                     14

<a id="page-015"></a>

## PDF page 15

<a id="p015-b001"></a>

<!-- p015-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p015-b002"></a>

<!-- p015-b002 -->
Table 4. Comparison of the usage of some softwares in Hanke & Halchenko and our study.

<a id="p015-b003"></a>

<!-- p015-b003 -->
Tool Paper               EEGLAB           Fieldtrip        Brainstorm          Brain Vision Analyzer     MNE    ERPLAB
   2011 (Hanke & Halchenko)        92%              44%              31%                 31%                       17%    1 user
   N= 181
   2023 (ours)                     63%              46%              41%                 22%                       41%    22%
   N=213

<a id="p015-b004"></a>

<!-- p015-b004 -->
researchers) and asked for what they use in their research              data-driven methods58 or, of course, simply use all chan-
activities.                                                             nels in a mass-univariate analysis.1,11,16,59,60
   Recently, the EEGManyPipelines project54 asked 168                       2. Regarding the visualization of baseline duration, 45%
teams to test eight hypotheses based on the same provided               of respondents suggested 200 ms and 22% suggested 100
data. They preliminarily released the software packages the             ms as optimal, followed by 12% for 500 ms. We found base-
teams used. Interestingly, MNE was the most popular tool                lines as short as 100 ms surprising, as gauging the noise
(44 teams), only then followed by EEGLAB (42) and Field-                level seems difficult (but no empirical study is available as
trip (31). Note that this sample may be biased toward more              of now). We are further quite sympathetic to the respon-
experienced and methodologically oriented teams.                        dents, who argued that the period should be adapted to
   Together with the citation pattern (Figure 7), this leaves           the length of the whole trial. Consequently, we recommend
us with four resources for assessing current tool experience            showing a baseline of at least 200 ms, and, as some partic-
and usage. It seems that MNE-Python is on the rise, with                ipants pointed out, at least the size of the baseline-correc-
currently the fastest growth rate, and already has the most             tion period you chose.
users among the EEGManyPipeline teams. However, by far                      3. The majority of respondents (82%) preferred positive
the largest share of experience and usage is combined in                voltages to be displayed up on the Cartesian coordinate sys-
MATLAB-based tools, especially EEGLAB.                                  tem, contrary to the historical practice to sometimes show
                                                                        negativity upward. Thus, “positivity up” gathers support
5.3. IMPORTANT TOOL FEATURES                                            and can be regarded as the predominant way in current
                                                                        practice.
We found that practitioners often faced specific problems                   4. About 60% of respondents perceive each topoplot as
when generating different ERP visualizations. For instance,             a snapshot of scalp electrical activity at a particular time,
adding uncertainty to ERP plots, styling and color in but-              while the other 39% perceive it as an average of a time in-
terfly plots, channel highlighting in topoplots, and legibil-           terval. Therefore, it can cause faulty interpretations, confu-
ity and scaling in ERP grids were among the most common                 sion and might result in irreproducible outcomes. Authors
challenges. These results partially mimic other literature:             are encouraged to label their topoplot series respectively.
representing uncertainty was discussed as one of the most               And similarly, readers should carefully consider what is ac-
challenging research problems in scientific visualization al-           tually being depicted. There is no empirical study of the
ready in 2004.55                                                        practical differences between these two approaches, but it
   Moreover, our survey indicated that customizability, re-             is reasonable to think that single time snapshots will have
producibility, generating plots by coding and publication-              weaker signal-to-noise ratios and be more affected by low-
ready plots were highly valued features for ERP visualiza-              pass filtering.
tion tools. However, there was skepticism regarding
interactive data selection methods. EEG practitioners, and              5.5. AWARENESS ABOUT VISUALIZATION PROBLEMS.
experts even more strongly, also expressed a preference for
generating plots through scripting rather than using GUI                For RQ4, we assessed researchers’ awareness of visualiza-
interfaces. These insights can provide guidance for improv-             tion issues specifically related to uncertainty visualization
ing existing visualization tools and developing new ones                and color maps.
that align with the preferences and requirements of users.                 Approximately 40% of those who published an ERP line
                                                                        plot did not include error bars, important for accurate data
5.4. COMMUNITY OPINIONS ON ERP VISUALIZATION                            interpretation. This percentage is worse than in previous
CONTROVERSIES                                                           studies for non-timeseries plots (~20%).31 Note that Allen
                                                                        et al. did not consider timeseries, where uncertainty visual-
Next, we investigated four controversies surrounding ERP                ization is more challenging, and did not conduct a survey;
visualization.                                                          they counted visualizations in papers.
   1. Our results showed that electrode selection varied                   A considerable proportion of respondents (39%) were
across researchers, with only about 38% using all recorded              not aware of any perceptual controversies related to color
electrodes for analysis. Researchers who subselect channels             maps. Our results are in line with direct studies of the
should be aware of potential issues with expanding re-                  prevalence of jet color maps in EEG. Approximately 40%
searchers’ degrees of freedom, circular analyses56 or even              of our respondents weren’t aware of this issue in 2023 and
cherry-picking. If a-prior recommendations from the liter-              ~60% of published (time-frequency) figures used jet color
ature57 cannot be used, it is also possible to carefully use

<a id="p015-b005"></a>

<!-- p015-b005 -->
Aperture Neuro                                                     15

<a id="page-016"></a>

## PDF page 16

<a id="p016-b001"></a>

<!-- p016-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p016-b002"></a>

<!-- p016-b002 -->
Table 5. The usage of rainbow color map in 6 different fields

<a id="p016-b003"></a>

<!-- p016-b003 -->
Field                            Years and N of              Rainbow palette usage                                                                                    Study
                                     papers
    EEG (time-                       2000-2020                   74% of figures on average used the rainbow color palette and its                                         61
    frequency plots)                 (n=1652)                    derivatives with a peak in 2016 (~85%), and decrease to ~60% in 2020
    Functional                       1996-2009                   15.2% of all figures are in the rainbow scale (RBS)a                                                     64
    Neuroimaging                     (n=3993)
    (fMRI and PET)
    Geoscience                       2005, 2010,                 55% of all papers contained at least one visualization using rainbow or red-                             65
                                     2015, 2020 (n               green color schemesb with the peak in 2015 (61%) and decrease in 2020
                                     = 2638)                     (55%)
    Fisheries                        2009-2019                   16% of papers used rainbow color mapsc                                                                   66
    acoustics                        (n=100)
    (hydrology)
    IEEE Visualization               1990-2020                   The number of papers that contain a figure with rainbow colors decreased                                 63
    conference                       (n=3057)                    from 39.6% in 1993 to 1.9% in 2020
    proceedings
    Remote sensing                   2016-2020                   48% and 64% of papers used rainbow color map                                                             63
    and planetary                    (n=155, 150)
    science

<a id="p016-b004"></a>

<!-- p016-b004 -->
a Only 49% of them used RGB in full spectrum and in a standard order of colors.
b 34% of the papers had at least one figure with a rainbow color map and 21% contained a figure with red-green elements.
c 34 papers used the EK500 color map, which is even worse, but was the default color scheme on the Simrad EK500, one of the first scientific echosounders. It has only 12 available

<a id="p016-b005"></a>

<!-- p016-b005 -->
colors due to the limited capabilities of a bit plane, although echosounders have become more advanced since then.

<a id="p016-b006"></a>

<!-- p016-b006 -->
maps in 2020.61 While generating more awareness is help-                                       The limitations mentioned in the method section are
ful, another idea is to implicitly discourage the use, by                                    worth repeating: the effects were small, are based on a con-
defining better defaults. For example, as of 2023, EEGLAB                                    venience sample and should be interpreted with care.
still uses the jet color map as the default. Some discussion
was started in 202262 to change the default to turbo (im-                                    5.7. BEST PRACTICES FOR ERP PLOTS VISUALIZATION
proved but still problematic rainbow color map), but so far,                                 FOR RESEARCHERS
no further progress has been made.
   In general, the field of EEG shows one of the highest us-                                 There are already some recommendations from COBIDAS12
ages of rainbow color maps in the literature (Table 5). Un-                                  for ERP plot visualization:
surprisingly, most awareness can be found in the field of vi-                                     • Label all axes and report all units. Direct labels are
sualization, where usage of rainbow color bars per year in                                          preferred.
papers dropped from 39.6% in 1993 to 1.9% in 2020.63                                              • Plot all channels and conditions. As we can see in
   These findings suggest that to ensure reliable and mean-                                         RQ5 more experienced researchers tend to analyze
ingful representations of data, we need to increase aware-                                          more recorded electrodes.
ness of visualization best practices not only among scien-                                        • Show error measures (CI or SD) and label them.
tists, but also among software developers. More emphasis
needs to be placed on such issues in educational curricula,                                     However, we would like to expand this list with insights
while software developers should encourage users to use                                      from our study and practice:
better color maps by setting appropriate defaults.                                                • Pay attention to color maps, they should be scientific:
                                                                                                    perceptually uniform, intuitively ordered, and color-
5.6. CORRELATION WITH PROFICIENCY                                                                   blind friendly.35
                                                                                                  • Be aware about where to use diverging and sequential
We found that researchers with more experience are famil-                                           color maps. Following Pernet & Madan, diverging
iar with more analysis toolboxes and generally had more                                             color maps are used when there is a meaningful cen-
experience with either EEGLAB, ERPLab, FieldTrip or LIMO                                            ter value, while sequential ones are for scales with
compared to other toolboxes. Whether specialization, pop-                                           continuously increasing or decreasing values.36,67
ularity, or the age of the toolbox plays a decisive role in this                                  • Use distinctive colors in case of categorical data, e.g.
is not entirely clear. Note that experience typically corre-                                        different task conditions, of anatomical regions-of-
lates directly with age, so the correlations found could sim-                                       interest.36
ply be an effect of how old a given toolbox is.                                                   • Plot positivity upward.
   Experts further consider the generation of plots by code                                       • Clearly label topoplot timeseries with what each
as a more important feature compared to less experienced                                            topoplot represents. E.g. the range bracket notation
researchers. They are also more often aware of the percep-                                          [0.12-0.14) would indicate that the samples are taken
tual issues of color bars and tend to keep more recorded                                            from 0.12 (including 0.12) to 0.14 (excluding 0.14).
electrodes during their analysis.

<a id="p016-b007"></a>

<!-- p016-b007 -->
Aperture Neuro                                                                                  16

<a id="page-017"></a>

## PDF page 17

<a id="p017-b001"></a>

<!-- p017-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p017-b002"></a>

<!-- p017-b002 -->
• Channel and ERP images typically use diverging color               sults, especially concerning plot naming, could be different.
    maps. For circular plots, such as the position-color               Our findings may not be applicable to opinions of all EEG
    encoding in a butterfly plot, use circular color maps.             practitioners due to these reasons.
    (Figure 3B).                                                          In addition, it’s possible that some questions in our sur-
  • If you use topoplot timeseries, keep heights of color              vey were ambiguous, leading to variable responses from
    limits and contour lines identical across subplots.68              participants. For example, when asked to name a plot, some
  • Include at least the baseline period which was used                participants tended to describe it. One might have gotten
    for the baseline correction.                                       more consistent results by asking people to name plots in
  • Explore 2D colormaps that can indicate both voltage                two or one words, or by asking: “What would you call a soft-
    and uncertainty. You can find detailed guides for 2-di-            ware function to plot this figure?” Similarly, some of our
    mensional color maps here.69                                       questions about software features might be ambiguous, for
                                                                       example there is some room for interpretation in how to
   We further recommend reading the excellent paper from               understand ‘interactivity’ or ‘reproducibility’.
Allen et al with suggestions about visualization of axis,                 Finally, our study only covers plots of event-related po-
uncertainty, annotation, and color.31 Also read this paper             tentials. It remains to be seen which findings can be gener-
about the importance of adding uncertainty in a plot in-               alized to other EEG plots in the domains of spectral estima-
stead of showing brute summary statistics.70                           tion or connectivity.72,73

<a id="p017-b003"></a>

<!-- p017-b003 -->
5.8. SUGGESTIONS FOR SOFTWARE DEVELOPERS                               5.10. FURTHER RESEARCH
While there are already some recommendations for re-                   A survey like ours only captures a still image of an ongoing
search software development, they are mostly of a rather               process. The field is self-educating, software is constantly
general nature.71 As such, additionally to our main survey             improving, or new visualizations are being proposed. For
focus, we collected raw feedback on toolbox usage (usage               future studies on this topic, we suggest some interesting
complaints, suggested features, and general recommenda-                follow-up questions:
tions on plotting) and sent them to the six respective tool-
                                                                           • In addition to our question of which tool the respon-
box developers by mail or via GitHub issues. Here we sug-
                                                                             dents have experience with, one could ask “What is
gest accumulated recommendations concerning software
                                                                             the main tool you use for ERP analysis?” to find out
development in the field of electroencephalography visual-
                                                                             which tool is in use most of the time.
ization in general:
                                                                           • "If multiple plot types are available to display similar
  • Use intuitive names for functions.                                       information, how do you choose which to use (e.g.
  • Make scientific color maps the default option.                           topoplots vs. butterfly plot vs. channel image)?
  • Make upward polarity notation the default option.                      • “If you did not use all electrodes in your research,
  • Encourage users to give labels to topoplots which in-                    what was the reason for this decision?”
    dicate whether a single time-point or an average of                    • “Are you familiar with sequential and diverging color
    time-ranges is used (e.g. using the range bracket no-                    maps for data visualization?”
    tation).                                                               • “What is your default color map?”
  • Make error bars and error ribbons easy to use and
    nudge users to always include them.                                   Furthermore, an interesting approach for future studies
  • Use plotting backends that allow for flexible cus-                 might be to present participants with figures that follow or
    tomization by the users.                                           violate certain visualization principles and ask participants
  • Ensure the plots can be made reproducible, especially              to identify potential visualization problems or shortcom-
    if the users can edit them via a GUI.                              ings. This method would allow for a more indirect assess-
                                                                       ment of awareness of visualization problems.
5.9. LIMITATIONS                                                          We found it noteworthy that no study to date has inves-
                                                                       tigated how interpolation algorithms, interpolation shape
This study has a number of limitations that reduce the gen-            (circle, neck, elongated), or projection algorithms affect the
eralizability of our findings. First, we surely have a sample          perceived strength of evidence and implicit localization of
bias, meaning that the people who participated do not fully            EEG activity on topoplots. The difference in accuracy and
represent the entire population of scientists using EEG. For           precision between plotting time points and averaged time
instance, the majority of our sample is made up of EEG re-             periods in topoplot series is not studied either. In addition,
searchers working in rich, western countries with a long               we are not aware of a study investigating the length of the
and well-established tradition of scientific research: 76% of          baseline period and its influence on being able to gauge the
our participants are from Europe (with 49% are from West-              signal-to-noise ratio.
ern Europe) and 13% are from North America. Scientists                    A separate topic could be a study of EEG visualization
working in Africa, Asia, and South America are not well rep-           practices in research institutions in Asia, Africa, and South
resented in our study (1-3% each). Further, 86% of our re-             America, and in medical or practical settings since such re-
spondents are from fundamental research, shadowing re-                 spondents were lacking in our study. It will also be inter-
searchers from the medical or applied fields. The survey               esting to repeat a similar study in ten years to see what
was conducted in English, while in other languages the re-             progress has been made in the field.

<a id="p017-b004"></a>

<!-- p017-b004 -->
Aperture Neuro                                                     17

<a id="page-018"></a>

## PDF page 18

<a id="p018-b001"></a>

<!-- p018-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p018-b002"></a>

<!-- p018-b002 -->
1It would be beneficial to supplement our inquiry into                AUTHOR CONTRIBUTIONS
plot types with a literature review to examine the terminol-
ogy used in actual research papers.                                      Vladimir Mikheev: Conceptualization, Software, Method-
                                                                         ology, Data Curation, Investigation, Writing - Original
                                                                         Draft, Visualization, Formal analysis.
6. CONCLUSIONS
                                                                         René Skukies: Methodology, Writing - Review & Editing.
                                                                         Benedikt Ehinger: Conceptualization, Methodology, Writ-
This study provides insight into the current state of ERP vi-
                                                                         ing - Review & Editing, Supervision, Visualization.
sualization in the EEG community. In our study we identi-
fied the most popular tools among EEG researchers, under-
                                                                         FUNDING
stood preferred features of visualization tools, addressed
common opinions on controversial topics, and assessed vi-                Funded by the Deutsche Forschungsgemeinschaft (DFG,
sualization literacy. We also identified areas for improve-              German Research Foundation) – Project-ID 251654672 –
ment in EEG analysis tools and suggested some topics for                 TRR 161. Additionally, René Skukies was funded by
future research. The results of this study can guide the de-             Deutsche Forschungsgemeinschaft (DFG, German Research
velopment of more effective and user-friendly ERP visu-                  Foundation) under Germany’s Excellence Strategy - EXC
alization tools, ultimately advancing the field of EEG re-               2075 - 390740016.
search and facilitating more accurate and interpretable
data analysis.                                                           DECLARATION OF COMPETING INTERESTS

<a id="p018-b003"></a>

<!-- p018-b003 -->
No competing interests.

<a id="p018-b004"></a>

<!-- p018-b004 -->
DATA AND CODE AVAILABILITY                                               ACKNOWLEDGMENTS

<a id="p018-b005"></a>

<!-- p018-b005 -->
The data and analysis script are publicly available. The raw             We would also like to acknowledge Judith Schepers, Jan
dataset can be found at the DaRUS-Dataverse repository                   Haas, Martin Geiger, Hannes Bonasch, Guanhua Zhang,
https://doi.org/10.18419/darus-3729.39 Analysis scripts are              Luis Lips, Felix Schroder, Olaf Dimigen, Robert Oostenveld,
available at https://github.com/vladdez/Survey_analyses/                 Phillip Alday for their feedback on the methodology, struc-
tree/main or https://zenodo.org/records/10402375.44                      ture, and design of the survey.

<a id="p018-b006"></a>

<!-- p018-b006 -->
Submitted: January 25, 2024 CDT, Accepted: April 08, 2024
                                                                         CDT

<a id="p018-b007"></a>

<!-- p018-b007 -->
This is an open-access article distributed under the terms of the Creative Commons Attribution 4.0 International License
            (CCBY-4.0). View this license’s legal deed at http://creativecommons.org/licenses/by/4.0 and legal code at http://creativecom-
            mons.org/licenses/by/4.0/legalcode for more information.

<a id="p018-b008"></a>

<!-- p018-b008 -->
Aperture Neuro                                                               18

<a id="page-019"></a>

## PDF page 19

<a id="p019-b001"></a>

<!-- p019-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p019-b002"></a>

<!-- p019-b002 -->
REFERENCES

<a id="p019-b003"></a>

<!-- p019-b003 -->
1. Smith NJ, Kutas M. Regression‐based estimation of                    12. Pernet C, Garrido MI, Gramfort A, et al. Issues
ERP waveforms: I . The rERP framework.                                  and recommendations from the OHBM COBIDAS
Psychophysiology. 2015;52(2):157-168. doi:10.1111/                      MEEG committee for reproducible EEG and MEG
psyp.12317                                                              research. Nat Neurosci. 2020;23(12):1473-1483.
                                                                        doi:10.1038/s41593-020-00709-0
2. Dimigen O, Ehinger BV. Regression-based analysis
of combined EEG and eye-tracking data: Theory and                       13. Šoškić A, Kovic V, Algermissen J, et al. ARTEM-IS
applications. J Vis. 2021;21(1):3. doi:10.1167/                         for ERP: Agreed Reporting Template for EEG
jov.21.1.3                                                              Methodology - International Standard for
                                                                        Documenting Studies on Event-Related Potentials.
3. Ehinger BV, Fischer P, Gert AL, et al. Kinesthetic                   PsyArXiv. Published online January 5, 2023.
and vestibular information modulate alpha activity                      doi:10.31234/osf.io/mq5sy
during spatial navigation: a mobile EEG study. Front
Hum Neurosci. 2014;8. doi:10.3389/fnhum.2014.00071                      14. Styles SJ, Ković V, Ke H, Šoškić A. Towards
                                                                        ARTEM-IS: Design guidelines for evidence-based EEG
4. Jacobsen NSJ, Blum S, Scanlon JEM, Witt K,                           methodology reporting tools. NeuroImage.
Debener S. Mobile electroencephalography captures                       2021;245:118721. doi:10.1016/
differences of walking over even and uneven terrain                     j.neuroimage.2021.118721
but not of single and dual-task gait. Front Sports Act
Living. 2022;4:945341. doi:10.3389/fspor.2022.945341                    15. Clayson PE, Carbine KA, Baldwin SA, Larson MJ.
                                                                        Methodological reporting behavior, sample sizes, and
5. Scanlon JEM, Jacobsen NSJ, Maack MC, Debener S.                      statistical power in studies of event-related
Outdoor walking: Mobile EEG dataset from walking                        potentials: Barriers to reproducibility and
during oddball task and walking synchronization                         replicability. Psychophysiology. 2019;56(11):e13437.
task. Data Brief. 2023;46:108847. doi:10.1016/                          doi:10.1111/psyp.13437
j.dib.2022.108847
                                                                        16. Groppe DM, Urbach TP, Kutas M. Mass univariate
6. Wunderlich A, Grieger S, Gramann K. Landmark                         analysis of event-related brain potentials/fields I: A
information included in turn-by-turn instructions                       critical tutorial review. Psychophysiology.
induce incidental acquisition of lasting route                          2011;48(12):1711-1725. doi:10.1111/
knowledge. Spat Cogn Comput. 2023;23(1):31-56.                          j.1469-8986.2011.01273.x
doi:10.1080/13875868.2021.2022681
                                                                        17. Urbach TP, Kutas M. Interpreting event-related
7. Zink R, Hunyadi B, Huffel SV, Vos MD. Mobile EEG                     brain potential (ERP) distributions: Implications of
on the bike: disentangling attentional and physical                     baseline potentials and variability with application to
contributions to auditory attention tasks. J Neural                     amplitude normalization by vector scaling. Biol
Eng. 2016;13(4):046017. doi:10.1088/1741-2560/13/4/                     Psychol. 2006;72(3):333-343. doi:10.1016/
046017                                                                  j.biopsycho.2005.11.012

<a id="p019-b004"></a>

<!-- p019-b004 -->
8. Klemelä JS. Multivariate Nonparametric Regression                    18. Alday PM. How much baseline correction do we
and Visualization: With R and Applications to Finance.                  need in ERP research? Extended GLM model can
John Wiley & Sons; 2014.                                                replace baseline correction while lifting its limits.
                                                                        Psychophysiology. 2019;56(12). doi:10.1111/
                                                                        psyp.13451
9. Caat MT, Maurits NM, Roerdink JBTM. Design and
Evaluation of Tiled Parallel Coordinate Visualization
of Multichannel EEG Data. IEEE Trans Vis Comput                         19. Luck SJ. An Introduction to the Event-Related
Graph. 2007;13(1):70-79. doi:10.1109/tvcg.2007.9                        Potential Technique. 2nd ed. The MIT Press; 2014.

<a id="p019-b005"></a>

<!-- p019-b005 -->
10. Caat MT. Multichannel EEG Visualization. s.n.];                     20. Davis H, Davis PA, Loomis AL, Harvey EN, Hobart
2008.                                                                   G. ELECTRICAL REACTIONS OF THE HUMAN BRAIN
                                                                        TO AUDITORY STIMULATION DURING SLEEP. J
                                                                        Neurophysiol. 1939;2(6):500-514. doi:10.1152/
11. Pernet CR, Chauveau N, Gaspar C, Rousselet GA.                      jn.1939.2.6.500
LIMO EEG: A Toolbox for Hierarchical LInear
MOdeling of ElectroEncephaloGraphic Data. Comput
Intell Neurosci. 2011;2011:1-11. doi:10.1155/2011/
831409

<a id="p019-b006"></a>

<!-- p019-b006 -->
Aperture Neuro                                                         19

<a id="page-020"></a>

## PDF page 20

<a id="p020-b001"></a>

<!-- p020-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p020-b002"></a>

<!-- p020-b002 -->
21. Sutton S, Braren M, Zubin J, John ER. Evoked-                       34. Crameri F, Shephard GE, Heron PJ. The misuse of
Potential Correlates of Stimulus Uncertainty. Science.                  colour in science communication. Nat Commun.
1965;150(3700):1187-1188. doi:10.1126/                                  2020;11(1):5444. doi:10.1038/s41467-020-19160-7
science.150.3700.1187
                                                                        35. Moreland K. Why We Use Bad Color Maps and
22. Walter WG, Cooper R, Aldridge VJ, McCallum WC,                      What You Can Do About It. Electronic Imaging.
Winter AL. Contingent negative variation: an electric                   2016;28(16):1-6. doi:10.2352/
sign of sensori-motor association and expectancy in                     issn.2470-1173.2016.16.hvei-133
the human brain. Nature. 1964;203(4943):380-384.
doi:10.1038/203380a0                                                    36. Pernet CR, Madan CR. Data visualization for
                                                                        inference in tomographic brain imaging. European
23. Picton TW. Human Auditory Evoked Potentials.                        Journal of Neuroscience. 2019;51(3).
Plural Pub; 2010.
                                                                        37. Quinan PS, Padilla LM, Creem-Regehr SH, Meyer
24. Adrian ED, Matthews BH. The Berger rhythm:                          M. Examining Implicit Discretization in Spectral
potential changes from the occipital lobes in man.                      Schemes. Comput Graph Forum. 2019;38(3):363-374.
Brain. 1934;57(4):355-385. doi:10.1093/brain/                           doi:10.1111/cgf.13695
57.4.355
                                                                        38. Smith N, van der Walt S, Firing E. Magma,
25. Berger H. Über das elektroenkephalogramm des                        inferno, plasma and viridis colormaps. See
menschen. Arch Psychiatr Nervenkrankh.                                  Httpsgithub ComBIDScolormapblobmastercolormaps Py
1929;87(1):527-570. doi:10.1007/bf01797193                              Phil Trans R Soc B. 2015;11.

<a id="p020-b003"></a>

<!-- p020-b003 -->
26. Caton R. The Electric Currents of the Brain. Am J                   39. Mikheev V, Skukies R, Ehinger B. Supplementary
EEG Technol. 1875;10(1):12-14. doi:10.1080/                             material: “The Art of Brainwaves: A Survey on Event-
00029238.1970.11080764                                                  Related Potential Visualization Practices.” Published
                                                                        online February 9, 2023. doi:10.18419/DARUS-3729
27. Loomis AL, Harvey EN, Hobart G. Further
Observations on the Potential Rhythms of the                            40. Wickham H, Chang W, Wickham MH. Package
Cerebral Cortex During Sleep. Science.                                  “ggplot2.” Create Elegant Data Vis Using Gramm
1935;82(2122):198-200. doi:10.1126/                                     Graph Version. 2016;2(1):1-189.
science.82.2122.198
                                                                        41. Danisch S, Krumbiegel J. Makie.jl: Flexible high-
28. Plotting data at the channel and source level.                      performance data visualization for Julia. J Open
fieldtriptoolbox.org. August 31, 2023. Accessed May                     Source Softw. 2021;6(65):3349. doi:10.21105/
3, 2024. https://www.fieldtriptoolbox.org/tutorial/                     joss.03349
plotting/
                                                                        42. Mikheev V, Döring S, Gärtner N, Baumgartner D,
29. Plotting topographic maps of evoked data.                           Ehinger B. UnfoldMakie.jl. Published online October
mne.tools. January 17, 2024. Accessed May 3, 2024.                      2023. https://github.com/unfoldtoolbox/
https://mne.tools/stable/auto_examples/                                 UnfoldMakie.jl
visualization/evoked_topomap.html
                                                                        43. Schepers J, Lips L, Marathe M, Ehinger B.
30. Plotting topographic maps of evoked data.                           UnfoldSim.jl. Published online September 2023.
eeglab.org. Accessed May 3, 2024. https://eeglab.org/                   https://github.com/unfoldtoolbox/UnfoldSim.jl
tutorials/08_Plot_data/Data_Averaging.html
                                                                        44. Mikheev V, Skukies R, Ehinger B. The analysis
31. Allen EA, Erhardt EB, Calhoun VD. Data                              code for “The Art of Brainwaves.” Published online
Visualization in the Neurosciences: Overcoming the                      December 2023. https://github.com/vladdez/
Curse of Dimensionality. Neuron. 2012;74(4):603-608.                    Survey_analyses/tree/main
doi:10.1016/j.neuron.2012.05.001
                                                                        45. Web of Science Core Collection. Accessed
32. Meyer MA, Broome FR, Schweitzer RH Jr. Color                        November 3, 2023. https://www.webofscience.com/
Statistical Mapping by the U.S. Bureau of the Census.                   wos/author/search
Am Cartogr. 1975;2(2):101-117. doi:10.1559/
152304075784313250                                                      46. Delorme A, Makeig S. EEGLAB: an open source
                                                                        toolbox for analysis of single-trial EEG dynamics
33. Correll M, Moritz D, Heer J. Value-Suppressing                      including independent component analysis. J
Uncertainty Palettes. In: Proceedings of the 2018 CHI                   Neurosci Methods. 2004;134(1):9-21. doi:10.1016/
Conference on Human Factors in Computing Systems.                       j.jneumeth.2003.10.009
ACM; 2018:1-11. doi:10.1145/3173574.3174216

<a id="p020-b004"></a>

<!-- p020-b004 -->
Aperture Neuro                                                       20

<a id="page-021"></a>

## PDF page 21

<a id="p021-b001"></a>

<!-- p021-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p021-b002"></a>

<!-- p021-b002 -->
47. Gramfort A, Luessi M, Larson E, et al. MEG and                      60. Fields EC, Kuperberg GR. Having your cake and
EEG data analysis with MNE-Python. Front Neurosci.                      eating it too: Flexibility and power with mass
Published online 2013:267. doi:10.3389/                                 univariate statistics for ERP data. Psychophysiology.
fnins.2013.00267                                                        2020;57(2):e13468. doi:10.1111/psyp.13468

<a id="p021-b003"></a>

<!-- p021-b003 -->
48. Lopez-Calderon J, Luck SJ. ERPLAB: an open-                         61. Cooper PS, Baillet S, Maroun REK, Chong TTJ.
source toolbox for the analysis of event-related                        Over the rainbow: Guidelines for meaningful use of
potentials. Front Hum Neurosci. 2014;8:213.                             colour maps in neurophysiology. NeuroImage.
doi:10.3389/fnhum.2014.00213                                            2021;245:118628. doi:10.1016/
                                                                        j.neuroimage.2021.118628
49. Oostenveld R, Fries P, Maris E, Schoffelen JM.
FieldTrip: open source software for advanced analysis                   62. Delorme A. Turbo colormap · Issue #522 · sccn/
of MEG, EEG, and invasive electrophysiological data.                    eeglab. GitHub. 2022. Accessed November 8, 2023.
Comput Intell Neurosci. 2011;2011:1-9. doi:10.1155/                     https://github.com/sccn/eeglab/issues/522
2011/156869
                                                                        63. Gołębiowska I, Çöltekin A. What’s wrong with the
50. Jung TP, Makeig S, Westerfield M, Townsend J,                       rainbow? An interdisciplinary review of empirical
Courchesne E, Sejnowski TJ. Analyzing and                               evidence for and against the rainbow color scheme in
visualizing single-trial event-related potentials. Adv                  visualizations. ISPRS J Photogramm Remote Sens.
Neural Inf Process Syst. 1998;11.                                       2022;194:195-208. doi:10.1016/
                                                                        j.isprsjprs.2022.10.002
51. Moustafa RE. Parallel coordinate and parallel
coordinate density plots. Wiley Interdiscip Rev Comput                  64. Christen M, Vitacco DA, Huber L, Harboe J,
Stat. 2011;3(2):134-148. doi:10.1002/wics.145                           Fabrikant SI, Brugger P. Colorful brains: 14years of
                                                                        display practice in functional neuroimaging.
52. Kabbara A, Forde N, Maumet C, Hassan M.                             NeuroImage. 2013;73:30-39. doi:10.1016/
Successful reproduction of a large EEG study across                     j.neuroimage.2013.01.068
software packages. Neuroimage Rep.
2023;3(2):100169. doi:10.1016/j.ynirp.2023.100169                       65. Westaway RM. GC Insights: Rainbow colour maps
                                                                        remain widely used in the geosciences. Geosci
53. Hanke M, Halchenko YO. Neuroscience Runs on                         Commun. 2022;5(1):83-86. doi:10.5194/gc-5-83-2022
GNU/Linux. Front Neuroinform. 2011;5. doi:10.3389/
fninf.2011.00008                                                        66. Blackwell RE, Harvey R, Queste BY, Fielding S.
                                                                        Colour maps for fisheries acoustic echograms. Demer
54. Cesnaite E. EEGManyPipelines: Robustness of                         D, ed. ICES J Mar Sci. 2020;77(2):826-834.
EEG results across analysis pipelines. Presented at:                    doi:10.1093/icesjms/fsz242
September 7, 2023. https://osf.io/v9c3w
                                                                        67. Muth LC. When to use sequential and when to use
55. Johnson C. Top scientific visualization research                    diverging color scales. Datawrapper Blog. 2021.
problems. IEEE Comput Graph Appl. 2004;24(4):13-17.                     Accessed November 8, 2023. https://
doi:10.1109/mcg.2004.20                                                 blog.datawrapper.de/diverging-vs-sequential-color-
                                                                        scales/

<a id="p021-b004"></a>

<!-- p021-b004 -->
56. Lyon L. Dead salmon and voodoo correlations:
should we be sceptical about functional MRI? Brain.                     68. Ehinger B. EEG: Contours in multiple topoplots.
2017;140(8):e53-e53. doi:10.1093/brain/awx180                           2016. Accessed December 1, 2023. https://
                                                                        benediktehinger.de/blog/science/eeg-contours-in-
                                                                        multiple-topoplots/
57. Rossion B, Jacques C. Does physical interstimulus
variance account for early electrophysiological face
sensitive responses in the human brain? Ten lessons                     69. Hengl T. Visualisation of uncertainty using the
on the N170. NeuroImage. 2008;39(4):1959-1979.                          HSI colour model: computations with colours. In:
doi:10.1016/j.neuroimage.2007.10.011                                    Proceedings of the 7th International Conference on
                                                                        GeoComputation. University of Southampton;
                                                                        2003:8-17.
58. Brooks JL, Zoumpoulaki A, Bowman H. Data-
driven region-of-interest selection without inflating
Type I error rate. Psychophysiology.                                    70. Rousselet GA, Foxe JJ, Bolam JP. A few simple
2017;54(1):100-113. doi:10.1111/psyp.12682                              steps to improve the description of group results in
                                                                        neuroscience. Eur J Neurosci. 2016;44(9):2647-2651.
                                                                        doi:10.1111/ejn.13400
59. Ehinger BV, Dimigen O. Unfold: an integrated
toolbox for overlap correction, non-linear modeling,
and regression-based EEG analysis. PeerJ.
2019;7:e7838. doi:10.7717/peerj.7838

<a id="p021-b005"></a>

<!-- p021-b005 -->
Aperture Neuro                                                       21

<a id="page-022"></a>

## PDF page 22

<a id="p022-b001"></a>

<!-- p022-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p022-b002"></a>

<!-- p022-b002 -->
71. Gewaltig MO, Cannon R. Current practice in                          73. de Ridder M, Klein K, Yang J, et al. An Uncertainty
software development for computational                                  Visual Analytics Framework for fMRI Functional
neuroscience and how to improve it. PLoS Comput                         Connectivity. Neuroinformatics. 2019;17(2):211-223.
Biol. 2014;10(1):e1003376. doi:10.1371/                                 doi:10.1007/s12021-018-9395-8
journal.pcbi.1003376
                                                                        74. Práwdicz-Neminski WW. Zur Kenntnis der
72. de Ridder M, Klein K, Kim J. CereVA - Visual                        elektrischen und der Innervationsvorgänge in den
Analysis of Functional Brain Connectivity. In:                          funktionellen Elementen und Geweben des tierischen
Proceedings of the 6th International Conference on                      Organismus. Elektrocerebrogramm der Säugetiere.
Information Visualization Theory and Applications.                      Pflüg Arch Für Gesamte Physiol Menschen Tiere.
SCITEPRESS - Science and and Technology                                 1925;209(1):362-382. doi:10.1007/bf01730925
Publications; 2015:131-138. doi:10.5220/
0005305901310138

<a id="p022-b003"></a>

<!-- p022-b003 -->
Aperture Neuro                                                     22

<a id="page-023"></a>

## PDF page 23

<a id="p023-b001"></a>

<!-- p023-b001 -->
The Art of Brainwaves: A Survey on Event-Related Potential Visualization Practices

<a id="p023-b002"></a>

<!-- p023-b002 -->
SUPPLEMENTARY MATERIALS

<a id="p023-b003"></a>

<!-- p023-b003 -->
Supplementary Materials
Download: https://apertureneuro.org/article/116386-the-art-of-brainwaves-a-survey-on-event-related-potential-
visualization-practices/attachment/223813.docx

<a id="p023-b004"></a>

<!-- p023-b004 -->
Supplementary Table 1
Download: https://apertureneuro.org/article/116386-the-art-of-brainwaves-a-survey-on-event-related-potential-
visualization-practices/attachment/225428.jpg

<a id="p023-b005"></a>

<!-- p023-b005 -->
Supplementary Table 2
Download: https://apertureneuro.org/article/116386-the-art-of-brainwaves-a-survey-on-event-related-potential-
visualization-practices/attachment/225429.jpg

<a id="p023-b006"></a>

<!-- p023-b006 -->
Aperture Neuro                                        23
