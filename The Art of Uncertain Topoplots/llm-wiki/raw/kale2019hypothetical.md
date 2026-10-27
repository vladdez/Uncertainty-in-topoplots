---
id: "kale2019hypothetical"
title: "Hypothetical Outcome Plots Help Untrained Observers Judge Trends in Ambiguous Data"
source_file: "The Art of Uncertain Topoplots/papers/kale2019hypothetical.pdf"
source_sha256: "28898bab994b45d0715bc85ba65ef55946a8052c3d50c20ca43b439d32d09257"
extraction_format: 1
---

# Hypothetical Outcome Plots Help Untrained Observers Judge Trends in Ambiguous Data — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
892                                                 IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 25,                            NO. 1,   JANUARY 2019

<a id="p001-b002"></a>

<!-- p001-b002 -->
Hypothetical Outcome Plots Help Untrained Observers Judge
                            Trends in Ambiguous Data
                                         Alex Kale, Francis Nguyen, Matthew Kay, and Jessica Hullman

<a id="p001-b003"></a>

<!-- p001-b003 -->
Fig. 1. We present two experiments (E1 and E2) evaluating four different uncertainty visualizations (from left to right): bar graphs with
            error bars, bar hypothetical outcome plots (HOPs), static line ensembles, and line HOPs.

<a id="p001-b004"></a>

<!-- p001-b004 -->
Abstract—Animated representations of outcomes drawn from distributions (hypothetical outcome plots, or HOPs) are used in the
            media and other public venues to communicate uncertainty. HOPs greatly improve multivariate probability estimation over conven-
            tional static uncertainty visualizations and leverage the ability of the visual system to quickly, accurately, and automatically process
            the summary statistical properties of ensembles. However, it is unclear how well HOPs support applied tasks resembling real world
            judgments posed in uncertainty communication. We identify and motivate an appropriate task to investigate realistic judgments of un-
            certainty in the public domain through a qualitative analysis of uncertainty visualizations in the news. We contribute two crowdsourced
            experiments comparing the effectiveness of HOPs, error bars, and line ensembles for supporting perceptual decision-making from
            visualized uncertainty. Participants infer which of two possible underlying trends is more likely to have produced a sample of time
            series data by referencing uncertainty visualizations which depict the two trends with variability due to sampling error. By modeling
            each participant’s accuracy as a function of the level of evidence presented over many repeated judgments, we find that observers
            are able to correctly infer the underlying trend in samples conveying a lower level of evidence when using HOPs rather than static
            aggregate uncertainty visualizations as a decision aid. Modeling approaches like ours contribute theoretically grounded and richly
            descriptive accounts of user perceptions to visualization evaluation.
            Index Terms—uncertainty visualization, hypothetical outcome plots, psychometric functions

<a id="p001-b005"></a>

<!-- p001-b005 -->
1      I NTRODUCTION                                                                            Data visualizations communicate complex information by offload-
  Effective communication of uncertainty, probability, and random sam-                         ing cognitive work as to automatic perceptual processing [43]. Visual
  pling is necessary for scientific literacy among the public and for the                      metaphors could help audiences make sense of otherwise inaccessible
  practice of reproducible science. For example, confusing presenta-                           uncertainty information. However, commonly used uncertainty visu-
  tions of uncertainty in weather forecasts may lead people to discount                        alizations often lead to misinterpretations. For example, error bars
  uncertainty in the forecast, inducing a false sense of security about                        encoding confidence intervals or standard errors are easily misunder-
  predicted outcomes. This kind of misunderstanding erodes public                              stood [6, 31] perhaps because such frequentist statistics are misinter-
  trust in science [7, 39]. Among scientists, misunderstandings of sam-                        preted as indicating the probability of an estimate rather than the vari-
  pling error and the likelihood of replicating experimental results con-                      ability in the process which produced that estimate. Similarly, the
  tribute to rampant use of underpowered studies and the “replication                          nuances of statistical abstractions make it hard for many people to in-
  crisis” [37, 62]. A core challenge in communicating uncertainty infor-                       terpret probability density plots like gradient plots and violin plots.
  mation is how to help audiences recognize that estimates are subject                            Recently, Hullman et al. [36] defined a form of animated uncer-
  to variability in the process which produces them [21, 54, 60]. This is                      tainty visualization called Hypothetical Outcome Plots (HOPs). HOPs
  especially difficult when audiences are unfamiliar with the statistical                      present uncertainty as a set of animated frames, each depicting a sam-
  abstractions commonly used to express these concepts.                                        ple from a distribution of possible outcomes. Hullman et al. [36] found
                                                                                               that HOPs facilitate comparable and much better estimation of uni-
                                                                                               variate and multivariate distributional information, respectively, than
      • Alex Kale is with the University of Washington. E-mail: kalea@uw.edu.                  error bars and violin plots. Importantly, HOPs express shared vari-
      • Francis Nguyen is with the University of Washington. E-mail:                           ation among multiple variables via the correlation of samples across
        fmnguyen@uw.edu.                                                                       animated frames, whereas static visualizations are not generally ex-
      • Matthew Kay is with the University of Michigan. E-mail:                                pressive of this shared variability. HOPs are especially flexible across
        mjskay@umich.edu.                                                                      applications since they do not introduce additional graphical marks
      • Jessica Hullman is with Northwestern University. E-mail:                               (e.g., error bars) or encodings (e.g., color, transparency) to encode the
        jhullman@northwestern.edu.                                                             variability of a distribution.
  Manuscript received 31 Mar. 2018; accepted 1 Aug. 2018.                                         However, it remains unknown whether HOPs also have advantages
  Date of publication 16 Aug. 2018; date of current version 21 Oct. 2018.                      for more applied tasks resembling real world judgments about data.
  For information on obtaining reprints of this article, please send e-mail to:                For a realistic investigation of comprehension, we must go beyond the
  reprints@ieee.org, and reference the Digital Object Identifier below.                        ability to read probabilities from a visualization and look at judgment
  Digital Object Identifier no. 10.1109/TVCG.2018.2864909                                      tasks where people must choose between alternative interpretations of
                                                                                               uncertain data (i.e., models that generated the data) in order to act. We
  Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:08 UTC from IEEE Xplore. Restrictions apply.
                                     1077-2626 2018 IEEE. Personal use is permitted, but republication/redistribution requires IEEE permission.
                                        See http://www.ieee.org/publications_standards/publications/rights/index.html for more information.

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
KALE ET AL.: HYPOTHETICAL OUTCOME PLOTS HELP UNTRAINED OBSERVERS JUDGE TRENDS IN AMBIGUOUS DATA893

<a id="p002-b002"></a>

<!-- p002-b002 -->
present two experiments that address gaps in knowledge about the im-           they are not aware of doing so [29]. Research on statistical rea-
pacts of HOPs by modelling perceptual decision-making in a realistic           soning suggests that frequency-oriented framing of probability can
uncertainty communication task.                                                lead to more accurate statistical reasoning in many judgment con-
   We first motivate our selection of an experimental task through a           texts [18, 24, 32, 35, 40] and to more accurate elicitation of subjective
qualitative analysis of how visualizations are used to communicate un-         probability distributions among lay observers [25]. Prior work estab-
certainty in 22 examples of uncertainty visualization in the news. Our         lishes that HOPs enable more accurate inferences about joint probabil-
results provide an overview of the visual and cognitive demands as-            ities than static uncertainty visualizations and that HOPs are compara-
sociated with judgments of uncertainty visualizations that the public          ble to static representations for estimating distributional properties of
encounter in news contexts.                                                    univariate distributions [36]. Users of error bars and violin plots only
   Our primary contributions are two controlled experiments on the             outperformed users of HOPs when estimating the central tendency of
impact of HOPS versus static alternatives on user performance in an            distributions with high variance.
uncertainty communication task. Based on our qualitative analysis,                 Researchers and practitioners have applied animated and static
we adapt an example of HOPs from the New York Times (NYT) [38]                 sampling-oriented approaches to uncertainty visualization. Re-
to examine the impact of different uncertainty encodings on the per-           searchers have used animated sampling-oriented visualizations in
ceptual decision-making of Amazon Mechanical Turk (MTurk) work-                medical volume rendering [48] and estimates of geospatial sur-
ers. Participants infer which of two possible underlying trends is more        faces [16, 17, 26]. Static sampling-oriented quantile dotplots have
likely to have produced a sample of time series data by referencing            been used to aid decision-making about bus arrival times [18, 41] and
uncertainty visualizations which depict the two trends with variability        to help users to make graphically elicited predictions about experi-
due to sampling error (Fig. 3). Each participant makes many judg-              mental data [35]. A recent study investigated HOPs of hurricane lo-
ments about the more likely trend despite noise due to sampling error,         cations [47], suggesting a role for sampling-oriented presentations of
using one of multiple uncertainty visualizations (Fig. 1) to aid in the        uncertainty in weather forecasts. In recent years, there have been im-
task. For each participant’s responses, we fit behavioral models called        plementations of HOPs, interactive simulations, and static sampling-
psychometric functions (PFs) [27, 42] which estimate accuracy on the           oriented ensembles in the media which aim to communicate uncer-
task as a function of the strength of evidence in the samples judged.          tainty in the job market [38] and in political elections [1, 9, 55], sug-
PFs enable us to measure the sensitivity of each observer to evidence          gesting there is potential for HOPs to be used to communicate uncer-
in the task under different visualization conditions. Our results suggest      tainty information to the public in informal contexts.
that users of HOPs make correct judgments at lower levels of evidence
than users of error bars and line ensembles.                                   2.2   Vision Science in Information Visualization
                                                                               Vision science research on perception of ensembles, groups of visual
2     R ELATED W ORK                                                           objects spread over space and time, is directly applicable to data visu-
                                                                               alizations. Accumulating evidence suggests that the visual system is
2.1    Uncertainty Visualization
                                                                               capable of quickly, automatically, and accurately extracting rich men-
Static visualizations, such as error bars, ensembles, and probability          tal representations of ensembles from visual scenes [3, 4, 33, 44] even
density functions (PDFs), are currently the predominant visual encod-          when the observer has no explicit memory of some ensemble mem-
ing for communicating uncertainty. These visualizations express dis-           bers. The precise limitations of this mode of perception are a topic
tributions in a single view by encoding summary statistics or showing          of ongoing inquiry. Observers are similarly accurate in perceptual av-
the whole distribution. Static visualizations align with a design goal         eraging tasks whether stimuli are dynamically changing or arranged
of cognitive efficiency [11, 34, 43, 61]. In contrast, animations are          on a static spatial plane [4, 44]. However, in the case of dynamically
thought to be less efficient because they require the integration of in-       changing stimuli, limitations on the duration and temporal frequencies
formation across frames and pose challenges related to memory and              for which this perceptual averaging is effective are not yet known. Ob-
attention [64]. However, outside of a few early studies of animated            servers can accurately report the average size of dynamic stimuli [2],
uncertainty visualizations in cartography [16, 17, 26], little empirical       the average expression of a dynamically changing face stimulus [28],
work has attempted to evaluate the potential for animation to provide          and even more abstract features such as the average lifelikeness of a
an effective visual metaphor for probabilistic information.                    set of objects [44]. Sampling-oriented visualizations of uncertainty
   Static uncertainty visualizations often assume that the audience has        like HOPs seem particularly well matched to the visual system’s abil-
some baseline of statistical knowledge [6] and a propensity to connect         ity to form gist representations from experience.
such abstract concepts to graphical representations [15]. Error bars in           Psychophysics, a methodology in vision science, enables re-
particular can be difficult to interpret due to inconsistency of conven-       searchers to model the relationship between the presentation format
tions governing what constructs (i.e., confidence intervals, standard          of information and the perceptual decision-making of observers. In
errors, etc.) they represent [14, 31]. For graphs with enclosed shapes,        visualization research, psychophysics is most often used to estimate
within-the-bar bias can impact estimates of likelihood such that values        just-noticeable differences (JNDs) for a visual encoding, the change in
within the shape tend to be judged as more likely than values out-             some quantified property of that encoding which would be discernible
side [14, 50]. Uncertainty visualizations which use separate marks to          to a subject 75% of the time. JNDs have been applied in the cre-
encode expected value and uncertainty can elicit a heuristic bias of           ation of perceptually-uniform color palettes (i.e., CIELAB [20]) and
attention toward expected value and away from uncertainty [36], in             perceptually-driven color palette selection tools [45, 59]. The inferen-
keeping with a well-documented tendency for people to underweight              tial models which researchers use to estimate JNDs are called psycho-
or ignore uncertainty in decision-making [63]. In general, static visu-        metric functions (PFs). PFs estimate an observer’s accuracy in judging
alizations which only express summary statistics fail to fully convey          a stimulus as function of the strength of evidence presented. PFs are
the underlying distribution since dissimilar datasets can have similar         based on signal detection theory (SDT) [27] (Fig. 2), a model of how
summary statistics [12]. Although variants of PDFs (i.e, violin plots,         we make decisions by weighing evidence in favor of two alternative
gradient plots) are, in theory, fully expressive of the underlying distri-     interpretations. SDT posits that for any judgment between two alter-
bution, they still rely heavily on the statistical literacy of the observer.   natives internal receivers in the brain register the evidence for each
   In contrast, HOPs are designed to promote the integration of uncer-         possible alternative. Since the response of these receivers to a pre-
tainty information through experience rather than description. While           sented stimulus is subject to noise, and observers are inconsistent in
viewers of static visualizations must exert cognitive effort to map            the criteria they use to decide between alternatives, judgments of a
graphical encodings to statistical concepts which may be unfamil-              stimulus err systematically. PFs model this systematic error by esti-
iar [15, 66], viewers of HOPs can directly extract frequency infor-            mating both the amount of bias and random noise introduced in the
mation [30]. Observers who are allocating attention to a frequency             process of perceiving the strength of evidence about the decision.
encoding extract frequency information automatically, even when                   Our experiments incorporate PF analysis and SDT into the context
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
894                                              IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 25,               NO. 1,   JANUARY 2019

<a id="p003-b002"></a>

<!-- p003-b002 -->
Google News searches containing terms like ‘uncertainty’ or ‘proba-
                                                                               bility’ and ‘visualization’ or ‘chart’ (see Supplemental Materials). Ar-
                                                                               ticles were included in our analysis (1) if they are primarily concerned
                                                                               with communicating uncertainty information and (2) if they contain at
                                                                               least one visualization which conveys that there are a distribution of
                                                                               possible values which an observation or prediction might take.
                                                                                  While we started with 32 articles which met our first inclusion cri-
                                                                               terion, we had to exclude ten of these articles because they failed to
                                                                               meet our second criterion. In these cases, the visualizations only en-
                                                                               coded single values of each estimate (e.g., a central tendency), and
                                                                               visualized distributions were contextualized as separate events plot-
                                                                               ted together by geographic location or time (e.g., an estimate for each
                                                                               of multiple countries). That the media use distributions of outcomes
                                                                               for separate events to illustrate uncertainty speaks to a disconnect be-
                                                                               tween public concerns about uncertainty and the notion of uncertainty
                                                                               employed in information visualization research, in which uncertainty
                                                                               is most often defined as an expression of error in an estimate [54, 60].
                                                                               The sample of articles considered reflects the time frame of the study
                                                                               and should be considered representative of uncertainty visualizations
                                                                               published in the popular press from 2014 to early 2018.
                                                                               3.2 Qualitative Coding
                                                                               Our goal was to identify a set of distinctions that could help visualiza-
                                                                               tion researchers understand the types of tasks implied by uncertainty
                                                                               visualizations in the news. We used a bottom-up iterative coding pro-
                                                                               cess in order to see what distinctions emerged from close analysis of
Fig. 2. We illustrate how to use signal detection theory to estimate           the examples in our corpus. Two authors separately coded each article
the accuracy of an observer on a two-alternative forced choice task for        initially, listing for each a set of concrete questions about the visual-
two different stimuli (left and right columns). Signal detection theory        ized data that the article poses to the audience. We identified these
posits internal receivers for two alternative interpretations of a stimulus,   questions by considering how the uncertainty visualizations support
choices A and B. The response of these receivers to a stimulus is prob-        the narrative in the text of each article. Through several additional
abilistic and represents the perceived strength of evidence in favor of        passes on the corpus, the two authors iteratively reviewed and refined
each choice. The two stimuli shown in the left and right column each           the codes. We arrived at a set of yes-or-no distinctions used to label
convey levels of evidence equal to the difference between the black and        and characterize each question posed by the articles.
gray vertical lines on the x-axes. The middle row depicts the difference
between the responses of the receivers for choices A and B, shown in           3.3 Results and Discussion
the top row. The estimated accuracy of the observer for each stimulus          3.3.1 Conceptual Distinctions
is equal to the integral of the difference distributions in the middle row.
Estimated accuracy of stimulus interpretation for each level of evidence       The first three labels we coded characterize the low-level visual tasks
is equal to the height of the psychometric function.                           implied by the text and the visual encodings. These codes answer the
                                                                               question: Is the relevant information from the uncertainty visualization
of a realistic data interpretation task. Although other studies in the in-     obtainable through (1) direct reading of encoded values, (2) automatic
formation visualization literature use PFs to investigate JNDs in low-         visual ensemble processing, or (3) shape perception [19]? While di-
level visual encodings such as color (i.e., [59]), the application of psy-     rect reading is highly deliberate, ensemble processing is an automatic
chophysics in abstract conceptual domains, such as the interpretation          visual computation about sets of graphical encodings. Shape percep-
of visualized uncertainty, is uncommon in information visualization            tion occurs when the contours of graphical elements (e.g., tops of bars,
research. PFs are an ideal way to measure the effectiveness of uncer-          trend lines) are recognized as patterns which have a specific meaning
tainty visualizations for supporting alternative interpretations of data       to the observer. Visualizations can often be read in more than one way.
because they enable nuanced comparisons of user sensitivity to evi-               The second set of labels describe what information is needed to an-
dence under different display conditions.                                      swer each question. Does the task primarily require the audience to
                                                                               consider (1) central tendency or (2) variance of a distribution of val-
3      I DENTIFYING U NCERTAINTY J UDGMENTS IN THE N EWS                       ues? These labels are not mutually exclusive. However, to differenti-
Readers of the news often encounter uncertainty information which              ate tasks that emphasize uncertainty from those that emphasize central
they interpret in order to make decisions. For example, a person might         tendency, we only assign a question with both codes if it is not possible
read a piece of data journalism from the New York Times (NYT) about            to identify which aspect of the data dominates the task.
expected changes under the 2017 GOP tax plan [10]1 and decide to                  The final pair of labels concern the high-level cognitive operations
take the standard deduction instead of itemizing their taxes. Since the        which the observer performs with visually extracted information in
news is perhaps the most common venue in which people encounter                order to address each question posed by the article. Do the concrete
uncertain data in everyday life, we conducted a formative content anal-        task and visual encoding require observers to make (1) comparisons or
ysis investigating the use of uncertainty visualizations in the news and       (2) inferences? The reader must compare values or distributions when
how people might interpret visualized uncertainty in this context. We          the question posed by the article requires a relative judgment (e.g.,
use this analysis to inform our experimental task.                             differences of value or conditional likelihood). Inference occurs when
                                                                               an observer is asked to reason about an aspect of the data that is not
3.1      Selection of Articles                                                 directly encoded (e.g., the central tendency of a set of points).
We gathered a convenience sample of 22 articles from mainstream                3.3.2 Frequency of Codes
news in the US and UK. We started with recent visualizations from
publishers like the NYT, and supplemented this set by conducting               We identified a total of 87 questions that were implied in the 22 ar-
                                                                               ticles we analyzed. The information the reader needed to glean from
      1 https://www.nytimes.com/interactive/2017/11/28/upshot/what-the-tax-    the visualizations in order to answer these 87 questions could be read
bill-would-look-like-for-25000-middle-class-families.html                      directly from the visualization in 60 (69.0%) cases, could be acquired
    Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
KALE ET AL.: HYPOTHETICAL OUTCOME PLOTS HELP UNTRAINED OBSERVERS JUDGE TRENDS IN AMBIGUOUS DATA895

<a id="p004-b002"></a>

<!-- p004-b002 -->
through ensemble processing in 56 (64.4%) cases, and could be read
through shape perception in 60 (69.0%) cases. This shows that design-
ers often encode relevant information in multiple different ways (e.g.,
providing a trend line as well as individual data points).
   We observed 19 (21.8%) questions that were primarily about cen-
tral tendency and 34 (39.1%) questions that were primarily about un-
certainty. Only 33 of the questions (37.9%) were concerned with both
central tendency and uncertainty without one clearly dominating the
task. This suggests that judgments about uncertainty in news contexts
are often framed as separate tasks from judgments of central tendency.
Empirical evidence in uncertainty visualization [36, 47, 52, 53] and
cognitive science [39, 63] suggests that effective uncertainty visual-       Fig. 3. A depiction of the task interface used in our studies (stimuli for
ization should promote the integration of both central tendency and          Experiment 1 are shown). The chart that participants judge on the cur-
uncertainty information because otherwise people tend to substitute          rent trial is on the left side of the display. The reference uncertainty
biased heuristics for more nuanced judgments of uncertainty.                 visualizations for the “no growth” and “growth” trends are on the right
                                                                             side of the display. Underneath the uncertainty visualizations, the par-
   Of the 87 questions examined, 64 (73.6%) involved comparisons
                                                                             ticipant uses radio buttons to indicate which trend is more likely and the
between individual data points and/or distributions, and 72 (82.8%)
                                                                             slider to rate their confidence.
involved inferences about information not directly encoded in the vi-
sualizations. Both comparison and inference seem to be common cog-           the bar encoding used in the NYT, enabling a controlled comparison
nitive operations required to interpret uncertainty visualizations in the    that remains faithful to the original presentation.
news. This suggests that when designing and evaluating uncertainty              In a crowdsourced experiment on MTurk, we ask participants to
visualizations for a broad audience, it is not sufficient to simply mea-     discriminate which of two possible underlying trends is more likely
sure ability of observers to extract directly encoded individual values.     to have produced hypothetical samples of jobs added to the economy
                                                                             each month of a simulated year (Fig. 3). Thus, we embed the visu-
3.3.3    Selecting a Representative Uncertainty Judgment Task                alizations from the NYT [38] into a traditional two-alternative forced
We wanted a task for our experiments that required more sophisticated        choice (2AFC) psychophysics experiment.
forms of judgment than simply reading directly encoded values. We
also wanted to choose a task that required considering both uncertainty      4.1     Methods
and central tendency. We used the results of our coding to identify a        4.1.1    Procedure
concrete question from a visualization and article originally presented
by the NYT: “How not to be Misled by the Jobs Report” [55]2 . In our         Upon accepting the Human Intelligence Task (HIT), participants were
adaptation of this task (Fig. 3), participants decide which of two under-    redirected to a web page containing instructions on the task. Partici-
lying trends, growth or no growth in the job market, is more likely to       pants were told they would play the role of a newspaper editor who is
have produced an observed sample of job growth numbers. The choice           presented with a bar chart of jobs added to the economy each month
between trends requires the participant to consider how variance due         of a simulated year and asked decide on a headline about the growth
to sampling error impacts samples of hypothetical jobs numbers. The          trend in the job market for that year (Fig. 3). On each trial, the par-
participant must visually extract the trend in a hypothetical sample         ticipant made a 2AFC judgment (“growth” or “no growth”) about one
of jobs numbers through either ensemble processing or shape percep-          bar chart and provided a rating of their confidence in this judgment on
tion. Then, considering the central tendency and variance of the two         a scale of 50 (random guess) to 100 (absolutely certain). Each par-
possible trends based on uncertainty visualizations, participants make       ticipant completed a block of 60 trials using error bars as a decision
inferences about the likelihood of a given sample under each trend.          aid and another block of 60 trials with HOPs as a decision aid, where
Thus, our task entails reasoning spanning all of our distinctions except     the order of the visualization conditions was counterbalanced across
for the direct reading of individually encoded values.                       observers. At the end of 120 trials, each participant completed a brief
    The task we selected is representative not only of how uncertainty       demographic survey, including questions about familiarity with statis-
visualization is used in the news but of tasks that are implicated in sta-   tics and with the specific visualizations shown in the task. The HIT
tistical literacy. By asking participants to make inferences from sam-       carried a reward of $8 ($29.32 per hour on average).
ples of noisy data, our task engages core statistical competencies. In
order to understand applications of statistics in science, people must       4.1.2    Measures and Hypotheses
recognize that samples may not always resemble the model or pop-             Our dependent measures are parameter estimates derived from psy-
ulation from which they are produced [21, 23]. In our task and in            chometric functions (PFs, Fig. 5) and a related approach to modeling
public-facing presentations of statistics (e.g., election models), there     confidence data. These are inferential models of perceptual decision-
are components of variance in sampling which are accounted for by            making based on signal detection theory (SDT, Fig. 2).
underlying trends (signal) and components of variance which are due
                                                                                Psychometric Functions (PFs): For each participant’s 2AFC re-
to sampling error and other random processes (noise). The ability to
                                                                             sponses under each visualization condition, we fit a PF [42] estimating
recognize and parse these sources of variance is implicated in our task
                                                                             two parameters: (1) the JND, which is the level of evidence at which
and is important to the comprehension of statistics [21, 23].
                                                                             the participant is expected to perform with mean accuracy on the task;
                                                                             and (2) the spread of the PF, which describes the noise in the partic-
4    E XPERIMENT 1                                                           ipant’s perception of evidence in the task (Fig. 5). We predicted that
Experiment 1 mirrors the visualization design and data-interpretation        when uncertainty due to sampling error was visualized using HOPs, as
context of the NYT article “How not to be Misled by the Jobs Re-             compared to error bars, subjects would have smaller estimated JNDs
port” [38]. We evaluate how well HOPs facilitate accurate percep-            on average, indicating that observers require less evidence to distin-
tual decision-making compared to a more conventional encoding of             guish the trend underlying a sample from noisy data. We also pre-
uncertainty— error bars. We choose error bars as the control visual-         dicted that users would have smaller estimated PF spreads, indicating
ization for this task because (1) they are a common static encoding of       that they find stimuli ambiguous across a narrower range of evidence.
uncertainty and (2) they can be used to add uncertainty information to          Confidence Fitness: Existing approaches to confidence analysis in
                                                                             uncertainty visualization evaluation tend to either assume that more
    2 https://www.nytimes.com/2014/05/02/upshot/how-not-to-be-misled-by-     confidence is better (e.g., [8]) or analyze the correlation between con-
the-jobs-report.html                                                         fidence and accuracy over a set of judgments (e.g., [14]). However,
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
896                                          IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 25,                 NO. 1,     JANUARY 2019

<a id="p005-b002"></a>

<!-- p005-b002 -->
the participant can judge correctly, but which are not easy, reduces the
                                                                             uncertainty in the fitting process [57]. However, the researcher must
                                                                             not present too many trials, otherwise issues of participant attrition
                                                                             and fatigue arise. Adaptive sampling procedures are the best solution
                                                                             to this problem. These algorithms sample stimuli at levels of evidence
                                                                             which are ambiguous but not uninformative based on the participant’s
                                                                             past performance. We used a three-down, one-up staircase (suggested
                                                                             in [22]) in which the level of evidence was incremented (i.e., made
                                                                             easier) by 3 absolute log likelihood ratio units each time the partici-
Fig. 4. Example stimuli judged by participants in our task. Scan across      pant guessed wrong, and the level of evidence was decremented (i.e.,
the figure to get a concrete sense of how our units of evidence translate    made harder) every third time the participant was correct. In order to
into the appearance of a stimulus. Units of evidence are the log ratio       avoid autocorrelation in performance resulting from participants notic-
of the probability that each stimulus was produced by the growth vs no       ing the sampling procedure, we randomly interleaved 25 trials each
growth trends, given shared variability due to sampling error. We take       from two different staircases (suggested in [13]) as well as 10 gold
the absolute value of the log likelihood ratio so that units of evidence     standard trials at an absolute log likelihood ratio of 9 (very easy). The
have the same sign regardless of which trend produced the stimulus.
                                                                             two staircases differed only in their decrementing step sizes of 2.22
both approaches may be inadequate to deal with the complexity of con-        and 1.65 absolute log likelihood ratio units, respectively. Step sizes
fidence as a construct; for example, research in judgment and decision-      were chosen based on pilot data and recommendations from simula-
making describes how confidence reporting is often noisy and may not         tion studies on how to create staircases with stable convergence [22]
adhere to the laws of probability (i.e., [51]). To overcome these limita-    and how to sample in order to minimize uncertainty in the parameter
tions, we adapt an approach from psychophysics [56] which explicitly         estimates from PFs [57]. These staircases promoted meaningful PF
models the noise in an observer’s confidence reporting process.              fits in a minimal number of trials.
    Confidence fitness can be interpreted as an estimate of the degree to        Uncertainty Visualizations: In our task, participants use different
which confidence ratings are coherent with a probabilistic interpreta-       uncertainty visualizations as a decision aid showing the no growth and
tion. The model is based on SDT and assumes that confidence ratings          growth trends (Fig. 3, right side). HOPs were generated by repeat-
from the ideal observer should reflect the accuracy of their judgments       edly sampling 12-month sets of jobs added to the economy from each
at the given level of evidence [56]. To estimate a ground truth for          underlying trend, plotting these numbers in bar charts, and animating
confidence, we simulated many trials for each observer based on their        transitions between frames. Animated transitions between bar values
PF. We estimate the ideal confidence of an observer as the accuracy of       were 500 ms in duration with a 10 ms delay between each bar and a
these simulated noisy judgments at each level of evidence. Confidence        frame rate of 45 hz. Each sample was displayed for 1500 ms in be-
fitness is a latent parameter of the model ranging from 0 to 1 which es-     tween the animated transitions. Animation parameters followed those
timates the degree to which actual confidence reporting is random or         used by the NYT. We used a cubic easing function for animated tran-
ideal. We had no strong a priori predictions about confidence fitness.       sitions, which was consistent with the NYT visualization.

<a id="p005-b003"></a>

<!-- p005-b003 -->
4.1.3   Stimuli and Trial Generation                                         4.1.4   Participants
Stimuli, Units of Evidence, and Task Difficulty: The PF fitting process      We recruited 62 MTurk Masters workers, each located in the United
requires a single measure of stimulus intensity which approximates the       States and with a HIT approval greater than 95%, to participate in
difficulty of the judgment task for each stimulus. Stimulus intensity        the study. A power analysis on pilot data suggested our target sample
is used as a ground truth to determine whether or not judgments are          size should be 50 within-subjects comparisons of HOPs and error bars,
correct. In our task, the intensity measure should quantify the strength     where each participant completes a block of 60 trials for each visual-
of the evidence in favor of a growth or no growth interpretation of a        ization condition and the condition order is counterbalanced across
given sample of jobs numbers. We calculate the intensity based the           participants. To achieve this, we iteratively sampled small batches
probability of each possible trend having produced the sample of jobs        of participants (n < 10), alternating the starting visualization condi-
numbers. For any given stimulus (set of hypothetical job numbers),           tion, and applying a set of a priori exclusion criteria to the data col-
strength of evidence is the log likelihood ratio describing the relative     lected. This was procedure was repeated until we had 50 participants
likelihood that the stimulus was produced by the no growth or growth         in our sample after exclusions, and condition order was counterbal-
trend in the job market (Fig. 4). This produces a log-linear intensity       anced across participants. During the iterative sampling procedure
scale where positive values represent evidence in favor of no growth         (see Preregistration3 ), one participant was excluded due to exception-
(e.g., bottom row of Fig. 4), negative values represent evidence in favor    ally poor performance, and five participants were excluded from anal-
of growth (e.g., top row of Fig. 4), and zero is the point of maximum        ysis due to poorly converging psychometric function fits. We acciden-
uncertainty. Because our measure of intensity should be consistent           tally collected six participants more than intended, so six participants
whether the evidence more strongly favors the growth or the no-growth        were chosen at random and excluded from analysis thereafter.
trend, we take the absolute value of this log likelihood ratio.
                                                                             4.1.5   Analysis Approach
  evidence =| log10 (Pr(sample|noGrowth)/Pr(sample|growth)) |
                                                                             Psychometric Function Estimation: We used a maximum likelihood
Here, sample is a given set of job growth numbers, noGrowth is a trend       optimization algorithm to fit a cumulative Gaussian distribution to
in which the jobs added each month are normally distributed about            model accuracy as a function of the level of evidence presented in
150k with a standard deviation (SD) of 95k, and growth is a trend            each stimulus (Fig. 5). Recall that evidence is the degree to which the
in which there is a linear increase of 15k jobs per month from 150k          data in a stimulus informs the forced choice between the two possible
in January to 350k in December, with a SD of 95k jobs each month             underlying trends of growth and no growth. The lower asymptote of
(Fig. 3, right side). For both trends, we matched the mean job growth        this cumulative Gaussian was set to a guess rate of 0.5 (Fig. 5, lower
for each month to the NYT article [38]. However, we differed from            left), which would be achieved in theory if the participant guessed on
the NYT article by using a SD of 95k jobs instead of 55k. We chose           each trial. The upper asymptote of the cumulative Gaussian was set
this SD to guarantee that there were many visually distinct stimuli to       to one minus some lapse rate (Fig. 5, upper right), the base rate of
sample for which the underlying trend was ambiguous.                         stimulus-independent errors due to lapses of attention. Following rec-
   Staircase Sampling Procedure: A major challenge in obtaining              ommendations from a simulation study on PF fitting [65], we estimate
valid PF fits is making sure that the observer completes enough trials
at stimulus intensities which are ambiguous. Choosing stimuli which             3 https://osf.io/975us/register/5771ca429ad5a1020de2872e

<a id="p005-b004"></a>

<!-- p005-b004 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
KALE ET AL.: HYPOTHETICAL OUTCOME PLOTS HELP UNTRAINED OBSERVERS JUDGE TRENDS IN AMBIGUOUS DATA897

<a id="p006-b002"></a>

<!-- p006-b002 -->
We found no reliable differences in PF spread estimates between vi-
                                                                            sualization conditions (Fig. 6, middle). However, PF spread estimates
                                                                            were lower among participants who started in the HOPs condition (Est
                                                                            = -1.00; 95% CI: -1.91 to -0.09; t = -2.12; p = 0.04) compared to par-
                                                                            ticipants who started with error bars. Recall that narrower PF spreads
                                                                            indicate less noise in the perception of evidence. We speculate that
                                                                            participants may have developed mental representations for the the two
                                                                            possible growth trends during the first block of trials and relied on the
                                                                            uncertainty visualizations less in later trials. There was also an inter-
                                                                            action between visualization condition and starting condition (Est =
                                                                            1.46; 95% CI: 0.34 to 2.58; t = 2.54; p = 0.01), indicating a learning or
                                                                            practice effect. Regardless of the visualization condition under which
                                                                            data was collected, PF spread estimates tended to be larger in the first
                                                                            block of trials than in the second block. We speculate that participants
                                                                            became more sensitive to evidence in the task with practice.
                                                                               Although we intentionally avoided the use of practice trials or feed-
                                                                            back in order to test the behavior of untrained observers, it seems
Fig. 5. An illustration of the psychometric function with relevant param-   that practice or learning introduced differences across blocks which
eters.                                                                      were not necessarily related to visualization condition. While the ef-
                                                                            fect of starting condition on users’ sensitivity to evidence could mean
lapse rate as a constrained free parameter between 0 and 0.06 in or-
                                                                            that HOPs facilitate superior learning about sampling error, this effect
der to reduce bias in other parameter estimates. The level of evidence
                                                                            could also be explained as an artifact of testing visualizations within-
corresponding to the mean of the fitted cumulative Gaussian is the
                                                                            subjects and keeping the task consistent across blocks. The ambigu-
JND (Fig. 5, lower right). The standard deviation of the cumulative
                                                                            ity of this result points to considerations about experimental design
Gaussian is the spread parameter of the PF (Fig. 5, middle right). Per
                                                                            in visualization evaluation. If the goal of the experiment is to mea-
SDT (Fig. 2), the spread parameter represents noise in perception of
                                                                            sure learning, a longitudinal experiment which employs practice trials
the level of evidence, where PFs with greater spreads indicate that the
                                                                            to control for practice effects is ideal. In studies like ours where the
trend in the jobs report is ambiguous across a larger range of evidence.
                                                                            goal is to measure visualization effectiveness, future experiments in
   Confidence Fitness Estimation: We used maximum likelihood es-            this paradigm should employ a between-subjects design, as we do in
timation to find an optimal value of confidence fitness for each PF.        experiment 2, in order to mitigate ambiguity about which visualization
This algorithm was transcribed from Sanders et al. [56]. We provide a       condition is informing a user’s mental representation of the task.
detailed description of the confidence fitness algorithm and our imple-
mentation in Supplemental Materials.                                        4.2.3    Confidence Fitness
   Statistical Inference: We used mixed-effects linear models in lme4
for R to estimate each response variable (i.e., JND, PF spread, and         We modeled fixed effects of visualization and condition order and a
confidence fitness) as a function of fixed effects of visualization con-    random intercept for individual differences. We did not model the
dition and condition order and a random intercept effect of participant.    interaction of visualization and starting condition. Although confi-
Further, we believed that an interaction between visualization condi-       dence fitness within individuals was seldom consistent across blocks
tion and condition order would explain variance in parameter estimates      (see Supplemental Materials), we found no reliable effect of visualiza-
due to practice or learning. Following the procedure in our preregis-       tion or condition order on confidence fitness (Fig. 6, right).
tered analysis plan4 , for each measure we used ANOVA to compare               Since the results of the confidence fitness analysis were inconclu-
model residuals with and without the interaction between visualization      sive and difficult to interpret, we conducted a more conventional ex-
condition and condition order, and we chose the most parsimonious           ploratory analysis on confidence reporting. We used a mixed-effects
mixed-effects model which still minimized the variance of residuals.        linear model on trial-level data to estimate reported confidence based
We provide analysis scripts and data in a project repository5 .             on fixed effects of visualization, starting condition, and their interac-
                                                                            tion as well as fixed effects of the level of evidence conveyed in each
4.2     Results and Discussion                                              stimulus, whether or not a participant’s answer was correct, and their
                                                                            interaction. We also included a random intercept effect of participant.
4.2.1    Just-Noticeable Differences (JNDs)
                                                                               This model (Fig. 7) showed a small effect of visualization condi-
We modeled fixed effects for visualization condition and condition or-      tion (Est = 1.62; 95% CI: 0.80 to 2.43; t = 3.90; p < 0.001) such that
der and a random intercept term to account for individual differences,      users report slightly higher confidence on average when using HOPs.
as described above. We did not include the interaction between visual-      There was also an interaction between visualization and condition or-
ization and starting condition in our model of JNDs because including       der (Est = -1.33; 95% CI: -2.48 to -0.18; t = -2.28; p = 0.02). Simple
the interaction did not reduce residual variance.                           effects showed that users were more confident on average when they
   We found that JNDs were lower in the HOPs condition (Fig. 6, left)       used HOPs in the second block than in any other combination of visu-
than in the error bars condition (Est = -0.68; 95% CI: -1.19 to -0.14; t    alization or block order. More than practice or learning, visualization
= -2.49; p = 0.02). The second column of Figure 4 illustrates an effect     condition seemed to play a role in confidence reporting, although these
of roughly this size. This effect suggested that on average when par-       effects are of doubtful practical significance. Looking at trial-level
ticipants used HOPs rather than error bars they required less evidence      predictors, we found that users were slightly more confident on aver-
about the underlying trend in a noisy time series to achieve mean ac-       age when they answered correctly (Est = 1.93; 95% CI: 0.33 to 3.52;
curacy (around 75%). Put differently, participants could successfully       t = 2.37; p = 0.02). We also found an interaction between correctness
discriminate the underlying trend in the job market for more ambigu-        and the level of evidence presented in a stimulus (Est = 1.73; 95%
ous stimuli when using HOPs as a decision aid.                              CI: 1.36 to 2.09; t = 9.25; p < 0.001). Confidence increased with in-
                                                                            creasing evidence for trials where the user was correct, but confidence
4.2.2    Psychometric Function Spreads                                      decreased with increasing evidence for trials where the user was in-
We modeled visualization condition, condition order, and their interac-     correct. Sanders et al. [56] found that this interaction was predicted
tion as fixed effects and a random intercept for individual differences.    by the estimates of expected confidence produced by their confidence
                                                                            modeling. However, we failed to replicate this finding. The expected
   4 https://osf.io/975us/register/5771ca429ad5a1020de2872e                 confidence ratings produced by our model of confidence fitness failed
   5 https://github.com/kalealex/jobs-report-hops                           to predict reported confidence very well (see Supplemental Materials).
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
898                                            IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 25,                 NO. 1,     JANUARY 2019

<a id="p007-b002"></a>

<!-- p007-b002 -->
Fig. 6. Estimated regression coefficients for mixed-effects linear models of each psychophysical response variable in Experiment 1 (intercept
coefficient omitted for space). Dots represent estimated effects, and lines represent 95% CIs.

<a id="p007-b003"></a>

<!-- p007-b003 -->
processing. The regular HOPs condition displayed each sample for
                                                                               400 ms, matching the presentation rate chosen by Hullman et al. [36].
                                                                               Recall that HOPs in experiment 1 displayed each frame for 1500 ms,
                                                                               following the visualization design of the NYT. In contrast, the faster
                                                                               frame rate of the regular HOPs condition in experiment 2 reflects our
                                                                               a priori estimate of optimal animation parameters.
                                                                                  The static visualization condition in our second experiment was a
                                                                               line ensemble (Fig. 1, middle right). The line ensemble visualizations
                                                                               displayed the same samples as HOPs using the same line encoding,
                                                                               but lines were aggregated into one static view. We chose to use 50
                                                                               lines per ensemble with representative sampling from each month in
                                                                               order to maintain the perception of a discrete representation of uncer-
                                                                               tainty. We did not match the lines per ensemble to the lines shown
                                                                               across all frames of the HOPs because we cannot know which lines
                                                                               users attended to in the HOPs condition. By comparing HOPs to line
                                                                               ensembles we investigate the impact of animating vs aggregating dis-
Fig. 7. Estimated regression coefficients for our exploratory mixed-
                                                                               crete sampling-oriented representations of uncertainty.
effects linear model of confidence reports in Experiment 1 (intercept
coefficient omitted for space). Dots represent estimated effects, and
lines represent 95% CIs.                                                       5.1.2    Experimental Design
                                                                               We tested visualization conditions between-subjects, whereas visual-
                                                                               ization condition was a within-subjects comparison in Experiment 1.
5     E XPERIMENT 2                                                            We changed to a between-subjects comparison in order to avoid ambi-
                                                                               guity about which visualization condition was informing participants’
In experiment 1 we find that participants are more sensitive to the trend      mental representation of the two possible underlying trends. Just like
underlying samples from a noisy time series when using HOPs rather             the first experiment, each participant completed two blocks of 60 trials
than error bars for a decision aid. However, in light of prior work            under the same sampling procedure as before. However, in Experi-
demonstrating that people struggle to interpret error bars [6, 14, 31]         ment 2 both blocks of trials were completed under one visualization
and that bar encodings induce biased judgments of probability [50],            condition. Thus, we sampled twice the number of trials per PF fit in
this result is not entirely surprising. How might these results differ if      the second experiment as we did in the first. We chose to sample 120
we compare HOPs to a more effective static visualization than error            trials per PF in order to improve the quality of our JND and PF spread
bars and remove the influence of the within-the-bar bias from our vi-          estimates and reduce the role of sampling error in our results.
sual encodings? Also, the differences between HOPs and error bars in-
ferred from the results of experiment 1 conflate the effect of animated
                                                                               5.1.3    Analysis Approach
vs static encodings with the effect of discrete sampling vs summary
statistical representations of probability. In experiment 2, our primary       We used the same maximum likelihood estimation procedures as in
aim is to use the evaluation framework we developed to isolate the             Experiment 1. For statistical inferences on JNDs, PF spreads, and con-
effect of animated vs static encodings of uncertainty. Thus, we use            fidence fitness, we used a linear model with visualization condition as
a similar study design to compare HOPs composed of lines (instead              a predictor. For Experiment 2, we preregistered6 a secondary analysis
of bars) to static line ensembles (Fig. 1, middle right). We choose            of confidence reporting on each trial, similar to the exploratory anal-
line ensembles as our control condition because they use a frequency           ysis in our first experiment. We used a mixed-effects linear model of
representation of uncertainty which is superior to error bars, and they        reported confidence with fixed effects of visualization condition, level
aggregate the discrete samples shown in HOPs into one static view.             of evidence in the stimulus, whether or not the participant answered
                                                                               correctly, and the interaction between evidence and correctness. We
5.1     Methods                                                                also included a random effect for individual differences.
With the exception of the following changes, the methods used in our
second experiment were identical to the methods used in the first.             5.2     Results and Discussion
                                                                               5.2.1    Just-Noticeable Differences (JNDs)
5.1.1     Uncertainty Visualizations
                                                                               We found that JNDs were lower in the regular HOPs condition (Fig. 8,
We tested three uncertainty visualization conditions in our second ex-         left) than in the line ensembles condition (Est = -1.22; 95% CI: -2.18
periment. Two of these were HOPs with lines instead of bars (Fig. 1,           to -0.26; t = -2.52; p = 0.01). This suggested that animating hypotheti-
right). We test two HOPs conditions to examine whether the benefits            cal outcomes across frames instead of aggregating them into one static
of HOPs persist at very high frame rates where the participant cannot          view facilitated correct judgments of the underlying trend in samples
cognize individual samples. The fast HOPs condition displayed each
sample for only 100 ms in order to test the limits of visual ensemble             6 https://osf.io/gw4cj/register/5771ca429ad5a1020de2872e

<a id="p007-b004"></a>

<!-- p007-b004 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
KALE ET AL.: HYPOTHETICAL OUTCOME PLOTS HELP UNTRAINED OBSERVERS JUDGE TRENDS IN AMBIGUOUS DATA899

<a id="p008-b002"></a>

<!-- p008-b002 -->
Fig. 8. Estimated regression coefficients for mixed-effects linear models of each psychophysical response variable in Experiment 2 (intercept
coefficient omitted for space). Dots represent estimated effects, and lines represent 95% CIs.

<a id="p008-b003"></a>

<!-- p008-b003 -->
may have occurred because line ensembles establish a higher baseline
                                                                              for confidence than error bars, but it could also be noise.
                                                                                 Our findings regarding trial-level predictors were consistent with
                                                                              those of the first experiment. We found that participants were more
                                                                              confident on trials where they were correct (Est = 1.96; 95% CI: 1.04
                                                                              to 2.88; t = 4.18; p < 0.001) and that there was an interaction between
                                                                              correctness and the level of evidence presented (Est = 1.34; 95% CI:
                                                                              1.15 to 1.53; t = 13.77; p < 0.001). We also found a minuscule ef-
                                                                              fect of the level of evidence in a stimulus on confidence (Est = 0.19;
                                                                              95% CI: 0.01 to 0.37; t = 2.04; p = 0.04). Similar to our first experi-
                                                                              ment, our raw confidence data followed the predictions of Sanders et
                                                                              al. [56], who created the confidence fitness algorithm. Their model
                                                                              predicted that the relationship between confidence reporting and the
                                                                              level of evidence presented in a stimulus is modulated by correctness
Fig. 9. Estimated regression coefficients for our mixed-effects linear
                                                                              of participant responses. However, our implementation did not pro-
model of confidence reports in Experiment 2 (intercept coefficient omit-
ted for space). Dots represent estimated effects, and lines represent
                                                                              duce this predictive behavior (see Supplemental Materials).
95% CIs.
                                                                              6     D ISCUSSION AND F UTURE W ORK
conveying a lower level of evidence. JNDs were also lower for partici-        6.1    Findings and Interpretation
pants who used fast HOPs rather than line ensembles as a decision aid
                                                                              In experiment 1, we find that users are more sensitive to the underlying
(Est = -0.74; 95% CI: -1.69 to 0.22; t = -1.52; p = 0.13). However, this
                                                                              trend in samples from a noisy time series when using HOPs rather than
effect was small and unreliable. When the frame rate of HOPs was
                                                                              error bars as a decision aid. This suggests that sampling-oriented pre-
faster, gains in performance were attenuated. Most individual JND es-
                                                                              sentations of uncertainty lead to better comprehension of uncertainty
timates were in approximately the same range regardless of visualiza-
                                                                              for the purpose of perceptual decision-making than summary statisti-
tion condition. The effects we found were largely driven by a subset
                                                                              cal representations of uncertainty. This finding is consistent with the
of individuals, mostly in the line ensembles condition, who showed
                                                                              literature on frequency presentations of probability [30, 24, 25, 32],
little sensitivity on the task (JNDs > 9 absolute log likelihood units).
                                                                              sampling-oriented uncertainty visualizations [18, 36, 35, 40, 47], and
It seems that animating hypothetical outcomes at a particular frame
                                                                              the ensemble processing abilities of the human visual system [3, 4, 29,
rate leads to more consistent levels of sensitivity across observers in
                                                                              33, 44]. Our first experiment extends this line of inquiry by (1) apply-
judging samples from a noisy time series.
                                                                              ing vision science methodology to uncertainty visualization evaluation
                                                                              and (2) addressing the question of whether HOPs can improve sensi-
5.2.2   Psychometric Function Spreads                                         tivity to uncertainty information in the public domain.
In line with the results from our first experiment, we found that visu-           In our second experiment, we isolate the effect of animation on user
alization condition did not seem to impact PF spreads. On average,            perceptions of probability. We compare HOPs, at two different frame
spread estimates were not reliably different for participants in the reg-     rates, showing hypothetical sets of 12 outcomes as lines to static line
ular HOPs, fast HOPs, and line ensemble conditions (Fig. 8, middle).          ensembles, which show the same samples using the same line encod-
                                                                              ing but aggregated into one static display. We find that participants in
5.2.3   Confidence Fitness                                                    the regular HOPs condition (400 ms per sample) are more consistently
                                                                              sensitive to the underlying trend in samples from a noisy time series
Confidence fitness was not reliably different across visualization con-       than participants in the line ensembles condition. However, this effect
ditions (Fig. 9, right). We speculate that animation of hypothetical          is attenuated for fast HOPs (100 ms per sample). Perhaps, the ability of
outcomes, compared to a static depiction of the same outcomes, may            the visual system to automatically process ensembles breaks down be-
have little distorting effect on the efficacy of confidence monitoring.       yond a certain frequency. Future work in information visualization and
   We ran a mixed-effects linear model on confidence reporting data           vision science should systematically test ensemble processing abilities
(Fig. 9) similar to the exploratory analysis in Experiment 1. On aver-        across a more granular set of frame rates to try to pinpoint the limita-
age participants reported lower confidence in the fast HOPs condition         tions of the visual system in processing this kind of display.
than in the line ensembles condition (Est = -2.94; 95% CI: -5.70 to               Our analyses of confidence fitness in both experiments suggest that
-0.17; t = -2.07; p = 0.04). Participants in the regular HOPs condition       the efficacy of participants’ confidence monitoring was not systemat-
also reported lower confidence on average (Est = -2.34; 95% CI: -5.09         ically impacted by visualization conditions. Confidence fitness is a
to 0.44; t = -1.64; p = 0.10), although this effect was not reliable. These   unitless latent parameter of a model describing the degree to which re-
results were in contrast with those of Experiment 1, in which partici-        ported confidence matches predictions from a Monte Carlo simulation
pants reported slightly higher confidence on average when using HOPs          based on signal detection theory. As such, it is difficult to interpret the
rather than error bars as a decision aid. This apparent reversal of effect    practical significance of these null results.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
900                                            IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 25,                     NO. 1,   JANUARY 2019

<a id="p009-b002"></a>

<!-- p009-b002 -->
6.2     Limitations                                                             allocate the necessary attention to integrate outcomes over time. Ad-
                                                                                ditionally, the designer should choose a frame rate for HOPs which is
6.2.1    Confidence Fitness
                                                                                not so fast that the viewer cannot cognize individual observations and
Confidence as a construct is difficult to interpret. Confidence fitness         not so slow that the viewer becomes impatient. Interestingly, we and
contextualizes confidence reporting data in comparison to a theoreti-           colleagues in our lab independently chose a similar frame rate to the
cal ground truth, quantifying the degree to which confidence reporting          one tested in prior work on HOPs [36], 400 ms per sample. Future
fits a particular statistical definition. In principle, this tells us whether   work should examine a range of possible parameters and empirically
reported levels of confidence are warranted based on the presented ev-          establish the optimal design for HOPs.
idence and the perceptual sensitivity of the user. However, we find                Although communicating uncertainty is recommended in order to
that the algorithm does not consistently predict reported confidence,           emphasize that outcomes may not always resemble their expected
and this suggests that there may be wrong assumptions in the model              value [21, 23], in some cases uncertainty visualizations may not be
(see Supplemental Materials). Future work should search for better-             well-matched to the intended task. If uncertainty is unlikely to aid in-
fitting models to establish a ground truth for confidence. Alternatively,       terpretation (e.g., when reading a point estimate), a direct encoding of
perhaps a normative account of confidence, which assumes that con-              central tendency might be preferred. Prior work shows that HOPs are
fidence means the same thing to participants and researchers, is not            inferior to point estimates with error bars or violin plots if the task is
appropriate considering the intersubjectivity of confidence reporting.          to estimate central tendency of highly variable outcomes [36]. In some
                                                                                scenarios involving decision-making, communicating the uncertainty
6.2.2    Psychometric Functions                                                 in the process which produced the data might introduce confusion,
                                                                                anxiety, or indecision [46]. However, failing to show uncertainty may
A typical approach when using psychometric functions (PFs, Fig. 5) to
                                                                                lead to a false sense of security in visualized outcomes [5, 58]. De-
model perceptual decision-making is to estimate JNDs and use statis-
                                                                                signers should consider the needs and background of their audience in
tical inference to detect shifts in the sensitivity of participants’ percep-
                                                                                order to determine how and whether or not to visualize uncertainty.
tions under different conditions, quantified as differences in JNDs. In
doing this, we fit a richly descriptive model but throw out all informa-
tion other than a point estimate in the process of statistical inference.       7   C ONCLUSION
    However, we can leverage other aspects of the PF for inference. We          In our study, we demonstrate that animated sampling-oriented uncer-
did this by examining often ignored PF spreads, which represent noise           tainty visualizations can support perceptual decision-making in a re-
in the perception of evidence. Judging by the null effects of visual-           alistic context. Since our task requires users to integrate information
ization on PF spreads in this study, one might think they are an insen-         about the central tendency and variance of distributions and leverage
sitive measure of visualization effectiveness. However, the change in           this information to make inferences about the likelihood of samples,
PF spreads over time within an individual measures of how quickly               performance on this task is a proxy for the kind of reasoning which
people learn a task on a given interface. Since our experiments were            is necessary to understand the use of statistics in science [21, 23].
not designed to measure such a learning effect, this remains a promis-          The degree to which different uncertainty visualizations support per-
ing direction for future work. We also demonstrated how estimates               formance on this task should be considered an indication of their effi-
of the PF spread can be leveraged, along with signal detection theory           cacy for facilitating nuanced statistical reasoning. Whether or not the
(Fig. 2), to bootstrap estimates of expected confidence reporting [56].         gains in performance associated with HOPs on this task can translate
    The core problem with the traditional use of JNDs is that PF fitting        into long-term improvements in statistical literacy is an open question.
and statistical inference are relegated to separate computational mod-          Future research should examine, in a longitudinal study, whether inci-
els. In future work, we intend to rethink perceptual modeling using             dental exposure to various visual representations of uncertainty can fa-
PFs and incorporate the entire procedure into a hierarchical Bayesian           cilitate learning of statistical reasoning. If it turns out that the benefits
modeling approach [49].                                                         of HOPs for complex tasks like ours extend to lasting improvements
                                                                                in statistical reasoning, this would suggest that the incorporation of
6.3     Design Guidelines                                                       certain uncertainty visualizations into informal contexts like the news
                                                                                promotes a more statistically literate society.
Our findings imply that uncertainty visualizations in public-facing
venues such as the news have a measurable impact on perceptions of              8   ACKNOWLEDGEMENTS
uncertainty. Designers of uncertainty visualizations for public audi-
ences have a responsibility to use uncertainty representations which            The roles of the first and second authors were approximately equal.
promote accurate perceptions of probability.                                    Alex Kale contributed domain knowledge about psychophysics and
   HOPs and other sampling-oriented displays like line ensembles are            experimental design and was responsible for implementing the data
particularly helpful when understanding the process that produced data          analyses. Francis Nguyen contributed domain knowledge about sys-
is critical. In such cases, summary statistical encodings like error bars       tem development and graphical design and was responsible for im-
conceal important information about variability behind opaque statis-           plementing the experimental interface. Jessica Hullman and Matthew
tical constructs like standard error [6, 14, 15, 31]. In contrast, showing      Kay advised the project, contributing expertise in statistical inference
discrete outcomes from the process which produced the data offers a             and uncertainty visualization. Alex wrote the paper with iterative feed-
more interpretable rendering of uncertainty [18, 24, 25, 32, 36, 35, 40],       back from Jessica and editing help from other authors. Francis created
especially when viewers are unlikely to have statistical training.              the figures for the paper with guidance from other authors. Alex and
   The trade-off between static sampling-oriented visualizations and            Jessica conducted the qualitative analysis of visualizations in the news.
HOPs is mostly a question of how these techniques interact with the af-         Alex, Jessica, and Francis designed the experimental procedure. All
fordances of the visual system. In the case of static sampling-oriented         authors selected visualization conditions to evaluate.
visualizations, designers should consider whether displaying too many              We would like to thank Geoffrey Boynton, Steve Franconeri,
outcomes in one view will disrupt the perception of discrete outcomes,          Michael-Paul Schallmo, and the members of the Interactive Data Lab
resulting in a density encoding rather than the intended frequency en-          for their feedback throughout the study.
coding. Density encodings for uncertainty are interpreted less consis-
tently than frequency encodings because they describe probability in            R EFERENCES
the abstract rather than showing users an experiential representation of         [1] G. Aisch, N. Cohn, A. Cox, J. Katz, A. Pearce, and K. Quealy. Live
uncertainty [36, 35, 40]. Displaying too many outcomes in one view                   Presidential Forecast, 2016.
also might lead to the problem of crowding, the inability of the visual          [2] A. R. Albrecht and B. J. Scholl. Perceptually averaging in a continu-
system to generate accurate percepts of cluttered scenes [4]. In the                 ous visual world extracting statistical summary representations over time.
case of HOPs, designers should consider whether the audience will                    Psychological Science, 21(4):560–567, 2010.

<a id="p009-b003"></a>

<!-- p009-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
KALE ET AL.: HYPOTHETICAL OUTCOME PLOTS HELP UNTRAINED OBSERVERS JUDGE TRENDS IN AMBIGUOUS DATA901

<a id="p010-b002"></a>

<!-- p010-b002 -->
[3] G. Alvarez and A. Oliva. The representation of ensemble visual features            21(5):1157–1164, 2014.
     outside the focus of attention. Psychological Science, 19(4):392–398,         [32] U. Hoffrage and G. Gigerenzer. Using natural frequencies to improve
     2008.                                                                              diagnostic inferences. Academic medicine, 73(5):538–40, 1998.
 [4] G. A. Alvarez. Representing multiple objects as an ensemble enhances          [33] B. Hubert-Wallander and G. M. Boynton. Not all summary statistics are
     visual cognition. Trends in cognitive sciences, 15(3):122–131, 2011.               made equal: Evidence from extracting summaries across time. Journal
 [5] E. B. Andrade. Excessive confidence in visually-based estimates. Or-               of Vision, 15(2015):1–12, 2015.
     ganizational Behavior and Human Decision Processes, 116(2):252–261,           [34] J. Hullman, E. Adar, and P. Shah. Benefitting infovis with visual dif-
     2011.                                                                              ficulties. Visualization and Computer Graphics, IEEE Transactions on,
 [6] S. Belia, F. Fidler, J. Williams, and G. Cumming. Researchers misunder-            17(12):2213–2222, 2011.
     stand confidence intervals and standard error bars. Psychological meth-       [35] J. Hullman, M. Kay, Y.-S. Kim, and S. Shrestha. Imagining replications:
     ods, 10(4):389, 2005.                                                              Graphical prediction & discrete visualizations improve recall estimation
 [7] A. R. Binder, E. D. Hillback, and D. Brossard. Conflict or caveats? effects        of effect uncertainty. IEEE Trans. Visualization & Comp. Graphics (Proc.
     of media portrayals of scientific uncertainty on audience perceptions of           InfoVis), 2018.
     new technologies. Risk Analysis, 36(4):831–846, 2016.                         [36] J. Hullman, P. Resnick, and E. Adar. Hypothetical outcome plots outper-
 [8] S. Blenkinsop, P. Fisher, L. Bastin, and J. Wood. Evaluating the percep-           form error bars and violin plots for inferences about reliability of variable
     tion of uncertainty in alternative visualization strategies. Cartographica:        ordering. PloS one, 10(11), 2015.
     The International Journal for Geographic Information and Geovisualiza-        [37] J. P. Ioannidis. Why most published research findings are false. PLoS
     tion, 37(1):1–14, 2000.                                                            Med, 2(8):e124, 2005.
 [9] M. Bostock, S. Carter, A. Cox, J. Daniel, J. Katz, and K. Quealy. Who         [38] N. Irwin and K. Quealy. How Not to Be Misled by the Jobs Report. The
     Will Win The Senate? The New York Times, Apr. 2014.                                New York Times, May 2014.
[10] Q. Bui and B. Casselman. What the tax bill would look like for 25,000         [39] S. L. Joslyn and J. E. LeClerc. Uncertainty forecasts improve weather-
     middle-class families. The New York Times, Nov. 2017.                              related decisions and attenuate the effects of forecast error. Journal of
[11] S. M. Casner and J. H. Larkin. Cognitive efficiency considerations for             Experimental Psychology: Applied, 18(1):126–140, 2012.
     good graphic design. The Cognitive Science Society, (June):275–282,           [40] M. Kay, T. Kola, J. Hullman, and S. Munson. When (ish) is my bus?
     1989.                                                                              user-centered visualizations of uncertainty in everyday, mobile predictive
[12] W. S. Cleveland, P. Diaconis, and R. McGill. Variables on Scatterplots             systems. In Proceedings of the 34th Annual ACM Conference on Human
     Look More Highly Correlated When the Scales are Increased. Science,                Factors in Computing Systems, CHI ’16, 2016.
     216(4550):1138–1141, 1982.                                                    [41] M. Kay, T. Kola, J. Hullman, and S. A. Munson. When (ish) is my bus?
[13] T. N. Cornsweet. The Staircase-Method in Psychophysics. The American               user-centered visualizations of uncertainty in everyday, mobile predictive
     Journal of Psychology, 75(3):485–491, 1962.                                        systems. Proc. CHI 2016, 2016.
[14] M. Correll and M. Gleicher. Error bars considered harmful: Exploring al-      [42] F. A. Kingdom and N. Prins. Psychophysics: A Practical Introduction.
     ternate encodings for mean and error. Visualization and Computer Graph-            Elsevier Ltd., first edition edition, 2010.
     ics, IEEE Transactions on, 20(12):2142–2151, Dec 2014.                        [43] J. H. Larkin and H. A. Simon. Why a diagram is (sometimes) worth ten
[15] R. Cox. Representation construction, externalised cognition and individ-           thousand words. Cognitive science, 11(1):65–100, 1987.
     ual differences. Learning and instruction, 9(4):343–363, 1999.                [44] A. Y. Leib, A. Kosovicheva, and D. Whitney. Fast ensemble represen-
[16] C. R. Ehlschlaeger, A. M. Shortridge, and M. F. Goodchild. Visualiz-               tations for abstract visual impressions. Nature Communications, 7:1–10,
     ing spatial data uncertainty using animation. Computers & Geosciences,             2016.
     23(4):387–395, 1997.                                                          [45] S. Lin, J. Fortuna, C. Kulkarni, M. Stone, and J. Heer. Selecting
[17] B. J. Evans. Dynamic display of spatial data-reliability: Does it benefit          semantically-resonant colors for data visualization. Computer Graphics
     the map user? Computers & Geosciences, 23(4):409–422, 1997.                        Forum (Proc. EuroVis), 2013.
[18] M. Fernandes, L. Walls, S. Munson, J. Hullman, and M. Kay. Uncertainty        [46] R. Lipshitz and O. Strauss. Coping with Uncertainty: A Naturalistic
     Displays Using Quantile Dotplots or CDFs Improve Transit Decision-                 Decision-Making Analysis. Organizational Behavior and Human De-
     Making. In Conference on Human Factors in Computing Systems - CHI                  cision Processes, 69(2):149–163, 1997.
     ’18, 2018.                                                                    [47] L. Liu, A. Boone, I. Ruginski, L. Padilla, M. Hegarty, S. H. Creem-
[19] S. Franconeri. personal communication.                                             Regehr, W. B. Thompson, C. Yuksel, and D. H. House. Uncertainty
[20] S. G. Digital Color Imaging Handbook. CRC Press, 2002.                             Visualization by Representative Sampling from Prediction Ensembles.
[21] I. Gal. Adults’ Statistical Literacy: Meanings, Components, Responsibil-           IEEE Transactions on Visualization and Computer Graphics, 23(9):2165
     ities. International Statistical Review, 70(1):1–25, 2002.                         – 2178, 2016.
[22] M. A. García-Pérez. Forced-choice staircases with fixed step sizes:           [48] C. Lundström, P. Ljung, A. Persson, and A. Ynnerman. Uncertainty
     Asymptotic and small-sample properties. Vision Research, 38(12):1861–              visualization in medical volume rendering using probabilistic anima-
     1881, 1998.                                                                        tion. IEEE Transactions on Visualization and Computer Graphics,
[23] J. Garfield. The challenge of developing statistical reasoning. Journal of         13(6):1648–1655, 2007.
     Statistics Education, 10(3):58–69, 2002.                                      [49] R. McElreath. Statistical Rethinking: A Bayesian Course with Examples
[24] G. Gigerenzer and U. Hoffrage. How to improve bayesian reasoning with-             in R and Stan. CRC Press, 2016.
     out instruction: frequency formats. Psychological review, 102(4):684,         [50] G. E. Newman and B. J. Scholl. Bar graphs depicting averages are per-
     1995.                                                                              ceptually misinterpreted: The within-the-bar bias. Psychonomic bulletin
[25] D. G. Goldstein and D. Rothschild. Lay understanding of probability                & review, 19(4):601–607, 2012.
     distributions. Judgment and Decision Making, 9(1):1, 2014.                    [51] A. O’Hagan, C. E. Buck, A. Daneshkhah, J. R. Eiser, P. H. Garthwaite,
[26] M. F. Goodchild. Geographic information systems and science: today                 D. J. Jenkinson, J. E. Oakley, and T. Rakow. Uncertain judgements: elic-
     and tomorrow. Procedia Earth and Planetary Science, 1(1):1037–1043,                iting experts’ probabilities. John Wiley & Sons, 2006.
     2009.                                                                         [52] L. M. Padilla, G. Hansen, I. T. Ruginski, H. S. Kramer, W. B. Thompson,
[27] D. Green and J. Swets. Signal Detection Theory and Psychophysics. John             and S. H. Creem-Regehr. The influence of different graphical displays on
     Wiley and Sons, 1966.                                                              nonexpert decision making under uncertainty. Journal of Experimental
[28] J. Haberman and D. Whitney. Seeing the mean: ensemble coding for sets              Psychology: Applied, 21(1):37–46, 2015.
     of faces. Hum. Percept. Perform., 2009.                                       [53] L. M. Padilla, I. T. Ruginski, and S. H. Creem-Regehr. Effects of en-
[29] L. Hasher and R. T. Zacks. Automatic processing of fundamental infor-              semble and summary displays on interpretations of geospatial uncertainty
     mation: the case of frequency of occurrence. The American psychologist,            data. Cognitive Research: Principles and Implications, 2(1):40, 2017.
     39(12):1372–1388, 1984.                                                       [54] K. Potter, P. Rosen, and C. R. Johnson. From quantification to visual-
[30] R. Hertwig, G. Barron, E. U. Weber, and I. Erev. Decisions from experi-            ization: A taxonomy of uncertainty visualization approaches. In A. M.
     ence and the effect of rare events in risky choice. Psychological science,         Dienstfrey and R. F. Boisvert, editors, Uncertainty Quantification in Sci-
     15(8):534–539, 2004.                                                               entific Computing, pages 226–249. Springer Berlin Heidelberg, Berlin,
[31] R. Hoekstra, R. D. Morey, J. N. Rouder, and E.-J. Wagenmakers. Robust              Heidelberg, 2012.
     misinterpretation of confidence intervals. Psychonomic bulletin & review,     [55] K. Quealy and A. Cox. The first g.o.p. debate: Who’s in, who’s out and

<a id="p010-b003"></a>

<!-- p010-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:08 UTC from IEEE Xplore. Restrictions apply.

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
902                                              IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 25,             NO. 1,   JANUARY 2019

<a id="p011-b002"></a>

<!-- p011-b002 -->
the role of chance. The New York Times, July 2015.
[56] J. I. Sanders, B. Hangya, and A. Kepecs. Signatures of a Statistical Com-
     putation in the Human Sense of Confidence. Neuron, 90:499–506, 2016.
[57] Y. Shen and V. M. Richards. A maximum-likelihood procedure for esti-
     mating psychometric functions: Thresholds, slopes, and lapses of atten-
     tion. The Journal of the Acoustical Society of America, 132(2):957–967,
     2012.
[58] E. Soyer and R. M. Hogarth. The illusion of predictability: How re-
     gression statistics mislead experts. International Journal of Forecasting,
     28(3):712–714, 2012.
[59] D. A. Szafir. Modeling Color Difference for Visualization Design. IEEE
     Transactions on Visualization and Computer Graphics, 24(1):392–401,
     2017.
[60] B. N. Taylor and C. E. Kuyatt. Guidelines for evaluating and expressing
     the uncertainty of NIST measurement results. Technical report, 1994.
[61] E. Tufte. The Visual Display of Quantitative Information. Graphics Press,
     Cheshire, Conn., 1983.
[62] A. Tversky and D. Kahneman. Belief in the law of small numbers. Psy-
     chological bulletin, 76(2):105, 1971.
[63] A. Tversky and D. Kahneman. Judgment under uncertainty: Heuristics
     and biases. In Utility, probability, and human decision making, pages
     141–162. Springer, 1975.
[64] B. Tversky, J. B. Morrison, and M. Betrancourt. Animation: can it facili-
     tate? Int. J. Human-Computer Studies, 57:247–262, 2002.
[65] F. A. Wichmann and N. J. Hill. The psychometric function : I . Fitting ,
     sampling , and goodness of fit. 63(8):1293–1313, 2001.
[66] J. Zhang and D. A. Norman. Representations in distributed cognitive
     tasks. Cognitive Science, 18(1):87–122.

<a id="p011-b003"></a>

<!-- p011-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:08 UTC from IEEE Xplore. Restrictions apply.
