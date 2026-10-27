---
id: "sedlmair2012design"
title: "Design Study Methodology: Reflections from the Trenches and the Stacks"
source_file: "The Art of Uncertain Topoplots/papers/sedlmair2012design.pdf"
source_sha256: "9a52296dac31671ee1b837ebf8ac5524dc3d9313ea35b27568ff0bcf2a83d5a8"
extraction_format: 1
---

# Design Study Methodology: Reflections from the Trenches and the Stacks — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 18, NO. 12, DECEMBER 2012                                                             2431

<a id="p001-b002"></a>

<!-- p001-b002 -->
Design Study Methodology:
                         Reflections from the Trenches and the Stacks
         Michael Sedlmair, Member, IEEE, Miriah Meyer, Member, IEEE, and Tamara Munzner, Member, IEEE

<a id="p001-b003"></a>

<!-- p001-b003 -->
Abstract—Design studies are an increasingly popular form of problem-driven visualization research, yet there is little guidance avail-
       able about how to do them effectively. In this paper we reflect on our combined experience of conducting twenty-one design studies,
       as well as reading and reviewing many more, and on an extensive literature review of other field work methods and methodologies.
       Based on this foundation we provide definitions, propose a methodological framework, and provide practical guidance for conducting
       design studies. We define a design study as a project in which visualization researchers analyze a specific real-world problem faced
       by domain experts, design a visualization system that supports solving this problem, validate the design, and reflect about lessons
       learned in order to refine visualization design guidelines. We characterize two axes—a task clarity axis from fuzzy to crisp and an
       information location axis from the domain expert’s head to the computer—and use these axes to reason about design study contribu-
       tions, their suitability, and uniqueness from other approaches. The proposed methodological framework consists of 9 stages: learn,
       winnow, cast, discover, design, implement, deploy, reflect, and write. For each stage we provide practical guidance and outline poten-
       tial pitfalls. We also conducted an extensive literature survey of related methodological approaches that involve a significant amount
       of qualitative field work, and compare design study methodology to that of ethnography, grounded theory, and action research.
       Index Terms—Design study, methodology, visualization, framework.

<a id="p001-b004"></a>

<!-- p001-b004 -->
1   I NTRODUCTION
Over the last decade design studies have become an increasingly pop-            of visualization a good idea at all? How should we go about collab-
ular approach for conducting problem-driven visualization research.             orating with experts from other domains? What are pitfalls to avoid?
Design study papers are explicitly welcomed at several visualization            How and when should we write a design study paper? These questions
venues as a way to explore the choices made when applying visualiza-            motivated and guided our methodological work and we present a set
tion techniques to a particular application area [55], and many exem-           of answers in this paper.
plary design studies now exist [17, 34, 35, 56, 94]. A careful reading             We conducted an extensive literature review in the fields of human
of these papers reveals multiple steps in the process of conducting a           computer interaction (HCI) [7, 8, 9, 12, 16, 19, 20, 21, 22, 25, 26,
design study, including analyzing the problem, abstracting data and             27, 28, 29, 30, 31, 38, 47, 57, 63, 64, 65, 83] and social science [6,
tasks, designing and implementing a visualization solution, evaluating          14, 18, 24, 32, 62, 81, 87, 93] in hopes of finding methodologies that
the solution with real users, and writing up the findings.                      we could apply directly to design study research. Instead, we found
   And yet there is a lack of specific guidance in the visualization liter-     an intellectual territory full of quagmires where the very issues we
ature that describes holistic methodological approaches for conducting          ourselves struggled with were active subjects of nuanced debate. We
design studies—currently only three paragraphs exist [49, 55]. The              did not find any off-the-shelf answers that we consider suitable for
relevant literature instead focuses on methods for designing [1, 42, 66,        wholesale assimilation; after careful gleaning we have synthesized a
79, 82, 90, 91] and evaluating [13, 33, 39, 50, 68, 69, 76, 80, 85, 86, 95]     framing of how the concerns of visualization design studies both align
visualization tools. We distinguish between methods and methodology             with and differ from several other qualitative approaches.
with the analogy of cooking; methods are like ingredients, whereas                 This paper is the result of a careful analysis of both our experi-
methodology is like a recipe. More formally, we use Crotty’s defini-            ences in the “trenches” while doing our own work, and our foray into
tions that methods are “techniques or procedures” and a methodology             the library “stacks” to investigate the ideas of others. We provide, for
is the “strategy, plan of action, process, or design lying behind the           the first time, a discussion about design study methodology, includ-
choice and use of particular methods” [18].                                     ing a clear definition of design studies as well as practical guidance
   From our personal experience we know that the process of con-                for conducting them effectively. We articulate two axes, task clarity
ducting a design study is hard to do well and contains many potential           and information location, to reason about what contributions design
pitfalls. We make this statement after reflecting on our own design             studies can make, when they are an appropriate research device, and
studies, in total 21 between the 3 authors, and our experiences of re-          how they are unique from other approaches. For practical guidance we
viewing many more design study papers. We consider at least 3 of our            propose a process for conducting design studies, called the nine-stage
own design study attempts to be failures [51, 54, 72]; the other 18             framework, consisting of the following stages: learn, winnow, cast,
were more successful [4, 5, 10, 40, 43, 44, 45, 46, 52, 53, 67, 70, 71,         discover, design, implement, deploy, reflect, and write. At each stage
73, 74, 75, 77, 78].                                                            we identify pitfalls that can endanger the success of a design study, as
   In the process of conducting these design studies we grappled with           well as strategies and methods to help avoid them. Finally, we contrast
many recurring questions: What are the steps you should perform, and            design study methodology to related research methodologies used in
in what order? Which methods work, and which do not? What are the               other fields, in particular those used or discussed in HCI, and elaborate
potential research contributions of a design study? When is the use             on similarities and differences. In summary, the main contributions of
                                                                                this paper are:
                                                                                   • definitions for design study methodology, including articulation
• Michael Sedlmair and Tamara Munzner are with the University of British               of the task clarity and information location axes;
  Columbia, e-mail: [msedl,tmm]@cs.ubc.ca.                                         • a nine-stage framework for practical guidance in conducting de-
• Miriah Meyer is with the University of Utah, e-mail: miriah@cs.utah.edu.             sign studies and collaborating with domain experts;
 Manuscript received 31 March 2012; accepted 1 August 2012; posted online          • 32 identified pitfalls occurring throughout the framework;
14 October 2012; mailed on 5 October 2012.                                         • a comparison of design study methodology to that of ethnogra-
For information on obtaining reprints of this article, please send                     phy, grounded theory and action research.
e-mail to: tvcg@computer.org.                                                      We anticipate that a wide range of readers will find this paper use-
                                                                                ful, including people new to visualization research, researchers expe-
                                              1077-2626/12/$31.00 © 2012 IEEE   Published by the IEEE Computer Society

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
2432                              IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 18, NO. 12, DECEMBER 2012

<a id="p002-b002"></a>

<!-- p002-b002 -->
rienced in technique-driven visualization work who are transitioning              • analysis: Design studies require analysis to translate tasks and
 to problem-driven work, experienced design-study researchers seek-                  data from domain-specific form into abstractions that a user can
 ing comparison with other methodologies, reviewers of design study                  address through visualization.
 papers, and readers outside of the visualization community who are                • real-world problem: At the heart of a design study is a contri-
 considering when to employ visualization versus full automation.                    bution toward solving a real-world problem: real users and real
                                                                                     data are mandatory.
 2     R ELATED W ORK                                                              • design: Our definition of design is the creative process of search-
 Only two sources discuss design study methodology, and both are                     ing through a vast space of possibilities to select one of many
 brief. The original call for design study papers [55] contains only a               possible good choices from the backdrop of the far larger set
 paragraph about expectations, while Munzner [49] elaborates slightly                of bad choices. Successful design typically requires the explicit
 further by defining the critical parts of a design study. Neither of                consideration of multiple alternatives and a thorough knowledge
 these sources provide specific methodological and practical guidance                of the space of possibilities.
 on how to conduct design studies.                                                 • validation: A crucial aspect of our definition is the validation of
    There is, however, a rich source of papers elaborating on models                 the problem analysis and the visualization design in the broad
 and methods, particularly evaluation methods, that pertain to design                sense of Munzner’s nested model [50]. We advocate choosing
 studies. Some of the most relevant for design studies include the in-               from a wide variety of methods according to their suitability for
 vestigation of Lloyd and Dykes into the early steps of problem anal-                evaluating the different framework stages, including justification
 ysis and paper prototyping in a longitudinal geovisualization design                according to known principles, qualitative analysis of results, in-
 study, providing interesting insights into which human-centered meth-               formal expert feedback, and post-deployment field studies.
 ods work and which do not [42]; van Wijk’s model for understanding                • reflection: Design becomes research when reflection leads to im-
 and reasoning about the “value of visualization” [88] that provides a               proving the process of design itself, by confirming, refining, re-
 lens on the interplay between data, user, and visualization; Amar and               jecting, or proposing guidelines.
 Stasko’s guidance for problem-driven visualization research by identi-           In this paper, we propose a specific process for conducting design
 fying and articulating gaps between the representation and the analysis       studies, the nine-stage framework, described in detail in Section 4.
 of data, and provide precepts for bridging these gaps [3]; and Pretorius      We offer it as a scaffold to provide guidance for those who wish to
 and van Wijk’s arguments for the importance of considering not just           begin conducting design studies, and as a starting point for further
 the needs of the user, but also the structure and semantics of the data       methodological discussion; we do not imply that our framework is the
 when designing a visualization tool [61].                                     only possible effective approach.
    The majority of other related work on methods deals with the ques-            Collaboration between visualization researchers and domain ex-
 tion of how to evaluate visualization designs and tools in real-world         perts is a fundamental and mandatory part of the nine-stage frame-
 settings. Carpendale provides an overview of relevant validation meth-        work; in the rest of the paper we distinguish between these roles.
 ods in visualization [13] while Munzner provides guidance on when to          While strong problem-driven work can result from situations where
 use which method [50]. Lam et al. conduct a broad literature survey of        the same person holds both of these roles, we do not address this case
 more than 800 visualization papers and derive seven guiding scenar-           further here. The domain expert role is crucial; attempts to simply ap-
 ios describing visualization evaluation [39]. Sedlmair et al. provide         ply techniques without a thorough understanding of the domain con-
 practical advice of how to validate visualizations in large company           text can fail dramatically [92].
 settings, one of many settings in which a design study may be con-               Conducting a design study using the nine-stage framework can lead
 ducted [76]. Finally, many proposed evaluation methods address the            to three types of design study research contributions, the first of
 specific needs of validating the usefulness of visualization tools such       which is a problem characterization and abstraction. Characterizing
 as the multidimensional in-depth long-term case study approach [80],          a domain problem through an abstraction into tasks and data has mul-
 the insight-based method [68, 69], and grounded evaluation [33].              tiple potential benefits. First, this characterization is a crucial step in
    While these papers are excellent resources for specific methods ap-        achieving shared understanding between visualization researchers and
 plicable to design studies, the goal of this paper is a higher level artic-   domain experts. Second, it establishes the requirements against which
 ulation of a methodology for conducting design studies.                       a design proposal should be judged. It can thus be used not only by
                                                                               the researchers conducting the design study, but also by subsequent
 3     C HARACTERIZING D ESIGN S TUDIES                                        researchers who might propose a different solution to the same prob-
 This section defines key terms, proposes two axes that clarify the po-        lem. Finally, it can enable progress towards a fully automatic approach
 tential contributions of design studies, and uses these axes to charac-       that does not require a human in the loop by causing relevant domain
 terize their contributions and suitability.                                   knowledge to be articulated and externalized. We thus argue for con-
                                                                               sidering this characterization and abstraction as a first-class contribu-
 3.1    Definitions                                                            tion of a design study.
 Design studies are one particular form of the more general category              A validated visualization design is the second type of possible con-
 of problem-driven research, where the goal is to work with real users         tribution. A visualization tool is a common outcome of a design study
 to solve their real-world problems. At the other end of the spectrum          project. Our definition of design study requires that the tool must be
 is technique-driven research, where the goal is to develop new and            appropriately validated with evidence that it does in fact help solve
 better techniques without necessarily establishing a strong connection        the target domain problem and is useful to the experts. The validated
 to a particular documented user need. The focus in this paper is on           design of a visualization tool or system is currently the most common
 problem-driven research, but in the larger picture we argue that the          form of design study contribution claim.
 field of visualization benefits from a mix of both to maintain vitality.         The third type of contribution is the reflection on the design study
 We define a design study as follows:                                          and its retrospective analysis in comparison to other related work.
                                                                               Lessons learned can improve current guidelines, for example visu-
        A design study is a project in which visualization re-                 alization and interaction design guidelines, evaluation guidelines, or
        searchers analyze a specific real-world problem faced by               process guidelines.
        domain experts, design a visualization system that sup-                   A design study paper is a paper about a design study. Reviewers
        ports solving this problem, validate the design, and reflect           of design study papers should consider the sum of contributions of all
        about lessons learned in order to refine visualization design          three types described above, rather than expecting that a single design
        guidelines.                                                            study paper have strong contributions of all three. For instance, a de-
                                                                               sign study with only a moderate visual encoding design contribution
 Our definition implies the following:                                         might have an interesting and strong problem characterization and ab-

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
SEDLMAIR ET AL: DESIGN STUDY METHODOLOGY: REFLECTIONS FROM THE TRENCHES AND THE STACKS                                                                  2433

<a id="p003-b002"></a>

<!-- p003-b002 -->
straction, and a decent reflection on guidelines. On the other hand, a

<a id="p003-b003"></a>

<!-- p003-b003 -->
crisp
very thorough design and evaluation might counterbalance a moder-                                                                         ALGORITHM
ate problem characterization or reflection. Our definitions imply that                                                                   AUTOMATION
                                                                                                                                            POSSIBLE

<a id="p003-b004"></a>

<!-- p003-b004 -->
NOT ENOUGH DATA
a design study paper does not require a novel algorithm or technique

<a id="p003-b005"></a>

<!-- p003-b005 -->
TASK CLARITY
contribution. Instead, a proposed visualization design is often a well-
justified combination of existing techniques. While a design study
paper is the most common outcome of a design study, other types of                                                      DESIGN STUDY
research papers are also possible such as technique or algorithm, eval-                                                 METHODOLOGY
uation, system, or even a pure problem characterization paper [50].
                                                                                                                        SUITABLE
3.2   Task Clarity and Information Location Axes
We introduce two axes, task clarity and information location, as shown
in Figure 1. The two axes can be used as a way to think and reason

<a id="p003-b006"></a>

<!-- p003-b006 -->
fuzzy
about problem characterization and abstraction contributions which,
although common in design studies, are often difficult to capture and
communicate.                                                                                     head                                        computer
   The task clarity axis depicts how precisely a task is defined, with                                                INFORMATION LOCATION
fuzzy on the one side and crisp on the other. An example of a crisp
task is “buy a train ticket”. This task has a clearly defined goal with a     Fig. 1. The task clarity and information location axes as a way to analyze
known set of steps. For such crisp tasks it is relatively straightforward     the suitability of design study methodology. Red and blue areas mark
to design and evaluate solutions. Although similarly crisp low-level          regions where design studies may be the wrong methodological choice.
visualization tasks exist, such as correlate, cluster or find outliers [2],
reducing a real-world problem to these tasks is challenging and time
consuming. Most often, visualization researchers are confronted with          ways to identify this region when winnowing potential collaborations
complex and fuzzy domain tasks. Data analysts might, for instance,            in Section 4.1.2.
be interested in understanding the evolutionary relationship between              The blue triangular area on the top right is also dangerous terri-
genomes [45], comparing the jaw movement between pigs [34], or the            tory, but for the opposite reason. Visualization might be the wrong
relationship between voting behavior and ballot design [94]. These            approach here because the task is crisply defined and enough infor-
domain tasks are inherently ill-defined and exploratory in nature. The        mation is computerized for the design of an automatic solution. Con-
challenge of evaluating solutions against such fuzzy tasks is well-           versely, we can use this area to define when an automatic solution is
understood in the information visualization community [59].                   not possible; automatic algorithmic solutions such as machine learning
   Task clarity could be considered the combination of many other fac-        techniques make strong assumptions about crisp task clarity and avail-
tors; we have identified two in particular. The scope of the task is one:     ability of all necessary information. Because many real-world data
the goal in a design study is to decompose high-level domain tasks of         analysis problems have not yet progressed to the crisp/computer ends
broad scope into a set of more narrow and low-level abstract tasks.           of the axes, we argue that design studies can be a useful step towards
The stability of the task is another: the task might change over the          a final goal of a fully automatic solution.
course of the design study collaboration. It is common, and in fact               The remaining white area indicates situations where design studies
a sign of success, for the tasks of the experts to change after the re-       are a good approach. This area is large, hinting that different design
searcher introduces visualization tools, or after new abstractions cause      studies will have different characteristics. For example, the regions
them to re-conceptualize their work. Changes from external factors,           towards the top left at the beginning of both axes require significant
however, such as strategic priority changes in a company setting or           problem characterization and data abstraction before a visualization
research focus changes in an academic setting, can be dangerous.              can be designed—a paper about such a project is likely to have a sig-
   The second axis is the information location, characterizing how            nificant contribution of this type. Design studies that are farther along
much information is only available in the head of the expert versus           both axes will have a stronger focus on visual encoding and design
what has been made explicit in the computer. In other words, when             aspects, with a more modest emphasis on the other contribution types.
considering all the information required to carry out a specific task,        These studies may also make use of combined automatic and visual
this axis characterizes how much of the information and context sur-          solutions, a common approach in visual analytics [84].
rounding the domain problem remains as implicit knowledge in the                  The axes can also associate visualization with, and differentiate it
expert’s head, versus how much data or metadata is available in a dig-        from other fields. While research in some subfields of HCI, such as
ital form that can be incorporated into the visualization.                    human factors, deal with crisply defined tasks, several other subfields,
   We define moving forward along either of these axes as a design            such as computer supported cooperative work and ubiquitous comput-
study contribution. Note that movement along one axis often causes            ing, face similar challenges in terms of ill-defined and fuzzy tasks.
movement along the other: increased task clarity can facilitate a bet-        They differ from visualization, however, because they do not require
ter understanding of derived data needs, while increased information          significant data analysis on the part of the target users. Conversely,
articulation can facilitate a better understanding of analysis needs [61].    fields such as machine learning and statistics focus on data analysis,
                                                                              but assume crisply defined tasks.
3.3   Design Study Methodology Suitability
The two axes characterize the range of situations in which design study       4          N INE -S TAGE F RAMEWORK
methodology is a suitable choice. This rough characterization is not          Figure 2 shows an overview of our nine-stage framework with the
intended to define precise boundaries, but rather for guiding the under-      stages organized into three categories: a precondition phase that de-
standing of when, and when not, to use design studies for approaching         scribes what must be done before starting a design study; a core phase
certain domain problems.                                                      presenting the main steps of conducting a design study; and an analy-
   Figure 1 shows how design studies fall along a two-dimensional             sis phase depicting the analytical reasoning at the end. For each stage
space spanned by the task clarity and the information location axes.          we provide practical advice based on our own experience, and out-
The red and the blue areas at the periphery represent situations for          line pitfalls that point to common mistakes. Table 1 at the end of this
which design studies may be the wrong methodological choice. The              section summarizes all 32 pitfalls (PF).
red vertical area on the left indicates situations where no or very lit-         The general layout of the framework is linear to suggest that one
tle data is available. This area is a dangerous territory because an          stage follows another. Certain actions rely on artifacts from earlier
effective visualization design is not likely to be possible; we provide       stages—deploying a system is, for instance, not possible without some

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
2434                             IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 18, NO. 12, DECEMBER 2012

<a id="p004-b002"></a>

<!-- p004-b002 -->
learn       winnow         cast       discover     design      implement      deploy       reflect        write

<a id="p004-b003"></a>

<!-- p004-b003 -->
PRECONDITION                                           CORE                               ANALYSIS
                       personal validation                          inward-facing validation              outward-facing validation

<a id="p004-b004"></a>

<!-- p004-b004 -->
Fig. 2. Nine-stage design study methodology framework classified into three top-level categories. While outlined as a linear process, the overlapping
 stages and gray arrows imply the iterative dynamics of this process.

<a id="p004-b005"></a>

<!-- p004-b005 -->
kind of implementation—and it is all too common to jump forward             conducting a first design study. Nevertheless, starting a design study
 over stages without even considering or starting them. This forward         without enough prior knowledge of the visualization literature is a pit-
 jumping is the first pitfall that we identify (PF-1). A typical example     fall (PF-2). This pitfall is particularly common when researchers who
 of this pitfall is to start implementing a system before talking to the     are expert in other fields make their first foray into visualization [37];
 domain experts, usually resulting in a tool that does not meet their        we have seen many examples of this as reviewers.
 specific needs. We have reviewed many papers that have fatal flaws
 due to this pitfall.                                                        4.1.2 Winnow: Select Promising Collaborations
     The linearity of the diagram, however, does not mean that previous
                                                                             The goal of this stage is to identify the most promising collaborations.
 stages must be fully completed before advancing to the next. Many
                                                                             We name this strategy winnowing, suggesting a lengthy process of sep-
 of the stages often overlap and the process is highly iterative. In fact,
                                                                             arating the good from the bad and implying that careful selection is
 jumping backwards to previous stages is the common case in order
                                                                             necessary: not all potential collaborations are a good match. Prema-
 to gradually refine preliminary ideas and understanding. For exam-
                                                                             ture commitment to a collaboration is a very common pitfall that can
 ple, we inevitably always find ourselves jumping backwards to refine
                                                                             result in much unprofitable time and effort (PF-3).
 the abstractions while writing a design study paper. The overlapping
                                                                                We suggest talking to a broad set of people in initial meetings, and
 stages and gray arrows in Figure 2 imply these dynamics.
                                                                             then gradually narrowing down this set to a small number of actual col-
     Validation crosscuts the framework; that is, validation is important
                                                                             laborations based on the considerations that we discuss in detail below.
 for every stage, but the appropriate validation is different for each. We
                                                                             Because this process takes considerable calendar time, it should begin
 categorize validation following the three framework phases. In the pre-
                                                                             well before the intended start date of the implement stage. Initial meet-
 condition stage, validation is personal: it hinges on the preparation of
                                                                             ings last only a few hours, and thus can easily occur in parallel with
 the researcher for the project, including due diligence before commit-
                                                                             other projects. Only some of these initial meetings will lead to further
 ting to a collaboration. In the core phase, validation is inward-facing:
                                                                             discussions, and only a fraction of these will continue with a closer
 it emphasizes evaluating findings and artifacts with domain experts. In
                                                                             collaboration in the form of developing requirements in the discover
 the analysis phases, validation is outward-facing: it focuses on justi-
                                                                             stage. Finally, these closer collaborations should only continue on into
 fying the results of a design study to the outside world, including the
                                                                             the design stage if there is a clear match between the interests of the
 readers and reviewers of a paper. Munzner’s nested model elaborates
                                                                             domain experts and the visualization researcher. We recommend com-
 further on how to choose appropriate methods at each stage [50].
                                                                             mitting to a collaboration only after this due diligence is conducted; in
 4.1   Precondition Phase                                                    particular, decisions to seek grant funding for a collaborative project
                                                                             after only a single meeting with a domain expert are often premature.
 The precondition stages of learn, winnow, and cast focus on prepar-         We also suggest maintaining a steady stream of initial meetings at all
 ing the visualization researcher for the work, and finding and filtering    times. In short, our strategy is: talk with many but stay with few, start
 synergistic collaborations with domain experts.                             early, and always keep looking.
                                                                                The questions to ask during the winnow stage are framed as rea-
 4.1.1 Learn: Visualization Literature                                       sons to decide against, rather than for, a potential collaboration. We
 A crucial precondition for conducting an effective design study is a        choose this framing because continued investigation has a high time
 solid knowledge of the visualization literature, including visual en-       cost for both parties, so the decision to pull out is best made as early as
 coding and interaction techniques, design guidelines, and evaluation        possible. Two of our failure cases underline the cost of late decision-
 methods. This visualization knowledge will inform all later stages: in      making: the PowerSetViewer [54] design study lasted two years with
 the winnow stage it guides the selection of collaborators with interest-    four researchers, and WikeVis [72] half a year with two researchers.
 ing problems relevant to visualization; in the discover stage it focuses    Both projects fell victim to several pitfalls in the winnow and cast
 the problem analysis and informs the data and task abstraction; in the      stages, as we describe below; if we had known what questions to con-
 design stage it helps to broaden the consideration space of possible        sider at these early stages we could have avoided much wasted effort.
 solutions, and to select good solutions over bad ones; in the imple-           The questions are categorized into practical, intellectual, and inter-
 ment stage knowledge about visualization toolkits and algorithms al-        personal considerations. We use the pronouns I for the visualization
 lows fast development of stable tool releases; in the deploy stage it       researcher, and they for the domain experts.
 assists in knowing how to properly evaluate the tool in the field; in the
 reflect stage, knowledge of the current state-of-the-art is crucial for     P RACTICAL CONSIDERATIONS : These questions can be easily
 comparing and contrasting findings; and in the write stage, effective       checked in initial meetings.
 framing of contributions relies on knowledge of previous work.              Data: Does real data exist, is it enough, and can I have it?
    Of course, a researcher’s knowledge will gradually grow over time        Some potential collaborators will try to initiate a project before real
 and encyclopedic knowledge of the field is not a requirement before         data is available. They may promise to have the data “soon”, or “next

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
SEDLMAIR ET AL: DESIGN STUDY METHODOLOGY: REFLECTIONS FROM THE TRENCHES AND THE STACKS                                                               2435

<a id="p005-b002"></a>

<!-- p005-b002 -->
week/month/term”; these promises should be considered as a red flag          I NTERPERSONAL CONSIDERATIONS : Interpersonal considera-
for design studies (PF-4). Data gathering and generation is prone to         tions, although easy to overlook, play an important role in the success
delays, and the over-optimistic ambitions of potential collaborators         or failure of a design study (PF-11). In anthropology and ethnography,
can entice visualization researchers to move forward using inappropri-       the establishment of rapport between a researcher and study partici-
ate “toy” or synthetic data as a stopgap until real data becomes avail-      pants is seen as a core factor for successful field work [24, 63]. While
able. Other aspects of this pitfall are that not enough of the data exists   this factor is less crucial in design studies, we have found that rapport
in digital form to adequately solve the problem, or that the researcher      and project success do go hand in hand.
cannot gain access to the data.
   In our failed PowerSetViewer [54] design study, for instance, real        4.1.3 Cast: Identify Collaborator Roles
data from collaborators did not materialize until after the design and       The awareness of different roles in collaborations is a common theme
implement phases were already completed. While waiting for real              in other research areas: the user-centered design literature, for in-
data, we invested major resources into developing an elegant and             stance, distinguishes many user, stakeholder and researcher roles [7,
highly scalable algorithm. Unfortunately, we did not realize that this       9, 38, 60], while the anthropology literature distinguishes key actors
algorithm was targeted at the wrong abstraction until we tested it on        who connect researchers with other key people and key informants
real rather than synthetic data.                                             who researchers can easily learn from [6]. Informed by these ideas,
Engagement: How much time do they have for the project, and how              we define roles that we repeatedly observed in design studies.
much time do I have? How much time can I spend in their environ-                 There are two critical roles in a design study collaboration. The
ment?                                                                        front-line analyst is the domain expert end user doing the actual data
Design studies require significant time commitments from both do-            analysis, and is the person who will use the new visualization tool.
main experts and visualization researchers. Although there are ways          The gatekeeper is the person with the power to approve or block the
to reduce the demands on domain experts [76], if there is not enough         project, including authorizing people to spend time on the project and
time available for activities such as problem analysis, design discus-       release of the data. In an academic environment, the front-line analysts
sions, and field evaluations, then success is unlikely (PF-5). Some of       are often graduate students or postdocs, with the faculty member who
these activities also strongly benefit when they can be conducted in situ    is the principal investigator of a lab serving as the gatekeeper. While it
at the workplace of the collaborators, as we discuss with RelEx [74].        is common to identify additional front-line analysts over the course of
                                                                             a project, starting a design study before contact is established with at
I NTELLECTUAL CONSIDERATIONS : These important questions                     least one front-line analyst and approval is obtained from the central
can be hard to conclusively answer early on in a design study, but they      gatekeeper is a major pitfall (PF-12).
should be kept in mind during initial meetings. It is also useful to refer       We distinguish roles from people; that is, a single person might hold
back to these questions later when monitoring progress; if a negative        multiple roles at once. However, the distribution of roles to people can
answer is discovered, it might be wise to pull out of the collaboration.     be different for different design studies—expecting them to be same
Problem: Is there an interesting visualization research question in this     for each project is another pitfall (PF-13). After several projects where
problem?                                                                     the front-line analyst was also the gatekeeper, we were surprised by a
This question points to three possible pitfalls. First, the researcher       situation where a gatekeeper objected to central parts of the validation
might be faced with a problem that can be automated (PF-6). Second,          in a design study paper extremely late in the publication process, de-
the problem, or its solution, may not interest the researcher (PF-7). Or     spite the approval from several front-line analysts [46]. The situation
third, the problem requires engineering, not research, to solve (PF-8).      was resolved to everyone’s satisfaction by anonymizing the data, but
In one of our projects, we identified this latter pitfall after several      sharper awareness of the split between these roles on our part would
months of requirements analysis in the discovery stage. We provided          have led us to consult directly with the gatekeeper much earlier.
the domain experts with a concise list of suggestions for an engineer-           Several additional roles are useful, but not crucial, and thus do not
ing solution to their problem, and both sides parted ways satisfied.         need to be filled before starting a project. Connectors are people who
                                                                             connect the visualization researcher to other interesting people, usu-
Need: Is there a real need or are existing approaches good enough?           ally front-line analysts. Translators are people who are very good in
If current approaches are sufficient then domain experts are unlikely to     abstracting their domain problems into a more generic form, and relat-
go to the effort of changing their workflow to adopt a new tool, mak-        ing them to larger-context domain goals. Co-authors are part of the
ing validation of the benefits of a proposed design difficult to acquire     paper writing process; often it is not obvious until the very end of the
(PF-9).                                                                      project which, if any, collaborators might be appropriate for this role.
Task: Am I addressing a real task? How long will the need persist?               We have identified one role that should be treated with great care:
How central is the task, and to how many people?                             fellow tool builders. Fellow tool builders often want to augment a
It is risky to devote major resources to designing for a task of only pe-    tool they have designed with visualization capabilities. They may not
ripheral relevance to the domain experts, especially if there are only a     have had direct contact with front-line analysts themselves, however,
few of them. Full validation of the design’s effectiveness will be diffi-    and thus may not have correctly characterized the visualization needs.
cult or impossible if they spend only a small fraction of their time per-    Mistaking fellow tool builders for front-line analysts is thus a pitfall
forming the task, or if the task becomes moot before the design process      (PF-14); it was also a major contributing factor in the PowerSetViewer
is complete (PF-10). We encountered this pitfall with Constellation          failure case [54].
when the computational linguists moved on to other research ques-                At its worst, this pitfall can cascade into triggering most of the other
tions, away from the task the tool was designed to support, before the       winnow-stage pitfalls. In one of our other failure cases, WikeVis [72],
implementation was complete. We were able to salvage the project by          we prematurely committed to a collaboration with a fellow tool builder
focusing on the contributions of our work in terms of the abstractions       (PF-3, PF-12, PF-14). Excited about visualization, he promised to
developed, the techniques proposed, and the lessons learned [52, 48].        connect us “promptly” to front-line analysts with data. When we met
We also brushed against this pitfall with MizBee when the first domain       the gatekeeper, however, we discovered that no real data was available
expert finished the targeted parts of her biological analysis before the     yet (PF-4), and that we would not be allowed to meet with the ex-
tool was ready for use; finding a second domain expert who was just          tremely busy front-line analysts until we had a visualization tool ready
beginning that analysis phase, however, yielded strong validation re-        for them to use (PF-5). We tried to rescue the project by immediately
sults for the design study [45]. These examples also point to how a          implementing a software prototype based on the vague task descrip-
design study resulting in a tool aimed at a small group of domain ex-        tion of the fellow tool builder and using synthetic data we generated
perts can still lead to strong contributions. In this sense, the value of    ourselves, skipping over our planned problem analysis (PF-1). The
design studies differs from van Wijk’s definition of the value of visu-      resulting ineffective prototype coupled with a continued unavailability
alization which advocates for targeting larger numbers of users [88].        of real data led us to pull out of the project after months of work.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
2436                            IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 18, NO. 12, DECEMBER 2012

<a id="p006-b002"></a>

<!-- p006-b002 -->
4.2 Core Phase                                                             (PF-18). Working with experts in many different domains allows a
 The core of a design study contains four stages: discover, design, im-     design study researcher to gain experience in identifying this sweet
 plement, and deploy.                                                       spot and hence become more effective at rapid problem characteriza-
                                                                            tion and abstraction. We note that this stance aligns well with newer
 4.2.1 Discover : Problem Characterization & Abstraction                    theoretical approaches in HCI [64], and we will return to this debate
                                                                            in Section 5.
 In a design study it is essential to learn about the target domain and
 the practices, needs, problems, and requirements of the domain ex-
                                                                            4.2.2 Design: Data Abstraction, Visual Encoding & Interaction
 perts in order to discover if and how visualization can enable insight
 and discovery. It is a pitfall to focus only on the problematic parts      After reaching a shared understanding of a problem with domain ex-
 of the workflow, while ignoring the successful aspects that work well      perts in the discover phase, the visualization researcher can begin de-
 (PF-15). RelEx is an example design study where these both sides of        signing a visualization solution. Beginning this stage does not mean
 this coin were crucial in the visualization design [74].                   that changes to the problem characterization and task abstraction are
    The discovery stage is related to what is called requirements anal-     finished; further refinements of understanding problems and tasks are
 ysis in software engineering [36], which is directly linked to talking     almost inevitable as work continues through subsequent stages.
 with and observing domain experts. The process of problem char-               Our definition of design at this stage is the generation and vali-
 acterization and abstraction in a design study is iterative and cyclic:    dation of data abstractions, visual encodings, and interaction mech-
 the expert speaks and the researcher listens, the researcher abstracts,    anisms. We include data abstraction as an active design component
 then elicits feedback from the expert on the abstraction. While the re-    because many decisions made about the visualization design include
 finement of the abstraction begins in the discover stage, it continues     transforming and deriving data; the task abstraction in not included
 through all subsequent stages through the final write stage.               because it is inherently about what the experts need to accomplish. A
    Problem characterization and abstraction are critical for design        task abstraction will either be a good or a bad reflection of the actual
 studies. In particular, a pithy abstraction supports the transferability   domain, while a data abstraction proposed by the researcher will be
 of a design study’s specific results and findings to other domains, and    appropriate or inappropriate for the specific problem at hand. An in-
 also allows for an understandable and straightforward description of a     teresting example is the ABySS-Explorer project [56] where the com-
 domain problem to a visualization audience. Abstraction should hap-        putational algorithms that assemble a genome from sequence data rely
 pen very early in the discovery stage and should frequently be vali-       on a graph with unique sequence strands represented as nodes and
 dated by checking back with the expert to ensure correctness. One          overlapping strands as edges. The visualization researchers observed,
 design study where we put significant effort into articulating the ab-     however, that the experts often used a dual representation (swapping
 stractions clearly and concisely was MizBee [45]; ABySS-Explorer is        nodes and edges) when sketching their ideas on paper, and found that
 an excellent example from other authors [56].                              building their visualization tool around this swapped representation
    One difficulty of the discover stage is that just talking to users is   allowed the domain scientists to reason about the output of the algo-
 necessary but typically not sufficient. The phenomenon that what a         rithms very effectively. In contrast, in one of our own projects the ex-
 target user says they do in retrospect is only an incomplete match with    perts reacted with shock and horror to an early proposal to swap nodes
 their actual activities is well-known in psychology [23] and HCI [60];     and edges [74]. Examples like these point to the importance and diffi-
 most users do not accurately introspect about their own data anal-         culty of finding the right abstraction; too little attention to abstraction
 ysis and visualization needs, making these needs invisible to them.        is a common pitfall (PF-19).
 Thus, the standard practice in user-centered design is a combination          The basic design cycle, as articulated in fields such as industrial
 of methods including interviews and observations [7, 60]. A com-           design, includes identifying requirements, generating multiple solu-
 mon observation technique in ethnography is fly-on-the-wall [8], a         tions, and selecting the best one [88]. The previous discover stage of
 passive method where the researcher silently and unobtrusively ob-         our framework covered the identifying requirements step. This design
 serves users with the goal of fading into the background to obtain an      stage covers the generation and selection parts of the cycle. A com-
 objective picture of normal activities. We tried this method in one of     mon pitfall is to consider too few solutions and to prematurely commit
 our projects [78] but found it ineffective in a design study context as    to a selected solution (PF-20).
 the complex cognitive tasks addressed by design studies are difficult         To avoid this pitfall, we suggest that researchers strive to have a
 to silently observe [76]: in data analysis many things happen within       broad consideration space of possible solutions. The consideration
 the head of the user. While the methods of just talking and fly-on-the-    space consists of the set of valid visual encodings, interaction mecha-
 wall provide some interesting information, expecting them to work          nisms, and data abstractions. While the size of the consideration space
 alone is a pitfall (PF-16). We have found good results with contextual     may not be a central concern in technique-driven work, its breadth is
 inquiries [28], where the researcher observes users working in their       critical for problem-driven research. After considering broadly, the
 real-world context and interrupts to ask questions when clarification      researcher should iteratively filter the consideration space down to a
 is needed [71, 73, 74, 77, 78]. Reading domain literature, whether as      narrow proposal space based on design principles and guidelines.
 general background or based on specific suggestions from the experts,      The suggested solutions in the proposal space should be brought up
 is an additional way to gather information.                                for discussion with domain experts, for instance, in the form of paper
    In discussions with domain experts, another pitfall is allowing them    mockups, data sketches, or low-level prototypes [42]. The feedback of
 to focus initial conversations on their vision of possible visualiza-      the experts can then be used to filter the proposal space to a selection
 tion solutions rather than on explaining their problems (PF-17). Re-       of one or several design solutions that will be implemented in depth.
 searchers often need to actively push domain experts to discuss prob-         The goal of the design cycle is satisfying rather than optimizing:
 lems, not solutions, until the expert needs are well understood.           while there is usually not a best solution, there are many good and ok
    The ability to quickly and effectively characterize and abstract a      ones. The problem of a small consideration space is the higher prob-
 problem is a key skill for design study researchers. We argue for          ability of only considering ok solutions and missing a good one. One
 learning just enough to abstract, rather than attempting to understand     way to ensure that more than one possibility is considered is to gen-
 all details as in approaches such as ethnography [6] or grounded the-      erate multiple ideas in parallel—our AutobahnVis design study paper
 ory [14, 25]. Gathering a full-blown understanding of a target domain      discusses parallel idea generation in early design stages [78]. Work
 to the point of becoming an expert is problematic both because it is       in HCI shows that “parallel prototyping leads to better design results,
 very time-consuming, taking years or even decades, and because it          more divergence, and increased self-efficacy” [22].
 also carries the inherent danger that visualization needs will become         An alluring pitfall for researchers accustomed to technique-driven
 invisible at some point. We argue that a sweet spot exists for how         work is to assume that a particular algorithm or technique that they
 much domain knowledge to acquire—erring in either direction, with          developed in a past project is the right match for a new problem, in-
 not enough or too much, will result in an ineffective design study         stead of considering multiple ideas. Although such a match is not

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
SEDLMAIR ET AL: DESIGN STUDY METHODOLOGY: REFLECTIONS FROM THE TRENCHES AND THE STACKS                                                              2437

<a id="p007-b002"></a>

<!-- p007-b002 -->
impossible, it is rare: researchers should be very careful not to assert a   many of our own [10, 40, 43, 44, 45, 46, 71, 74, 76, 77]. A com-
specious need for their favorite technique (PF-21). We have seen this        mon pitfall is to claim a case study where the users, tasks, or data are
pitfall many times as reviewers, and fell into it ourselves in one failed    not in fact real (PF-25); we have seen many examples as reviewers.
design study [51].                                                           The common case is where the data is real but the findings were made
                                                                             by the developers of the tool themselves, rather than a front-line an-
4.2.3 Implement: Prototypes, Tool & Usability                                alyst. While these examples are a legitimate form of validation, they
The implementation of software prototypes and tools is tightly inter-        are weaker and less convincing than reporting from the wild; we sug-
leaved with the design process. Choosing the right algorithms to meet        gest that they be clearly labelled as usage scenarios so that there is
scalability and other requirements, closely integrating new software         no implication that they are true case studies. We have used them as
with existing workflows [76], and creating software prototypes are all       validation in several of our own design studies [52, 53], and a mix of
instances of design activities that involve coding. Here, we summarize       usage scenarios and case studies in others [4].
some HCI and software engineering guidelines which are helpful in               Lab studies with domain experts are rare in design studies because
the process of implementing design prototypes and solutions.                 their findings tend to be less rich than field studies. Sometimes, how-
   Rapid software prototyping, with the goal of quickly developing           ever, they can provide benefits by convincing gatekeepers to open the
throw-away code, is a crucial skill in design studies: non-rapid pro-        door for wide deployment of visualization, as in the design study of
totyping is another pitfall (PF-22). In particular, the more time spent      heart disease diagnosis by Borkin et al. [11] or in our own MostVis
coding a solution the harder it is to throw it away. The tendency is to      project [73, 76].
tweak a given implementation rather than to start over from scratch,            From a collaboration point of view, researchers should be aware
which is problematic in cases where a design turns out not to fit the        of experimental demand characteristic effects [12, 32]—when re-
identified needs and problem of the experts, or where the needs have         searchers work closely with domain experts it is very likely that the
changed. This pitfall was a major factor the failure of the Power-           experts will offer positive and favorable feedback. While having ex-
SetViewer design study [54].                                                 perts give positive feedback about a tool is necessary for showing effi-
   This pitfall is common knowledge in software engineering and is           cacy, it is far from sufficient for a convincing validation (PF-26).
addressed by approaches like extreme programming and agile software
development [41]. Several tactics for design studies are: start simply,      4.3   Analysis Phase
ideally with paper prototypes; quickly write code that can be thrown         The final two stages are reflect and write. These are usually done ret-
away; and close user feedback loops with methods such as design in-          rospectively but could be started early in the process.
terviews and workshops [15], or deploying early versions of a tool as
technology probes [31]. We have used rapid prototyping in many of            4.3.1 Reflect: Confirm, Refine, Reject, Propose Guidelines
our design studies [45, 46, 44, 43, 52, 70, 71, 73, 74, 75, 77, 78].         The importance of reflection and its value for research is well-
   Usability engineering is another approach that crosscuts design and       recognized in other fields such as anthropology [63]. This need for
implementation; a pitfall is to focus either too much or too little on       critical reflection is also evident in design study research; reflection is
usability (PF-23). Too little usability is still the more common case        where research emerges from engineering and we identify failing to do
in visualization, where a tool that might provide utility to domain ex-      so as a pitfall (PF-27). Reflection on how a specific design study re-
perts does not succeed because it is too difficult to use. Too much          lates to the larger research area of visualization is crucial for adding to
usability can be a pitfall for more HCI-oriented researchers, where a        the body of knowledge and allowing other researchers to benefit from
sole focus on usability can obscure more interesting questions about         the work. It is particularly informative for improving currently avail-
the usefulness and utility of a novel approach [26]. If the domain ex-       able design guidelines: based on new findings, previously proposed
perts have limited time for engagement, usability inspection methods         guidelines can be either confirmed, by substantiating further evidence
can augment the deployment of a visualization tool. These methods            of their usefulness; refined or extended with new insights; rejected
include cognitive walkthroughs, heuristic evaluations, and other kinds       when they are applied but do not work; or new guidelines might be
of expert reviews from people trained in HCI [85, 86], as well as dis-       proposed. For example, the reflection contribution of the LiveRAC de-
count usability testing with non-experts such as students [57]. We used      sign study refines guidelines for the user-centered design process [43].
discount usability with RelEx [74] and expert reviews in Vismon [10].
                                                                             4.3.2 Write: Design Study Paper
4.2.4 Deploy: Release & Gather Feedback                                      Writing about a design study is often done in parallel with reflection,
The final stage of the core phase involves deploying a tool and gather-      but can be started at any point [83]. In our experience, writing a de-
ing feedback about its use in the wild. This stage is a central compo-       sign study paper is harder and more time-consuming then writing other
nent of a successful design study, but a common pitfall is to not build      types of visualization papers because of the amount of reconsideration
enough deployment time into a project schedule (PF-24). We consider          and reorganization necessary. Leaving insufficient time for writing is
several weeks to be a bare minimum, and several months to be much            a common pitfall (PF-28). We have found that a few weeks is usually
safer.                                                                       not enough, and a few months is more realistic. Paper writing is the
   The major goal in validating a deployed system is to find out             time to revisit abstractions, to identify contributions, and to come up
whether domain experts are indeed helped by the new solution. This           with a coherent and understandable line of argumentation. A common
goal is typically confirmed by experts doing tasks faster, more cor-         pitfall is to think that a paper without a technique contribution is equal
rectly, or with less workload, or by experts doing things they were not      to a design study paper (PF-29), a mistake we have seen many times
able to do before. A different contribution is changing the way ex-          as reviewers. We strongly argue against this mentality: a good design
perts see the problem. While this goal is less tangible, and perhaps         study paper is not simply a weak technique paper dressed up with a bit
less obvious, we argue in Section 3.2 for considering such a change          of retroactive introspection.
as a step towards automating a problem. The two axes of task clarity            We find that no matter how well we think the abstractions have
and information location allow for a more concrete reasoning about           been defined in the design phase, the writing phase inevitably forces
such findings, namely changing task clarity from fuzzy to crisp, and         us to revisit the abstractions in an attempt to clearly articulate them. A
changing the location of critical information from inside the expert’s       common reason for this is that many additional insights have emerged
head to digital form.                                                        in the intervening stages. Thus, we argue that retrospectively refining
   The visualization literature contains a multitude of proposed meth-       the abstractions is the rule, and not the exception. The axes we provide
ods for evaluating visualization tools in the wild [13, 33, 69, 85, 95],     in Section 3.2 can help to frame some of the less obvious contributions
as well as guidance on using them [39, 50]. The most common form             related to problem abstraction.
of validation are case studies with real users, real problems, and real         A common pitfall in writing a design study paper is to include too
data, as featured in many strong design studies by others [35, 58], and      much domain background (PF-30). While the enthusiasm of the visu-

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
2438                              IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 18, NO. 12, DECEMBER 2012

<a id="p008-b002"></a>

<!-- p008-b002 -->
alization researcher to explain hard-won knowledge about the domain
                                                                                  Table 1. Summary of the 32 design study pitfalls that we identified.
 to the readers is understandable, it is usually a better choice to put
 writing effort into presenting extremely clear abstractions of the task         PF-1     premature advance: jumping forward over stages                    general
 and data. Design study papers should include only the bare minimum              PF-2     premature start: insufficient knowledge of vis literature         learn
 of domain knowledge that is required to understand these abstractions.          PF-3     premature commitment: collaboration with wrong people             winnow
 We have seen many examples of this pitfall as reviewers, and we con-            PF-4     no real data available (yet)                                      winnow
 tinue to be reminded of it by reviewers of our own paper submissions.           PF-5     insufficient time available from potential collaborators          winnow
 We fell headfirst into it ourselves in a very early design study, which         PF-6     no need for visualization: problem can be automated               winnow
 would have been stronger if more space had been devoted to the ra-              PF-7     researcher expertise does not match domain problem                winnow
 tionale of geography as a proxy for network topology, and less to the           PF-8     no need for research: engineering vs. research project            winnow
 intricacies of overlay network configuration and the travails of map-           PF-9     no need for change: existing tools are good enough                winnow
 ping IP addresses to geographic locations [53].                                 PF-10    no real/important/recurring task                                  winnow
    Another challenge is to construct an interesting and useful story            PF-11    no rapport with collaborators                                     winnow
 from the set of events that constitute a design study. First, the re-           PF-12    not identifying front line analyst and gatekeeper before start    cast
                                                                                 PF-13    assuming every project will have the same role distribution       cast
 searcher must re-articulate what was unfamiliar at the start of the pro-
                                                                                 PF-14    mistaking fellow tool builders for real end users                 cast
 cess but has since become internalized and implicit. Moreover, the
                                                                                 PF-15    ignoring practices that currently work well                       discover
 order of presentation and argumentation in a paper should follow a
                                                                                 PF-16    expecting just talking or fly on wall to work                     discover
 logical thread that is rarely tied to the actual chronology of events due       PF-17    experts focusing on visualization design vs. domain problem       discover
 to the iterative and cyclical nature of arriving at full understanding of       PF-18    learning their problems/language: too little / too much           discover
 the problem (PF-31). A careful selection of decisions made, and their           PF-19    abstraction: too little                                           design
 justification, is imperative for narrating a compelling story about a de-       PF-20    premature design commitment: consideration space too small        design
 sign study and are worth discussing as part of the reflections on lessons       PF-21    mistaking technique-driven for problem-driven work                design
 learned. In this spirit, writing a design study paper has much in com-          PF-22    non-rapid prototyping                                             implement
 mon with writing for qualitative research in the social sciences. In            PF-23    usability: too little / too much                                  implement
 that literature, the process of writing is seen as an important research        PF-24    premature end: insufficient deploy time built into schedule       deploy
 component of sense-making from observations gathered in field work,             PF-25    usage scenario not case study: non-real task/data/user            deploy
 above and beyond merely being a reporting method [62, 93].                      PF-26    liking necessary but not sufficient for validation                deploy
    In technique-driven work, the goal of novelty means that there is a          PF-27    failing to improve guidelines: confirm, refine, reject, propose   reflect
 rush to publish as soon as possible. In problem-driven work, attempt-           PF-28    insufficient writing time built into schedule                     write
                                                                                 PF-29    no technique contribution 6= good design study                    write
 ing to publish too soon is a common mistake, leading to a submission
                                                                                 PF-30    too much domain background in paper                               write
 that is shallow and lacks depth (PF-32). We have fallen prey to this pit-
                                                                                 PF-31    story told chronologically vs. focus on final results             write
 fall ourselves more than once. In one case, a design study was rejected
                                                                                 PF-32    premature end: win race vs. practice music for debut              write
 upon first submission, and was only published after significantly more
 work was completed [10]; in retrospect, the original submission was
 premature. In another case, work that we now consider preliminary              and interview; shedding preconceived notions is a tactic for reaching
 was accepted for publication [78]. After publication we made further           this goal. Some of these methods have been adapted for use in HCI,
 refinements of the tool and validated the design with a field evaluation,      however under a very different methodological umbrella. In these
 but these improvements and findings did not warrant a full second pa-          fields the goal is to distill findings into implications for design, requir-
 per. We included this work as a secondary contribution in a later paper        ing methods that quickly build an understanding of how a technology
 about lessons learned across many projects [76], but in retrospect we          intervention might improve workflows. While some sternly critique
 should have waited to submit until later in the project life cycle.            this approach [20, 21], we are firmly in the camp of authors such as
    It is rare that another group is pursuing exactly the same goal given       Rogers [64, 65] who argues that goal-directed fieldwork is appropri-
 the enormous number of possible data and task combinations. Typi-              ate when it is neither feasible nor desirable to capture everything, and
 cally a design requires several iterations before it is as effective as pos-   Millen who advocates rapid ethnography [47]. This stand implies that
 sible, and the first version of a system most often does not constitute a      our observations will be specific to visualization and likely will not be
 conclusive contribution. Similarly, reflecting on lessons learned from         helpful in other fields; conversely, we assert that an observer without a
 the specific situation of study in order to derive new or refined gen-         visualization background will not get the answers needed for abstract-
 eral guidelines typically requires an iterative process of thinking and        ing the gathered information into visualization-compatible concepts.
 writing. A challenge for researchers who are familiar with technique-             The methodology of grounded theory emphasizes building an un-
 driven work and who want to expand into embracing design studies is            derstanding from the ground up based on careful and detailed anal-
 that the mental reflexes of these two modes of working are nearly op-          ysis [14]. As with ethnography, we differ by advocating that valid
 posite. We offer a metaphor that technique-driven work is like running         progress can be made with considerably less analysis time. Although
 a footrace, while problem-driven work is like preparing for a violin           early proponents [87] cautioned against beginning the analysis pro-
 concert: deciding when to perform is part of the challenge and the             cess with preconceived notions, our insistence that visualization re-
 primary hazard is halting before one’s full potential is reached, as op-       searchers must have a solid foundation in visualization knowledge
 posed to the challenge of reaching a defined finish line first.                aligns better with more recent interpretations [25] that advocate bring-
                                                                                ing a prepared mind to the project, a call echoed by others [63].
 5     C OMPARING M ETHODOLOGIES                                                   Many aspects of the action research (AR) methodology [27] align
 Design studies involve a significant amount of qualitative field work;         with design study methodology. First is the idea of learning through
 we now compare design study methodology to influential methodolo-              action, where intervention in the existing activities of the collabora-
 gies in HCI with similar qualitative intentions. We also use the ter-          tive research partner is an explicit aim of the research agenda, and
 minology from these methodologies to buttress a key claim on how to            prolonged engagement is required. A second resonance is the identifi-
 judge design studies: transferability is the goal, not reproducibility.        cation of transferability rather than reproducibility as the desired out-
    Ethnography is perhaps the most widely discussed qualitative re-            come, as the aim is to create a solution for a specific problem. Indeed,
 search methodology in HCI [16, 29, 30]. Traditional ethnography in             our emphasis on abstraction can be cast as a way to “share sufficient
 the fields of anthropology [6] and sociology [81] aims at building a           knowledge about a solution that it may potentially be transferred to
 rich picture of a culture. The researcher is typically immersed for            other contexts” [27]. The third key idea is that personal involvement
 many months or even years to build up a detailed understanding of life         of the researcher is central and desirable, rather than being a dismaying
 and practice within the culture using methods that include observation         incursion of subjectivity that is a threat to validity; van Wijk makes the

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
SEDLMAIR ET AL: DESIGN STUDY METHODOLOGY: REFLECTIONS FROM THE TRENCHES AND THE STACKS                                                                                            2439

<a id="p009-b002"></a>

<!-- p009-b002 -->
same argument for the visualization community [88]. A related idea                            [8] J. Blomberg, J. Giacomi, A. Mosher, and P. Swenton-Wall. Ethnographic field meth-
from AR is the importance of the researcher being skilled at opening                              ods and their relation to design. Participatory design: Principles and practices,
up lines of communication rather than being a distant observer.                                   pages 123–155, 1993.
   However, our perspective opposes the AR agenda in a few crucial                            [9] K. Bødker, F. Kensing, and J. Simonsen. Participatory IT design: Designing for
                                                                                                  business and workplace realities. The MIT Press, 2004.
ways. First, we explicitly advocate translation of participant concepts
                                                                                             [10] M. Booshehrian, T. Möller, R. M. Peterman, and T. Munzner. Vismon: Facilitating
into the language of visualization as part of the data and task abstrac-                          analysis of trade-offs, uncertainty, and sensitivity in fisheries management decision
tion, whereas AR opposes the layering of scientific language on par-                              making. Computer Graphics Forum (Proc. EuroVis 2012), 2012. in press.
ticipant concepts. Second, we do advocate that the visualization re-                         [11] M. A. Borkin, K. Z. Gajos, A. Peters, D. Mitsouras, S. Melchionna, F. J. Rybicki,
searcher takes the lead on designing the solution because they know                               C. L. Feldman, and H. Pfister. Evaluation of artery visualizations for heart disease
about the visualization design space while the domain expert does not;                            diagnosis. IEEE Trans. Visualization and Computer Graphics (Proc. InfoVis 2011),
this stance directly opposes the AR attitude that the researcher should                           pages 2479–2488, 2011.
facilitate but not lead. Third, we do not necessarily advocate that the                      [12] B. Brown, S. Reeves, and S. Sherwood. Into the wild: Challenges and opportunities
participants be full partners in the writing process, whereas that is an                          for field trial methods. In Proc. ACM Conf. Human Factors in Computing Systems
                                                                                                  (CHI), pages 1657–1666, 2011.
important goal for AR. We also note that some concerns of AR are
                                                                                             [13] S. Carpendale. Evaluating information visualizations. In A. Kerren, J. T. Stasko, J.-
simply orthogonal to ours, including the political agenda of being so-                            D. Fekete, and C. North, editors, Information Visualization: Human-Centered Issues
cially relevant and adversarial to the status quo, and the theoretical                            and Perspectives, volume 4950, pages 19–45. Springer LNCS, 2008.
underpinning of postmodernity.                                                               [14] K. Charmaz. Constructing grounded theory. A practical guide through qualitative
   One theme shared between design study methodology and all of                                   analysis. Sage Publications, Inc, 2006.
these other qualitative approaches is the conviction that reproducibil-                      [15] A. Cockburn. Agile Software Development: The Cooperative Game. Addison-
ity is not the goal because the design study process requires intrinsi-                           Wesley Professional, 2006.
cally subjective field work [12]. The measure of success is not that a                       [16] A. Crabtree, T. Rodden, P. Tolmie, and G. Button. Ethnography considered harmful.
different visualization researcher would design the same system, it is                            In Proc. ACM Conf. Human Factors in Computing Systems (CHI), pages 879–888,
                                                                                                  2009.
that this particular researcher has created something useful.
                                                                                             [17] P. Craig and J. Kennedy. Coordinated graph and scatter-plot views for the visual
                                                                                                  exploration of microarray time-series data. In Proc. IEEE Symp. Information Visu-
6 C ONCLUSIONS
                                                                                                  alization (InfoVis), pages 173–180, 2003.
In this paper we propose a process for conducting design studies, the                        [18] M. Crotty. The foundations of social research: Meaning and perspective in the
nine-stage framework, formed by reflecting on our personal experi-                                research process - Chapter 1. Sage Publications Ltd, 1998.
ences as well as an extensive literature review in other fields. The                         [19] A. Dix. Theoretical analysis and theory creation. In Research Methods in Human-
framework consists of nine stages with practical guidance and poten-                              Computer Interaction, pages 175–195. Cambridge Univ. Press, 2008.
tial pitfalls for each stage. Along with the nine-stage framework, we                        [20] P. Dourish. Implications for design. In Proc. ACM Conf. Human Factors in Com-
                                                                                                  puting Systems (CHI), pages 541–550, 2006.
provide relevant definitions of key terms, and define the two axes of
                                                                                             [21] P. Dourish. Responsibilities and implications: further thoughts on ethnography and
task clarity and information location in order to describe the suitability                        design. In Proc. ACM Conf. Designing for User eXperiences (DUX), pages 2–16,
and potential contributions of design studies. We also contrast design                            2007.
study methodology with other methodologies popular in HCI that use                           [22] S. P. Dow, A. Glassco, J. Kass, M. Schwarz, D. L. Schwartz, and S. R. Klemmer.
qualitative methods.                                                                              Parallel prototyping leads to better design results, more divergence, and increased
    We offer our process as one potential way of conducting design                                self-efficacy. ACM Trans. Computer-Human Interaction (ToCHI), 17(4):1–24, 2010.
studies, which should not be taken as set in stone but as a starting                         [23] K. A. Ericsson and H. A. Simon. Verbal reports as data. Psychological Review,
point for a vivid and creative discussion about alternative approaches                            87(3):215–251, 1980.
and ideas. Our process focuses on design studies as conducted by vi-                         [24] D. M. Fetterman. Ethnography: Step by Step. Sage Publications, 2nd edition, 1998.
                                                                                             [25] D. Furniss, A. Blandford, and P. Curzon. Confessions from a Grounded Theory
sualization researchers. Interesting questions rising from this focus
                                                                                                  PhD: Experiences and Lessons Learnt. In ACM Trans. Computer-Human Interaction
include: how does the process generalize to practitioners? How does                               (ToCHI), pages 113–122, 2011.
it differ when applied to related fields such as data mining or machine                      [26] S. Greenberg and B. Buxton. Usability evaluation considered harmful (some of the
learning [89]? We hope that our work will entice more visualization                               time). In Proc. ACM Conf. Human Factors in Computing Systems (CHI), pages
researchers into this fast-growing part of the field, and that it will in-                        111–120, 2008.
spire further methodological discussion.                                                     [27] G. R. Hayes. The relationship of action research to human-computer interaction.
                                                                                                  ACM Trans. Computer-Human Interaction (ToCHI), 18(3):1–20, 2011.
ACKNOWLEDGEMENTS                                                                             [28] K. Holtzblatt and S. Jones. Contextual inquiry: A participatory technique for system
                                                                                                  design. In D. Schuler, A. Namioka (eds.): Participatory Design: Principles and
We thank all collaborators and co-researchers from our various design
                                                                                                  Practices, pages 177–210. Lawrence Erlbaum Associates, 1993.
studies. We also thank NSERC and the CRA for funding this work,                              [29] J. Hughes, V. King, and T. Rodden. Moving out from the control room: ethnography
and Matthew Brehmer, Jessica Dawson, Stephen Ingram, Kristin Pot-                                 in system design. Proc. ACM Conf. Computer Supported Cooperative Work (CSCW),
ter, Elizabeth Jurrus, and Torsten Möller for their feedback.                                    pages 429–439, 1994.
                                                                                             [30] J. Hughes, J. O’Brien, and T. Rodden. Designing with ethnography: a presentation
R EFERENCES                                                                                       framework for design. In Proc. Conf. Designing Interactive Systems (DIS), pages
 [1] M. Agrawala, W. Li, and F. Berthouzoz. Design principles for visual communication.           147–158, 1997.
     Communications of the ACM, pages 60–69, Apr. 2011.                                      [31] H. Hutchinson et al. Technology probes: inspiring design for and with families. In
 [2] R. Amar, J. Eagan, and J. Stasko. Low-level components of analytic activity in               Proc. ACM Conf. Human Factors in Computing Systems (CHI), pages 17–24, 2003.
     information visualization. IEEE Symp. Information Visualization (InfoVis), pages        [32] M. J. Intons-Peterson. Imagery paradigms: How vulnerable are they to experi-
     111–117, 2005.                                                                               menters’ expectations? Journ. Experimental Psychology - Human Perception and
 [3] R. Amar and J. Stasko. Knowledge precepts for design and evaluation of infor-                Performance, 9:394–412, 1983.
     mation visualizations. IEEE Trans. Visualization and Computer Graphics (TVCG),          [33] P. Isenberg, T. Zuk, C. Collins, and S. Carpendale. Grounded evaluation of infor-
     11(4):432–442, 2005.                                                                         mation visualizations. In Proc. ACM CHI Wkshp. BEyond time and errors: novel
 [4] A. Barsky, T. Munzner, J. Gardy, and R. Kincaid. Cerebral: visualizing multiple ex-          evaLuation methods for Information Visualization (BELIV). 2008.
     perimental conditions on a graph with biological context. IEEE Trans. Visualization     [34] D. F. Keefe, M. Ewert, W. Ribarsky, and R. Chang. Interactive coordinated multiple-
     and Computer Graphics (Proc. InfoVis 2008), 14(6):1253–60, 2008.                             view visualization of biomechanical motion data. IEEE Trans. Visualization and
 [5] D. Baur, F. Seiffert, M. Sedlmair, and S. Boring. The streams of our lives: Visualiz-        Computer Graphics (Proc. Vis 2009), 15(6):1383–1390, 2009.
     ing listening histories in context. IEEE Trans. Visualization and Computer Graphics     [35] R. Kincaid. SignalLens: Focus+Context Applied to Electronic Time Series. IEEE
     (Proc. InfoVis 2010), 16(6):1119–1128, 2010.                                                 Trans. Visualization and Computer Graphics (Proc. InfoVis 2010), 16(6):900–907,
 [6] H. R. Bernard. Research Methods in Anthropology: Qualitative and Quantitative                2010.
     Approaches. AltaMira Press, 5th edition, 2011.                                          [36] B. L. Kovitz. Practical Sofware Requirements: A Manual of Content & Style. Man-
 [7] H. Beyer and K. Holtzblatt. Contextual design: defining customer-centered systems.           ning, 1999.
     Morgan Kaufmann Publishers Inc., San Francisco, CA, USA, 1998.                          [37] J. Kruger and D. Dunning. Unskilled and unaware of it: How difficulties in recog-

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
2440                                      IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 18, NO. 12, DECEMBER 2012

<a id="p010-b002"></a>

<!-- p010-b002 -->
nizing one’s own incompetence lead to inflated self-assessments. Journ. Personality           Comput. Phys., 10(3):268–273, June 1996.
        and Social Psychology, 77(6):1121–1134, 1999.                                            [67] K. Ruhland, M. Sedlmair, S. Bioletti, and C. O’Sullivan. LibViz: Data Visualisation
 [38]   M. Kuniavsky. Observing the User Experience: A Practitioner’s Guide To User                   of the Old Library. Intl. Journ. Architectural Computing, 7(1):177–192, 2009.
        Research. Morgan Kaufmann, 2003.                                                         [68] P. Saraiya, C. North, and K. Duca. An insight-based methodology for evaluating
 [39]   H. Lam, E. Bertini, P. Isenberg, C. Plaisant, and S. Carpendale. Empirical studies in         bioinformatics visualizations. IEEE Trans. Visualization and Computer Graphics,
        information visualization: Seven scenarios. IEEE Trans. Visualization and Computer            11(4):443–456, 2005.
        Graphics (TVCG), 2012. Appeared online: 30 Nov. 2011.                                    [69] P. Saraiya, C. North, V. Lam, and K. Duca. An insight-based longitudinal study of
 [40]   H. Lam, D. Russell, D. Tang, and T. Munzner. Session Viewer: Visual Exploratory               visual analytics. IEEE Trans. Visualization and Computer Graphics, 12(6):1511–
        Analysis of Web Session Logs. In Proc. IEEE Symp. Visual Analytics Science and                1522, 2006.
        Technology (VAST), pages 147–154, 2007.                                                  [70] M. Sedlmair. Car-x-ray: Closely Integrating Both Worlds. In Visual Analysis of
 [41]   C. Larman and V. R. Basili. Iterative and incremental development: A brief history.           In-Car Communication Networks (PhD Thesis). LMU, 2010.
        IEEE Computer, 36(6):47–56, 2003.                                                        [71] M. Sedlmair. ProgSpy2010: Visualizing Flash Activities. In Visual Analysis of In-
 [42]   D. Lloyd and J. Dykes. Human-centered approaches in geovisualization design:                  Car Communication Networks (PhD Thesis). LMU, 2010.
        investigating multiple methods through a long-term case study. IEEE Trans. Visual-       [72] M. Sedlmair. WiKeVis: Visualizing Functional Networks. In Visual Analysis of
        ization and Computer Graphics (Proc. InfoVis 2011), 17(12):498–507, 2011.                     In-Car Communication Networks (PhD Thesis). LMU, 2010.
 [43]   P. McLachlan, T. Munzner, E. Koutsofios, and S. North. LiveRAC: interactive visual       [73] M. Sedlmair, C. Bernhold, D. Herrscher, S. Boring, and A. Butz. MostVis: An
        exploration of system management time-series data. In Proc. ACM Conf. on Human                Interactive Visualization Supporting Automotive Engineers in MOST Catalog Ex-
        Factors in Computing Systems (CHI), pages 1483–1492, 2008.                                    ploration. In Proc. Intl. Conf. Information Visualization (IV), pages 173–182, 2009.
 [44]   M. Meyer, T. Munzner, A. dePace, and H. Pfister. MulteeSum: A tool for explor-           [74] M. Sedlmair, A. Frank, T. Munzner, and A. Butz. RelEx: A design study of visual
        ing space-time expression data. IEEE Trans. Visualization and Computer Graphics               network analysis in the automotive domain. IEEE Trans. Visualization and Com-
        (Proc. InfoVis 2010), 16(6):908–917, 2010.                                                    puter Graphics (Proc. InfoVis 2012), 2012. In press.
 [45]   M. Meyer, T. Munzner, and H. Pfister. MizBee: A multiscale synteny browser. IEEE         [75] M. Sedlmair, W. Hintermaier, K. Stocker, T. Böring, and A. Butz. A dual-view
        Trans. Visualization and Computer Graphics (Proc. InfoVis 2009), 15(6):897–904,               visualization of in-car communication processes. In Proc. Intl. Conf. Information
        2009.                                                                                         Visualization (IV), pages 157–162, 2008.
 [46]   M. Meyer, B. Wong, M. Styczynski, T. Munzner, and H. Pfister. Pathline: A tool for       [76] M. Sedlmair, P. Isenberg, D. Baur, and A. Butz. Information Visualization Evalu-
        comparative functional genomics. Computer Graphics Forum (Proc. EuroVis 2010),                ation in Large Companies: Challenges, Experiences and Recommendations. Infor-
        29(3):1043–1052, 2010.                                                                        mation Visualization, 10(3):248–266, 2011.
 [47]   D. Millen. Rapid ethnography: Time deepening strategies for HCI field research. In       [77] M. Sedlmair, P. Isenberg, D. Baur, M. Mauerer, C. Pigorsch, and A. Butz. Car-
        Proc. ACM Conf. Designing Interactive Systems (DIS), pages 280–286, 2000.                     diogram: Visual Analytics for Automotive Engineers. In Proc. ACM Conf. Human
 [48]   T. Munzner. Interactive Visualization of Large Graphs and Networks. PhD thesis,               Factors in Computing Systems (CHI), pages 1727–1736, 2011.
        Stanford University Department of Computer Science, 2000.                                [78] M. Sedlmair, B. Kunze, W. Hintermaier, and A. Butz. User-centered development
 [49]   T. Munzner. Process and pitfalls in writing information visualization research papers.        of a visual exploration system for in-car communication. In Proc. Intl. Symp. Smart
        In Information Visualization: Human-Centered Issues and Perspectives, pages 134–              Graphics (SG), pages 105–116, 2009.
        153. Springer LNCS 4950, 2008.                                                           [79] B. Shneiderman. The eyes have it: A task by data type taxonomy for information
 [50]   T. Munzner. A Nested Model for Visualization Design and Validation. IEEE Trans.               visualizations. In Proc. IEEE Symp. Visual Languages (VL), pages 336–343. IEEE,
        Visualization and Computer Graphics (Proc. InfoVis 2009), 15(6):921–928, 2009.                1996.
 [51]   T. Munzner, A. Barsky, and M. Williams. Reflections on QuestVis: A visualization         [80] B. Shneiderman and C. Plaisant. Strategies for evaluating information visualization
        system for an environmental sustainability model. In Scientific Visualization: In-            tools: multi-dimensional in-depth long-term case studies. In Proc. AVI Wkshp. on
        teractions, Features, Metaphors, volume 2, pages 240–259. Dagstuhl Follow-Ups,                BEyond Time and Errors: Novel Evaluation Methods for Information Visualization
        2011.                                                                                         (BELIV). ACM, 2006.
 [52]   T. Munzner, F. Guimbretière, and G. Robertson. Constellation: a visualization tool      [81] D. Silverman. A Very Short, Fairly Interesting and Reasonably Cheap Book About
        for linguistic queries from MindNet. In Proc. IEEE Symp. Information Visualization            Qualitative Research. Sage Publications Ltd., 2007.
        (InfoVis), pages 132–135, 1999.                                                          [82] A. Slingsby, J. Dykes, and J. Wood. Configuring hierarchical layouts to address
 [53]   T. Munzner, E. Hoffman, K. Claffy, and B. Fenner. Visualizing the Global Topology             research questions. IEEE Trans. Vis. Comput. Graph., 15(6):977–984, 2009.
        of the MBone. In Proc. IEEE Symp. Information Visualization (InfoVis), pages 85–         [83] H. Thimbleby. Write now! In Research Methods in Human-Computer Interaction,
        92, 1996.                                                                                     pages 196–211. Cambridge Univ. Press, 2008.
 [54]   T. Munzner, Q. Kong, R. T. Ng, J. Lee, J. Klawe, D. Radulovic, and C. K. Leung.          [84] J. Thomas and K. Cook. Illuminating the path: The research and development
        Visual mining of power sets with large alphabets. Technical report, Univ. British             agenda for visual analytics. National Visualization and Analytics Center, 2005.
        Columbia Computer Science TR-2005-25, Dec. 2005.                                         [85] M. Tory and T. Möller. Human factors in visualization research. IEEE Trans. Visu-
 [55]   T. Munzner and S. North.            InfoVis 2003 Call for Participation: Papers.              alization and Computer Graphics (TVCG), 10(1):72–84, 2004.
        http://www.infovis.org/infovis/2003/CFP/#papers.                                         [86] M. Tory and T. Möller. Evaluating visualizations: do expert reviews work? IEEE
 [56]   C. B. Nielsen, S. D. Jackman, I. Birol, and S. J. Jones. ABySS-Explorer: Visualizing          Computer Graphics and Applications, 25(5):8–11, 2005.
        genome sequence assemblies. IEEE Trans. Visualization and Computer Graphics              [87] J. van Niekerk and J. Roode. Glaserian and Straussian grounded theory: Similar or
        (Proc. InfoVis 2009), 15(6):881–8, 2009.                                                      completely different? In Proc. South African Institute of Computer Scientists and
 [57]   J. Nielsen. Guerrilla HCI: Using discount usability engineering to penetrate the              Information Technologists (SAICSIT), pages 96–103, 2009.
        intimidation barrier. In Cost-Justifying Usability, pages 245–272. Academic Press,       [88] J. J. van Wijk. Views on visualization. IEEE Trans. Visualization and Computer
        1994.                                                                                         Graphics (TVCG), 12(4):421–432, 2006.
 [58]   A. Perer, I. Guy, E. Uziel, I. Ronen, and M. Jacovi. Visual Social Network Analytics     [89] K. L. Wagstaff. Machine Learning that Matters. In Proceedings of the 29th Inter-
        for Relationship Discovery in the Enterprise. In Proc. IEEE Conf. Visual Analytics            national Conference on Machine Learning. Copyright 2012 California Institute of
        Science and Technology (VAST), pages 71–79, 2011.                                             Technology, June 2012.
 [59]   C. Plaisant. The challenge of information visualization evaluation. In Proc. Ad-         [90] M. Q. Wang Baldonado, A. Woodruff, and A. Kuchinsky. Guidelines for using mul-
        vanced Visual Interfaces (AVI), pages 109–116. ACM Press, 2004.                               tiple views in information visualization. In Proc. ACM Advanced Visual Interfaces
 [60]   J. Preece, Y. Rogers, and H. Sharp. Interaction Design: Beyond Human-Computer                 (AVI), pages 110–119, 2000.
        Interaction. John Wiley & Sons, 2002.                                                    [91] C. Ware. Information Visualization: Perception for Design. Morgan Kaufmann,
 [61]   A. J. Pretorius and J. J. van Wijk. What does the user want to see? what do the data          2004.
        want to be? Information Visualization, 8(3):153–166, 2009.                               [92] W. Willinger, D. Alderson, and J. C. Doyle. Mathematics and the Internet: A source
 [62]   L. Richardson and E. A. S. Pierre. Writing: A method for inquiry. In Handbook of              of enormous confusion and great potential. Notices of the American Mathemematical
        Qualitative Research, pages 959–978. Sage, 3rd edition, 2005.                                 Society, 56(5):586–599, 2009.
 [63]   J. Rode. Reflexivity in Digital Anthropology. In ACM Trans. Computer-Human               [93] H. Wolcott. Writing up qualitative research, volume 20 of Qualitative Research
        Interaction (ToCHI), pages 123–132, 2011.                                                     Methods. Sage, 3rd edition, 2009.
 [64]   Y. Rogers. New theoretical approaches for HCI. Annual review of information sci-         [94] J. Wood, D. Badawood, J. Dykes, and A. Slingsby. BallotMaps: Detecting name bias
        ence and technology, 38(1):87–143, 2004.                                                      in alphabetically ordered ballot papers. IEEE Trans. Visualization and Computer
 [65]   Y. Rogers, K. Connelly, L. Tedesco, W. Hazlewood, A. Kurtz, R. Hall, J. Hursey,               Graphics (Proc. InfoVis 2011), 17(12):2384–2391, 2011.
        and T. Toscos. Why it’s worth the hassle: the value of in-situ studies when designing    [95] T. Zuk, L. Schlesier, P. Neumann, M. S. Hancock, and S. Carpendale. Heuristics
        Ubicomp. In Proc. Intl. Conf. on Ubiquitous Computing (UbiComp), pages 336–353.               for information visualization evaluation. In Proc. ACM CHI Wkshp. on BEyond time
        Springer-Verlag, 2007.                                                                        and errors: novel evaLuation methods for Information Visualization (BELIV). 2008.
 [66]   B. E. Rogowitz, L. A. Treinish, and S. Bryson. How not to lie with visualization.
