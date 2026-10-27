---
id: "kusumastuti2023practice"
title: "Practice Improves Performance of a 2D Uncertainty Integration Task Within and Across Visualizations"
source_file: "The Art of Uncertain Topoplots/papers/kusumastuti2023practice.pdf"
source_sha256: "23d0b9e3df1f6f6ea2972908f69f6df34d29f7892b1a65b91209be7ffb7571c1"
extraction_format: 1
---

# Practice Improves Performance of a 2D Uncertainty Integration Task Within and Across Visualizations — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 29, NO. 9, SEPTEMBER 2023                                                             3949

<a id="p001-b002"></a>

<!-- p001-b002 -->
Practice Improves Performance of a 2D
                 Uncertainty Integration Task Within and
                          Across Visualizations
                     Sarah A. Kusumastuti, Kimberly A. Pollard , Ashley H. Oiknine, Bianca Dalangin,
                                       Tiffany R. Raber, and Benjamin T. Files

<a id="p001-b003"></a>

<!-- p001-b003 -->
Abstract—Information uncertainty is ubiquitous in everyday life, including in domains as diverse as weather forecasts, investments,
         and health risks. Knowing how to interpret and integrate this uncertain information is vital for making good decisions, but this can be
         difficult for experts and novices alike. In this study, we examine whether brief, focused practice can improve people’s ability to
         understand and integrate bivariate Gaussian uncertainty visualized via ensemble displays, summary displays, and distributional
         displays, and we examine whether this is influenced by the complexity of the displayed information. In two experiments (N¼118 and
         56), decision making was faster and more accurate after practice relative to before practice. Furthermore, the performance
         improvements transferred to use of display types that were not practiced. This suggests that practice with feedback may improve
         underlying skills in probabilistic reasoning and provides a promising approach to improve people’s decision making under uncertainty.

<a id="p001-b004"></a>

<!-- p001-b004 -->
Index Terms—Decision making, training, visualization, uncertainty

<a id="p001-b005"></a>

<!-- p001-b005 -->
Ç

<a id="p001-b006"></a>

<!-- p001-b006 -->
1       INTRODUCTION                                                                 used to present various types of uncertainty information
                                                                                     about weather, betting odds, or financial risk.
             decisions under uncertainty is a difficult but
M        AKING
      pervasive task, occurring in contexts as diverse as
financial decisions, disaster response, and medical decision-
                                                                                        Various types of training have been explored to help users
                                                                                     understand data visualizations and integrate uncertainty to
                                                                                     make decisions. These include approaches such as the provi-
making. Problems with audience comprehension of data
                                                                                     sion of verbal instructions, the use of animations, allowing
uncertainty have led many communicators to simply forego
                                                                                     interactivity with visualizations, and encouraging thought
including uncertainty estimates at all [1]. This approach can
                                                                                     experiments and re-creations of visualizations [4], [5], [6],
lead to maladaptive consequences when decision makers
                                                                                     [7], [8], and these training methods have demonstrated vari-
do not have access to the uncertainty information they
                                                                                     ous degrees of effectiveness in enhancing understanding of
need, ranging from wasting time waiting for a bus [2] to
                                                                                     uncertainty information. Additionally, increased under-
making decisions that can lead a country to war [3, box 1].
                                                                                     standing in one type of visualization can transfer to other
One way of presenting uncertain information is by utilizing
                                                                                     familiar types of visualization [9]. Making decisions based
visualizations. An example of a common use for visualiza-
                                                                                     on visualized uncertainty is a two-step process and depends
tions in presenting uncertainty information can be found in
                                                                                     on extracting information from the graphic and then using
conveying geographic information, such as approximating
                                                                                     that information to make some inference [10]. Identifying a
the location of a device through GPS. Visualizations are also
                                                                                     brief and effective method to train both of these skills (the
                                                                                     extraction of uncertainty information from visualizations,
 Sarah A. Kusumastuti is with the Department of Psychology, University              plus the reasoned inference based on the extracted informa-
  of Southern California, Los Angeles, CA 90089 USA.                                 tion) could open the door to better decision making across a
  E-mail: kusumast@usc.edu.
 Kimberly A. Pollard, Tiffany R. Raber, and Benjamin T. Files are with              range of real-world contexts.
  DEVCOM Army Research Laboratory, Los Angeles, CA 90094 USA.                           To identify effective means of training, we examined the
  E-mail: {kimberly.a.pollard.civ, tiffany.raber.civ}@army.mil, benjamin.t.          use of practice with feedback and explored two main
  files.civ@army.mil.
 Ashley H. Oiknine and Bianca Dalangin are with DCS Corporation, Los
                                                                                     hypotheses: 1) Having users practice a decision-making task
  Angeles, CA 90094 USA. E-mail: {aoiknine, bdalangin}@dcscorp.com.                  with uncertainty visualizations, followed by prompt perfor-
Manuscript received 26 July 2021; revised 5 May 2022; accepted 6 May 2022.           mance feedback, should enhance performance with that
Date of publication 10 May 2022; date of current version 31 July 2023.               same type of visualization, as would be demonstrated in pre-
This work was supported by the DEVCOM Army Research Laboratory’s                     vs. post-test performance; and 2) Deliberate practice with a
Human Sciences Campaign.
This work involved human subjects or animals in its research. Approval of all
                                                                                     probabilistic reasoning task should improve performance of
ethical and experimental procedures and protocols was granted by the DEV-            the underlying inference, as would be demonstrated by
COM ARL Human Research Protection Program under Protocol Nos. ARL                    improved transfer performance on different (untrained)
20-028 and ARL 20-147, and performed in line with the Belmont Report.                visualization types. Our experimental task is a simplified
(Corresponding author: Benjamin T. Files.)
Recommended for acceptance by B. Preim.                                              and abstracted representation of a real-world situation in
Digital Object Identifier no. 10.1109/TVCG.2022.3173889                              which a decision-maker needs to consider multiple uncertain
                                                         U.S. Government work not protected by U.S. copyright.

<a id="p001-b007"></a>

<!-- p001-b007 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:23 UTC from IEEE Xplore. Restrictions apply.

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
3950                                            IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 29, NO. 9, SEPTEMBER 2023

<a id="p002-b002"></a>

<!-- p002-b002 -->
reports when judging the most likely or best location for an                 [https://osf.io/yqun6/ and https://osf.io/x5u4b/], how-
action. This kind of situation arises in search and rescue,                  ever the analysis plan did not account for differences in
wayfinding, law enforcement, and military operations.                        stimulus difficulty, which turned out to be important. The
   We utilized three different ways of presenting uncer-                     analyses presented here differ substantially from the regis-
tainty information to participants:                                          tered analysis plan.

<a id="p002-b003"></a>

<!-- p002-b003 -->
1)   Ensemble displays, which present some number of
         cases as representative of the underlying distribu-                 2.1 Procedure
         tion, such as showing some number of random                         We used the service Prolific Academic to advertise the web-
         draws from the distribution. Examples include rep-                  based experiment to eligible prospective participants based
         resentative subset samples [11], quantile dotplots [2],             on self-report responses regarding normal vision, normal
         and representative track ensembles [12]. Such                       color vision, normal hearing, fluency in English, and age 18
         ensemble displays are thought to be beneficial for                  or older. After enrollment, participants were directed to a
         users because the majority, if not all, of the data is              Qualtrics survey to confirm eligibility, provide informed
         depicted [13]. However, it might lead a user to put                 consent, respond to demographic questions, and complete a
         disproportionate weight on the realized sample,                     14-plate Ishihara color vision test. A technology question-
         rather than considering it just one of many possible                naire was administered to ensure participants were com-
         samples [14].                                                       pleting the experiment on a desktop computer or laptop.
   2) Summary displays, which are displays that show                         These criteria were used to ensure all participants could
         statistical summaries of their underlying distribu-                 equally perceive all aspects of the experiment. Next, partici-
         tions, e.g., error bars or confidence intervals. Sum-               pants were prompted to resize an image on their screen to
         mary displays are concise, in that they convey                      match the size of a standard physical card (3.375 in x 2.125
         distributional information with a minimal (or nearly                in, such as a credit card) to calibrate task stimuli size [18].
         so) amount of graphical information. However, sum-                  After vision screening, the Regulatory Focus Questionnaire
         mary displays often have an effect of creating appar-               [19], Big Five Inventory [20], [21], Game Use Inventory [22],
         ent boundaries in spaces that are better understood                 Graph Literacy [23], and Numeracy [24] questionnaires
         as continuous. Displaying continuous space as parti-                were administered. After the questionnaires, participants
         tioned can invite errors of reasoning [15], [16].                   watched an 8-minute instruction video that described three
   3) Distributional displays, which display the entirety                    visualization types, how to interpret areas with high and
         of a probability distribution. For example, using a                 low uncertainty, and the task objective–to find the most
         curve to display a one-dimensional probability den-                 likely hidden location.
         sity function. Other approaches use color satura-                       Next, participants answered 13 multiple choice compre-
         tion, value, or opacity to represent probability                    hension questions and 3 practice questions. Comprehension
         density. These color-based approaches can be used                   questions were derived from the instruction video.
         with one- and two-dimensional probability distri-                       To be eligible for the main experimental task, participants
         butions. However, human color perception does                       were to answer a designated proportion of questions accu-
         not map straightforwardly to color spaces that are                  rately and had 3 attempts at the full set of 13 comprehension
         convenient for data display and there are limita-                   questions. After each attempt at the comprehension questions,
         tions with color perception and sensitivity as it is                feedback was displayed identifying incorrect responses, their
         displayed in print or screens [17].                                 respective time stamp for the answer in the video, and a link
    Given that we utilized three visually distinct ways to rep-              to the video for review. Each practice question contained an
resent uncertainty data, our study consists of two experi-                   example stimulus with four locations marked with letters. Par-
ments: in the first experiment, we tested whether deliberate                 ticipants were asked to select which letter contained the most
practice with an ensemble representation would improve                       likely hidden location. All incorrect answer selections were
performance with that representation and the others.                         followed with corrective feedback. To be eligible for the main
Ensemble representations are considered the most intuitive,                  experimental task, participants were to answer each of the
so we reasoned that this was the most likely to be accessible                three practice questions accurately within three tries. Partici-
and lead to the best chance of improving the underlying                      pants who were not eligible to participate were dismissed
inference. In the second experiment, we tested a summary                     with partial compensation.
representation, reasoning that as the most abstract represen-                    The main experimental task prompted participants to
tation, it would be most likely to demonstrate type-specific                 examine 2 to 3 sources of uncertainty in order to find a hid-
effects.                                                                     den location. The different uncertainty sources were distin-
                                                                             guishable by color: blue and red in the 2-source conditions,
                                                                             plus yellow in the 3-source conditions. Participants were
2        EVALUATION METHOD                                                   asked to combine the information from all sources and
Here we describe the overarching method that underlies                       select the most likely location quickly and accurately. This
two separate studies. Although both studies follow the                       task was developed in JavaScript embedded within the
same experimental design, differences will be detailed in                    Qualtrics questionnaire and followed a pre-test, practice,
the following sections (see Experiment 1, Experiment 2).                     post-test design (see Fig. 1). The pre- and post-test included
Data collection method, sample size, hypotheses, and analy-                  three visualization types, but the practice used just one of
sis approach for these experiments were pre-registered                       the three visualization types.
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:23 UTC from IEEE Xplore. Restrictions apply.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
KUSUMASTUTI ET AL.: PRACTICE IMPROVES PERFORMANCE OF A 2D UNCERTAINTY INTEGRATION TASK WITHIN AND ACROSS VISUALIZATIONS                           3951

<a id="p003-b002"></a>

<!-- p003-b002 -->
Fig. 1. Diagram of experimental design. Each rectangle represents one
block. Brackets above blocks indicate exchangeable blocks under the
randomization scheme. Mixed blocks contain both 2 and 3 estimate stim-
uli in equal numbers.

<a id="p003-b003"></a>

<!-- p003-b003 -->
The pre-test and post-test consisted of 20 trials of each
visualization type with 2 sources and 20 trials of each visu-
alization type with 3 sources, for a total of 120 trials per test.
Trials were grouped and counterbalanced by visualization
type: scatter, ellipse, and interlace. Each trial contained 2 or
3 sources randomly intermixed. The order of stimuli dis-
played for each trial are randomized within blocks for each                  Fig. 2. Hypothetical real-world scenario in which 3 different information
                                                                             sources with different uncertainties must be considered to make a deci-
participant. For each trial, each stimulus is visible until a                sion. This hypothetical image (not shown to participants) depicts a wil-
response was recorded or timed out (10s) and the next trial                  derness area with drone data (blue), cellular data (red), and expert
was displayed after 0.5s. Pre- and post-testing did not                      report data (yellow) estimating the location of a lost hiker.
include accuracy feedback.
   Practice occurred with a single visualization type and                    lost person? A similar scenario could involve determining
contained 8 blocks of 30 trials each. The first three blocks                 the most likely location of a hidden explosive, the safest place
had 2 sources in each trial, the next three blocks had 3, and                to withstand a flood, the best spot to set up camp, or the best
the last two blocks were randomly intermixed with 2 or 3                     spot to land a helicopter [26]. The uncertainty integration
sources. Trial stimuli were displayed until a response was                   task would also be the same with any arbitrary type of two-
recorded or 10s elapsed. After 0.5s, feedback displayed the                  dimensional data (i.e., where the axes represent variables
participants’ selected location, the correct location, a bar                 other than cartographic directions). We chose to represent
showing their cumulative score for that block, and three                     the task in an abstract, scenario-agnostic manner in order to
point scores: accuracy, speed, and total points. Points were                 target the basic skills involved in this task and to not restrict
generated using clicked response location coordinates and                    implications of our findings to any particular scenario.
response time. Point feedback was displayed until a partici-                    Each stimulus was created by generating two or three
pant click was recorded, which then left the location                        independent bivariate distributions and placing them over a
selected, the correct location, and score bar. The next trial                two-dimensional space (Fig. 3). For each distribution, the
began after an additional click. Refer to online supplement                  standard deviations in each dimension were drawn from a
[https://osf.io/z8cp4/].                                                     truncated lognormal with mean parameter -2.0 and standard
   Depending on condition, feedback scores were framed as                    deviation parameter 0.4 truncated at 0.25. The correlation
either point-gains or point-losses. Lastly, participants com-                was drawn from a normal distribution truncated at þ/- .8.
pleted the Intrinsic Motivation Inventory [25] and answered                  To position each source, the center of each distribution was
two exit questions regarding enjoyment of the practice task                  shifted by a single random draw from that distribution, and
and approach to the task.                                                    the entire stimulus array was shifted by a draw from a uni-
                                                                             form distribution over the central 25% of the stimulus area,
                                                                             subject to the requirement that most (>70%) of the density of
2.2 Stimuli                                                                  each distribution remained onscreen. Stimuli were scaled to
Our test stimuli are abstractions intended to represent sce-                 10 cm square and the background was a light gray chosen to
narios wherein a person must combine estimates of a two-                     have good contrast in all the visualization types.
dimensional data item (such as a geographic location on a                       The visualization types were selected to represent the
map) from multiple sources to make a decision. As a real-                    diversity of approaches to uncertainty visualization reviewed
world example (Fig. 2), consider a search and rescue opera-                  in the Introduction section. Example stimuli shown in the
tion to find a person lost in the wilderness. We might have an               experiments for each type of the visualization presenting two
estimate of their location (illustrated in blue on a map) based              and three uncertainty sources are shown in Fig. 3. Details for
on infrared heat data taken from an overhead drone. We                       the three visualization types follow:
might also have a location estimate (illustrated in red on the                  Scatter: We used a static random sample of 600 draws to
map) based on cell phone pings from nearby towers. We                        represent a distributional display. Each sampled point was
might also have a location estimate (illustrated in yellow on                drawn as a dot. Samples from the two or three sources were
the map) based on expert reports of trail hazards. Each of                   distinguished by the color of the drawn dot. Instructions
these estimates come with their own uncertainties. How                       emphasized that dots represent possible outcomes, but that
should the search team combine these estimates to find the                   areas with no dots could still be possible outcomes, and that
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:23 UTC from IEEE Xplore. Restrictions apply.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
3952                                             IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 29, NO. 9, SEPTEMBER 2023

<a id="p004-b002"></a>

<!-- p004-b002 -->
Fig. 4. Derivation of characteristic parameter values from a two-source
                                                                              stimulus displayed in an ellipse type visualization. The plus sign indi-
                                                                              cates the location of maximum joint density (i.e., the most correct
                                                                              answer), the diamond is the midpoint of all the sources, and colored
                                                                              circles indicate the centers of the red and blue distributions.

<a id="p004-b003"></a>

<!-- p004-b003 -->
shows a stimulus with two sources, one colored red and
                                                                              one colored blue, displayed as an ellipse type visualization.
                                                                              In the center of each source is a dot that indicates its center.
                                                                              We define the measures as follows:
                                                                                 Maximum density at solution: In Fig. 4, the location of
                                                                              the maximum joint density is represented by the plus (þ)
                                                                              sign. The value of joint density at the location is used as the
                                                                              parameter.
                                                                                 Distance between source centers: In Fig. 4, it is repre-
                                                                              sented by the length of the dashed line. This parameter is
Fig. 3. Example stimuli for each type of visualization. A and B represent     defined as the sum of the Euclidean distance between the
the scatter type visualization. C and D represent the ellipse type visuali-
zation. E and F represent the interlace type visualization. The visualiza-    midpoint, represented by a diamond (^) sign, and each
tions on the left column contain 2 sources while the visualizations on the    source center, represented by the dots of their correspond-
right column contain 3.                                                       ing color. The location of the source center (represented by
                                                                              dots with colors corresponding to the color of the uncer-
participants should focus on the density of dots in an area                   tainty source and a black outline) is obtained by averaging
rather than the specific locations of individual dots.                        the x and y coordinates of all sources in the stimulus.
   Ellipse: The summary display we used in our experi-                           Distance between midpoint and solution: In Fig. 4, it is
ments used concentric ellipses that enclosed the central 50%                  represented by the length of the dotted line. It is the Euclid-
and 95% of the distributions associated with each individual                  ean distance between the location of the midpoint (^) and
source.                                                                       the location of the solution (þ)
   Interlace: For a distributional way of displaying uncer-                      Since the task involves locating the area with maximum
tainty information, we mapped probability density to color                    joint density, the variation in the value of maximum density
value, such that higher probability densities mapped onto                     itself could be a factor that contributes to performance score.
brighter, more intense color and the color approached a uni-                  The measure used for accuracy performance is response
form gray as the probability approached zero. To handle                       ratio, which is the ratio of the joint density at the location
overlapping distributions, we used stochastic block-wise                      the participant clicks on as response and the joint density at
interlacing. Each pixel was assigned to one of the distribu-                  the solution. Thus, the penalty for imprecision varies by the
tions and only displayed the color associated with that dis-                  relative location and value of joint density at solution.
tribution. Small (2x2 or 3x3) blocks of pixels were grouped                      A simple heuristic that a participant might use when try-
together, such that within each block an equal number of                      ing to locate the area is to start by anchoring the location to
pixels was devoted to each of the distributions in the                        the midpoint between source centers and then adjust
display.                                                                      according to other information available in the stimulus,
                                                                              such as the relative size, angle, and position of the sources.
                                                                              The amount of information that needs to be processed to
2.3 Deriving Stimulus Characteristics                                         adjust this location can be represented by the distance
Fig. 4 displays how the stimulus difficulty variables are                     between the midpoint between source centers and the loca-
derived from an example stimulus. The example figure                          tion of the solution. Consequently, the relative distance
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:23 UTC from IEEE Xplore. Restrictions apply.

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
KUSUMASTUTI ET AL.: PRACTICE IMPROVES PERFORMANCE OF A 2D UNCERTAINTY INTEGRATION TASK WITHIN AND ACROSS VISUALIZATIONS                              3953

<a id="p005-b002"></a>

<!-- p005-b002 -->
between each of the sources must also be considered. The
closer the sources (specifically source centers), the less the
participant needs to adjust from their anchor point.

<a id="p005-b003"></a>

<!-- p005-b003 -->
2.4 Experiment 1
2.4.1 Participants
Out of the 189 participants who enrolled in the online exper-
iment via Prolific Academic, 122 participants (77M, 44F,
1Unk) met eligibility criteria and were compensated $25
USD. The mean age was 23.89 years (range 18-60). The
median time participants took to complete the survey was
79.11 minutes (range 41.68-180.10 minutes). All testing was
approved by the Institutional Review Board of the U.S.
Army Research Laboratory protocol number 20-028.

<a id="p005-b004"></a>

<!-- p005-b004 -->
2.4.2 Procedures
In Experiment 1, participants were trained on the scatter
visualization type. During practice, participants were given
feedback after they clicked on their estimation of the hidden
location for each trial. Participants were randomly assigned
to feedback framed as either a gain (n¼60) or loss (n¼62) of
                                                                             Fig. 5. Three stimuli that differ in type of visualization but share the same
points. In the gain condition, feedback was in green text                    maximum joint density, distance between source centers, and distance
and the score bar increased as points were obtained. In con-                 between the midpoint and solution.
trast, the loss condition showed feedback in red text and a
full score bar that decreased as points were lost with each
trial.
                                                                                Half of the stimuli in Experiment 2 were retained from
                                                                             Experiment 1. We left some identical stimuli from Experi-
2.5 Experiment 2
                                                                             ment 1 to make cross-experiment analyses permissible. The
2.5.1 Participants                                                           other half were specially modified versions of existing stim-
Out of 80 participants who were enrolled in the experiment                   uli explained in the next section.
via Prolific, 62 participants (27F, 34M, 1Unk.) met eligibility
criteria and were compensated $25 USD. The mean age was
24.98 years (range 18-60). The median time taken to com-
                                                                             2.5.3 Doppelganger Stimuli. We initially generated the
plete the experiment was 86.33 minutes (range 47.88-175.87
                                                                             set of stimuli independently across all visualization types
minutes). Participants who were enrolled in Experiment 1
                                                                             for Experiment 1, without consideration of the possible vari-
were prevented from participating in Experiment 2. All test-
                                                                             ation due to the random assignment of characteristics. This
ing was approved by the Institutional Review Board of the
                                                                             may result to biased results if one visualization type had
U.S. Army Research Laboratory protocol number 20-147.
                                                                             more disproportionate amounts of easy or difficult stimuli
                                                                             based on stimulus properties. In order to mitigate these
2.5.2 Procedures. One overall aim for Experiment 2                           biases, we introduced a new category of stimuli for our sec-
was to examine effects of focused practice with a different                  ond experiment which we refer to as doppelganger stimuli.
visualization type, ellipses, on uncertainty decision making                    There are multiple ways to present uncertainty informa-
performance. The methodology and design used for Experi-                     tion in our stimuli while still retaining essential characteris-
ment 2 were the same as Experiment 1 with the exception of                   tics. For example, Fig. 5 displays a set of three source
a few details. Participants still received 3 tries to pass com-              stimuli presenting the exact same uncertainty information.
prehension, though we relaxed the score needed to pass on                    They contain the same bivariate normal distributions with
the third attempt from 100% to 85% (11/13). This criterion                   the same relative position to each other and consequently
was changed to decrease participant attrition. We added the                  the same location of maximum density (i.e., the solution of
Cognitive Reflections Test [27] to learn whether perfor-                     each stimulus). In addition to varying the visualization type
mance was influenced by reflective or intuitive strategies,                  of each stimuli, we can also transform the orientation of
characteristic of using Type 1 and Type 2 processes,                         each image by rotating, flipping, or a combination of both.
respectively.                                                                In order to retain how much density is within the image, we
   All participants were assigned to the point-loss condi-                   limit the stimulus rotation to be either a 90, 180, or 270
tion. In Experiment 1, we did not see effects of framing                     degree rotation. In total, we devised eight unique ways to
on performance. Previous work [28] reported an effect of                     transform the orientation of a stimulus. Additionally, we
framing in the point loss condition in a similar task.                       also changed the configuration of source colors for some
For Experiment 2 we assigned all participants to loss                        stimuli. We call these doppelganger stimuli because they
feedback.                                                                    represent identical information and have identical values
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:23 UTC from IEEE Xplore. Restrictions apply.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
3954                                            IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 29, NO. 9, SEPTEMBER 2023

<a id="p006-b002"></a>

<!-- p006-b002 -->
for the three difficulty variables, but they are otherwise                   formulated as a linear combination of a block-type intercept
transformed to mask their similarities.                                      (pre-practice or post-practice) with normal (1, 0.5) priors
   In Experiment 2, we devised a set of twenty original                      and a potentially correlated random effect of subject by
stimuli (even split between two and three source stimuli)                    block-type interaction with a normal (0, 0.5) prior on the
and transformed them across the three visualization types                    standard deviation and a uniform prior on the correlation,
such that each original stimulus had a doppelganger across                   and the standard deviation parameter was subject to an
all visualization types in both pre- and post-block. This                    exponential transformation.
means that each original doppelganger stimulus has six dif-                     For each model, samples were generated using the No-U-
ferent transformed versions across the experiment. The                       Turn Sampler [30] with four independent chains with 1000
remaining stimuli were identical to those used in Experi-                    warm-up and 1000 post-warm-up iterations. Sampling com-
ment 1; we refer to that subset of stimuli as twins.                         pleted in all cases with no divergences, and split R-hat was
                                                                             less than 1.1 for all parameters. To identify outliers, we com-
                                                                             puted average logit-transformed response ratio for each
2.6 Analysis                                                                 participant with each visualization type on the pre-test and
The performance measure for accuracy that is used as a                       the post-test and applied an adjusted boxplot rule [31] with
dependent variable in the analysis is response ratio.                        a fence set at 2.0 to detect very low performance. Any partic-
Response ratio is the ratio of the probability density at par-               ipant identified as having very low performance on any
ticipants’ clicked location as response in a stimulus to the                 block was excluded from analysis entirely.
density at the solution, i.e., the maximum density for the
particular stimulus. The response time (the time elapsed                     3    RESULTS
between when a stimulus is displayed and when a partici-
pant clicks on it) is also used as a dependent variable. On                  Models were fit for speed and accuracy using five different
trials in which the 10s maximum time was reached, the                        sets of trials: Experiment 1 all trials, Experiment 2 all trails,
response was scored as a response ratio of zero and a miss-                  Experiment 2 doppelganger trials, Experiment 1 twin trials
ing response time.                                                           and Experiment 2 twin trials. Response accuracy and speed
    For response ratio analyses, we developed a Bayesian                     for pre-practice blocks and post-practice blocks are pre-
beta regression model using the Stan language and the                        sented for Experiments 1 and 2, followed by a comparison
cmdstanpy interface [29]. Response ratio was modeled with a                  of performance on twin stimuli in both experiments. Details
beta function using the mean and precision parameteriza-                     of random effects and precision parameters are available in
tion. The mean was formulated as a linear combination of                     an online supplement [https://osf.io/23af9/], and they will
predictors and subject to an inverse logit transformation.                   not be discussed here. Analysis on individual difference
The predictors were a block-specific intercept, with blocks                  measures collected from this study did not yield any nota-
defined by the visualization type, (scatter, ellipse, or inter-              ble findings and can also be viewed in the online supple-
lace), block-type (pre- or post-practice block), and number                  ment [https://osf.io/y2pm6/]. Finally, the effects of
of uncertainty sources (2 or 3) for a total of 3x2x2¼12 inde-                participant characteristics and stimulus characteristics on
pendent intercept estimates with standard normal priors.                     performance are summarized.
The three measures of stimulus difficulty (maximum den-
sity, distance of solution from midpoint, and distance                       3.1 Experiment 1: Accuracy and Speed
between source centers) and the individual differences                       Experiment 1 included 122 participants who completed the
measures (regulatory focus prevention and promotion,                         task, of whom 4 were identified as outliers and excluded
graph literacy, numeracy, the interaction of graph literacy                  from analysis.
with numeracy, and in Experiment 2 only, cognitive reflec-                      Experiment 1 included a between-subjects manipulation
tions task scores) were z-transformed and added as inde-                     of the framing of feedback delivered after each practice trial
pendent variables with standard normal priors on the                         as point gains or point losses. We found this manipulation
coefficients. A random effect of stimulus was included, with                 to have no clear effect on speed or accuracy of performance,
mean zero and half-normal prior on the standard deviation.                   so it will not be discussed further here, but detailed analysis
Potentially correlated random effects of subject by block-                   of the effects of framing are available online at [https://osf.
type interaction were included, with half-normal priors on                   io/tukpx/].
the standard deviations and a uniform prior on the correla-
tion coefficient.                                                            3.1.1 Descriptive
    For response time analysis, a similar approach was taken
                                                                             Individual participant accuracy was summarized with the
using a truncated lognormal model for response time, such
                                                                             average logit-transformed response ratio. Response time
that the log of response time was modeled as normal with a
                                                                             was summarized with a 20% trimmed mean. Accuracy and
mean parameter and a standard deviation parameter. As
                                                                             response time for the three visualization types both before
with response ratio, the mean parameter in the RT model
                                                                             and after practice with the scatter stimuli appear in Fig. 6.
was a linear combination of a block-specific intercept, stim-
ulus difficulty, individual differences measures, and ran-
dom effects of stimulus and participant. The priors were                     3.1.2 Modeling
identical with the exception that the block-specific inter-                  The beta regression of response ratio included within the
cepts had normal (0.5, 1) priors (implying a modal response                  average response ratio term intercept parameters for each
time of 1.65s). The standard deviation parameter was                         combination of visualization type (ellipse, interlace, scatter),
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:23 UTC from IEEE Xplore. Restrictions apply.

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
KUSUMASTUTI ET AL.: PRACTICE IMPROVES PERFORMANCE OF A 2D UNCERTAINTY INTEGRATION TASK WITHIN AND ACROSS VISUALIZATIONS                           3955

<a id="p007-b002"></a>

<!-- p007-b002 -->
Fig. 6. Summaries of response ratio and response times in Experiment 1. Dots (N¼118) show the inverse logit of the mean of logit-transformed
response ratios and 20% trimmed mean response time on the left and right panels, respectively. Boxes show group median and 25th and 75th percen-
tiles, with whiskers showing extrema excluding points more than 1.5 times the inter-quartile range from the extents of the boxes. Summaries are sep-
arated by visualization type, number of sources, and before or after practice.

<a id="p007-b003"></a>

<!-- p007-b003 -->
number of sources in the stimulus (2 or 3), and whether the                  describing the mean of the underlying normal distribution.
block was before or after the practice session (pre- or post-).              These parameter estimates are shown in Fig. 7. Post-practice
The same intercept terms were included in the truncated                      performance was more accurate and faster following prac-
lognormal regression of response time within the term                        tice for all visualization types and both numbers of esti-
                                                                             mates. Responses were faster and more accurate for two-
                                                                             source stimuli compared to three-source stimuli in all cases.
                                                                             Post-practice accuracy was similar for all visualizations
                                                                             with two-source stimuli. Post-practice accuracy was some-
                                                                             what lower with interlace stimuli (posterior mean .71, 95%
                                                                             credible interval [.67, .74]) compared to ellipse (.73, [.70,
                                                                             .76]) and scatter (.74, [.71, .77]) in the three-source stimuli. In
                                                                             both pre- and post-practice blocks, responses to ellipse stim-
                                                                             uli were slower than responses to the other two types.

<a id="p007-b004"></a>

<!-- p007-b004 -->
3.2 Experiment 2: Accuracy and Speed
                                                                             Experiment 2 included 62 participants who completed the
                                                                             task, of whom 6 were identified as outliers and excluded
                                                                             from analysis.

<a id="p007-b005"></a>

<!-- p007-b005 -->
3.2.1 Descriptive
                                                                             Individual participant accuracy was summarized with the
                                                                             average logit-transformed response ratio. Response time
                                                                             was summarized with a 20% trimmed mean. Accuracy and
                                                                             response time for the three visualization types both before
                                                                             and after practice with the ellipse stimuli appear in Fig. 8.
Fig. 7. Posterior summaries for effects of visualization type, number of
sources, and pre- or post-practice blocks on response ratio and
response time. Boxes and whiskers show a central 50% and 95% credi-          3.2.2 Modeling
ble interval, respectively, and the white central mark shows the mean of
                                                                             The modeling approach for Experiment 2 was identical to
the posterior distribution. The upper panels show coefficients for
response ratio. The lower panels show coefficients for response time in      Experiment 1, except two separate analyses were carried
seconds.                                                                     out: one using data from all stimuli, and the other only
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:23 UTC from IEEE Xplore. Restrictions apply.

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
3956                                            IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 29, NO. 9, SEPTEMBER 2023

<a id="p008-b002"></a>

<!-- p008-b002 -->
Fig. 8. Summaries of response ratio and response times in Experiment 2. Dots (N¼56) show the inverse logit of the mean of logit-transformed
response ratios and 20% trimmed mean response time on the left and right panels, respectively. Boxes show group median and 25th and 75th percen-
tiles, with whiskers showing extrema excluding points more than 1.5 times the inter-quartile range from the box. Summaries are separated by visuali-
zation type, number of sources, and before or after practice.

<a id="p008-b003"></a>

<!-- p008-b003 -->
using data from doppelganger stimuli. The analysis of
doppelganger stimuli was intended to eliminate variabil-
ity of stimulus difficulty as a possible contributor to differ-
ences between visualizations and pre-/post-practice
blocks. Results of accuracy and response time models for
Experiment 2 appear in Fig. 9. In what follows, we report
the parameter estimates associated with the full stimulus
set except where they differ from the doppelganger esti-
mates, in which case both are reported. Post-practice
speed was faster compared to pre-practice speed with all
visualizations and number of sources. In post-practice
blocks, speed with ellipse stimuli was slightly lower than
with the other two visualizations.
   Post-practice accuracy was substantially higher than
pre-practice accuracy for all visualizations in the 2-source
stimuli. With 3-source stimuli, post-practice performance
with ellipse stimuli (posterior mean .79, 95% credible
interval [.75, .83]) was much higher than pre-practice
with ellipse (mean .63, [.59, .68]) and also was higher
than post-practice accuracy with interlace (mean .72, [.69,
.76]) and scatter (mean .72, [.68, .75]). Pre-practice accu-
racy with interlace and scatter 3-source stimuli (mean
.68, [.64, .72] and mean.68 [.64, .72], respectively) was rel-
atively high, and was not substantially lower than
respective post-practice accuracy. Within the doppel-                        Fig. 9. Effects of visualization type, number of sources, and pre- vs. post-
ganger stimulus set, pre-practice accuracy was even                          practice on accuracy and speed of responses. Results are from analysis
higher and more similar to post-practice accuracy for 3-                     of the full dataset as well as an analysis only of doppelganger stimuli.
source interlace (mean .71, [0.66, .76] pre; mean .74 [.70,                  Boxes and whiskers show a central 50% and 95% credible interval,
                                                                             respectively, and the white central mark shows the median of the poste-
.78] post) and Scatter (mean 0.70 [0.65, .75] pre; mean 0.71                 rior distribution. The upper panels show coefficients for response ratio.
[.66, .76] post) stimuli.                                                    The lower panels show coefficients for response time in seconds.
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:23 UTC from IEEE Xplore. Restrictions apply.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
KUSUMASTUTI ET AL.: PRACTICE IMPROVES PERFORMANCE OF A 2D UNCERTAINTY INTEGRATION TASK WITHIN AND ACROSS VISUALIZATIONS                           3957

<a id="p009-b002"></a>

<!-- p009-b002 -->
TABLE 1
                                                                                                    Stimulus Characteristics

<a id="p009-b003"></a>

<!-- p009-b003 -->
Experiment 1                Experiment 2
                                                                                                        m            SD            M             SD
                                                                              Max. density           35.687        15.565       36.590        13.882
                                                                              Source distance         0.303         0.169       0.290         0.147
                                                                              Mid. distance           0.047         0.031       0.048         0.029

<a id="p009-b004"></a>

<!-- p009-b004 -->
.79]), and post-practice accuracy was slightly lower for
                                                                              interlace stimuli in Experiment 2 (.71, [.66, .76]) compared to
                                                                              Experiment 1 (.73, [.69, .77]). Post-practice accuracy on
                                                                              three-source scatter stimuli was equivalent between Experi-
                                                                              ment 1 (.73, [.69, .77]) and Experiment 2 (.73, [.68, .78]).

<a id="p009-b005"></a>

<!-- p009-b005 -->
3.4 Stimulus Characteristics
                                                                              Stimulus characteristics were included in both the accuracy
                                                                              and the response time models to understand how stimulus
                                                                              properties related to performance. The stimulus properties
                                                                              included were the density of the joint distribution over all
                                                                              sources at the optimal location, the Euclidian distance
                                                                              between the optimal location and the midpoint between all
                                                                              source centers, and the average distance between source
                                                                              centers. These properties were standardized; means and
Fig. 10. Posterior estimates using data from stimuli appearing in both        standard deviations of these property measures appear in
experiments. Colors indicate blocks before (pre) and after (post) the
practice session as well as Experiment 1 (E1) in which participants prac-     Table 1. Summaries of the posterior distributions for stimu-
ticed with the scatter visualization or Experiment 2 (E2) in which partici-   lus characteristics fit to the full datasets for Experiments 1
pants practiced with the ellipse visualization. Boxes and whiskers show       and 2 appear in Fig. 11.
a central 50% and 95% credible interval, respectively, and the white cen-        Although there were some differences in coefficient esti-
tral mark shows the median of the posterior distribution. The upper pan-
els show coefficients for response ratio. The lower panels show               mates between Experiment 1 and Experiment 2, both
coefficients for response time.                                               showed similar overall patterns of results. Larger values of
                                                                              all stimulus characteristics were associated with less accu-
                                                                              rate and slower performance overall, with pairwise source
3.3 Comparing Experiments 1 & 2 (twins)
                                                                              distance having the largest coefficient on both speed and
To facilitate a fair direct comparison between Experiments 1                  accuracy. The distance of the solution from the midpoint
and 2, half the stimuli in Experiment 2 were identical to                     had the smallest effect on both speed and accuracy.
those in Experiment 1. Models were independently fit on
this subset of stimuli for both Experiment 1 and 2. These
models had the same structure as those already described.                     4   DISCUSSION
Posterior distributions of the intercept terms for the average                In two experiments we found that a single short practice
performance term in the response ratio models and average                     session with feedback substantially increased response
parameter in the lognormal response time models appear in                     accuracy and reduced response time on a two-dimensional
Fig. 10.                                                                      spatial uncertainty integration task. Experiments 1 and 2
   Consistent with the full dataset analyses, responses were                  used some different stimuli, but analyses of data only from
faster and more accurate after practice across the board.                     stimuli appearing in both experiments showed that post-
Experiment 2 tend to show faster and more accurate on the                     practice performance was nearly equivalent in the two
pre-practice blocks than responses in Experiment 1 to vari-                   experiments, with the exception that those who practiced
ous degrees. Instructions, stimuli, and context were identi-                  with the ellipse visualization performed somewhat better
cal for this comparison. In the post practice-block, the                      on 3-source ellipse trials and to a lesser extent worse on the
Experiment 2 responses were faster than those in Experi-                      3-source interlace trials compared to those who practiced
ment 1, although in both cases responses to ellipse stimuli                   with the scatter visualization.
were slower than to the other two visualizations.                                A two-stage theory of decision-making with visualized
   In the two-source stimuli, post-practice accuracy was                      data [10] distinguishes between extracting information from
similar across the two experiments, although practice with                    a display and making an inference with that information.
scatter stimuli in Experiment 1 was associated with slightly                  The observation that performance increases transferred to
worse post-practice performance with ellipse stimuli (poste-                  non-practiced visualizations supports the interpretation
rior mean .76, 95% CI [.72, .80]) compared to Experiment 2                    that participants were primarily improving on the inference
(.78, [.74, .82]). In the three-source stimuli, post-practice                 task. If the practice were just improving the extraction of
accuracy was somewhat higher for ellipse stimuli in Experi-                   information from the visualization, then we would not have
ment 2 (.78, [.74, .83]) compared to Experiment 1 (.75, [.71,                 expected performance gains to transfer to non-practiced
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:23 UTC from IEEE Xplore. Restrictions apply.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
3958                                              IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 29, NO. 9, SEPTEMBER 2023

<a id="p010-b002"></a>

<!-- p010-b002 -->
and that stimuli with a smaller maximum posterior density
                                                                               were associated with more accurate but not faster perfor-
                                                                               mance. The effect of source distances on performance sug-
                                                                               gest that the task is more difficult when the stimulus centers
                                                                               are farther from each other, which requires making infer-
                                                                               ences farther out in the tails of the represented distributions.
                                                                               The association of larger posterior density at the optimal
                                                                               solution with worse performance could reflect that a lower,
                                                                               broader peak in the posterior density is somewhat more for-
                                                                               giving of imprecise responding, but it might also partially
                                                                               counteract the effects of source distances, as all other things
                                                                               being equal, farther apart sources should have lower maxi-
                                                                               mum densities.

<a id="p010-b003"></a>

<!-- p010-b003 -->
4.1 Implications
                                                                               The results of our experiments established evidence that
                                                                               processing uncertainty information can be enhanced by
                                                                               practice with feedback. Furthermore, the fact that the
                                                                               increase in performance transfers to other types of visuali-
                                                                               zation adds even more utility towards providing such kinds
                                                                               of training.
                                                                                  While the task we chose was deliberately abstract, spatial
                                                                               uncertainty is fundamental in a wide range of real-world
                                                                               contexts such as weather forecasting, route planning, recon-
                                                                               naissance, city planning, battlefield strategy, natural resour-
                                                                               ces exploration, farming, climate modeling, and ecology.
                                                                               For example, a homeowner needs to understand the uncer-
                                                                               tainty of a hurricane path in order to decide whether to
                                                                               evacuate [38]. A city planner needs to understand uncer-
                                                                               tainties in likely flooding areas in order to guide construc-
                                                                               tion and safety planning [39]. An ecologist needs to
                                                                               understand uncertainties in habitat quality and species
                                                                               ranges to know which areas are most critical for conserva-
                                                                               tion [40], [41]. A military commander needs to understand
                                                                               spatial uncertainty in the locations of hazards and adversar-
                                                                               ies in order to plan a mission [42].
Fig. 11. Effects of stimulus characteristics on response ratio and                Complex situations require more complex information,
response time. Stimulus characteristics are the density of the joint distri-   which makes understanding and integrating uncertainty a
bution at the optimum (max. dens.), distance of the solution from the          valuable skill. Our findings suggest that this skill can be sig-
simple average of source centers (mid. dist.), and average distance
between source centers (source dist.) Boxes and whiskers show the
                                                                               nificantly improved with brief practice, which makes
central 50% and 95% of the posterior distribution. The white central           improved uncertainty integration and decision making
mark shows the mean of the posterior distribution.                             within reach of practitioners across different fields. For
                                                                               example, health care companies could provide uncertainty
visualizations. However, practicing with the ellipse stimuli                   integration training for staff to help them make medical
resulted in a performance advantage with 3-source ellipse                      decisions and to help explain options to their patients.
stimuli in the post-test at the apparent cost of a disadvan-                   Schools could include this training in their curricula to
tage with 3-source interlace stimuli. Summary data dis-                        enhance these skills in different contexts. The military could
plays, such as confidence intervals and the ellipse stimuli                    include such training as part of employee development for
we used, are often misunderstood [32], [33]. They are also                     different job tracks.
unintuitive, in that size is conflated with uncertainty, violat-                  Our study focused on spatial uncertainty, but many
ing the salience principal [34], [35], [36]. However, the                      forms of non-spatial uncertainty are also critical. These can
ellipse stimuli here also have the advantage of being con-                     include medical (e.g., a drug’s effectiveness), financial (e.g.,
cise, in that they convey a lot of information with minimal                    stock market predictions), political (e.g., election outcomes),
‘ink’ [37]. It is plausible that iterated practice with the ellipse            safety (e.g., environmental sensor readings), class uncer-
stimuli allowed participants to overcome those difficulties                    tainty (e.g., threat vs. non-threat), and others. In a mathe-
to realize the benefits of a more concise visualization.                       matical sense, multi-dimensional uncertainty can be
    We also examined characteristics of individual stimuli to                  visualized spatially, so practicing tasks on spatial uncer-
see if they had systematic effects on performance. We found                    tainty seems like a promising place to start in order to
that stimuli with smaller distances between source centers                     explore the role of training in reasoning with uncertain
were associated with more accurate and faster performance                      information.
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:23 UTC from IEEE Xplore. Restrictions apply.

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
KUSUMASTUTI ET AL.: PRACTICE IMPROVES PERFORMANCE OF A 2D UNCERTAINTY INTEGRATION TASK WITHIN AND ACROSS VISUALIZATIONS                            3959

<a id="p011-b002"></a>

<!-- p011-b002 -->
4.2 Limitations and Future Research                                          visualization resulted in similar post-practice improve-
This experiment was online, so we did not have control over                  ments on the practiced and unpracticed visualizations.
the hardware used to display the stimuli or over the envi-                   Practice with a summary visualization resulted in superior
ronment in which the experiment took place. Differences in                   post-practice performance using the summary visualization
color calibration could have particularly affected the inter-                compared to the non-practiced visualizations as well as the
lace stimuli which used color differences to convey likeli-                  performance achieved by those who practiced with an
hood. As such, results with that stimulus type might be                      ensemble visualization. These results suggest that practice
regarded with some caution. Practical applications of simi-                  improved participants’ skill with the uncertainty integration
lar visualizations might face similar challenges, however.                   task, rather than only improving their use of a specific visu-
    We observed unexpected differences in pre-practice per-                  alization approach. We see these results as pointing toward
formance between Experiment 1 and Experiment 2. Our                          a practical recommendation to help people make better
analyses of stimuli in common suggests that some of this                     decisions with visualized uncertainty: provide easy oppor-
can be accounted for by the different stimuli in the two                     tunities for iterated practice with feedback. This approach
experiments, but some pre-test differences remained.                         will not always be possible, but where it is, it could lead to
Although both experiments used the same recruiting                           faster, beter decisions under uncertainty.
approach, there were potentially relevant differences.
Recruitment took place at different times (Summer of 2020                    ACKNOWLEDGMENTS
for Experiment 1 and Fall 2020 for Experiment 2), so the par-
                                                                             The views expressed in this paper are those of the authors
ticipant pool was potentially different1. An additional dif-
                                                                             and do not reflect the official policy or position of the
ference between Experiment 1 and 2 is that we lowered the
                                                                             Department of the Army, Department of Defense, or the
passing criterion for the comprehension check in Experi-
                                                                             U.S. Government.
ment 2; however, the lower criterion was applied to the
group with better pre-practice performance, so this leads to
no easy explanation.                                                         REFERENCES
    Our stimuli were sampled from a fairly high dimensional                  [1]  J. Hullman, “Why authors don’t visualize uncertainty,” IEEE
space, with 10 and 15 parameters describing the source con-                       Trans. Vis. Comput. Graphics, vol. 26, no. 1, pp. 130–139, Jan. 2020,
                                                                                  doi: 10.1109/TVCG.2019.2934287.
figurations in 2- and 3-source stimuli, respectively. In a lim-              [2] M. Kay, T. Kola, J. R. Hullman, and S. A. Munson, “When (ish) is
ited number of trials, we cannot but sparsely sample this                         my bus? User-centered visualizations of uncertainty in everyday,
parameter space. We attempted to control for differences in                       mobile predictive systems,” in Proc. Chi Conf. Hum. Factors Com-
                                                                                  put. Syst., 2016, pp. 5092–5103.
difficulty among the different stimuli with the derived stim-                [3] A. M. Van Der Bles et al., “Communicating uncertainty about
ulus properties of the distance between sources, the dis-                         facts, numbers and science,” Roy. Soc. Open Sci., vol. 6, no. 5, 2019,
tance from the midpoint among the sources to the best                             Art. no. 181870.
solution, and the posterior density of the solution. Although                [4] A. P. Boone, P. Gunalp, and M. Hegarty, “Explicit versus action-
                                                                                  able knowledge: The influence of explaining graphical conven-
these predictors were related to performance on those stim-                       tions on interpretation of hurricane forecast visualizations,”
uli, considerable variability was still observed. The derived                     J. Exp. Psychol. Appl., vol. 24, no. 3, pp. 275–295, Sep. 2018,
measures we used were somewhat ad hoc, and other                                  doi: 10.1037/xap0000166.
derived measures could be computed.                                          [5] S. M. Fiore, J. Song, O. B. Newton, C. Pittman, S. F. Warta,
                                                                                  and J. J. LaViola, “Determining the effect of training on uncer-
    An additional limitation is that the uncertainties always                     tainty visualization evaluations,” in Proc. Adv. Usability User
followed bivariate Gaussian distributions. Future work will                       Experience Assistive Technol., 2019, pp. 141–152.
need to examine whether our findings generalize to other                     [6] J. Song, O. B. Newton, S. M. Fiore, C. Pittman, and J. J. LaViola,
                                                                                  “Examining training comprehension and external cognition in
kinds of distribution.                                                            evaluations of uncertainty visualizations to support decision
    In the present context, the location estimates and their                      making,” in Proc. Hum. Factors Ergonom. Soc. Annu. Meeting, 2019,
uncertainty capture the only information relevant to the                          pp. 1654–1658, doi: 10.1177/1071181319631520.
decision. As such, an exactly correct solution can be com-                   [7] Y. Okan, R. Garcia-Retamero, E. T. Cokely, and A. Maldonado,
                                                                                  “Improving risk understanding across ability levels: Encouraging
puted with a simple formula, which might bring into ques-                         active processing with dynamic icon arrays,” J. Exp. Psychol. Appl.,
tion why a human might need to be involved at all. In                             vol. 21, no. 2, 2015, Art. no. 178.
practice, we expect that a human decision-maker might                        [8] M. Greis, A. Joshi, K. Singer, A. Schmidt, and T. Machulla,
                                                                                  “Uncertainty visualization influences how humans aggregate dis-
have additional information, assumptions, or beliefs that                         crepant information,” in Proc. CHI Conf. Hum. Factors Comput.
might not be easily incorporated into such a computation.                         Syst., 2018, pp. 1–12.
In that more practical scenario, the uncertainty integration                 [9] P. Ruchikachorn and K. Mueller, “Learning visualizations by
skills examined here could be critical to arriving at an opti-                    analogy: Promoting visual literacy through visualization
                                                                                  morphing,” IEEE Trans. Vis. Comput. Graphics, vol. 21, no. 9,
mal solution, although this hypothesis remains to be tested.                      pp. 1028–1044, Sep. 2015.
                                                                             [10] L. M. Padilla, S. H. Creem-Regehr, M. Hegarty, and J. K. Stefa-
                                                                                  nucci, “Decision making with visualizations: A cognitive frame-
5.    CONCLUSION                                                                  work across disciplines,” Cogn. Res. Princ. Implic., vol. 3, no. 1,
                                                                                  Jul. 2018, Art. no. 29, doi: 10.1186/s41235-018-0120-9.
Here we demonstrated in two experiments that a brief prac-                   [11] L. Liu et al., “Uncertainty visualization by representative sampling
tice session with feedback led to better performance on an                        from prediction ensembles,” IEEE Trans. Vis. Comput. Graphics,
uncertainty integration task. Practice with an ensemble                           vol. 23, no. 9, pp. 2165–2178, Sep. 2016.
                                                                             [12] L. Liu, L. Padilla, S. H. Creem-Regehr, and D. H. House,
                                                                                  “Visualizing uncertain tropical cyclone predictions using repre-
   1. There was also the global COVID-19 pandemic during that time,               sentative samples from ensembles of forecast tracks,” IEEE Trans.
so we shall not attempt to generalize to all Summers and Falls.                   Vis. Comput. Graphics, vol. 25, no. 1, pp. 882–891, Jan. 2018.
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:23 UTC from IEEE Xplore. Restrictions apply.

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
3960                                               IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 29, NO. 9, SEPTEMBER 2023

<a id="p012-b002"></a>

<!-- p012-b002 -->
[13] R. A. Rensink, “On the prospects for a science of visualization,” in       [27] S. Frederick, “Cognitive reflection and decision making,” J. Econ.
     Handbook of Human Centric Visualization, New York, NY, USA:                     Perspect., vol. 19, no. 4, pp. 25–42, Dec. 2005, doi: 10.1257/
     Springer, 2014, pp. 147–175.                                                    089533005775196732.
[14] L. M. Padilla, I. T. Ruginski, and S. H. Creem-Regehr, “Effects of         [28] B. T. Files, K. A. Pollard, A. H. Oiknine, A. D. Passaro, and
     ensemble and summary displays on interpretations of geospatial                  P. Khooshabeh, “Prevention focus relates to performance on a
     uncertainty data,” Cogn. Res. Princ. Implic., vol. 2, no. 1, pp. 1–16,          loss-framed inhibitory control task,” Front. Psychol., vol. 10, 2019,
     2017.                                                                           doi: 10.3389/fpsyg.2019.00726.
[15] G. McKenzie, M. Hegarty, T. Barrett, and M. Goodchild,                     [29] Stan Development Team, “Stan modeling language users guide
     “Assessing the effectiveness of different visualizations for judg-              and reference manual,” 2019. [Online]. Available: http://mc-stan.
     ments of positional uncertainty,” Int. J. Geogr. Inf. Sci., vol. 30,            org
     no. 2, pp. 221–239, 2016.                                                  [30] M. D. Homan and A. Gelman, “The No-U-turn sampler: Adap-
[16] G. E. Newman and B. J. Scholl, “Bar graphs depicting averages are               tively setting path lengths in Hamiltonian Monte Carlo,” J. Mach.
     perceptually misinterpreted: The within-the-bar bias,” Psychon.                 Learn. Res., vol. 15, no. 1, pp. 1593–1623, Jan. 2014.
     Bull. Rev., vol. 19, no. 4, pp. 601–607, 2012.                             [31] M. Hubert and E. Vandervieren, “An adjusted boxplot for skewed
[17] K. J. Emery and M. A. Webster, “Individual differences and their                distributions,” Comput. Statist. Data Anal., vol. 52, no. 12,
     implications for color perception,” Curr. Opin. Behav. Sci., vol. 30,           pp. 5186–5201, 2008.
     pp. 28–33, Dec. 2019, doi: 10.1016/j.cobeha.2019.05.002.                   [32] S. Belia, F. Fidler, J. Williams, and G. Cumming, “Researchers mis-
[18] Q. Li, S. J. Joo, J. D. Yeatman, and K. Reinecke, “Controlling for              understand confidence intervals and standard error bars,” Psy-
     participants’ viewing distance in large-scale, psychophysical                   chol. Methods, vol. 10, no. 4, 2005, Art. no. 389.
     online experiments using a virtual chinrest,” Sci. Rep., vol. 10,          [33] R. Hoekstra, R. D. Morey, J. N. Rouder, and E. -. J. Wagenmakers,
     no. 1, Jan. 2020, Art. no. 1, doi: 10.1038/s41598-019-57204-1.                  “Robust misinterpretation of confidence intervals,” Psychon. Bull.
[19] E. T. Higgins, R. S. Friedman, R. E. Harlow, L. C. Idson, O. N.                 Rev., vol. 21, no. 5, pp. 1157–1164, Oct. 2014, doi: 10.3758/s13423-
     Ayduk, and A. Taylor, “Achievement orientations from subjective                 013-0572-3.
     histories of success: Promotion pride versus prevention pride,”            [34] J. Bertin, Semiology of Graphics: Diagrams Networks Maps. Madison,
     Eur. J. Soc. Psychol., vol. 31, no. 1, pp. 3–23, 2001, doi: https://doi.        WI, USA: Univ. Wisconsin Press, 1983.
     org/10.1002/ejsp.27.                                                       [35] B. D. Dent, Cartography: Thematic Map Design. Boston, MA, USA:
[20] O. P. John, E. M. Donahue, and R. L. Kentle, The Big Five Inventory:            McGraw-Hill, 1999.
     Versions 4a and 54, Institute of Personality and Social Research, Univ.    [36] S. M. Kosslyn, Graph Design For the Eye and Mind. New York, NY,
     Calif. Berkeley, Berkeley, CA, USA, 1991.                                       USA: Oxford Univ. Press, 2006.
[21] O. P. John, L. P. Naumann, and C. J. Soto, “Paradigm shift to the          [37] E. Tufte, The Visual Display of Quantitative Information. Cheshire,
     integrative big five trait taxonomy,” Handb. Pers. Theory Res.,                 CT, USA: Graphics Press, 2001.
     vol. 3, pp. 114–158, 2008.                                                 [38] I. T. Ruginski et al., “Non-expert interpretations of hurricane fore-
[22] J. S. Metcalfe, S. M. Gordon, A. D. Passaro, B. Kellihan, and K. S.             cast uncertainty visualizations,” Spat. Cogn. Comput., vol. 16, no. 2,
     Oie, “Towards a translational method for studying the influence                 pp. 154–172, Apr. 2016, doi: 10.1080/13875868.2015.1137577.
     of motivational and affective variables on performance during              [39] H. de Moel et al., “Flood risk assessments at different spatial
     human-computer interactions,” in Proc. Int. Conf. Augmented                     scales,” Mitigation Adapt. Strategies Glob. Change, vol. 20, no. 6,
     Cogn., 2015, pp. 63–72.                                                         pp. 865–890, 2015.
[23] M. Galesic and R. Garcia-Retamero, “Graph literacy: A cross-cul-           [40] V. J. Tulloch et al., “Incorporating uncertainty associated with hab-
     tural comparison,” Med. Decis. Mak., vol. 31, no. 3, pp. 444–457,               itat data in marine reserve design,” Biol. Conservation, vol. 162,
     May 2011, doi: 10.1177/0272989X10373805.                                        pp. 41–51, 2013.
[24] E. T. Cokely, M. Galesic, E. Schulz, S. Ghazal, and R. Garcia-Reta-        [41] S. B. Carvalho, J. C. Brito, E. G. Crespo, M. E. Watts, and H. P. Pos-
     mero, “Measuring risk literacy: The Berlin numeracy test,” Judgm.               singham, “Conservation planning under climate change: Toward
     Decis. Mak. Tallahass., vol. 7, no. 1, Jan. 2012, Art. no. 25.                  accounting for uncertainty in predicted species distributions to
[25] R. M. Ryan, “Control and information in the intrapersonal                       increase confidence in conservation investments in space and
     sphere: An extension of cognitive evaluation theory,” J. Pers. Soc.             time,” Biol. Conservation, vol. 144, no. 7, 2011.
     Psychol., vol. 43, no. 3, 1982, Art. no. 450, doi: 10.1037/0022-3514.      [42] A. A. Mishra, J. Mukhopadhaya, J. Alonso, and G. Laccarino,
     43.3.450.                                                                       “Design exploration and optimization under uncertainty,” Phys.
[26] M. Korporaal, I. T. Ruginski, and S. I. Fabrikant, “Effects of uncer-           Fluids, vol. 32, no. 8, 2020.
     tainty visualization on map-based decision making under time
     pressure,” Front. Comput. Sci., vol. 2, 2020, Art. no. 32,                 " For more information on this or any other computing topic,
     doi: 10.3389/fcomp.2020.00032.                                             please visit our Digital Library at www.computer.org/csdl.

<a id="p012-b003"></a>

<!-- p012-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:40:23 UTC from IEEE Xplore. Restrictions apply.
