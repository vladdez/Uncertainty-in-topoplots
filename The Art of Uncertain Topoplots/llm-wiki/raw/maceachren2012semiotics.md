---
id: "maceachren2012semiotics"
title: "Visual Semiotics \\& Uncertainty Visualization: An Empirical Study"
source_file: "The Art of Uncertain Topoplots/papers/maceachren2012semiotics.pdf"
source_sha256: "b65b9223e74c54899c9487e6a90bbfa72f0dc7e85ed66ddb378523daf19b0bd9"
extraction_format: 1
---

# Visual Semiotics \& Uncertainty Visualization: An Empirical Study — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
2496                             IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 18, NO. 12, DECEMBER 2012

<a id="p001-b002"></a>

<!-- p001-b002 -->
Visual Semiotics & Uncertainty Visualization: An Empirical Study
Alan M. MacEachren, Member, IEEE, Robert E. Roth, James O'Brien, Bonan Li, Derek Swingley, and Mark Gahegan
         Abstract—This paper presents two linked empirical studies focused on uncertainty visualization. The experiments are framed from
         two conceptual perspectives. First, a typology of uncertainty is used to delineate kinds of uncertainty matched with space, time, and
         attribute components of data. Second, concepts from visual semiotics are applied to characterize the kind of visual signification that
         is appropriate for representing those different categories of uncertainty. This framework guided the two experiments reported here.
         The first addresses representation intuitiveness, considering both visual variables and iconicity of representation. The second
         addresses relative performance of the most intuitive abstract and iconic representations of uncertainty on a map reading task.
         Combined results suggest initial guidelines for representing uncertainty and discussion focuses on practical applicability of results.
         Index Terms—Uncertainty visualization, uncertainty categories, visual variables, semiotics.

<a id="p001-b003"></a>

<!-- p001-b003 -->
1      I N TR O DU C TIO N
Uncertainty is a fact of information; all information contains                   reported. First, we discuss conceptualizations / taxonomies of
uncertainty, usually of multiple kinds. While there have been many               uncertainty that link components of information (space, time, and
calls for research about uncertainty visualization as a method to help           attribute) with the types of uncertainties that may be present in these
information users understand and cope with uncertainty [e.g., 1, 2]              components. Then, we summarize two visual semiotic frameworks
and a large number of potential strategies and tools for representing            used to inform the uncertainty visualizations examined in the
uncertainty visually have been developed (see the Background                     experiments. We first review the visual variables, or basic building
section below), empirical research to assess uncertainty visualization           blocks of a graphic representation, and summarize extant visual
methods has been relatively limited [exceptions include 3, 4, 5, 6, 7,           variable typologies. Next we describe the difference between iconic
8, 9]. As a result, our understanding of when and why one                        and abstract symbols, or the degree to which the sign-vehicle mimics
uncertainty visualization strategy should be used over others remains            its referent. The background reviews on each of these three topics
incomplete.                                                                      were used to structure the design of the pair of experiments.
    Here, we address this gap by reporting on two experiments that
provide insights on how to signify different categories of uncertainty.          2.1      Conceptualizing Uncertainty
We focus on discrete symbols that could be used to signify                       Uncertainty has long been recognized as a multifaceted concept [23].
uncertainty of individual items within information graphics, maps, or            A typology of uncertainty initially proposed by Thomson et al. [24],
even tables or reports. The experimental design integrates theory                and subsequently extended by MacEachren et al. [1], underpins the
from Visual Semiotics, Cartography, Information Visualization, and               research presented here. To provide context, we review the core
Visual Perception. Specifically, the experiments examine relative                components of the extended typology. It is organized around two
effectiveness of a set of uncertainty representation solutions—                  primary axes: components of information and types of uncertainty
differing in the visual variable leveraged and level of symbol                   (Table 1). A fundamental distinction typically is made among three
iconicity—when used to represent three types of uncertainty (due to              components of geographic information: (1) space, (2) time, and (3)
accuracy, precision, and trustworthiness) matched to three                       attribute; this distinction underlies most efforts to develop efficient
components of information (space, time, and attribute). The paper is             and effective information structures for spatiotemporal information
organized in four sections: Background, Experiment #1, Experiment                and is basic to the human understanding of the world [25].
#2, and Conclusion/Discussion.                                                       MacEachren, et al [1] match nine types of uncertainty to these
                                                                                 three components of information: (1) accuracy/error, (2) precision,
2      B ACK G RO UN D                                                           (3) completeness, (4) consistency, (5) lineage, (6) currency, (7)
Uncertainty representation and visualization has been addressed by a             credibility, (8) subjectivity, and (9) interrelatedness. This results in
wide range of authors from many disciplinary perspectives. Research              27 unique conditions of information uncertainty (Table 1). In a case
on uncertainty visualization has a long history [e.g., 10, 11, 12, 13,           study focusing on spatial uncertainty visualization to support
14] and remains an active research topic within both Information                 decision making within the domain of floodplain mapping, Roth [26]
Visualization and Cartography [9, 15, 16, 17, 18, 19, 20, 21]. There             found accuracy/error to be the most influential of the nine types of
are multiple contemporary reviews of extant techniques for                       uncertainty on decision making, with precision and currency having
visualizing uncertainty, including MacEachren et al. [1], Zuk [7], and           a secondary influence. Additional empirical investigation across
Bostrom [22]. Rather than summarize or repeat these reviews, we                  uncertainty conditions has been limited.
confine background to three topics that underpin the experiments
                                                                                 2.2      Visual Semiotics
• Alan M. MacEachren, Penn State University, e-mail:maceachren@psu.edu.              Visual semiotics offers a theoretical framework to conceptualize
• Robert E. Roth, University of Wisconsin-Madison, e-mail: reroth@wisc.edu       the mechanisms through which graphic representations can signify
• James O-Brien, Risk Frontiers, Macquarie University, e-mail:                   both information and its associated uncertainty. In its simplest
    james.obrien@mq.edu.au                                                       definition, semiotics is the study of sign systems; the core goal is to
• Bonan Li, ZillionInfo, e-mail: bonan.li@zillioninfo.com                        understand how a symbol (the sign-vehicle) becomes imbued with
                                                                                 meaning (the interpretant) to represent a thing or concept (the
• Derek Swingley, Penn State University, e-mail: swingley@gmail.com
                                                                                 referent) [27]. Semiotics provides a framework for understanding
• Mark Gahegan: University of Auckland, e-mail:                                  both why graphic representations work and how to revise graphic
    m.gahegan@auckland.ac.nz
                                                                                 representations for optimal signification. Important to a semiotic
Manuscript received 31 March 2012; accepted 1 August 2012; posted online         theory of information visualization is the identification and
14 October 2012; mailed on 5 October 2012.                                       articulation of the basic visual variables that can be manipulated to
For information on obtaining reprints of this article, please send               encode information (uncertainty or otherwise).
e-mail to: tvcg@computer.org.

<a id="p001-b004"></a>

<!-- p001-b004 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:28:08 UTC from IEEE Xplore. Restrictions apply.
                                               1077-2626/12/$31.00 © 2012 IEEE   Published by the IEEE Computer Society

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
MACEACHREN ET AL: VISUAL SEMIOTICS & UNCERTAINTY VISUALIZATION: AN EMPIRICAL STUDY                                                                 2497

<a id="p002-b002"></a>

<!-- p002-b002 -->
Table 1. Conditions of Information Uncertainty. 3 components of
 information (space, time, and attribute) paired with 9 uncertainty
 types (accuracy/error, precision, completeness, consistency,
 lineage, currency/timing, credibility, subjectivity, and
 interrelatedness). Table updated from MacEachren et al. [1]

<a id="p002-b003"></a>

<!-- p002-b003 -->
Category           Space              Time           Attributes

<a id="p002-b004"></a>

<!-- p002-b004 -->
Accuracy/ error    coordinates.,       +/- 1 day         counts,
                       buildings                         magnitudes
     Precision         1 degree        once per day      nearest 1000

<a id="p002-b005"></a>

<!-- p002-b005 -->
Completeness        20% cloud       5 samples for      75% reporting
                        cover               100
   Consistency       from / for a     5 say M; 2 say        multiple
                        place                T             classifiers
     Lineage          # of input         # of steps       transforma-
                       sources                                tions
    Currency/        age of maps      C = Tpresent -      census data
      timing                                Tinfo                           Fig. 1. Visual variables applied to point symbol sets.
    Credibility     knowledge of        reliability of   U.S. analyst
                        place               model        vs. informant      variable should be effective at these tasks. In contrast, we also can
   Subjectivity      local            expert           fact           predict that sign vehicles prompting appropriate metaphors will be
                      outsider             trainee            guess         easier to match correctly with qualitatively different aspects of
 Interrelatedness      source         time proximity     same author        information, such as different categories of uncertainty. To prompt
                     proximity                                              metaphors, the variation in symbols needs to incorporate a high
                                                                            degree of iconicity (thus be associative or pictorial rather than
    The concept of visual variables was originally outlined by Bertin       geometric; see Figure 2). The characteristics of sign-vehicles that
(under the label of “retinal variables”) in 1967 and made available in      make them iconic, however, often interfere with pre-attentive
an English translation in 1983 [28]. Bertin’s contention—one that is        processing because they are more visually complex.
still generally accepted in Information Visualization and                       Ideal symbols, then, are likely to be ones that are easily
Cartography—was that there are a set of fundamental visual                  understood (i.e., that are logically associated with the concept they
variables, or manipulable primitives of graphic sign vehicles, from         represent) while also being effective for map reading tasks that
which any information graphic can be built. Bertin identified seven         require visual aggregation or visual search (i.e., that support pre-
visual variables: (1) location, (2) size, (3) color hue, (4) color value,   attentive processing). These symbol goals represent a fundamental
(5) grain, (6) orientation, and (7) shape. Morrison [29] suggested the      trade-off between abstract sign vehicles, which rely on a single
addition of two more visual variables: (8) color saturation and (9)         visual variable to communicate differences in the information, and
arrangement. Subsequently, MacEachren [11, 27] proposed adding              iconic sign vehicles, which are designed to prompt particular
three variables made practical by advances in graphics technology:          interpretants through commonly understood metaphors.
(10) clarity (fuzziness) of sign vehicle components, (11) resolution            The experiments described below addressed aspects of these two
(of boundaries and images), and (12) transparency (each is                  criteria separately; Experiment #1 addressed symbol intuitiveness
potentially relevant for signification of uncertainty).                     (i.e., extent to which symbols are directly apprehended or readily
    Bertin and others used the concept of visual variables to develop       understood) while Experiment #2 addressed task performance in
a syntactics of graphic sign vehicles. Syntactics often are described       situations in which multiple symbols appear on a display.
as the ‘grammatical rules’ of a sign system, detailing how and when
the primitive elements of a sign-system should be used for
signification. Bertin based his graphical syntactics upon the level of      3   E XPE R IMEN T #1: A S SES SI N G I N TU I TI VE NES S
measurement of the signified dataset, giving a rating of acceptable or         Experiment #1 required participants to judge suitability of
unacceptable to each visual variable for numerical, ordinal, and            symbol sets for representing variation in a given category of
categorical data. MacEachren [27] describes the syntactics for the          uncertainty. Experimental design was informed by the framework of
above twelve visual variables, giving a three-step rating of good,          uncertainty conditions introduced in Table 1 and the principles of
marginal, and poor for use with numerical, ordinal, and categorical         visual semiotics relating to the visual variables and symbol iconicity.
data. The usefulness of such syntactics of visual variables was             To make the experiment practical, we narrowed the nine-part
demonstrated in Mackinlay’s [30] early implementation of an expert
system for automating the design of graphical presentations.
    The syntactic relations of eleven of the twelve visual variables for
representing uncertainty were examined in the first series of each
experiment. Figure 1 provides examples of variation in the eleven
tested visual variables. Resolution, as presented by MacEachren [27],
is omitted because it is applicable to line symbols and images only,
while the experiments reported here focus on point symbols only.

<a id="p002-b006"></a>

<!-- p002-b006 -->
2.3     Symbolic Iconicity
Based on accepted information visualization and cartographic
principles, we can predict that symbols with a dominant perceptual          Fig. 2. Symbol Iconicity. Abstract symbols (those that are geometric,
order will be more effective in tasks that take advantage of pre-           varying only a single visual variable) are good for tasks that take
attentive visual processes (e.g., visual search tasks, symbol               advantage of pre-attentive processing. However, iconic symbols
comparison tasks, visual aggregation and region comparison tasks)           (those that are associative or pictorial, prompting metaphors) are
[27]. Thus, highly abstract symbols that vary only a single visual          potentially easier to match correctly with qualitatively different aspects
                                                                            of data, such as uncertainty conditions.
  Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:28:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
2498                           IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 18, NO. 12, DECEMBER 2012

<a id="p003-b002"></a>

<!-- p003-b002 -->
uncertainty typology detailed by MacEachren et al. [1] to three high-
level types: (1) accuracy, defined as correctness or freedom from
mistakes, conformity to truth or to a standard or model, (2) precision,
defined as exactness or degree of refinement with which a
measurement is stated or an operation is performed, and (3)
trustworthiness, defined as source dependability or the confidence
the user has in the information, thus a broad category that includes
aspects of the final seven categories in Table 1. This leaves nine
conditions of uncertainty for examination in the experiment (space +
accuracy, space + precision, space + trustworthiness, time +
accuracy, time + precision, time + trustworthiness, attribute +
accuracy, attribute + precision, and attribute + trustworthiness).
    Below we describe: (1) design of the symbol sets used in both
experiments and (2) design, analysis, and results of Experiment #1.

<a id="p003-b003"></a>

<!-- p003-b003 -->
3.1      Symbol Set Design
Each symbol set contained three symbols matched to a range from
high to low certainty; the 3-step scale matched the typology cited
above. Symbol sets designed were either iconic (resembling or                Fig. 3. The Experiment #1 trial interface.
having similarity with the referent) or abstract (having an arbitrary
link with referent, here varying only a single visual variable). The         abstract symbol sets, two were common to each component of
individual symbol sets were grouped into 10 series: one for the              information (space, time, and attribute) and two were common to
general representation of uncertainty and one for each of the nine           each type of uncertainty (accuracy, precision, and trustworthiness).
categories of uncertainty described above. The general series                Finally, while the logic behind the design of iconic symbol sets for
included only abstract symbol sets based upon variation in visual            each series was much more difficult to formalize, it can be noted that
variables. The remaining nine series included both abstract and              each series included iconic symbols emphasizing both confidence
iconic symbol sets, allowing for comparison between two levels of            ranges and ambiguity. The final 76 symbol set designs are illustrated
iconicity. The iconic symbol sets were designed to prompt metaphors          in Figure 4 along with descriptive statistics from Experiment #1.
specific to the condition of uncertainty represented by the series. For
the remainder of the manuscript, we use the term symbol set to mean          3.2      Experimental Design
a group of three symbols that could be used to depict three ordinal          Experiment #1 focused on assessing symbol set intuitiveness (logic)
levels of uncertainty and the term series to refer to a group of symbol      for each uncertainty category and for uncertainty generally. Because
sets that are compared for a specific condition of uncertainty.              inclusion of 102 symbol sets (22 in Series #1 and 90 in Series #2-10)
    The Series #1 symbol sets conveyed variation in uncertainty by           would make the experiment prohibitively lengthy, a pilot study was
manipulating only a single visual variable; see Figure 1. In                 run with 31 undergraduate students from Penn State University.
Experiment #1, this series of eleven symbol sets were presented in           Participants were asked to rate on a scale of 1-7 the intuitiveness of a
two different directions, with opposite ends 'up' in each variant,           symbol set to represent an explicitly defined category of uncertainty
resulting in 22 symbol sets. We adopted two design constraints when          from Series #2-10. The top three rated abstract and iconic symbol
designing the Series #1 symbol sets. First, color attributes (hue,           sets in each series were selected for inclusion in Experiment #1,
value, saturation, transparency) were controlled, except when they           narrowing each series from 10 symbol sets to 6. The number of
were the visual variable under consideration. For example, all               symbol sets in Series #1 was left unaltered so that syntactic relations
symbols used the same green hue, except the symbol set relying on            for uncertainty visualization could be formalized for the full set.
color hue to convey information. The use of transparency differed            Thus, the number of tested symbols sets for Experiment #1 was
from the others because it is not possible to recognize transparency         reduced to 76 (22 in Series #1 and 54 in Series #2-10).
unless there is an additional feature under the symbol that can be               Due to inclusion of map-like displays in Experiment #2 (which
seen through it [31]. Second, all symbol sets, excepting the one using       drew on Experiment #1 results to determine the included symbol
shape, had a circular outline that, excepting the symbol set using           sets), participants were purposefully sampled to ensure they had
size, was the same size. Results from Series #1 provided input to            some knowledge of maps and mapping. Therefore, undergraduate
decisions not only about symbolization of uncertainty on its own.            students with a GIScience major, graduate students researching a
Results are relevant to application of each visual variable to               GIScience topic, and professionals working in GIScience and related
redundant signification (e.g., to enhance contrast of iconic symbols         fields were recruited for participation in Experiment #1. Seventy-two
that might be logical but not easily located on a map) and to                (n=72) participants completed timed suitability ranking tasks with
multivariate signification (signification of information plus its            the 76 symbol sets.
uncertainty and/or multiple aspects of uncertainty).                             An experimental apparatus was created that presented
    Design of the symbol sets for Series #2-10 focused on                    instructions and tasks consistently and to record answers and
determining an appropriate metaphor for each of the nine uncertainty         response time (RT). Participants in Experiment #1 worked in a
categories. We constructed 10 symbol sets for each of the nine               computer lab with an experiment proctor present, but all instructions
conditions of uncertainty (90 total, subsequently narrowed to 60, see        were embedded in the experiment application. Each session began
below). We adopted three design constraints. First, within the 10            with a descriptive overview of the experiment purpose. This was
total symbol sets for a category, five were abstract and five were           followed by a practice question to introduce the experimental
iconic. Second, the abstract symbol sets, due to their generic design,       interface. The experiment then progressed through the 10 series of
were included in multiple series to provide a basis for comparability;       symbol sets described above (thus 76 trials), in each case starting
this approach was not possible for the iconic symbols due to the             with the Series #1 symbol sets representing uncertainty generally.
pictorial customization for each condition of uncertainty. Of the five       Between Series #1 and the rest, the components of information
abstract symbol sets for each series, one abstract symbol set (the           (space, time, and attribute) and types of uncertainty (accuracy,
color saturation set from Series #1; see Figure 1) was included for all      precision, and trustworthiness) were introduced in separate screens.
nine conditions of uncertainty. This decision was based on multiple          Then, prior to beginning a new series, a preview screen containing
suggestions in the literature that color saturation provides an intuitive    all symbol sets to be tested in that series appeared for 10 seconds to
method to signify uncertainty [11, 32]. Of the remaining four                familiarize participants with the range of symbols in the series. Order
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:28:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
MACEACHREN ET AL: VISUAL SEMIOTICS & UNCERTAINTY VISUALIZATION: AN EMPIRICAL STUDY                                                                 2499

<a id="p004-b002"></a>

<!-- p004-b002 -->
of Series #2-10 as well as order of tasks within all series was                 Further patterns were identified within Series #1 by looking at
randomized to prevent order effects.                                        descriptive statistics (see Figure 4). Three symbol sets (fuzziness,
    After each preview screen, the trial interface was loaded (Figure       location, and value) received a mean intuitiveness ranking over ‘5.0’,
3). The interface had two primary components: (1) a symbol set and          with fuzziness and location both having a mode of ‘7’ (the highest
(2) a set of intuitiveness ranking responses. For each symbol set, the      value on the DVAS). Based on this evidence, we find fuzziness,
top symbol was labeled as uncertain and the bottom as certain.              location, and value to be good for visualizing discrete entity
    Participants specified the intuitiveness of the symbol set by           uncertainty reported at the ordinal level. Three symbol sets
selecting one of the seven interactive ranking buttons. Intuitiveness       (arrangement, size, and transparency) received a mean intuitiveness
ranking responses were presented as a discrete visual analog scale          ranking between ‘4.0’ and ‘5.0’ and a modal intuitiveness ranking of
(DVAS) from 1 (illogical) to 7 (logical). A DVAS is similar to the          ‘5.0’ or higher (with means and medians at the scale midpoint or
more commonly known Likert scale in that they both rely upon                better), suggesting that they were deemed by participants as
evenly-spaced integers to provide quantifiable metrics of participant       somewhat logical for the visualization of uncertainty. Therefore, we
assessment or preference [33]. However, a Likert scale is presented         find arrangement, size, and transparency to be acceptable for
as a diverging scheme with a central middle point representing the          visualizing discrete entity uncertainty reported at the ordinal level.
neutral state, with each step in either direction explicitly labeled. The   The remaining symbol sets (saturation, hue, orientation, and shape)
more generic DVAS is presented as a sequential scheme with no               had mean, median, and modal intuitiveness rankings below ‘4.0’ and
neutral middle-point, requiring the labeling of only the poles of the       were therefore deemed as unacceptable for visualizing discrete entity
continuum. The DVAS ranking buttons were presented in a half                uncertainty reported at the ordinal level. This is particularly
circle, rather than the more traditional horizontal alignment, so that      interesting for saturation, which is a commonly cited variable
all buttons are an equal distance from this repositioned cursor             thought to be intuitively related to uncertainty [1].
location. Intuitiveness rankings and RTs were collected for each trial.         It is important to note that the presented directionality of both
    Following selection of a intuitiveness ranking, an update screen        good and marginal symbol sets mattered in their intuitiveness for
appeared. The update screen served four purposes: (1) notify about          visualizing uncertainty, as only one direction was deemed intuitive
number of trials left in the series and number of series left in the        by participants (fuzziness: more fuzzy=less certain; location: further
experiment, (2) remind the user about the uncertainty condition for         from center=less certain; value: lighter=less certain; arrangement:
which they are rating each symbol set in the current series, (3) afford     poorer arrangement=less certain; size: smaller=less certain;
a mental break between trials, and (4) ensure that the mouse cursor         transparency: more obscured=less certain).
was at a neutral location prior to every trial.                                 Returning to Supplement-Table A, a significant difference at
                                                                            alpha=‘0.01’ was found in the intuitiveness ratings across Series #2-
3.3      Data Analysis                                                      10. There are two possible explanations for this finding. The first is
Inferential statistical analysis was applied to the Experiment #1           that it was more difficult for participants to conceptualize one or
results in two stages. In the first stage of analysis, differences in       several of the uncertainty conditions compared to the rest (e.g., they
intuitiveness and RT were examined within and across series. This           understood how uncertainty is present in the space and attribute
stage of analysis was designed to identify the most intuitive symbol        components, but not the time component, or, they understood the
set for each condition of uncertainty; this was done for abstract           accuracy and precision categories of uncertainty, but not the
symbols, iconic symbols, and symbols overall. In addition, results of       trustworthiness category). The participants may miss the metaphor
the first stage of analysis provided input for the delineation of           prompted by a given symbol set if they have a poor
syntactic relations among the visual variables for representation of        conceptualization of the associated condition of uncertainty. The
ordinal levels of uncertainty.                                              second possible explanation is a difference in logic of symbol sets by
    In the second stage of analysis, differences between the abstract       series, thus participants may have understood the concepts to be
and iconic symbol sets were examined within and across series. This         represented, but they did not find the symbol sets in some categories
round of inferential hypothesis testing was designed as a first step to     to be logically matched with those concepts. Because a significant
determine the relative merits of abstract versus iconic symbolization       difference in RT was not found across Series #2-10—showing that
for visualizing uncertainty. Series #1 was excluded from the second         participants did not need to spend more time interpreting some series
stage of analysis because of its focus on abstract symbolization only.      compared to others—the second explanation is more likely.
    For both stages of analysis, nonparametric statistics were applied          Six of the nine conditions of uncertainty (space + accuracy, space
to intuitiveness rankings, as the recorded random variable is non-          + precision, space + trustworthiness, time + trustworthiness, attribute
continuous when using a DVAS, and parametric testing was applied            + precision, and attribute + trustworthiness) reported a significant
to the RTs, which were continuous [34]. For the first stage of              difference in intuitiveness ratings at alpha=‘0.05’ for the symbol sets
analysis, the Kruskal-Wallis test (nonparametric) was applied to the        within the given series (four of these are significant at alpha=‘0.05’).
intuitiveness rankings and the ANOVA test (parametric) was applied          Thus, all space conditions and all trustworthiness conditions exhibit
to the RTs; both tests examine statistical difference across three or       differences in symbol set intuitiveness ratings. In only one case (see
more groupings. For the second stage of analysis, the Mann-Whitney          below) is the difference attributable to differences between iconic
test (nonparametric) was applied to the intuitiveness rankings and the      and abstract symbol sets generally. When examining the descriptive
independent two-group t-test with Welsh df modification                     statistics for individual symbol sets within each series (Figure 4), the
(parametric) was applied to the RTs; the Mann-Whitey and t-test are         difference in intuitiveness rankings for the three trustworthiness
nonparametric and parametric equivalents for examining statistical          series is caused by one symbol set receiving distinctly higher ratings
difference between two unmatched groups. All statistical analysis,          while the difference in intuitiveness rankings for space series (aside
descriptive and inferential, was performed using R.                         from space + trustworthiness) is caused by one symbol set receiving
                                                                            distinctly lower ratings.
3.4     Results                                                                 Only three of nine conditions of uncertainty (space + precision,
Results for the first stage of analysis are summarized in Supplement-       space + trustworthiness, and attribute + precision) reported a
Table A. Differences in intuitiveness rankings for the Series #1            significant difference in RTs at alpha=‘0.05’ (time + trustworthiness
symbol sets were found to be significant at alpha=‘0.01’. This              is significant at alpha=‘0.10’). However, all series exhibiting a
confirmed expectation that not all visual variables are intuitive for       significant difference in RT also exhibited a significant difference in
visualizing ordinal uncertainty information. There was no significant       intuitiveness ranking. This relationship is to be expected, as symbol
difference in RT, suggesting that participants found the task of            sets that are not logical or do not invoke proper metaphors will likely
judging intuitiveness to be similarly easy/difficult.                       take longer to interpret, and therefore longer to rate for intuitiveness.
                                                                            Because this match between differences in ratings and RT was not
  Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:28:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
2500                           IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 18, NO. 12, DECEMBER 2012

<a id="p005-b002"></a>

<!-- p005-b002 -->
Fig. 4. Descriptive statistics by series and symbol set with results for abstract symbols based on visual variables (Series 1) at the top followed
by Series 2-10.On box-plots mean is shown as a black line, median as a gray line, and mode as a black dot.

<a id="p005-b003"></a>

<!-- p005-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:28:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
MACEACHREN ET AL: VISUAL SEMIOTICS & UNCERTAINTY VISUALIZATION: AN EMPIRICAL STUDY                                                                              2501

<a id="p006-b002"></a>

<!-- p006-b002 -->
exhibited in Series #1, in which each symbol set isolated a single           Table 2. Abstract and iconic intuitiveness choices for each series.
visual variable, the relationship between intuitiveness and RT is            Groupings with significant differences in intuitiveness ranking (from
perhaps only apparent with an increase in symbol iconicity.                  Table 2) at alpha=‘0.05’ are marked (*)
    As shown in Figure 4 descriptive statistics, the average
intuitiveness scores for the Series #2-10 symbol sets were generally
                                                                                         Series #                   Abstract Winner            Iconic Winner
higher than those from Series #1, with a large majority of symbol
sets receiving a score over ‘5.0’ (the threshold used for Series #1 for
marking a particular symbol set as good for visualizing uncertainty).          Series #2. Space + Accuracy         graded point size*            point target
This finding was expected, as the Series #1 set of symbols were
designed without any particular category of uncertainty in mind and
                                                                               Series #3. Space + Precision          scale w/ ticks*         bullseye target size
participants were asked to judge their intuitiveness for general
uncertainty signification.
    Using the descriptive statistics in Figure 4 with the inferential               Series #4. Space +                                          consistency
                                                                                                                     crispness area
                                                                                     Trustworthiness                                             bullseye*
statistics in Supplement-Table A, it is possible to recommend an
abstract and iconic symbol set ‘intuitiveness winner’ for each
condition of uncertainty and to determine if this ‘win’ is significant         Series #5. Time + Accuracy             line error bar         arrow error bounds
(i.e., if the lowest ranking symbol sets can be discredited or if it
remains viable). Identifying a intuitiveness winner is useful for the                                                                         time pieces hour
                                                                               Series #6. Time + Precision           scale w/ ticks*
actual application of the symbol sets, but was also essential for                                                                                   glass
administration of Experiment #2. Table 2 summarizes the winning                     Series #7. Time +
abstract and iconic symbol set for each condition of uncertainty,                                                     line w/ dots          time pieces sun dial*
                                                                                     Trustworthiness
identifying the symbol sets by the names given in Figure 4, and an
asterisk if the win was significant.                                         Series #8. Attribute + Accuracy filled bar and slider                 smiley
    The second stage of analysis examined the difference between
abstract and iconic symbolization in Series #2-10. The results of this
round of analysis are provided in Table 3. Looking at Series #2-10            Series #9. Attribute + Precision       scale w/ ticks*               pencil*
pooled together, there was a significant difference in intuitiveness
rankings at alpha=‘0.01’ between abstract and iconic symbol sets.                 Series #10. Attribute +
                                                                                                                   pie fill consistency           stop light
The descriptive statistics for abstract and iconic symbol sets provided              Trustworthiness
in Figure 4 reveal that iconic symbol sets received a slightly higher
mean intuitiveness ranking overall (‘5.13’) than their abstract             uncertainty conditions, while understood by users, do not have
counterparts (‘4.98’). However, the difference was significant at           obvious visual analogs, or (c) we were simply not successful in
alpha=‘0.01’ for only one of the individual series, space + accuracy        designing symbol sets that prompt a metaphor that fits the
is, with attribute + accuracy significant at alpha=‘0.10’. This             conceptualization of different uncertainty conditions. The latter was
mismatch may be caused by the added statistical power provided              a factor in the seeing instruments and lights symbol sets for attribute
when pooling Series #2-10 symbol sets, allowing for the detection of        precision and trustworthiness, respectively and in the document age
smaller differences between groups with the same level of statistical       set for temporal trustworthiness (Figure 4).
significance. For three of the nine series (time + precision, time +         Table 3. Results for the second stage of analysis, assessing
trustworthiness, and attribute + precision), the abstract symbol sets        statistical differences between abstract and iconic symbolization. The
scored slightly higher than the iconic symbol sets. Thus, it is not          Mann-Whitney test was applied to the intuitiveness rankings and the
possible to state that the iconic symbolization is consistently more         independent two-group t-test with Welsh df modification was applied
intuitive regardless of uncertainty condition.                               to the RTs. Significant results at alpha=‘0.10’, alpha=‘0.05’, and
    There was a significant difference in RT between abstract and            alpha=‘0.01’ are marked in increasing shades of red.
iconic symbolization at alpha=‘0.01’ when Series #2-10 were
grouped. Unlike intuitiveness rankings, however, this relationship
also was present when looking at the difference between abstract and                                   Intuitiveness Ratings               Response Times
iconic symbol sets within a majority of individual series. Five of the               Series #
nine series (space + precision, space + trustworthiness, time +                                             W         p-value          t          df      p-value
accuracy, time + precision, and time + trustworthiness) showed a
significant difference between RTs at alpha=‘0.05’; an additional              Series #2. Space +
                                                                                                         16370.0      0.0000     1.4303        341.947      0.1535
two series (attribute + precision and attribute + trustworthiness) were             Accuracy
significant at alpha=‘0.10’. For all but one of the series (attribute +        Series #3. Space +
                                                                                                         21939.0      0.2706     -2.7179       394.349      0.0069
accuracy), participants required more time to determine the                         Precision
intuitiveness of iconic symbol sets than their abstract counterparts.          Series #4. Space +
                                                                                                         21530.5      0.1574     -3.3146       421.223      0.0010
    The overall result that iconic symbol sets are rated slightly higher        Trustworthiness
on intuitiveness for uncertainty representation but require slightly           Series #5. Time +
                                                                                                         22087.5      0.3293     -2.0233       317.988      0.0439
longer to rate matches theoretically-grounded expectations. Abstract                Accuracy
symbol sets should be fast to judge since the process of interpreting          Series #6. Time +
                                                                                                         23085.5      0.8493     -2.8751       354.435      0.0043
order and directionality (i.e., which end means more and which                      Precision
                                                                               Series #7. Time +
means less) is largely a perceptual task. Iconic symbol sets will                                        23702.5      0.7696     -2.4773       373.571      0.0137
                                                                                Trustworthiness
require more cognitive processing to identify the intended
                                                                              Series #8. Attribute +
metaphorical relationship with the uncertainty condition signified.                 Accuracy
                                                                                                         21150.0      0.0873     1.4040        356.348      0.1612
But, since the iconic symbol sets have been designed explicitly to            Series #9. Attribute +
prompt a metaphorical relationship with the uncertainty condition                                        24016.0      0.5896     -1.7144       405.775      0.0872
                                                                                    Precision
signified, when the design is successful, the rating of intuitiveness         Series #10. Attribute
should be higher. The fact that iconic symbol sets were not                                              22070.5      0.3254     -1.8319       351.631      0.0678
                                                                               + Trustworthiness
overwhelmingly rated as more intuitive suggests that: (a) the
uncertainty conditions are hard for users to conceptualize, thus the          Across Series #2-10      1763637.0      0.0002     -4.4664       3731.04      0.0000
match with any metaphor will be weak, (b) differences among
  Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:28:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
2502                           IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 18, NO. 12, DECEMBER 2012

<a id="p007-b002"></a>

<!-- p007-b002 -->
4      E XPE R IMEN T #2: S YM B O L S ETS I N M AP D ISP LAYS

<a id="p007-b003"></a>

<!-- p007-b003 -->
4.1      Experimental Design
Experiment #2 complements the focus on symbol intuitiveness from
Experiment #1 with a focus on symbol effectiveness for a typical
map use task: assessing and comparing the aggregate uncertainty in
two map regions. Thirty participants completed the assessment of
aggregate uncertainty tasks in a computer lab with a proctor present.
As with Experiment #1, undergraduate students with a GIScience
major, graduate students researching a GIScience topic, and
professionals working in GIScience and related fields were
purposefully recruited for participation in Experiment #2 to ensure
they had some knowledge of maps and mapping.
    The assessment of aggregate uncertainty tasks was completed
using the most intuitive abstract and iconic symbol sets identified in
Series #2-10 of Experiment #1 (Table 3). In two cases (Series #4
abstract and Series #7 iconic), we used the 2nd highest scoring
symbol set for Experiment #2 because the winner already was
selected for a different uncertainty type. We included two additional
abstract symbol sets from Series #1 of Experiment #1 (fuzziness and          Fig. 6. Example screen #2 of an Experiment #2 trial. The trial interface
                                                                             presents two map regions to the participant, each with uncertainty
color value) that were not identified as the winner for any condition
                                                                             signified for nine locations. The participant must conceptually
of uncertainty (i.e., in Series #2-10 of Experiment #1), giving us a
                                                                             aggregate the uncertainty of each region and select the region that is
total of 20 symbol sets for examination, two per series from                 least certain by directly clicking on the map.
Experiment #1. Each of the 20 symbol sets was tested in 12 different
map region configurations (details below), producing 240 total trials.           The spatial configuration of the uncertainty symbols is likely to
    Like Experiment #1, Experiment #2 began with a descriptive               influence aggregate judgments. This was controlled for by devising a
overview of the experiment, followed by a practice question using            spatial configuration strategy that prevented participants from being
the experimental interface. The experiment then progressed in 10             able to memorize the configuration of uncertainty (which might
series of 24 trials each. Each trial included two screens shown              influence their accuracy and speed in responding to the map region
individually in sequence: (1) a legend showing the three symbols in          comparison task), yet kept the task functionally equivalent from one
the tested symbol set with an indication of their order from uncertain       series to the next (so that the overall level of difficulty for each series
to certain (Figure 5) and (2) the map region trial itself (Figure 6).        of trials was the same). We designed the symbol configurations so
The symbol set legend screen served the secondary purpose as an              that each map region fell into one of four degrees of aggregate
update screen (as described above for Experiment #1) that offered a          uncertainty selected to generate tasks covering a range of difficulty:
mental break and repositioned the mouse cursor to a neutral location.        (1) Highly Uncertain: 7-H + 1-M + 1-C (where H = most uncertain
    As shown in Figure 6, the second screen of the Experiment #2             symbol, M = middle symbol, and C = most certain symbol in symbol
trial interface presented the participants with a map-like display           set); (2) Moderately Uncertain: 4-H + 3-M + 2-C; (3) Moderately
containing nine locations in each of three regions for which                 Certain: 2-H + 3-M + 4-C; (4) Highly Certain: 1-H + 1-M + 7-C.
uncertainty was indicated by one of the symbols in the trial set.            There are 12 non-equivalent configuration pairings when each
These were presented to the geographically knowledgeable                     individual map region is allowed to fall into one of four degrees of
participants as “maps” with two “regions,” but the maps were                 aggregate uncertainty (see Figure 7). We removed configurations
abstract enough to represent information displays more generally.            where both map regions have equal amounts of uncertainty (i.e., the
The participant’s task was to select the region of the pair for which        1-1, 2-2, 3-3, and 4-4 pairings) so that each trial had a ‘correct’
information is least certain overall. Thus, participants had to              answer. All 12 configurations were tested in an individual trial for
conceptually combine nine symbols in each region into an                     each of the included symbol sets (20 symbols sets for 12 map region
assessment of aggregate uncertainty. Participants submitted their            configurations produced 240 total trials).
choices by clicking directly on the chosen map region.                           As in Experiment #1, the first series of trials focused on general
                                                                             uncertainty, without a particular uncertainty condition mentioned.
                                                                             Series #1 included all map region configurations for the crispness
                                                                             (12 trials) and color value (12 trials) symbol sets. After participants
                                                                             completed Series #1, background information on the nine conditions
                                                                             of uncertainty (as reviewed above) was provided to the participants
                                                                             (the same background information as used define the conditions in
                                                                             Experiment #1). The order of the remaining nine series of trials was
                                                                             randomized. Each of the subsequent series included the map region
                                                                             configurations for the abstract (12 trials) and iconic (12 trials)
                                                                             symbol set winners from Experiment #1 for the associated condition
                                                                             of uncertainty; the series numbering is the same in both Experiment
                                                                             #1 and Experiment #2 in the following analysis and reporting. The
                                                                             viewing order of individual trials was randomized within each of the
                                                                             remaining 10 series, as with Series #1. Suitability rankings and RTs
                                                                             were collected for each trial.

<a id="p007-b004"></a>

<!-- p007-b004 -->
4.2     Data Analysis
                                                                                As with Experiment #1, inferential statistical analysis was applied
                                                                             to the Experiment #2 results in two stages. In the first stage of
                                                                             analysis, differences in accuracy and RT were examined across
Fig. 5. Example screen #1 of an Experiment #2 trial.                         Series #2-10. This analysis provided insight into the nature of

<a id="p007-b005"></a>

<!-- p007-b005 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:28:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
MACEACHREN ET AL: VISUAL SEMIOTICS & UNCERTAINTY VISUALIZATION: AN EMPIRICAL STUDY                                                                           2503

<a id="p008-b002"></a>

<!-- p008-b002 -->
Table 4. Statistical results for stage 1 analysis, Experiment #2,
                                                                               differences across uncertainty condition. Pearson’s chi-square test
                                                                               with Yates’ continuity correction was applied to accuracy recordings
                                                                               and ANOVA was applied to RTs. Significant results at alpha=‘0.01’
                                                                               are marked in increasing shades of red

<a id="p008-b003"></a>

<!-- p008-b003 -->
Table 5. Results for stage 2, Experiment #2, analyzing differences
                                                                               within and across symbol sets. Pearson’s chi-square with Yates’
                                                                               continuity correction is applied to accuracy recordings and the
                                                                               independent two-group t-test with Welsh df modification is applied
                                                                               to RTs. Significant results at alpha=‘0.10’, alpha=‘0.05’, and
                                                                               alpha=‘0.01’ marked in increasing shades of red

<a id="p008-b004"></a>

<!-- p008-b004 -->
pooling all symbol sets together. This finding suggests that
                                                                            participants were not equally comfortable making assessments of
                                                                            aggregate uncertainty for all uncertainty conditions.

<a id="p008-b005"></a>

<!-- p008-b005 -->
Assessment Accuracy                  Response Time
                                                                                    Subset
                                                                                                                         p-                                p-
                                                                                                       x2       df                    F         df
                                                                                                                        value                             value

<a id="p008-b006"></a>

<!-- p008-b006 -->
Series #2-10 all     31.4829     8      0.000    36.271       8,6471   0.0000
                                                                                Series #2-10 all
                                                                                                     35.2147     8      0.000    24.182       8,3231   0.0000
                                                                                    abstract
Fig. 7. The 12 map region configurations. Each individual map region
                                                                                Series #2-10 all
was allowed to fall into one of four degrees of aggregate uncertainty,                               25.7732     8      0.001    34.838       8,3231   0.0000
                                                                                     iconic
producing twelve possible map region configurations.
geospatial uncertainty and the relative difficulties exhibited when             Results for the second analysis stage for Experiment #2 are
performing map reading tasks under different uncertainty conditions.        summarized in Table 5 and Figure 8. Pooled data for Series #2-10
The inferential statistical analysis considered all Series #2-10 symbol     exhibited no significant difference in assessment accuracy between
sets together, as well as the abstract and iconic symbol sets               abstract and iconic symbol sets. Participants were more accurate
individually; Series #1 was not included in this analysis, as this pair     using iconic symbols for five of the nine series (space + precision,
of symbol sets was designed for general uncertainty. Descriptive            space + trustworthiness, time + accuracy, time + precision, time +
summary statistics were used to identify the symbol sets and                trustworthiness), but only two of these had significant differences
uncertainty conditions that garnered the best and worst performance.        (space + trustworthiness, alpha=’0.01’; and time + precision, alpha =
    In the second stage of analysis, differences between the abstract       ‘0.05’). One series resulted in the abstract symbol set being
and iconic symbol sets were examined within and across series. This         significantly more accurate (space + accuracy, alpha=’0.05’).
stage included examining differences between the two Series #1              Overall, the level of iconicity did not have a consistent influence on
symbol sets to determine if either supported more accurate or faster        accuracy of aggregate uncertainty assessment.
assessment of aggregate uncertainty generally. It also included
analysis of differences between abstract and iconic symbols in Series
#2-10 symbol sets, both pooled together and within each series                                               Accuracy                     Response Time
individually. This step was designed to determine the relative merits               Series #
of abstract versus iconic symbolization for visualizing uncertainty.                                                     p-
                                                                                                        x2       df               t            df      p-value
The inferential statistical analysis in both stages provided                                                            value
performance measures to complement the intuitiveness measure
provided in Experiment #1.                                                     Series #1. General     0.9976     1      0.318 -0.4745        717.68    0.6353
    For both analysis stages, nonparametric statistics were applied to
assessment accuracy, as the recorded random variable was binary                   Series #2-10        0.0549     1      0.459 -5.3275        6231.70   0.0000
and therefore non-continuous, and parametric testing was used for             Series #2. Space +
                                                                                                      4.8774     1      0.027 -5.8958        680.60    0.0000
RTs, which were continuous [34]. For the first stage, the Pearson’s                Accuracy
chi-square test with Yates’ continuity correction (nonparametric) was         Series #3. Space +
                                                                                                         0       1      1.000   -1.511       701.27    0.1312
applied to the accuracy recordings and the ANOVA test was applied                  Precision
to the RTs. For the second stage of analysis, the Pearson’s chi-square        Series #4. Space +
                                                                                                      11.9707    1      0.001 -8.5933        426.44    0.0000
test with Yates’ continuity correction (non-parametric) was applied             Trustworthiness
to the accuracy recordings and the independent two-group t-test with           Series #5. Time +
                                                                                                      0.2009     1      0.654 -1.5461        717.967   0.1225
Welsh df modification (parametric) was applied to the RTs. As with                 Accuracy
Experiment #1, all analysis for Experiment #2 was performed using              Series #6. Time +                        0.011
                                                                                                      6.3712     1              2.9178       717.99    0.0036
                                                                                   Precision                              6
the statistical software package R.
                                                                               Series #7. Time +
                                                                                                      1.6911     1      0.194   7.7868       679.033   0.0000
                                                                                Trustworthiness
4.3    Results
                                                                              Series #8. Attribute
   The results from the first stage of analysis for Experiment #2                                      0.25      1      0.617 -1.2987        710.974   0.1945
                                                                                  + Accuracy
provided the most clear and consistent set of results from either             Series #9. Attribute
                                                                                                      2.1879     1      0.139 -6.4604        641.259   0.0000
experiment. As shown in Table 4, significant differences in both                  + Precision
assessment accuracy and RT were reported at alpha=‘0.01’ across                   Series #10.
the nine series. The same level of significance was found when                    Attribute +         2.6585     1      0.103   1.9579       618.503   0.0507
examining abstract or iconic symbol sets in isolation or when                   Trustworthiness

<a id="p008-b007"></a>

<!-- p008-b007 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:28:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
2504                             IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 18, NO. 12, DECEMBER 2012

<a id="p009-b002"></a>

<!-- p009-b002 -->
Fig. 8. Experiment #2 descriptive statistics by series and symbol set.

<a id="p009-b003"></a>

<!-- p009-b003 -->
As with Experiment #1, RT is related to degree of iconicity in               As with any empirical research, many things were not tested, thus
Experiment #2 overall. Pooled results for Series #2-10 exhibited a           results can be considered only a step toward comprehensive
significant RT difference between abstract and iconic symbol sets at         understanding of the important parameters for effective uncertainty
alpha=‘0.01’. Within series, five of the nine series (space + accuracy,      visualization. Multiple questions remain unanswered. Building on
space + trustworthiness, time + precision, time + trustworthiness, and       the conceptual framework outlined plus empirical results, the
attribute + precision) also reported significant responses time              following questions are ones that we feel are particularly relevant to
differences at alpha=‘0.01’, with a sixth (attribute + trustworthiness)      address:
significant at alpha=‘0.10’. Like Experiment #1, it generally took           • What symbolization methods work best if there is a need to
longer for participants to compare regions of iconic symbols (mean              integrate both data and data uncertainty representation into the
RT = 3800.41 milliseconds) than regions of abstract symbols                     same sign-vehicles?
(average RT = 3147.81 milliseconds). However, this was not                   • How scalable are the point symbols (sign-vehicles) tested here?
consistent across all series, as significantly more time was taken to           Will they work if reduced in size for use on mobile devices?
respond to abstract symbols for three of the nine series (time +             • How much impact does the background display have on speed and
precision, time + trustworthiness, and attribute + trustworthiness).            accuracy of sign-vehicle interpretation?
Finally, no significant difference in accuracy or RT was found for           • How does the spatial distribution of symbolized information
the two tested Series #1 symbol sets.                                           impact interpretation?
                                                                             • Do insights about visual signification of uncertainty at discrete
5      C O NC LUS I ON S & D IS CUS SI O N                                      locations (as tested here) extend to linear or area (field) data?
                                                                                 More broadly, the experiments reported here were limited to very
    Like any controlled experiments, this pair necessarily constrained       simplistic display that was non-interactive for tasks that were simple
the problem of uncertainty visualization in multiple ways to enable          judgments of suitability or information retrieval. These limitations
valid analysis. Thus, applicability of results needs to be considered in     highlight two important additional next steps in research. First,
relation to the constraints. Within these constraints, the research          attention needs to be directed to signification of uncertainty in
produced several potentially generalizable conclusions. One is that          interactive environments in which users have the ability to control
there is a clear difference in intuitiveness for representing uncertainty    factors such as when uncertainty signification is visible and the
among abstract sign-vehicles based upon individual visual variables.         relative visual balance between data and data uncertainty in displays
Fuzziness and location work particularly well; value and                     showing both at once. Second, once design guidelines are developed
arrangement are also rated highly and both size and transparency are         to specify the best strategy to signify (or interact with) information
potentially usable. As noted above, saturation, often cited as               uncertainty, an equally important question to answer is how the
intuitively related to uncertainty, was ranked quite low. These              visualization of uncertainty influences reasoning and decision
results, since they relate to fundamental visual variables, may prove        making in problem context for which uncertainty matters. In spite of
to be applicable well beyond the kinds of displays tested here.              experimental limitations and open questions, we believe that the
    Another generalization is that, while iconic sign-vehicles can be        approach to considering uncertainty presented here is a general one
more intuitive and more accurately judged when aggregated (than are          that can serve as a framework for deeper understanding of visual
abstract sign-vehicles), the abstract sign-vehicles can lead to quicker      signification of uncertainty.
judgments. Plus, and not surprisingly, iconic sign vehicles only work
well if users understand both the aspect of uncertainty being
signified and the metaphor upon which the sign-vehicles are based            A C KN OW LED GM EN TS
(this conclusion is our intuition about how to explain the evidence,         The authors wish to thank James Macgill and Isaac Brewer for input
but needs further research to assess in depth). Finally, while               on early discussions and on a pilot study leading to the experiment
Experiment #2 focused on “maps”, these maps were generic enough              reported here. We would also like to thank Todd Peto, who generated
that results should generalize to other information displays with            many of the symbols tested. This material is based in part upon work
multiple points-per-region (e.g., displays depicting cluster results for     supported by the U.S. Department of Homeland Security under
documents). More importantly, the combined experiments allowed               Award #2009-ST-061-CI0001. The views and conclusions contained
for key principles of sign-vehicle design to be assessed and provide         in this document are those of the authors and should not be
input into guidelines for methods to represent various kinds of              interpreted as necessarily representing the official policies, either
uncertainty (individually or in combination) in a range of contexts.         expressed or implied, of the U.S. Department of Homeland Security.

<a id="p009-b004"></a>

<!-- p009-b004 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:28:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
MACEACHREN ET AL: VISUAL SEMIOTICS & UNCERTAINTY VISUALIZATION: AN EMPIRICAL STUDY                                                                     2505

<a id="p010-b002"></a>

<!-- p010-b002 -->
R E FE RE NC ES                                                                 [20] D. Lloyd, and J. Dykes, “Exploring Uncertainty in Geodemographics
[1]  A. M. MacEachren, A. Robinson, S. Hopper, S. Gardner, R. Murray, M.             with Interactive Graphics,” IEEE Transaction on Visualization &
     Gahegan, and E. Hetzler, “Visualizing geospatial information                    Computer Graphics, vol. 17, no. 12, pp. 2498-4507, 2011.
     uncertainty: What we know and what we need to know,” Cartography           [21] D. Spiegelhalter, M. Pearson, and I. Short, “Visualizing Uncertainty
     and Geographic Information Science, vol. 32, no. 3, pp. 139-160, 2005.          About the Future,” Science, vol. 333, no. 6048, pp. 1393-1400, 2011.
[2] J. J. Thomas, and K. A. Cook, “A visual analytics agenda,” Computer         [22] A. Bostrom, L. Anselin, and J. Farris, “Visualizing seismic risk and
     Graphics and Applications, vol. January/February, pp. 10-13, 2006.              uncertainty: A review of related research,” Annals of the New York
[3] B. Evans, “Dynamic display of spatial data-reliability: Does it benefit          Academy of Sciences, vol. 1128, pp. 29-40, 2008.
     the map user?,” Computers & Geosciences, vol. 23, no. 4, pp. 409-422,      [23] D. Sinton, "The inherent structure of information as a constraint to
     1997.                                                                           analysis: Mapped thematic data as a case study," Harvard papers in GIS
[4] A. M. MacEachren, C. A. Brewer, and L. W. Pickle, “Visualizing                   #7, D. Dutton, ed., Cambridge, MA: Harvard University, 1978.
     georeferenced data: Representing reliability of health statistics,”        [24] J. Thomson, B. Hetzler, A. MacEachren, M. Gahegan, and M. Pavel,
     Environment and Planning A, vol. 30, pp. 1547-1561, 1998.                       “Typology for visualizing uncertainty,” in IS&T/SPIE Symposium on
[5] M. Leitner, and B. P. Buttenfield, “Guidelines for the display of                Electronic Imaging, Conference on Visualization and Data Analysis,
     attribute certainty,” Cartography and Geographic Information Science,           San Jose, CA, 2005, pp. 146-157.
     vol. 27, no. 1, pp. 3-14, 2000.                                            [25] D. J. Peuquet, “It's About Time: A Conceptual Framework for the
[6] J. C. Aerts, K. C. Clarke, and A. D. Keuper, “Testing popular                    Representation of Temporal Dynamics in Geographic Information
     visualization techniques for representing model uncertainty,”                   Systems,” Annals of the Association of American Geographers, vol. 84,
     Cartography and Geographic Information Science, vol. 30, no. 3, pp.             no. 3, pp. 441-461, 1994.
     249-261, 2003.                                                             [26] R. E. Roth, “A qualitative approach to understanding the role of
[7] T. D. Zuk, “Visualizing Uncertainty,” Dissertation, Department of                geographic information uncertainty during decision making,”
     Computer Science, University of Calgary, Calgary, Canada, 2008.                 Cartography and Geographic Information Science, vol. 36, no. 4, pp.
[8] R. E. Roth, “The impact of user expertise on geographic risk assessment          315-330, 2009.
     under uncertain conditions,” Cartographic and Geographic Information       [27] A. M. MacEachren, How maps work, New York, NY, USA: The
     Science, vol. 36, no. 1, pp. 29-43, 2009.                                       Guilford Press, 1995.
[9] J. Sanyal, S. Zhang, G. Bhattacharya, P. Amburn, and R. J. Moorhead,        [28] J. Bertin, Semiology of graphics: Diagrams, networks, maps, Madison,
     “A user study to compare four uncertainty visualization methods for 1d          WI: University of Wisconsin Press, 1967|1983.
     and 2d datasets,” IEEE Transactions on Visualization and Computer          [29] J. L. Morrison, “A theoretical framework for cartographic
     Graphics, vol. 15, no. 6, pp. 1209-1218, 2009.                                  generalization with the emphasis on the process of symbolization,”
[10] H. Ibrekk, and M. G. Morgan, “Graphical communication of uncertain              International Yearbook of Cartography, vol. 14, pp. 115-127, 1974.
     quantities to non-technical people,” Risk Analysis, vol. 7, no. 4, pp.     [30] J. Mackinlay, “Automating the design of graphical presentations of
     519-529, 1987.                                                                  relational information,” ACM Transactions on Graphics, vol. 5, no. 2,
[11] A. M. MacEachren, “Visualizing uncertain information,” Cartographic             pp. 110-141, 1986.
     Perspectives, vol. 13, fall, pp. 10-19, 1992.                              [31] R. E. Roth, A. W. Woodruff, and Z. F. Johnson, “Value-by-alpha Maps:
[12] N. D. Gershon, “Visualization of fuzzy data using generalized                   An alternative technique to the cartogram,” The Cartographic Journal,
     animation,” in Visualization, Boston, Massachusetts, 1992, pp. 268-273.         vol. 47, no. 2, pp. 130-140, 2010.
[13] B. Buttenfield, “Representing data quality,” Cartographica, vol. 30, no.   [32] D. M. Schweizer, and M. F. Goodchild, “Data quality and choropleth
     3, pp. 1- 7, 1993.                                                              maps: An experiment with the use of color,” in GIS/LIS, San Jose, CA,
[14] P. F. Fisher, “Visualizing uncertainty in soil maps by animation,”              1992, pp. 686-699.
     Cartographica, vol. 30, no. 3, pp. 20-27, 1993.                            [33] R. F. DeVellis, Scale development: Theory and applications, 2nd
[15] T. Zuk, and S. Carpendale, “Theoretical anaylsis of uncertainty                 edition, Newbury Park, CA: Sage Publications, 2003.
     visualization,” in Proc. of SPIE, Visualization and Data Analysis 2006,    [34] J. E. Burt, G. M. Barber, and D. L. Rigby, Elementary statistics for
     San Jose, CA, USA, 2006, pp. 66-79.                                             geographers, 3rd Edition, New York, NY: Guilford Press, 2009.
[16] M. Riveiro, “Evaluation of uncertainty visualization techniques for
     information fusion,” in Proceedings of The 10th International
     Conference on Information Fusion (FUSION 2007), Quebec, Canada,
     2007.
[17] C. Collins, S. Carpendale, and G. Penn, “Visualization of uncertainty in
     lattices to support decision-making,” in Eurographics/IEEE VGTC
     Symposium on Visualization, Norrköping, Sweden, 2007, pp. 51-58.
[18] A. Streit, “Encapsulation and abstraction for modeling and visualizing
     information uncertainty,” Dissertation, Information Technology,
     Queensland University of Technology, Brisbane, Australia, 2008.
[19] M. Skeels, B. Lee, G. Smith, and G. G. Robertson, “Revealing
     uncertainty for information visualization,” Information Visualization,
     vol. 9, no. 1, pp. 70-81, 2009.

<a id="p010-b003"></a>

<!-- p010-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:28:08 UTC from IEEE Xplore. Restrictions apply.
