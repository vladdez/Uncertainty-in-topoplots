---
id: "hullman2019pursuit"
title: "In Pursuit of Error: A Survey of Uncertainty Visualization Evaluation"
source_file: "The Art of Uncertain Topoplots/papers/hullman2019pursuit.pdf"
source_sha256: "3fc3dc8eafbe4739eaf064fce8d9fdf7a1aa8de84d5e31607d02e5efd6dd6001"
extraction_format: 1
---

# In Pursuit of Error: A Survey of Uncertainty Visualization Evaluation — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 25,                                NO. 1,    JANUARY 2019903

<a id="p001-b002"></a>

<!-- p001-b002 -->
In Pursuit of Error: A Survey of Uncertainty Visualization Evaluation
                                Jessica Hullman, Xiaoli Qiao, Michael Correll, Alex Kale, Matthew Kay

<a id="p001-b003"></a>

<!-- p001-b003 -->
Abstract—Understanding and accounting for uncertainty is critical to effectively reasoning about visualized data. However, evalu-
       ating the impact of an uncertainty visualization is complex due to the difficulties that people have interpreting uncertainty and the
       challenge of defining correct behavior with uncertainty information. Currently, evaluators of uncertainty visualization must rely on
       general purpose visualization evaluation frameworks which can be ill-equipped to provide guidance with the unique difficulties of
       assessing judgments under uncertainty. To help evaluators navigate these complexities, we present a taxonomy for characterizing
       decisions made in designing an evaluation of an uncertainty visualization. Our taxonomy differentiates six levels of decisions that
       comprise an uncertainty visualization evaluation: the behavioral targets of the study, expected effects from an uncertainty visual-
       ization, evaluation goals, measures, elicitation techniques, and analysis approaches. Applying our taxonomy to 86 user studies of
       uncertainty visualizations, we find that existing evaluation practice, particularly in visualization research, focuses on Performance and
       Satisfaction-based measures that assume more predictable and statistically-driven judgment behavior than is suggested by research
       on human judgment and decision making. We reflect on common themes in evaluation practice concerning the interpretation and
       semantics of uncertainty, the use of confidence reporting, and a bias toward evaluating performance as accuracy rather than de-
       cision quality. We conclude with a concrete set of recommendations for evaluators designed to reduce the mismatch between the
       conceptualization of uncertainty in visualization versus other fields.
       Index Terms—Uncertainty visualization, user study, subjective confidence, probability distribution

<a id="p001-b004"></a>

<!-- p001-b004 -->
1   I NTRODUCTION                                                                           sion. Canonical work on judgment under uncertainty argues that peo-
                                                                                            ple display cognitive biases when making decisions involving uncer-
Data-driven presentations have become commonplace in public-facing
                                                                                            tainty [51, 50]. Historically, such biases have been attributed to heuris-
domains like the news as well as in the scientific literature. A news-
                                                                                            tics, the use of simple judgments as a proxy for difficult judgments
paper article might depict differences in the probabilities of a set of
                                                                                            [49, 90, 91, 92]. A common misconception is that reliance on heuris-
political candidates winning an election. A government agency might
                                                                                            tics is bound to cause biased judgments. On the contrary, heuristics
present future temperature predictions of a model analyzing climate
                                                                                            are adaptive and often lead to accurate judgments. In the context
change trends. By conveying the possibility that a point estimate may
                                                                                            of evaluating uncertainty visualizations, this means that even when
vary, uncertainty visualizations enable people to make more informed
                                                                                            uncertainty is presented in a non-optimal format–such as error bars,
decisions. As public trust in science declines [19] and overconfi-
                                                                                            which lead to perceptual bias [69, 11] and underweighting of uncer-
dence in noisy effects reportedly affects a number of empirical dis-
                                                                                            tainty [40]–responses based on heuristics will sometimes be correct.
ciplines [42], uncertainty visualizations are more important than ever.
                                                                                            Consequently, it can be difficult to create the conditions in which
    It is the task of research in uncertainty visualization to provide evi-
                                                                                            heuristics are flawed and cognitive biases occur. In the face of these
dence of the impacts of proposed uncertainty visualization techniques,
                                                                                            and other unique evaluation challenges, the integrity of our knowledge
so as to inform practice. However, how to design an effective eval-
                                                                                            on how to best visualize uncertainty is at stake.
uation of an uncertainty visualization is rarely addressed in research
focused on creating uncertainty representations. A researcher or prac-                         We take a closer look at the evaluation of uncertainty visualizations
titioner seeking to evaluate a visualization with users must instead rely                   through the largest to date systematic review of existing uncertainty
on general purpose frameworks designed to ensure that evaluation de-                        visualization practice. We survey the techniques used in 86 uncer-
signs are appropriate given the nature of the visualization contribution                    tainty visualization evaluations published between 1987 to 2018 in a
(algorithmic, interaction technique, encoding, etc.) [57, 67].                              variety of disciplines. Our first contribution is a taxonomy for dis-
    Recently, scholars have pointed to the challenges evaluating uncer-                     tinguishing between uncertainty visualization evaluation approaches
tainty visualizations compared to evaluating other visualizations [38,                      (Fig. 2). Our taxonomy distinguishes key considerations at six levels
55, 79]. For example, researchers in judgment and decision mak-                             of decisions comprising an uncertainty evaluation approach. Behav-
ing describe eliciting and analyzing subjective accounts of uncertainty                     ioral Targets describe what aspects of the impact of uncertainty visu-
as a process fraught with its own uncertainty [72], though the diffi-                       alization(s) on user behavior are examined, such as its impact on Per-
culty of uncertainty elicitation is seldom considered in studies of un-                     formance or the Quality of User Experience. Expected Effects describe
certainty visualization. Statisticians and other scholars have long de-                     how a study defines when an uncertainty visualization is successful or
bated how to define normative accounts of uncertainty [2, 21, 27, 83];                      not. Evaluation Goals pertain to the study design: was the goal to
without clear agreement on what uncertainty is, it is difficult to imag-                    Compare multiple visualizations, Determine the impact of presenting
ine an agreed upon approach to evaluating uncertainty comprehen-                            uncertainty versus not, or another goal? Measures include directly
                                                                                            elicited measures such as satisfaction ratings, probability estimates,
                                                                                            subjective confidence, etc. as well as derived measures representing
• Jessica Hullman is with Northwestern University. E-mail:                                  transformations such as error, or the extent to which a decision max-
  jhullman@eecs.northwestern.edu.                                                           imizes utility. Elicitation describes ways that users’ responses can be
• Xiaoli Qiao is with University of Washington. E-mail: xiaoliq@uw.edu.                     gathered, from use of a physical apparatus to common HTML inputs.
• Michael Correll is with Tableau Software. E-mail: mcorrell@tableau.com.                   Analysis describes how an evaluator uses responses to determine if
• Alex Kale is with University of Washington. E-mail: kalea@uw.edu.                         Expected Effects were achieved, such as Frequentist Null Hypothesis
• Matthew Kay is with University of Michigan. E-mail: mjskay@umich.edu.                     Significance Testing (NHST) or Bayesian Estimation, for example.
Manuscript received 31 Mar. 2018; accepted 1 Aug. 2018.                                        Our second contribution is an analysis of evaluation paths, where
Date of publication 16 Aug. 2018; date of current version 21 Oct. 2018.                     we compare the co-occurance of codes for 86 evaluation studies across
For information on obtaining reprints of this article, please send e-mail to:               the different levels of our taxonomy. For example a common eval-
reprints@ieee.org, and reference the Digital Object Identifier below.                       uation path describes a Behavioral Target (L1) of Performance with
Digital Object Identifier no. 10.1109/TVCG.2018.2864889                                     an Expected Effect (L2) of Increasing Accuracy, conducted by (L3)
                                                                                            Comparing the Impacts of Multiple Visualizations through a Measure
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:41:31 UTC from IEEE Xplore. Restrictions apply.
                                     1077-2626 2018 IEEE. Personal use is permitted, but republication/redistribution requires IEEE permission.
                                        See http://www.ieee.org/publications_standards/publications/rights/index.html for more information.

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
904                                            IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 25,                 NO. 1,   JANUARY 2019

<a id="p002-b002"></a>

<!-- p002-b002 -->
(L4) of participant’s Probability estimates from which Error is de-           scientific data [24, 71, 88]. Visualization researchers and cartogra-
rived, which are Elicited (L5) via a Slider and Analyzed (L6) using a         phers have proposed a large number of techniques for visualizing un-
Frequentist NHST approach (Fig. 1). We find that existing evaluation          certainty, which can be classified using various taxonomies [30, 45, 62,
practice, particularly in Visualization research, focuses on comparing        76, 78, 86, 89]. We have observed that few studies used to validate new
multiple uncertainty visualizations to one another using a small num-         techniques motivate the evaluation design against alternatives, in addi-
ber of Performance and Satisfaction-based measures elicited using             tion to providing sufficient information for understanding a presented
constrained inputs such as multiple choice or Likert-style responses.         study (i.e., detailing the questions posed to participants, the partici-
These studies implicitly assume that correct responses are arrived at         pant sample, and how the measures were calculated). This aligns with
using procedures that resemble statistical decision making, that peo-         Kinkeldey et al.’s [55] observation that few of 44 cartographic uncer-
ple’s meta-cognitive assessments of how effective an uncertainty vi-          tainty visualization evaluations justified their tasks.
sualization is are reliable, and that elicitation techniques are mostly           Some researchers have commented on the unique aspects of eval-
interchangable without affecting responses.                                   uation of uncertainty visualization. Harrower [33] argues that evalu-
   Our final contribution is a set of recommendations designed to en-         ators should be more concerned with “does it help” and less focused
courage more transparent evaluations aligned with the state of the art        on “which vis is better,” given the inherent complexity of uncertainty
in knowledge on uncertainty comprehension. Our results confirm and            information. Boukhelifa and Duke [8] mention assessing how uncer-
extend recent recommendations made by others [38, 55, 54]. We de-             tainty information is used as one challenge in visualizing uncertainty,
scribe how evaluators tend to interpret subjective uncertainty in several     while Bonneau et al. [6] distinguish three types of evaluations: theo-
incompatible ways, as either directly comparable to statistical uncer-        retical evaluation using design principles (e.g., [94]), low-level visual
tainty or as an inherently subjective meta-cognitive assessment of con-       evaluation (e.g., [52]), and task oriented user study (e.g., [82]).
fidence. We describe what lessons can be learned from formal analyses             Several recent papers comment on the challenges of designing a
of decision making and subjective uncertainty using techniques from           realistic uncertainty visualization evaluation while maintaining suffi-
experimental economics, psychophysics, and judgment and decision              cient experimental control to test predictions [55, 79]. Kinkeldey et al.
making. We highlight the potential for decision-based approaches to           summarize studies reported in 34 publications that describe an evalu-
enable more realistic evaluations relative to accuracy or efficiency, the     ation of how geospatial uncertainty visualizations communicate [55].
value of evaluations that aim to understand why visualizations produce        In a follow up review on an overlapping set of 43 studies, the authors
different behavior, and the value of including no uncertainty and tex-        focus instead on assessing the impact of uncertainty visualization on
tual controls as a means of developing a deeper base of knowledge             decision-making and risk assessment [54]. These works characterize
around the impacts of uncertainty visualization, among others.                types of studies (e.g., laboratory, etc.), types of assessment (objec-
                                                                              tive, involving correct answers, versus subjective, exploring user intu-
2     R ELATED W ORK                                                          itions), types of uncertainty, visualization techniques examined, appli-
                                                                              cation domains, and participant and task characteristics. They note that
2.1    Improving Visualization Evaluation                                     in many cases evaluations focus on simplified, low-level visual judg-
Our work extends a larger body of work aimed at improving evalua-             ment tasks, and appear to be designed in an ad hoc manner. They also
tion methods in visualization. Researchers have contributed overviews         find a tendency to measure decision-making rather than perceptions of
of qualitative and quantitative approaches [57, 94] and models for en-        risk, which we also observe in our larger sample. They recommend
suring that one selects an evaluation that is appropriate for a given         greater systematicity and focus on realistic user tasks.
task, context, or contribution type [43, 67, 84]. For example, Mun-               Focusing on evaluation across visualization subfields, Hullman [38]
zner’s well known Nested Model [67] stresses the dependencies be-             summarizes patterns in a convenience sample of uncertainty visualiza-
tween stages of the design process (e.g., characterizing the task and         tion studies, characterizing study goals and types of measures. They
data, designing visual encodings), where an error at one stage can af-        review challenges to the epistemological nature of uncertainty, and
fect subsequent stages. Our taxonomy similarly distinguishes between          provide specific suggestions related to eliciting subjective probabil-
different “stages” of decisions in the design of evaluations for uncer-       ity such as using frequency framings, familiar probability “anchors”
tainty visualizations.                                                        (e.g., coin flips), and comparing multiple forms of elicitation.
   Several prior works describe trends in evaluation in the visualiza-            Our taxonomy extends these prior classifications with a more com-
tion community through systematic review of studies (e.g., [44, 57]).         prehensive set of distinctions about decisions at each stage of visual-
Lam et al. use a review of 361 visualization papers to contribute a set       ization evaluation, informed by categories that emerged in our analysis
of scenarios describing the most common goals and outputs of differ-          as well as the state-of-the-art in judgment and decision making.
ent forms of evaluation. Their work takes a broad view that evaluation
can occur at any stage in a design process. Isenberg et al. [44] borrow       3 M ETHODS : C REATING THE TAXONOMY
from Lam et al.’s [57] codes in a review of 581 papers that evaluate the      3.1 Scope: Evaluative User Studies
impacts of visualizations on users.
                                                                              To be included in our sample, we required that a study included at
   We restrict our review to studies that correspond to Lam et al.’s          least one visual representation of uncertainty, and at least one research
scenarios for understanding visualization: formal studies conducted to        question concerning the impact of an uncertainty visualization on a
determine a visualization’s effects. Similar to both prior works, we          user’s performance, impressions, or behavior. The goal of these crite-
include a distinction between evaluations that target Performance ver-        ria was to eliminate, for example, studies focused on different forms
sus User Experience. Additionally, in our taxonomy we include a third         of textual representations of uncertainty or different framings of un-
type of behavioral target of Semantics and Interpretation of uncertainty      certainty (e.g., frequency) that did not involve visualizations per se.
depictions which we observed in multiple studies. Because the goal of         Also eliminated were studies that presented uncertainty to viewers but
our taxonomy is to surface intended goals and evaluation designs for          without posing any research questions concerned with how visual rep-
uncertainty information, we employ a more detailed coding scheme              resentation of uncertainty impacted behavior or responses.
than these prior surveys. For example, in contrast to the reviews of             As user studies, each study necessarily included at least one means
Lam et al. and Isenberg et al., which used a total of 17 and 8 codes          of eliciting responses or actions from users of a visualization. Our fi-
respectively, we employ a coding scheme comprised of 72 total codes           nal criterion for inclusion was that each study included a quantitative
distributed across six different levels of evaluation design decisions (3     analysis of users’ responses or behaviors as impacted by a visualiza-
to 18 codes per level).                                                       tion. This criterion is meant to exclude studies that did not judge how
                                                                              prevalent or important different results are (i.e., studies that refrain
2.2    Evaluating Uncertainty Visualization                                   completely from reporting on the frequency of different results, even
Various standards boards and public-facing organizations have de-             textually through terms such as “most users”). Because we are in-
scribed the importance of conveying uncertainty as a component of             terested in gaining a comprehensive view of available techniques for
    Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:41:31 UTC from IEEE Xplore. Restrictions apply.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
HULLMAN ET AL.: IN PURSUIT OF ERROR: A SURVEY OF UNCERTAINTY VISUALIZATION EVALUATION905

<a id="p003-b002"></a>

<!-- p003-b002 -->
(e.g., “improving accuracy in data extraction”), and evaluation designs
Table 1. Categories of publication venues and application domains in
                                                                             (e.g., “comparing multiple uncertainty visualization treatments“). Im-
our sample of 86 uncertainty visualization evaluations.
                                                                             plementation decisions were considered separately and were catego-
 Publication Venue                   #     Application Domain         #
                                                                             rized based on what measure was elicited (e.g., a probability esti-
 Automotive Ergonomics               2     Aviation/Defense           1      mate), how it was elicited (e.g., a slider), and analyses approaches
 Cartography/GIS                     19    Astrophysics               1      (e.g., Frequentist NHST). The taxonomy was prescriptive in that we
 Cognitive Psychology                10    Cartography/GIS            14     included nodes for techniques that are recommended in literature on
 Computer-Aided Medicine             2     Domain-general             20     expert probability elicitation [72], such as graphical elicitation [28]
 Health informatics                  4     Graphs/Trees               2      and formal analyses of decision making [14].
 Human Factors                       6     Health/Medicine            14
                                                                                We next iteratively applied a “bottom-up” approach in which we
 Judgment & Decision-Making          5     Management                 1
                                                                             assessed the approaches used in our sample. We isolated each measure
 Information Visualization           24    Meteorology                14
                                                                             in a study, tracing each distinct analytical comparison that was applied
 Meteorology                         1     Manufacturing              2
                                                                             to this measure. We labeled the research question, expected effect,
 Scientific Visualization            9     Transit                    6
                                                                             evaluation design, elicitation method, and analysis approach for each
 Security                            1     Volumetric Data            10
                                                                             comparison (creating an “evaluation path”; e.g., Figure 1).
 Ubicomp                             3
                                                                                As we analyzed more studies, we periodically added new codes to
                                                                             our taxonomy and refined the distinctions between levels of the taxon-
                                                                             omy. For example, we opted to reframe high-level study goals more
uncertainty visualization evaluation, we put no restrictions on the dis-     specifically as Behavioral Targets, and intermediate goals as Expected
ciplinary venue where a study was published.                                 Effects describing the direction of a hypothesized effect in order to
                                                                             more cleanly distinguish these two levels. We also added sub-levels to
3.2     Sample                                                               differentiate elicited measures (e.g., subjective confidence, probability,
We seeded our list of publications containing evaluation studies with        etc.) from derived measures (e.g., alignment between confidence and
Potter’s online library of uncertainty visualization studies [77]. This      accuracy, error, etc.) After all substantive changes, we recoded any
resource contains 241 publications presenting uncertainty visualiza-         affected paths. Our taxonomy includes 76 total codes, with an average
tion techniques or studies published between 1990 and 2013 in core           of 12.7 codes per each of the six levels.
venues associated with the research fields of InfoVis, SciVis, Cartogra-        The first and second author evaluated all studies, resolving inconsis-
phy, Medicine, and Psychology, among others. The first author exam-          tencies between their codes and discuss ambiguities. Our final coded
ined each of the 241 papers to remove those that did not contain eval-       sample includes 372 paths (mean per publication: 4.3 paths).
uative user studies as defined above (leaving 48 studies). To identify
studies from 2013 to the present, we used a set of queries containing        4     U NCERTAINTY V ISUALIZATION E VALUATION TAXONOMY
methodological terms like ”user study” or ”controlled experiment” as
well as indicators of uncertainty visualization like ”uncertainty visual-    4.1     Overview
ization”, ”uncertainty representation”, ”risk visualization”, ”graphical     Our taxonomy proposes six levels of decisions that characterize an
representation of risk”, and ”risk representation”. We queried Google        uncertainty visualization evaluation. We distinguish between aspects
Scholar for each combination of method term and uncertainty visual-          of an evaluation that describe its Research Values and Aims (L1, L2),
ization term. We manually went through each list of results, stopping        and those that describe its Research Design (L3 - L6).
when we reached an entire page (10 papers per page) of papers that              Applying our taxonomy to the 86 studies in our sample produced
were no longer relevant to uncertainty visualization. This resulted in       372 instances of evaluation paths. We present each code, along with its
an additional 52 studies (100 total). During the coding process, we          definition, frequency, and examples below, and depict all coded paths
eliminated 14 of these 100 studies as a result of not being able to ob-      in Figure 2. Our supplement, available at https://github.com/
tain the paper or noticing a priori that a study did not fulfill one of      jhullman/uncertaintyVisEval (10.5281/zenodo.1324465),
our inclusion criteria (e.g., we removed an fMRI study where uncer-          provides interactive visualizations that associate paths with studies.
tainty visualizations were shown only to gauge how the brain reacts to
uncertainty).                                                                4.2     L1, L2: Research Values and Aims
   Table 1 summarizes the number of studies by publication discipline
and application domain.                                                      Research values and aims are comprised of Behavioral Targets (L1)
                                                                             describing the focal dimension of the uncertainty visualization(s)’ im-
3.2.1    Coding Procedure                                                    pact and Expected Effects (L2) representing the directions of expected
                                                                             outcomes that are framed as either more or less desirable (e.g., more
                                                                             risk aversion, more confidence as ideal behavior).

<a id="p003-b003"></a>

<!-- p003-b003 -->
4.2.1    L1: Behavioral Targets
                                                                             We assigned each evaluation path one of three broad categories of vi-
                                                                             sualization effects that a study can attempt to isolate:

<a id="p003-b004"></a>

<!-- p003-b004 -->
• Performance (241; 64.8%): how effectively a user can extract
                                                                                   information, make inferences, or make decisions with a visual-
                                                                                   ization (e.g., [40, 82, 85]).
                                                                                 • Interpretation & Semantics (64; 17.2%): the ease with which
                                                                                   a user associates uncertainty with an encoding (e.g., [7, 63]).
Fig. 1. A depiction of our evaluation taxonomy (top), which distinguishes
evaluation decisions made at six different levels; and an example eval-          • Quality of User Experience (67; 1.8%): the user’s valua-
uation path (bottom) from the set of 372 paths that we coded across a              tion of the visualization, such as their preference or satisfaction
sample of 86 publications.                                                         (e.g., [29]).

<a id="p003-b005"></a>

<!-- p003-b005 -->
We created an initial “top-down” set of distinctions based on our             The first two categories map closely to those applied in prior sur-
own knowledge of procedures in visualization and related fields such         veys of visualization evaluation (i.e., Kinkledey et al’s [54] “effect”
as cognitive psychology. This basic taxonomy differentiated high-            and “communication”, which can be traced to subsets of Isenberg et
level goals (e.g., “improving decision making”), intermediate goals          al.’s [44]’s codes for assessing visualization evaluation. We decided
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:41:31 UTC from IEEE Xplore. Restrictions apply.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
906                                          IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 25,                 NO. 1,   JANUARY 2019

<a id="p004-b002"></a>

<!-- p004-b002 -->
Fig. 2. 372 evaluation paths that we observed across a sample of 86 publications with uncertainty visualization evaluations. The number of inlinks
and outlinks differ for some nodes due to the same evaluation path representing multiple codes at a single level (e.g., Analysis).

<a id="p004-b003"></a>

<!-- p004-b003 -->
to create a separate category for “Quality of User Experience” as Ex-           • Efficiency (37; 9.9%): How well a visualization supports quick
pected Effects associated with these Behavioral Targets tended to dif-            judgments (e.g., [59]).
fer from Expected Effects associated with Behavioral Targets of Per-
formance and Interpretation & Semantics in that the correctness and/or         We coded evaluation paths that did not imply any expected direction
format of the user’s internal representation was not of interest.           for an effect on user responses as intending to:
   Our results make clear that most evaluation paths (241; 64.8%) in            • Understand internal model (48; 12.9%): Seeking to understand
our sample framed the Behavioral Target (L1) as an assessment of                  how a judgment is made (e.g. [13, 87]).
Performance. Performance targets imply that visualizations are tools
for supporting analytical tasks.                                               Our goal with L2 was to capture the assumptions that drive eval-
                                                                            uators toward focusing on a certain type of response as a signal of
                                                                            whether an uncertainty visualization “works”. As such, decisions at
4.2.2   L2: Expected Effects                                                L4 Measures tend to be dependent on L2.
In addition to targeting a specific dimension of behavior, evaluation          A total of 324 (87%) evaluation paths implied an Expected Effect
studies typically presuppose the direction of an effect of interest. We     (L2), either explicitly through a hypothesis or prediction, or implicitly
defined Expected Effects including:                                         in how the goal of uncertainty visualization was framed in contextu-
                                                                            alizing the task. Over one third of evaluation paths described tasks
   • Accuracy (134; 36%): Difference from a ground truth response           where ground truth could be used to establish what an accurate versus
     (e.g., [37, 40]).                                                      inaccurate response looked like. Among the 48 (13%) paths that did
                                                                            not imply an Expected Effect, those associated with Performance tar-
   • Confidence/Accuracy Alignment (5; 1.3%): Correlation be-               gets tended to represent attempts to understand users’ mental models
     tween confidence and accuracy (e.g., [11]).                            or strategies as a means of understanding why judgments were better
   • Impact on Decision-Making (3; 0.8%): Effects on decisions              or worse. When associated with an Interpretation & Semantics target,
     where no ground truth is implied (e.g., [15]).                         these paths similarly tended to represent attempts to understand mental
   • Decision Quality (14; 3.8%): Difference from a rational deci-          models or strategies, but where this understanding was framed as a pri-
     sion standard (e.g., [23, 68]).                                        mary goal, rather than being in service of supporting Performance or a
                                                                            better User Experience (e.g., [11, 87]). We did not observe any cases
   • Memorability (3; 0.8%): How well a fact is remembered
                                                                            where a Behavioral Target of Quality of User Experience was assessed
     (e.g., [39]).
                                                                            with a subgoal of trying to understand the user’s internal model.
   • Risk Avoidance (23; 6.2%): The degree to which a user’s re-               We coded paths that did not imply a desired direction for an effect
     sponse attempts to avoid risk (e.g., [35]).                            as aiming to “Understand the user’s internal model”.
   • Intuitiveness/Reading ease (31; 8.3%): How “naturally” a vi-
     sualization supports correct interpretations (e.g., [7]).              4.3 L3 - L6: Research Design
   • Awareness of Judgment Process (8; 2.1%): The user’s ability            The research design of a study is comprised of Evaluation Goals (L3)
     to recognize aspects of their judgment (e.g., [15]).                   represented by experimental design considerations, Measures (L4)
                                                                            represented by elicited responses, Elicitation (L5) describing how the
   • Learnability (0): The user’s ability to improve their perfor-          measures are elicited, and Analysis Paradigms (L6) describing how
     mance over time                                                        measures are modeled.
   • Confidence (24; 6.5%): The degree of belief in the validity or
     truth of a judgment, data set, visualization, etc. (e.g., [16]).       4.3.1 L3: Evaluation Goal
   • Satisfaction (38; 10.2%): The user’s aesthetic valuation of a vi-      We observed several forms of comparisons that a study could use:
     sualization (e.g., [22, 61]).                                              • Compare impacts of multiple uncertainty visualizations (255;
   • Interaction (4; 1.1%): How much interaction a visualization re-              68.5%): Results of one or more tasks are used to rank two or
     ceives in time, number of clicks, etc. (e.g., [32, 35]).                     more uncertainty visualizations (e.g., [11, 40, 53]).
  Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:41:31 UTC from IEEE Xplore. Restrictions apply.

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
HULLMAN ET AL.: IN PURSUIT OF ERROR: A SURVEY OF UNCERTAINTY VISUALIZATION EVALUATION907

<a id="p005-b002"></a>

<!-- p005-b002 -->
• Determine the impact of presenting uncertainty (98; 26.3%):                      – Galvanized Skin Response (GSR) (1; 0.3%): Change in
     At least one visualization that does not contain uncertainty infor-                the electrical resistance of the skin.
     mation is evaluated (e.g., [68]).                                                – Interaction logs (35; 8.9%): A log of a user’s behavior as
   • Validate effectiveness of an uncertainty vis (5; 1.3%): A user                     they use a visualization.
     study is designed to confirm that a visualization improves some                  – Eye movement (2; 0.5%): An eye tracker log of voluntary
     response(s). (e.g. [80]).                                                          or involuntary eye movement.
   • Understand why/how a visualization works (54; 14.5%): Re-
     sponses to a visualization(s) are analyzed to identify or confirm          Often evaluators use directly elicited measures as input to transfor-
     some judgment mechanism (e.g., [87]).                                   mations. For example, both Error and Bias are derived measures that
   • Understand interactions with user characteristics (53;                  can be calculated for a number of lower level measures given ground
     14.2%): The effect of properties of the user (expertise, location,      truth. We therefore distinguish between the measure that is directly
     etc.) on responses is analyzed (e.g., [1]).                             elicited (L4a, above) and Derived Measures (L4b, below) which de-
                                                                             scribe the possible transformations of the lower level measures.
   Notably, 170 (45.7%) of the 372 evaluation paths that we coded
that compared multiple visualizations did not include any other evalu-          • Descriptive Error Measures (130; 35%):
ation goals. We are nonetheless encouraged by the fact that roughly a                – Error (112; 30.1%): Can be calculated as binary, continu-
quarter of paths (98) involved a comparison to a no-uncertainty base-                  ous, or using Signal Detection theory (TP, TN, FP, FN).
line condition, a technique that others have suggested should be more                – Bias (18; 4.8%): Can be calculated as an ordinal(i.e., <,
common in the uncertainty visualization evaluation literature [33].                    =, >) or continuous value.
4.3.2 L4: Measures
                                                                                • Aggregate Descriptive Measures (16; 4.3%):
Measures prescribe what aspects of users’ behavior or beliefs are                   – Precision (2; 0.5%): How consistent a user’s responses are
elicited to assess whether expected effects have been achieved.                        across judgments.
   • Decision measures (31; 8.3%)                                                   – Variance (4; 1.1%): How consistent a set of users’ re-
                                                                                       sponses are across a single judgment.
         – Decision (31; 8.3%): A hypothetical choice action (e.g.,
           saying when they would leave for the bus [23]).                          – Relation of response with ground truth (5; 1.3%): How
                                                                                       much a subjective measure like confidence or perceived
         – Allocation (0%): An amount of currency wagered to en-                       importance of a feature aligns with ground truth.
           dorse a choice (e.g., [74]).
                                                                                    – Change in response (5; 1.3%): How much a response like
   • Attribute-based measures (141; 37.9%)                                             confidence, probability estimate, belief, etc. changes af-
        – Value of [nominal | ordinal | continuous] variable (67;                      ter using a visualization (e.g., evaluating how much peo-
           18%): Specifying a value along a provided scale (e.g., ask-                 ple’s judgments about climate change realities change after
           ing the user to estimate the forecasted temperature from a                  viewing a visualization [35]).
           display [46]).
                                                                                • Decision Measures (14; 3.8%):
        – Count (15; 4%): Specifying a count (e.g., of features of a
           certain type).                                                            – Utility maximization (7; 1.9%): How closely a decision
                                                                                        aligns with the optimal decision under utility theory.
        – Probability (29; 7.8%): A probability specified as a
           probability or frequency (e.g., [40]) or as a Likert-style                – Compliance with optimal strategy (7; 1.9%): How
           question asking for the relative probability of an event                     closely a user’s responses follow an optimal strategy.
           (e.g., [1]).
                                                                                • Explanatory Measures (7; 1.9%):
        – Variance (4; 1.1%): A value or set of values describing
                                                                                    – Shape of response function (3; 0.8%): The shape of a
           how much an outcome can vary (i.e., a range, standard de-
                                                                                       user’s inferred internal judgment function (e.g., [87]).
           viation, standard error, etc. as in [31]).
                                                                                    – Strategy (4; 1.1%): A process describing how a user made
        – Rank by [data attribute | uncertainty attribute] (22;
                                                                                       a judgment.
           5.9%): The top k features sorted by a numerical attribute.
   • Self-report measures (161; 43.3%)                                          • Semantic Measures (8; 2.2%):
        – Spontaneous Impression (16; 4.3%): An unconstrained                       – Risk Aversion (2; 0.5%): The degree to which a direct
           description of one’s reaction to a visualization (e.g., [8]).              measure, like Willingness to Pay, implies a desire to avoid
                                                                                      risk.
        – Subjective Confidence (28; 7.5%): A valuation of one’s
           confidence in information or a judgment.                                 – Affective associations (3; 0.8%): The degree to which a
                                                                                      direct response (e.g., a rating on a scale comprised of two
        – Perceived Risk/Reliability (15; 4%): How risky, or con-
                                                                                      adjectives) is associated with some affect.
           versely how reliable, one believes an outcome is.
                                                                                    – Uncertainty association (3; 0.8%): The degree to which
        – Perceived Ability/Effort (29; 7.8%): How hard a visual-
                                                                                      a direct response is associated with uncertainty.
           ization is to read or use.
        – Self-reported Satisfaction (41; 10.8%): An aesthetic val-             • Implicit Measures (38; 10.2%):
           uation of a visualization.                                               – Number of Interactions (5; 1.3%): A count of how often
        – Self-reported Intention (10; 2.7%): A reported intention                     an action occurred (mouse click, page view, etc.)
           to use or recommend information or an artifact (e.g., [17]).             – GSR Features (1; 0.3%): For example, number or vari-
        – Willingness to Pay (6; 1.6%): A reported intention in-                       ance in GSR signals (e.g., [93]).
           volving allocating money to an information or artifact(s).               – Eye fixations (2; 0.5%): Distance between sequential fix-
        – Self-reported Action (17; 4.6%): Whether one used, re-                       ations, frequency between short distances, etc. (e.g., [56]).
           membered, etc. information or an artifact.                               – Time (29; 7.8%): The duration of a task completed by the
   • Implicit measures (36; 9.7%):                                                     user (a session, question response, etc.).
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:41:31 UTC from IEEE Xplore. Restrictions apply.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
908                                            IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 25,                NO. 1,   JANUARY 2019

<a id="p006-b002"></a>

<!-- p006-b002 -->
Our results indicate that the most common category of Measure              The next most common form of elicitation was Implicit, which most
(L4a) in our sample was Self-Report Measures, with multiple specific          commonly took the form of logging time spent with a visualization.
measures (Subjective Confidence, Self-reported Satisfaction, and Per-         Also worth noting, 44 (11.8%) paths did not mention how they elicited
ceived Ability/Effort each occurring in more than 5% of evaluation            a specified measure.
paths). Attribute-based measures were also common, including Val-
ues of Nominal, Ordinal, and Continuous variables but also to some            4.3.4    L6: Analysis
extent Probability and Rankings of entities by uncertainty or another         The analysis paradigm describes how the elicited measurements are
quantitative variable. Decision Measures and Implicit measures were           summarized and used to assess to what degree the desired effects have
both notably less common.                                                     been achieved. We distinguished between the following approaches:
   More than half of all evaluation paths included Derived Measures              • Intermediate analyses
(L4b). Not surprisingly, error measures were the most commonly used
at roughly 30%, with the implicit measure time as the second most                     – Qualitative coding (33; 8.9%): Categorizing responses
common at roughly 8%. Deriving bias (error with direction) occurred                      based on their similarities.
in roughly 5% of evaluation paths.                                                    – Summary statistics (310; 83.3%): Sample statistics like
                                                                                         means, variance, or other frequency information.
4.3.3 L5: Elicitation
                                                                                  • Summative analyses
Elicitation concerns how measurements are generated. For example, a
study that compares how different uncertainty visualizations (L3 Com-                 – Frequentist NHST (242; 65%): Null hypothesis signifi-
pare impacts of multiple uncertainty visualizations) impact users’ con-                 cance testing within a Frequentist paradigm.
fidence in their decisions (L4 Subjective confidence) could ask users to              – Frequentist Estimation (12; 3.2%): Frequentist paramet-
rate their confidence on a scale from 50 (random) to 100 (certain) im-                  ric or non-parametric approaches to infer and report a sam-
plemented as a continuous slider with numerically labeled endpoints                     pling distribution (e.g., 95% CIs presented in place of sig-
(L5 Slider). Research outside of visualization suggests that measures                   nificance tests).
related to subjective uncertainty are sensitive to the elicitation pro-               – Bayesian NHST (0): Null hypothesis significance testing
cess [28, 72]. By distinguishing among formats for collecting users’                    within a Bayesian paradigm.
responses, our goal is to increase the level of awareness of elicitation as
a critical design choice in uncertainty visualization evaluation and vi-              – Bayesian Estimation (12; 3.2%): Parametric or non-
sualization evaluation more broadly. We observed elicitation through:                   parametric Bayesian approaches to infer and report a sam-
    • Physical apparatus (6; 1.6%): Interactions with physical ob-                      pling distribution.
       jects (e.g., casts of the human body [85]).                               Two approaches (Qualitative Coding and Summary Statistics) tend
    • Direct selection (10; 2.7%): Input recorded through interaction         to be used as intermediate steps to concluding whether or not a visu-
       with a stimulus (e.g., user clicks on location on map [12]).           alization was successful. For example, Summary Statistics are often
    • Graphical (15; 4%): The use of a visualization to gather re-            presented to add context to results obtained through NHST or Estima-
       sponses, either by asking a user to construct a representation or      tion. Qualitative coding is used most often on free form inputs such as
       by asking a user to adjust a representation (e.g., the position of a   free text responses describing subjects’ spontaneous impressions.
       visualized outcome on a plot relative to error bars [3]).                 Most paths used Summary Statistics. 77 (20.7%) paths used Sum-
                                                                              mary Statistics without relying on inferential statistics (NHST or esti-
    • Standard survey inputs (245; 65.9%)
                                                                              mation) to draw final conclusions. Not surprisingly, Frequentist NHST
           – Slider (11; 3%): A visual analogue scale depicting a con-        analyses dominate the use of inferential statistics in the uncertainty vi-
              tinuous range.                                                  sualization studies we coded. We observed only 24 paths that used
           – Multiple choice (83; 22.3%): A list of discrete options via      estimation, half of which used Bayesian models to estimate bias and
              radio button, checkbox, etc.                                    variance separately; and no examples of Bayesian NHST.
           – Likert (91; 24.5%): A stepped rating scale consisting of
              5, 7, etc. points along a continuous range.                     5     R ESULTS AND R ECOMMENDATIONS
           – Text entry (60; 16.1%): An unconstrained text box, one           In contrast to code frequencies by level of the taxonomy, looking at co-
              constrained to only accept numeric answers, etc.                occurring decisions in evaluation paths provides a more holistic view
                                                                              of how choices and assumptions at one level of the taxonomy may
   • Oral (20; 5.4%)                                                          influence decisions at other levels. We characterize common paths,
       – Think-aloud protocol (6; 1.6%): The user’s utterances as             then present recommendations where the patterns that emerge suggest
           they interact with a visualization.                                missed opportunities in light of research on uncertainty elicitation and
       – Spoken response (14; 3.8%): The user responds a ques-                comprehension in other fields.
           tion by speaking aloud.
                                                                              5.1     Characterizing Evaluation Paths
   • Indirect (35; 9.4%)                                                      5.1.1    Interpretation & Semantics Paths
        – GSR tracker (1; 0.3%): The use of a GSR device to cap-              While the majority of studies with Performance or User Experience
           ture skinm response.                                               research questions implied a priori Expected Effects, studies with In-
        – Eye tracking (2; 0.5%): The use of an eye tracker to cap-           terpretation and Semantics research questions were less likely to imply
           ture eye movements.                                                a specific direction of Expected Effect. Even where an Expected Effect
        – Implicit interaction logs (32; 8.6%): Server logs.                  was posited to address an Interpretation and Semantics research ques-
                                                                              tion (e.g., suggesting that an encoding should be perceived as more
   The majority of evaluation paths involve use standard survey inputs,       intuitive for presenting uncertainty [8, 64]), Interpretation and Seman-
with Multiple Choice and Likert-style inputs being notably more com-          tics evaluation paths tended to assume a more exploratory approach to
mon than Text-entry or Sliders. Combining this information with the           soliciting responses to a visualization. Such evaluations often elicited
prevalence of error measures and self-report measures, these results          unconstrained spontaneous impressions of a visualization (16; 4.3%)
suggest that many uncertainty visualization evaluations rely on either        or self-reported actions (17; 4.6%) using written inputs or oral ap-
self-reported assessments of how well a visualization worked, or accu-        proaches such as interviews and think-aloud protocols (21; 5.6%).
racy measures calculated on highly constrained sets of options (e.g., 5          We observed an important subset of Interpretation and Semantics
or less being typical of most multiple choice questions we observed).         that used more constrained tasks to elicit internal representations of a
  Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:41:31 UTC from IEEE Xplore. Restrictions apply.

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
HULLMAN ET AL.: IN PURSUIT OF ERROR: A SURVEY OF UNCERTAINTY VISUALIZATION EVALUATION909

<a id="p007-b002"></a>

<!-- p007-b002 -->
Fig. 3. Paths with Interpretation & Semantics targets (A), and Decisions (B) and Subjective Confidence as measures (C).

<a id="p007-b003"></a>

<!-- p007-b003 -->
probability distribution. Tak et al. [87] characterized participants’ in-    5.1.2   Accuracy vs. Decision Quality
ternal representations of a probability distribution by repeatedly ask-      Multiple researchers have called for a greater focus on realistic deci-
ing them to specify the amount of uncertainty at a given location on         sion making in uncertainty visualization evaluation [38, 55, 54, 79].
a 2D visualization. Similarly, Bisantz et al. [4] asked participants to      The focus on accuracy and performance measures that we and oth-
describe how much linguistic expressions (e.g., “probable”) captured         ers [38, 55, 54, 79] have observed risks glossing over the difference
a probability value by asking participants to specify the “membership”       between being able to identify information in a visualization and be-
of a given probability for an uncertainty representation along a contin-     ing able to use it effectively in a decision. Our analysis demonstrates
uous scale from “Not at all” to “Absolutely.” Hullman et al. [39] asked      the differences between these two approaches (Fig. 3).
users to “draw” their prediction for a distribution using a continuous
                                                                                Assessing Accuracy (L2) was roughly 10 times more common than
or discrete representation of probability.
                                                                             assessing Decision Quality (L2) in our sample. Even when Decisions
                                                                             (L4) were elicited, by posing a hypothetical scenario in which the user
   Other Interpretation & Semantics paths focused on eliciting evi-          should ’act’, Increasing Accuracy was roughly twice as common com-
dence of a user’s mental process to confirm whether people were em-          pared to Increasing Decision Quality. Paths that did focus on Deci-
ploying specific heuristics or biases in interpreting a visualization.       sions often provided a more thorough motivation for incentives, from
For instance, Correll and Gleicher [11] evaluated uncertainty visual-        designing decision payoffs based on formative studies of how people
izations of confidence intervals to see if participants were subject to      valued certain outcomes [23] to the development of multiple specific
“within-the-bar” bias [70], where outcomes within the visual area of         hypotheses related to the impact of incentives on users’ decisions [9].
bar charts were perceived as more likely than those outside of the bar.
Similarly, Correll et al. [12] examine how different color maps for          5.1.3   Assessing Confidence
uncertainty can result in participants under- or over-weighting uncer-
                                                                             Approximately 20% (72) of paths we observed emphasized constructs
tainty information when making decisions. Neither study’s sole fo-
                                                                             associated with one’s subjective sense of confidence, including Sub-
cus was a comparison with a ground truth correct decision. Instead,
                                                                             jective Confidence (28), Perceived Risk/Reliability (15), and Per-
responses were examined for systematic patterns of decision-making
                                                                             ceived Effort/Ability (29). Subjective Confidence and Perceived Ef-
that would indicate a bias or heuristic that might be undesirable in
                                                                             fort/Ability were typically framed as eliciting a participant’s subjec-
real-world decision-making tasks. Sometimes self-reports were uti-
                                                                             tive sense of the accuracy or effortfulness of their own judgment or of
lized for this purpose; for example, Padilla et al. [73] used debriefings
                                                                             the external (visualized) information. Perceived Risk/Reliability asked
to evaluate the use of heuristics, breaking down patterns of responses
                                                                             the user to report how likely they thought they were to be affected by
by heuristic strategies used to make judgments about uncertainty.
                                                                             some event, representing an explicitly subjective version of probabil-
                                                                             ity. Conversely, when studies asked participants to estimate perceived
   Less commonly, Interpretation & Semantics paths examined how              uncertainty via probabilities, rankings, or other measures that error
amount of uncertainty influenced bias or error [46, 47, 68], recogniz-       was derived from, these constructs were framed as inquiring about ob-
ing the findings of prospect theory in decision science [49].                jective information. Subjective confidence was typically treated as a
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:41:31 UTC from IEEE Xplore. Restrictions apply.

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
910                                          IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 25,                      NO. 1,   JANUARY 2019

<a id="p008-b002"></a>

<!-- p008-b002 -->
secondary form of effect, with priority given to the “objective” mea-          Eliciting decisions, in the form of hypothetical actions like where to
sures to determine, for instance, the best of multiple visualizations.      locate an airport or park [58] or which location the user would suggest
   The lack of motivation for how these constructs do or should differ      a person with certain goals buy [22] allows the evaluator to examine
suggests that subjective uncertainty is not a well defined construct in     whether users understand uncertainty in light of a specific decision
visualization evaluation. Indeed, we see clear differences in assump-       context. Other questions that can be answered via decision tasks in-
tions about how to treat even the measures that are clearly framed as       clude whether a subject feels confident enough to use the information
subjective. Some researchers address confidence and perceived risk          given the potential rewards or consequences of the decision. In a real-
as subjective feelings with no ground truth, aligning with theories that    world decision context, participants have consequences for choosing
subjective confidence should not necessarily be expected to behave          incorrectly, and may even have conflicting decision criteria or trade-
like statistical confidence [27]. For example, Blenkinsop et al. [5]        offs to make (e.g., balancing the chance of an incorrect snow forecast
interpret directional shifts in confidence between visualization condi-     against the cost of failing to ice the road [46]).
tions, saying things like “participants had more confidence” or partici-       Economic frameworks, such as Utility Maximization (L4 Derived)
pants expressed “low confidence in the use of these displays”. In mak-      offer one approach to assessing decision quality. Joslyn and LeClerc
ing such assumptions, evaluators maintain transparency about what           [48, 46], for example, give participants a budget and have them decide
they are measuring but sacrifice normative conclusions.                     whether to salt the road given weather forecasts with different displays,
   In contrast, some researchers take a normative approach by compar-       with costs for failing to salt if it does snow. The remaining budget
ing confidence to a ground truth, assuming that these constructs carry      after many trials becomes a measure of decision quality. Similarly,
a similar meaning across individuals, and that that meaning is more or      Fernandes et al. [23] follow up a prior study [53] that assessed the
less directly comparable to an “objective” statistical account. Such ap-    Accuracy (L2) of probability extraction from probabilistic predictions
proaches assume that confidence provided for a judgment should be a         of bus arrival times with an incentivized experiment where participants
signal of a participant’s probability of being correct for that judgment,   decide when to catch simulated buses. Participants are paid according
or of some objective measure of probability. For example, Ibrekk and        to a utility function, and the ratio of their expected payment under the
Morgan [41] analyzed intrasubject correlations, looking for an associ-      decisions they made to the payment under an optimal strategy is used
ation between how sure a participant was about their response being         to assess Decision Quality (L4 Derived).
correct and the correctness (i.e., error) of the response. Correll and         These approaches offer a controlled means of decision assessment
Gleicher [11], on the other hand, evaluated how confidence decayed          that attempts to include realistic tradeoffs. Given multiple trials, they
as a potential outcome got further from the mean, as well as how con-       can be used to compare how well people can learn to use uncertainty
fidence correlated with effect size and p-value.                            displays as they make more decisions and receive feedback.1 We ob-
                                                                            served that in contrast to accuracy studies, researchers who applied
5.2     Recommendations for Evaluators                                      such approaches also tended to include controlled comparisons be-
Our analysis surfaced biases, e.g., toward Performance and Accuracy,        tween no uncertainty and a visual representation, which can help an-
confirmatory goals and analysis, as well as opportunities for expand-       swer in what situations uncertainty helps or not.
ing the default “toolbox” such as moving beyond standard constrained
HTML input elicitation through Multiple choice and Likert-style re-         5.2.3    R3: Account for the Ambiguity of Confidence
sponses. Drawing on our observations and research on uncertainty
comprehension and elicitation from outside of visualization, we pro-        All of these approaches, when used as described above, do not account
pose recommendations toward more transparent, and internally and            for several known properties of confidence reporting. The “hard-easy
externally valid evaluations of uncertainty visualizations.                 effect” is a counter-intuitive pattern of behavior in which people re-
                                                                            port overconfidence when presented with a difficult task and under-
5.2.1    R1: Consider Explaining As An End Goal                             confidence when presented with an easy task [18, 66]. This is partially
                                                                            explained by people’s tendency to report low confidence for incorrect
As described above, studies that posed Behavioral Targets of Inter-         judgments, especially when made in the face of an easy task [81].
pretation & Semantics were the most likely to work toward a goal            Hence, an analysis like the one used by Ibrekk and Morgan, which
of understanding how or why users acted in certain ways when us-            uncovered no clear differences between visualizations based on confi-
ing an uncertainty visualization. A simple way to do so is to elicit        dence reporting, may have been confounded by the difference between
participant’s descriptions of how they made a judgment, or what infor-      confidence reported for a judgment that is likely to be wrong versus
mation they found helpful, to provide greater context for differences       one that is likely to be right. Only two studies in our sample of 86
that might be observed. More sophisticated strategies for explaining        that explicitly accounted for the difference in confidence reports for
uncertainty visualization including analyzing results for evidence of       a wrong versus a right answer, by weighting confidence values for a
heuristic use [11, 12, 40, 70] or prospect theory [47, 48, 68]. We pro-     correct judgment significantly more than those for an incorrect judg-
pose that uncertainty visualization evaluators in particular have a re-     ment [20, 52].
sponsibility to attempt to elicit and explain why observed differences
                                                                                A second issue that was not explicitly addressed in any of the con-
between conditions might exist due to the complexity of uncertainty
                                                                            fidence evaluation paths we observed is that confidence reports are
comprehension and associated heuristics.
                                                                            known to be subject to considerable noise. For example, experience,
                                                                            effort, and information availability can lead to increased confidence
5.2.2    R2: Use Decision Frameworks for Realism & Control                  without comparable increases in accuracy [10, 75], confidence can be
An accuracy approach can establish, at base, how well a user can ex-        inconsistent even for the same task, and participants may report con-
tract a probability or other information necessary to make an informed      fidence using idiosyncratic methods like rounding values. This can
decision—but not that the user would know how to use that probabil-         mean that subjective confidence is not a direct linear function of sta-
ity to make an informed decision. If estimation error were the only         tistical confidence, and that trial order and other contextual factors
contributing factor in differences in decision quality between repre-       should be accounted for. We conclude that evaluators should clearly
sentations, designers should simply choose the most perceptually ef-        state their motivation for why they consider a certain confidence out-
fective uncertainty encoding (i.e., that which best achieves L2’s goal      come (e.g., higher confidence) to be superior and account for effects
of Increasing Accuracy) in all cases. However, different framings can       of binary accuracy and experience (e.g., trial number) on results.
affect influence whether users apply the information: e.g., frequency
framings can improve Bayesian reasoning about probability [25], per-            1 For learning rates to accurately predict how easy to learn different visual-
haps because frequency framings simplify certain calculations, or per-      izations are in the world, the conditions of decision making in the experimental
haps because people’s added familiarity with frequencies from daily         task should be a reasonable proxy for decision making in the real world. This
occurrences makes them feel more confident with the information.            is often difficult to achieve, making learning effects difficult to interpret.

<a id="p008-b003"></a>

<!-- p008-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:41:31 UTC from IEEE Xplore. Restrictions apply.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
HULLMAN ET AL.: IN PURSUIT OF ERROR: A SURVEY OF UNCERTAINTY VISUALIZATION EVALUATION911

<a id="p009-b002"></a>

<!-- p009-b002 -->
5.2.4   R4: Validate Elicited Responses                                       measure the effectiveness of a visualization by comparing how accu-
                                                                              rately or efficiently people can make judgments from multiple uncer-
Research outside of visualization describes how subjective accounts of
                                                                              tainty visualizations using standard survey style prompts, or they rely
uncertainty can be sensitive to the elicitation method as well as other
                                                                              on explicit value judgments, where users are asked directly whether
properties of a task context or user [72]. We observed several ways
                                                                              uncertainty visualization helped them to make a judgment. Further,
that evaluators in our sample sought to increase the validity of the
                                                                              we find a tendency toward confirmation over explanation, where the
responses they gathered. We highlight a few of these techniques to
                                                                              majority of evaluation studies do not try to explain the effects that they
encourage further use of validations for uncertainty visualization.
                                                                              find. We also find that simpler alternatives (No uncertainty or text
    Recognize the effects of priors: A few studies allowed for the fact
                                                                              representations) are considered in a minority of evaluations.
that users may have different prior beliefs or perceptions of an event
                                                                                 As others have noted, the accuracy-efficiency bias introduces a risk
for which uncertainty is shown by using pre- and post-visualization
                                                                              that the effects identified in a study will not persist in actual decision
questions. Herring et al. [35] assessed the change in participants’ be-
                                                                              tasks, where decision makers are incentivized by real world conse-
liefs about climate change after seeing a visualization. Ibrekk and
                                                                              quences. We note the importance of decision feedback for calibrat-
Morgan [41] examined whether explaining a visualization helped users
                                                                              ing decisions in experimental scenarios, and we describe how decision
better understand it relative to their base knowledge.
                                                                              paradigms informed by economic theory can help maintain both the
    Calibrate the user: In real life, uncertainty is often experienced        control and realism that others have argued is difficult to achieve in
as the percentage of the time when an event occurs versus does not            this context [55, 79].
(e.g., catching versus missing one’s daily bus when leaving the house
                                                                                 Further, evidence from other discplines suggests that people are not
at 8am). By definition, under uncertainty it is possible to make the
                                                                              very good at making accurate judgments about their own ability to
“right” decision (e.g., getting to the bus stop at the optimal time to min-
                                                                              make judgments under uncertainty [72]. Again, attempts to under-
imize average wait), but still experience the “wrong” outcome (e.g.,
                                                                              stand strategies could prove useful for surfacing when a person’s sense
missing the bus). Studies that measured decision quality against util-
                                                                              of confidence in themselves or a visualization is not aligned with the
ity theory were most likely to provide feedback on the uncertain out-
                                                                              evaluator’s expectations for use. We also suggest that how well a per-
comes they asked participants about [23, 48, 68], though some studies
                                                                              son can assess their performance should be explicitly modeled where
that used simpler error measures also incorporated feedback for real-
                                                                              possible, such as in using confidence reports [81].
ism and calibration [9].
                                                                                 Possible threats to validity arise when evaluators seek to confirm
    Use graphical elicitation to reduce noise: Graphical elicitation of       hypotheses without also seeking to understand and explain why dif-
subjective uncertainty has been shown to reduce error in subjective           ferences exist between uncertainty visualizations. One possible rea-
probability reporting [28]. Even when the elicited measure is not sub-        son for differences in user performance is that people use heuristics to
jective probability, graphical elicitation increases the likelihood that      simplify judgments from uncertainty (e.g., [26, 51, 50, 92]). Finally,
participants will process the visualization sufficiently to provide their     omitting simpler presentations makes it less likely that evaluators will
best guess. For example, in Belia et al.’s study of error bar interpreta-     realize when uncertainty information is unnecessary for the task, or
tion (a task that is known to be error prone) participants were asked to      being disregarded by the user. The evaluation paths we observed that
adjust the position visualized mean with an error bar so that it was just     attempt to uncover strategies used to respond to a task therefore pro-
statistically significantly different from another mean [2].                  vide an important lesson for future evaluation work.
    Allow for “no answer” as a valid response: A few evaluation                  The studies in our sample rarely, if ever, acknowledged differences
paths specifically allowed for the fact that a participant faced with un-     among alternative conceptions of uncertainty such as risk, ambiguity,
certain options might find the information too ambiguous to feel con-         and error. Research outside of visualization provides empirical evi-
fident enough to point to a difference [41, 73]. For example, Padilla et      dence for different conceptions of uncertainty held by decision mak-
al. [73] added an additional study in their work to allow for a judgment      ers [34, 36, 60, 65]) and may be informative for visualization re-
that multiple locations along a possible hurricane path were approxi-         searchers by prompting deeper consideration of what subjective un-
mately equal inexpected damage. This approach accounts for the case           certainty means in the context of visualization use.
where a user is not confident enough to point to a difference.
    Account for numeracy and other subject-specific characteris-              7   C ONCLUSION
tics: In addition to studies that explicitly evaluated how user charac-
teristics impacted use of a visualization (L3 - Understand interactions       We present a taxonomy of methods for evaluating uncertainty visual-
with user characteristics), multiple studies in our sample controlled         izations and describe the results of a qualitative analysis applying our
for ability covariates that could influence performance. For example,         framework to 86 publications which represent the state of uncertainty
evaluators measured numeracy (e.g., [32, 47, 53]), subjective numer-          visualization evaluation. Our results indicate that current evaluation
acy [73], and spatial ability (e.g., [53, 60]) using established scales.      practices focus primarily on a small set of Performance and User Expe-
Some evaluators also employed standard elicitation instruments. This          rience concerns in order to compare uncertainty visualization designs.
tended to occur in studies of Bayesian reasoning, where problems are          While these studies about Performance and User Experience tend to
well defined [47, 60], but we also observed evaluators using standard         seek “confirmatory” evidence for the superiority of some visualization
scales for aspects of user experience [79], such as the User Experience       technique, a much smaller set of studies addressing issues of Interpre-
Questionnaire [49].                                                           tation tend to be more “explanatory”. We characterize overall trends
    Compare to textual uncertainty: Another way in which eval-                in evaluation paths (i.e., the co-occurrence of codes in our taxonomy)
uators sought to increase the validity of their results was by com-           which indicate distinctions between methods for measuring Accuracy
paring uncertainty visualizations to text representations (e.g., [3, 20,      and Decision, as well as different methods for eliciting and assessing
39]) for added insight about why visualizations may or may not have           Subjective Confidence. Drawing on related research in judgment and
helped. Including text conditions also acknowledged the potential             decision making, we recommend specific steps that researchers should
for visualizations—and in particular uncertainty visualizations—to            take when designing uncertainty visualization evaluations in order to
present more information than needed relative to text [80].                   strive for valid and transparent findings.
                                                                              8   ACKNOWLEDGEMENTS
6   D ISCUSSION : S UBJECTIVE U NCERTAINTY AS C ONSTRUCT                      The first author thanks Dan G. Goldstein for feedback on the work.
Our results suggest a mismatch between how uncertainty comprehen-
sion is viewed in visualization evaluation versus how it is viewed in         R EFERENCES
fields that deal more directly with cognition (e.g., judgment and deci-        [1] J. C. Aerts, K. C. Clarke, and A. D. Keuper. Testing popular visual-
sion making). Our results suggest that visualization evaluators show               ization techniques for representing model uncertainty. Cartography and
either an accuracy-efficiency bias by assuming that it is sufficient to            Geographic Information Science, 30(3):249–261, 2003.

<a id="p009-b003"></a>

<!-- p009-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:41:31 UTC from IEEE Xplore. Restrictions apply.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
912                                               IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 25,                        NO. 1,   JANUARY 2019

<a id="p010-b002"></a>

<!-- p010-b002 -->
[2] M. Allais. Rational man‘s behavior in the presence of risk: Critique of the        distributions. Judgment and Decision Making, 9(1):1, 2014.
     postulates and axioms of the american school. Econometrica, 21(4):503–        [29] M. Greis, E. Avci, A. Schmidt, and T. Machulla. Increasing users’ con-
     46, 1953.                                                                          fidence in uncertain data by aggregating data from multiple sources. In
 [3] S. Belia, F. Fidler, J. Williams, and G. Cumming. Researchers misunder-            Proceedings of the 2017 CHI Conference on Human Factors in Comput-
     stand confidence intervals and standard error bars. Psychological meth-            ing Systems, pages 828–840. ACM, 2017.
     ods, 10(4):389, 2005.                                                         [30] H. Griethe and H. Schumann. The visualization of uncertain data: Meth-
 [4] A. M. Bisantz, S. S. Marsiglio, and J. Munch. Displaying uncertainty:              ods and problems. In SimVis, pages 143–156, 2006.
     Investigating the effects of display format and specificity. Human factors,   [31] T. Gschwandtnei, M. Bögl, P. Federico, and S. Miksch. Visual encodings
     47(4):777–796, 2005.                                                               of temporal uncertainty: A comparative user study. IEEE transactions on
 [5] S. Blenkinsop, P. Fisher, L. Bastin, and J. Wood. Evaluating the percep-           visualization and computer graphics, 22(1):539–548, 2016.
     tion of uncertainty in alternative visualization strategies. Cartographica:   [32] C. Hansen, S. Zidowitz, F. Ritter, C. Lange, K. Oldhafer, and H. K. Hahn.
     The International Journal for Geographic Information and Geovisualiza-             Risk maps for liver surgery. International journal of computer assisted
     tion, 37(1):1–14, 2000.                                                            radiology and surgery, 8(3):419–428, 2013.
 [6] G.-P. Bonneau, H.-C. Hege, C. R. Johnson, M. M. Oliveira, K. Potter,          [33] M. Harrower. Representing uncertainty: Does it help people make better
     P. Rheingans, and T. Schultz. Overview and state-of-the-art of uncertainty         decisions. Ithaca, NY: University Consortium for Geographic Informa-
     visualization. In Scientific Visualization, pages 3–27. Springer, 2014.            tion Science. Accessed October, 16:2012, 2003.
 [7] N. Boukhelifa, A. Bezerianos, T. Isenberg, and J.-D. Fekete. Evaluat-         [34] R. HASTIE. Concepts in judgment and decision research-anderson, bf,
     ing sketchiness as a visual variable for the depiction of qualitative un-          deane, dh, hammond, kr, mcclelland, gh, shanteau, jc, 1982.
     certainty. Visualization and Computer Graphics, IEEE Transactions on,         [35] J. Herring, M. S. VanDyke, R. G. Cummins, and F. Melton. Communi-
     18(12):2769–2778, 2012.                                                            cating local climate risks online through an interactive data visualization.
 [8] N. Boukhelifa and D. J. Duke. Uncertainty visualization: why might it              Environmental Communication, 11(1):90–105, 2017.
     fail? In CHI’09 Extended Abstracts on Human Factors in Computing              [36] R. M. Hogarth and H. Kunreuther. Decision making under ignorance:
     Systems, pages 4051–4056. ACM, 2009.                                               Arguing with yourself. Journal of Risk and Uncertainty, 10(1):15–36,
 [9] L. Cheong, S. Bleisch, A. Kealy, K. Tolhurst, T. Wilkening, and M. Duck-           1995.
     ham. Evaluating the impact of visualization of wildfire hazard upon           [37] I. Huff, C. Weigle, and D. C. Banks. Ensemble-space visualization im-
     decision-making under uncertainty. International Journal of Geographi-             proves perception of 3d state of molecular dynamics simulation. In Pro-
     cal Information Science, 30(7):1377–1404, 2016.                                    ceedings of the 5th symposium on Applied perception in graphics and
[10] J. Chung and G. Monroe. The effects of experience and task difficulty on           visualization, pages 163–170. ACM, 2008.
     accuracy and confidence assessments of auditors. Accounting & Finance,        [38] J. Hullman. Why evaluating uncertainty visualization is error prone.
     40(2):135–151, 2000.                                                               Proc. BELIV, 2016.
[11] M. Correll and M. Gleicher. Error bars considered harmful: Exploring al-      [39] J. Hullman, M. Kay, Y.-S. Kim, and S. Shrestha. Imagining replications:
     ternate encodings for mean and error. Visualization and Computer Graph-            Graphical prediction & discrete visualizations improve recall & estima-
     ics, IEEE Transactions on, 20(12):2142–2151, 2014.                                 tion of effect uncertainty. IEEE transactions on visualization and com-
[12] M. Correll, D. Moritz, and J. Heer. Value-suppressing uncertainty                  puter graphics, 24(1):446–456, 2018.
     palettes. In Proceedings of the 2018 CHI Conference on Human Factors          [40] J. Hullman, P. Resnick, and E. Adar. Hypothetical outcome plots outper-
     in Computing Systems. ACM, 2018. to appear.                                        form error bars and violin plots for inferences about reliability of variable
[13] M. Daradkeh. Exploring the use of an information visualization tool for            ordering. PLOS ONE, 10(11), 2015.
     decision support under uncertainty and risk. In Proceedings of the The        [41] H. Ibrekk and M. G. Morgan. Graphical communication of uncertain
     International Conference on Engineering & MIS 2015, page 41. ACM,                  quantities to nontechnical people. Risk analysis, 7(4):519–529, 1987.
     2015.                                                                         [42] J. P. Ioannidis. Why most published research findings are false. PLoS
[14] D. D. Davis and C. A. Holt. Experimental economics. Princeton univer-              Med, 2(8):e124, 2005.
     sity press, 1993.                                                             [43] P. Isenberg, T. Zuk, C. Collins, and S. Carpendale. Grounded evalua-
[15] S. Deitrick. Evaluating implicit visualization of uncertainty for public           tion of information visualizations. In Proceedings of the 2008 Workshop
     policy decision. Proceedings AutoCarto 2012, 2012.                                 on BEyond time and errors: novel evaLuation methods for Information
[16] M. Dong, L. Chen, L. Wang, X. Jiang, and G. Chen. Uncertainty visu-                Visualization, page 6. ACM, 2008.
     alization for mobile and wearable devices based activity recognition sys-     [44] T. Isenberg, P. Isenberg, J. Chen, M. Sedlmair, and T. Möller. A system-
     tems. International Journal of Human–Computer Interaction, 33(2):151–              atic review on the practice of evaluating visualization. IEEE Transactions
     163, 2017.                                                                         on Visualization and Computer Graphics, 19(12):2818–2827, 2013.
[17] X. Dong and C. C. Hayes. Uncertainty visualizations: Helping decision         [45] C. R. Johnson and A. R. Sanderson. A next step: Visualizing errors
     makers become more aware of uncertainty and its implications. Journal              and uncertainty. IEEE Computer Graphics and Applications, 23(5):6–
     of Cognitive Engineering and Decision Making, 6(1):30–56, 2012.                    10, 2003.
[18] J. Drugowitsch, R. Moreno-Bote, and A. Pouget. Relation between belief        [46] S. Joslyn and J. LeClerc. Decisions with uncertainty: the glass half full.
     and performance in perceptual decision making. PLoS ONE, 9(5), 2014.               Current Directions in Psychological Science, 22(4):308–315, 2013.
[19] Edelman. 2017 edelman trust barometer, 2017.                                  [47] S. Joslyn, K. Pak, D. Jones, J. Pyles, and E. Hunt. The effect of prob-
[20] L. D. Edwards and E. S. Nelson. Visualizing data certainty: A case                 abilistic information on threshold forecasts. Weather and Forecasting,
     study using graduated circle maps. Cartographic Perspectives, (38):19–             22(4):804–812, 2007.
     36, 2001.                                                                     [48] S. L. Joslyn and J. E. LeClerc. Uncertainty forecasts improve weather-
[21] D. Ellsberg. Risk, ambiguity, and the savage axioms. The quarterly                 related decisions and attenuate the effects of forecast error. Journal of
     journal of economics, pages 643–669, 1961.                                         experimental psychology: applied, 18(1):126, 2012.
[22] B. J. Evans. Dynamic display of spatial data-reliability: Does it benefit     [49] D. Kahneman. Prospect theory: An analysis of decisions under risk.
     the map user? Computers & Geosciences, 23(4):409–422, 1997.                        Econometrica, 47:278, 1979.
[23] M. Fernandes, L. Walls, S. Munson, J. Hullman, and M. Kay. Uncertainty        [50] D. Kahneman. Thinking, fast and slow. Macmillan, 2011.
     displays using quantile dotplots or cdfs improve transit decision-making.     [51] D. Kahneman, P. Slovic, and A. Tversky. editors, judgment under uncer-
     2018.                                                                              tainty: Heuristics and biases, 1982.
[24] T. I. O. for Standardization (ISO). Guide to the expression of uncertainty    [52] A. Kale, F. Nguyen, M. Kay, and J. Hullman. Animated hypothetical out-
     in measurement, 1997.                                                              come plots help untrained observers judge trends in ambiguous data. Vi-
[25] G. Gigerenzer and U. Hoffrage. How to improve bayesian reasoning with-             sualization and Computer Graphics, IEEE Transactions on, 25(1), 2019.
     out instruction: frequency formats. Psychological review, 102(4):684,         [53] M. Kay, T. Kola, J. R. Hullman, and S. A. Munson. When (ish) is my bus?
     1995.                                                                              user-centered visualizations of uncertainty in everyday, mobile predictive
[26] G. Gigerenzer, P. M. Todd, t. ABC Research Group, et al. Simple heuris-            systems. In Proceedings of the 2016 CHI Conference on Human Factors
     tics that make us smart. Oxford University Press, 1999.                            in Computing Systems, pages 5092–5103. ACM, 2016.
[27] C. Glymour. Why I am not a Bayesian. Citeseer, 1981.                          [54] C. Kinkeldey, A. M. MacEachren, M. Riveiro, and J. Schiewe. Evalu-
[28] D. G. Goldstein and D. Rothschild. Lay understanding of probability                ating the effect of visually represented geodata uncertainty on decision-

<a id="p010-b003"></a>

<!-- p010-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:41:31 UTC from IEEE Xplore. Restrictions apply.

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
HULLMAN ET AL.: IN PURSUIT OF ERROR: A SURVEY OF UNCERTAINTY VISUALIZATION EVALUATION913

<a id="p011-b002"></a>

<!-- p011-b002 -->
making: systematic review, lessons learned, and recommendations. Car-             (VIS’15). http://vdl. sci. utah. edu/publications/2015_vdmu_ecological-
     tography and Geographic Information Science, 44(1):1–21, 2017.                    validity, 2015.
[55] C. Kinkeldey, A. M. MacEachren, and J. Schiewe. How to assess visual         [80] C. Roessing, A. Reker, M. Gabb, K. Dietmayer, and H. P. Lensch. Intu-
     communication of uncertainty? a systematic review of geospatial uncer-            itive visualization of vehicle distance, velocity and risk potential in rear-
     tainty visualisation user studies. The Cartographic Journal, 51(4):372–           view camera applications. In Intelligent Vehicles Symposium (IV), 2013
     386, 2014.                                                                        IEEE, pages 579–585. IEEE, 2013.
[56] C. Kreuzmair, M. Siegrist, and C. Keller. High numerates count icons         [81] J. I. Sanders, B. Hangya, and A. Kepecs. Signatures of a Statistical Com-
     and low numerates process large areas in pictographs: Results of an eye-          putation in the Human Sense of Confidence. Neuron, 90:499–506, 2016.
     tracking study. Risk Analysis, 36(8):1599–1614, 2016.                        [82] J. Sanyal, S. Zhang, G. Bhattacharya, P. Amburn, and R. J. Moorhead. A
[57] H. Lam, E. Bertini, P. Isenberg, C. Plaisant, and S. Carpendale. Empirical        user study to compare four uncertainty visualization methods for 1d and
     studies in information visualization: Seven scenarios. IEEE transactions          2d datasets. Visualization and Computer Graphics, IEEE Transactions
     on visualization and computer graphics, 18(9):1520–1536, 2012.                    on, 15(6):1209–1218, 2009.
[58] M. Leitner and B. P. Buttenfield. Guidelines for the display of attribute    [83] L. J. Savage. The foundations of statistics. Courier Corporation, 1972.
     certainty. Cartography and Geographic Information Science, 27(1):3–14,       [84] B. Shneiderman and C. Plaisant. Strategies for evaluating information
     2000.                                                                             visualization tools: multi-dimensional in-depth long-term case studies.
[59] H. Li, C.-W. Fu, Y. Li, and A. Hanson. Visualizing large-scale uncertainty        In Proceedings of the 2006 AVI workshop on BEyond time and errors:
     in astrophysical data. IEEE transactions on visualization and computer            novel evaluation methods for information visualization, pages 1–7. ACM,
     graphics, 13(6):1640–1647, 2007.                                                  2006.
[60] R. Lipshitz and O. Strauss. Coping with uncertainty: A naturalistic          [85] A. L. Simpson, B. Ma, E. M. Vasarhelyi, D. P. Borschneck, R. E. Ellis,
     decision-making analysis. Organizational behavior and human decision              and A. James Stewart. Computation and visualization of uncertainty in
     processes, 69(2):149–163, 1997.                                                   surgical navigation. The International Journal of Medical Robotics and
[61] C. Lundström, P. Ljung, A. Persson, and A. Ynnerman. Uncertainty vi-              Computer Assisted Surgery, 10(3):332–343, 2014.
     sualization in medical volume rendering using probabilistic animation.       [86] M. Skeels, B. Lee, G. Smith, and G. G. Robertson. Revealing uncer-
     IEEE transactions on visualization and computer graphics, 13(6):1648–             tainty for information visualization. Information Visualization, 9(1):70–
     1655, 2007.                                                                       81, 2010.
[62] A. M. MacEachren. Visualizing uncertain information. Cartographic            [87] S. Tak, A. Toet, and J. van Erp. The perception of visual uncertainty
     Perspectives, (13):10–19, 1992.                                                   representation by non-experts. Visualization and Computer Graphics,
[63] A. M. MacEachren, A. Robinson, S. Hopper, S. Gardner, R. Murray,                  IEEE Transactions on, 20(6):935–943, 2014.
     M. Gahegan, and E. Hetzler. Visualizing geospatial information uncer-        [88] B. N. Taylor and C. E. Kuyatt. Guidelines for evaluating and expressing
     tainty: What we know and what we need to know. Cartography and                    the uncertainty of NIST measurement results. Technical report, 1994.
     Geographic Information Science, 32(3):139–160, 2005.                         [89] J. Thomson, E. Hetzler, A. MacEachren, M. Gahegan, and M. Pavel. A
[64] E. B. Mandinach and E. Gummer. Navigating the landscape of data lit-              typology for visualizing uncertainty. In Electronic Imaging 2005, pages
     eracy: It is complex. Washington, DC and Portland, OR: WestEd and                 146–157. International Society for Optics and Photonics, 2005.
     Education Northwest, 2012.                                                   [90] A. Tversky and D. Kahneman. Belief in the law of small numbers. Psy-
[65] J. G. March and J. P. Olsen. Ambiguity and choice in organizations.               chological bulletin, 76(2):105, 1971.
     Universitetsforlaget, 1979.                                                  [91] A. Tversky and D. Kahneman. Availability: A heuristic for judging fre-
[66] E. C. Merkle. Psychonomic Bulletin Review, 16(1):204–213, 2009.                   quency and probability. Cognitive psychology, 5(2):207–232, 1973.
[67] T. Munzner. A nested model for visualization design and validation. IEEE     [92] A. Tversky and D. Kahneman. Judgment under uncertainty: Heuristics
     transactions on visualization and computer graphics, 15(6), 2009.                 and biases. In Utility, probability, and human decision making, pages
[68] L. Nadav-Greenberg and S. L. Joslyn. Uncertainty forecasts improve                141–162. Springer, 1975.
     decision making among nonexperts. Journal of Cognitive Engineering           [93] J. Zhou, S. Z. Arshad, X. Wang, Z. Li, D. D. Feng, and F. Chen. End-user
     and Decision Making, 3(3):209–227, 2009.                                          development for interactive data analytics: Uncertainty, correlation and
[69] G. E. Newman and B. J. Scholl. Bar graphs depicting averages are per-             user confidence. IEEE Transactions on Affective Computing, 2017.
     ceptually misinterpreted: The within-the-bar bias. Psychonomic bulletin      [94] T. Zuk and S. Carpendale. Theoretical analysis of uncertainty visual-
     & review, 19(4):601–607, 2012.                                                    izations. In Visualization and data analysis 2006, volume 6060, page
[70] G. E. Newman and B. J. Scholl. Bar graphs depicting averages are per-             606007. International Society for Optics and Photonics, 2006.
     ceptually misinterpreted: The within-the-bar bias. Psychonomic bulletin
     & review, 19(4):601–607, 2012.
[71] NRC. Completing the forecast: Characterizing and communicating un-
     certainty for better decisions using weather and climate forecasts, 2006.
[72] A. O’Hagan, C. E. Buck, A. Daneshkhah, J. R. Eiser, P. H. Garthwaite,
     D. J. Jenkinson, J. E. Oakley, and T. Rakow. Uncertain judgements: elic-
     iting experts’ probabilities. John Wiley & Sons, 2006.
[73] L. M. Padilla, G. Hansen, I. T. Ruginski, H. S. Kramer, W. B. Thompson,
     and S. H. Creem-Regehr. The influence of different graphical displays on
     nonexpert decision making under uncertainty. Journal of Experimental
     Psychology: Applied, 21(1):37, 2015.
[74] P. W. Paese. Uncertainty assessment accuracy and resource allocation
     outcomes: an empirical test of a presumed relation. The Journal of psy-
     chology, 127(4):443–450, 1993.
[75] P. W. Paese and J. A. Sniezek. Influences on the appropriateness of confi-
     dence in judgment: Practice, effort, information, and decision-making.
     Organizational Behavior and Human Decision Processes, 48(1):100–
     130, 1991.
[76] A. T. Pang, C. M. Wittenbrink, and S. K. Lodha. Approaches to uncer-
     tainty visualization. The Visual Computer, 13(8):370–390, 1997.
[77] K. Potter. Uncertainty visualization and data references.
[78] K. Potter, P. Rosen, and C. R. Johnson. From quantification to visualiza-
     tion: A taxonomy of uncertainty visualization approaches. In Uncertainty
     Quantification in Scientific Computing, pages 226–249. Springer, 2012.
[79] P. S. Quinan, L. M. Padilla, S. H. Creem-Regehr, and M. Meyer. To-
     wards ecological validity in evaluating uncertainty. In Proceedings
     of Workshop on Visualization for Decision Making Under Uncertainty

<a id="p011-b003"></a>

<!-- p011-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:41:31 UTC from IEEE Xplore. Restrictions apply.
