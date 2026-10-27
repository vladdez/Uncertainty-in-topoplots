---
id: "lam2012seven"
title: "Empirical Studies in Information Visualization: Seven Scenarios"
source_file: "The Art of Uncertain Topoplots/papers/lam2012seven.pdf"
source_sha256: "117c2915a5f8721830cef146fdfd8f4b3a7e1018a63495168df139fc5d511c0e"
extraction_format: 1
---

# Empirical Studies in Information Visualization: Seven Scenarios — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
1520                                       IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,                          VOL. 18,   NO. 9,   SEPTEMBER 2012

<a id="p001-b002"></a>

<!-- p001-b002 -->
Empirical Studies in Information Visualization:
                  Seven Scenarios
          Heidi Lam, Enrico Bertini, Petra Isenberg, Catherine Plaisant, and Sheelagh Carpendale

<a id="p001-b003"></a>

<!-- p001-b003 -->
Abstract—We take a new, scenario-based look at evaluation in information visualization. Our seven scenarios, evaluating visual data
        analysis and reasoning, evaluating user performance, evaluating user experience, evaluating environments and work practices,
        evaluating communication through visualization, evaluating visualization algorithms, and evaluating collaborative data analysis were
        derived through an extensive literature review of over 800 visualization publications. These scenarios distinguish different study goals
        and types of research questions and are illustrated through example studies. Through this broad survey and the distillation of these
        scenarios, we make two contributions. One, we encapsulate the current practices in the information visualization research community
        and, two, we provide a different approach to reaching decisions about what might be the most effective evaluation of a given
        information visualization. Scenarios can be used to choose appropriate research questions and goals and the provided examples can
        be consulted for guidance on how to design one’s own study.

<a id="p001-b004"></a>

<!-- p001-b004 -->
Index Terms—Information visualization, evaluation.

<a id="p001-b005"></a>

<!-- p001-b005 -->
Ç

<a id="p001-b006"></a>

<!-- p001-b006 -->
1      INTRODUCTION

<a id="p001-b007"></a>

<!-- p001-b007 -->
E      VALUATION  in information visualization is complex
    since, for a thorough understanding of a tool, it not
only involves assessing the visualizations themselves, but
                                                                                     discussion of evaluation scenarios, categorized into those
                                                                                     for understanding data analysis processes and those which
                                                                                     evaluate visualizations themselves.
also the complex processes that a tool is meant to                                      The scenarios for understanding data analysis are
support. Examples of such processes are exploratory data
analysis and reasoning, communication through visualiza-                                 .   Understanding environments and work practices
tion, or collaborative data analysis. Researchers and                                        (UWP),
practitioners in the field have long identified many of                                  . evaluating visual data analysis and reasoning
the challenges faced when planning, conducting, and                                          (VDAR),
executing an evaluation of a visualization tool or system                                . evaluating communication through visualization
[10], [41], [54], [63]. It can be daunting for evaluators to                                 (CTV), and
identify the right evaluation questions to ask, to choose                                . evaluating collaborative data analysis (CDA).
the right variables to evaluate, to pick the right tasks,                                The scenarios for understanding visualizations are
users, or data sets to test, and to pick appropriate
evaluation methods. Literature guidelines exists that can                               . Evaluating user performance (UP),
help with these problems but they are almost exclusively                                . evaluating user experience (UE), and
focused on methods—“structured as an enumeration of                                     . evaluating visualization algorithms (VA).
methods with focus on how to carry them out, without                                    Our goal is to provide an overview of different types of
prescriptive advice for when to choose between them.”
                                                                                     evaluation scenarios and to help practitioners in setting the
([54, p.1], author’s own emphasis).
                                                                                     right evaluation goals, picking the right questions to ask,
   This paper takes a different approach: instead of
                                                                                     and to consider a variety of methodological alternatives to
focusing on evaluation methods, we provide an in-depth
                                                                                     evaluation for the chosen goals and questions. Our
                                                                                     scenarios were derived from a systematic analysis of 850
. H. Lam is with Google, Inc, Mountain View, CA.                                     papers (361 with evaluation) from the information visuali-
  E-mail: heidi.lam@gmail.com.                                                       zation research literature (Section 5). For each evaluation
. E. Bertini is with the Department of Computer and Information Science,
  University of Konstanz, Box 78, Konstanz 78457, Germany.                           scenario, we list the most common evaluation goals and
  E-mail: enrico.bertini@uni-konstanz.de.                                            outputs, evaluation questions, and common approaches in
. P. Isenberg is with INRIA, Université Paris-Sud, Team Aviz, Bat 650,              Section 6. We illustrate each scenario with representative
  Saclay, Orsay Cedex 91405, France. E-mail: petra.isenberg@inria.fr.
. C. Plaisant is with the University of Maryland, 2117C Hornbake South               published evaluation examples from the information
  Wing, College Park, MD 20742. E-mail: plaisant@cs.umd.edu.                         visualization community. In cases where there are gaps in
. S. Carpendale is with the Department of Computer Science, University of            our community’s evaluation approaches, we suggest ex-
  Calgary, 2500 University Dr. NW, Calgary, AB T2N 1N4, Canada.
  E-mail: sheelagh@ucalgary.ca.                                                      amples from other fields. We strive to provide a wide
Manuscript received 8 Sept. 2010; revised 6 Nov. 2011; accepted 9 Nov. 2011;         coverage of the methodology space in our scenarios to offer
published online 30 Nov. 2011.                                                       a diverse set of evaluation options. Yet, the “Methods and
Recommended for acceptance by C. North.                                              Examples” lists in this paper are not meant to be
For information on obtaining reprints of this article, please send e-mail to:
tvcg@computer.org, and reference IEEECS Log Number TVCG-2010-09-0224.                comprehensive as our focus is on choosing among evalua-
Digital Object Identifier no. 10.1109/TVCG.2011.279.                                 tion scenarios. Instead, we direct the interested reader
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.
                                               1077-2626/12/$31.00 ß 2012 IEEE       Published by the IEEE Computer Society

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
LAM ET AL.: EMPIRICAL STUDIES IN INFORMATION VISUALIZATION: SEVEN SCENARIOS                                                                      1521

<a id="p002-b002"></a>

<!-- p002-b002 -->
toward other excellent overview articles listed in Section 4,                        encoding) or its supported processes (e.g., explora-
which focused on methods.                                                            tory data analysis). We also briefly describe how
   The major contribution of our work is therefore a new,                            possible outputs of the evaluation can be used in the
scenario-based view of evaluations. Our goal is to:                                  visualization development cycle (Section 2).
                                                                                2.   Picking suitable scenarios, goals, and questions:
    .     encourage selection of specific evaluation goals                           We describe seven scenarios in Section 6 together
          before considering methods, by organizing our                              with possible evaluation foci, outcomes, and ques-
          guide by scenarios rather than by methods;                                 tions within the Goals and Outputs and Evaluation
    .     broaden the diversity of evaluation methods con-                           Questions sections of each scenario.
          sidered for each scenario, by providing examples                      3.   Considering applicable approaches: Example ap-
          from other disciplines in context of evaluation goals                      proaches can be found in the Methods and Examples
          commonly found in our community;                                           (Section 6). Each scenario is illustrated with exam-
    .     provide an initial step in developing a repository of                      ples of published evaluations, which can be used as
          examples and scenarios as a reference.                                     references for additional details.
                                                                                4.   Creating evaluation design and planned analyses:
2       THE SCOPE OF EVALUATION                                                      We list benefits and limitations of each approach
In this paper, we take the broad view that evaluation can                            within the scenario sections. While we aimed to
occur at different stages of visualization development                               provide a diverse range of evaluation methods, the
                                                                                     lists are not exhaustive and, thus, we encourage
    1.  Pre-design, e.g., to understand potential users’ work                        creativity in evaluation design starting from and
        environment and workflow.                                                    extending the work referenced here.
   2. Design, e.g., to scope a visual encoding and
        interaction design space based on human perception                  4    RELATED WORK
        and cognition.
                                                                            In this section, we review related work in the areas of
   3. Prototype, e.g., to see if a visualization has achieved
        its design goals, to see how a prototype compares with              evaluation taxonomies, systematic reviews, and evaluation
        the current state-of-the-art systems or techniques.                 methodologies and best practices.
   4. Deployment, e.g., to see how a visualization                          4.1 Evaluation Taxonomies
        influences workflow and its supported processes,
                                                                            Others have approached the problem of guiding researchers
        to assess the visualization’s effectiveness and uses in
                                                                            and practitioners in visualization evaluation by providing a
        the field.
                                                                            high-level view of available methodologies and methods as
   5. Redesign, e.g., to improve a current design by
                                                                            taxonomies. The metrics used for classification have been
        identifying usability problems.
                                                                            diverse, ranging from research goals, to design and
   Our definition of evaluation is therefore not restricted to              development stages in which the methodologies can be
the analysis of specific visual representations; it can also                applied, to methods and types of data collected, or to the
focus on a visualization’s roles in processes such as data                  scope of evaluation. Table 1 summarizes existing taxo-
analysis, or on specific environments to which visualiza-                   nomies and their respective foci.
tions might be applied. Evaluations in these stages are very                   The diversity exhibited in Table 1 reflects the complexity
relevant, important, and specific to data analysis as                       and richness of existing evaluation methodologies and the
previously discussed [10], [41], [54], [73]. As it is very                  difficulty in deriving an all encompassing taxonomy. For
common in visualization to assess visualization algorithms,                 example, using research goals as a taxonomy axis is
we extend our notion of evaluation also to these types of                   challenging because the same evaluation method may be
systematic assessments which may not always involve                         used for different purposes. One example is laboratory-
participants (Section 6.7).                                                 based studies measuring task completion time to compare
   With this broad view, the outputs of evaluations are also                between interfaces (also known as “head-to-head” compar-
diverse: they may be specific to a visualization to inform
                                                                            isons). Such a method can be used to summarize the
design decisions, or more general such as models and
                                                                            effectiveness of an interface (“summative”) or to inform
theories, such as perceptual and cognitive modeling from
                                                                            design (“formative”) [2], [22]. Similar arguments apply to
controlled experiments, and development of metrics based
                                                                            classifying methods based on design and development
on automatic evaluation of visual quality or salience. We
                                                                            cycles—the same method may be used differently at
highlight these diverse outcomes in more detail in Section 6.
                                                                            different stages. For example, observational techniques
                                                                            may be first used in the pre-design stage to gather
3       HOW TO USE THIS PAPER                                               background information [41], but may also be used post-
This paper is meant to shed light on four specific aspects of               release to understand how the newly introduced technol-
information visualization evaluation:                                       ogy affects workflows. Given these difficulties, we decided
                                                                            on a different approach where we based our discussions on
    1.    Choosing a focus: A clear focus is a necessary                    commonly encountered evaluation scenarios instead of
          prerequisite for successful evaluation [15], [22]. We             methods. Across all the papers we examined, we explored
          highlight possible evaluation foci within two scenar-             how these scenarios relate to evaluation goals and questions
          io categories: the visualization itself (e.g., visual             (Section 5). Our goal is to encourage an approach to
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
1522                                     IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,               VOL. 18,   NO. 9,   SEPTEMBER 2012

<a id="p003-b002"></a>

<!-- p003-b002 -->
TABLE 1
                    Taxonomies of Evaluation Methods and Methodologies Based on the Type of Categorization,
                              the Main Categories Themselves, and the Corresponding References

<a id="p003-b003"></a>

<!-- p003-b003 -->
evaluation that is based on evaluation goals and questions                  evaluations increased over time, the quality of the evalua-
instead of methods and to encourage our community to                        tion may not have improved, judging from the decreased
adopt a wider view on the possibilities for evaluation in                   median number of participants in quantitative studies, an
information visualization.                                                  over-reliance on students as participants, and a lack of
                                                                            gender-balanced samples. The second is Perer and Shnei-
4.2 Systematic Reviews                                                      derman’s analysis of three years of publications in the
Our work here is closest in spirit to a subtype of systematic               proceedings of the IEEE Symposium on Information
review known as narrative review, which is a qualitative                    Visualization (InfoVis) and one year of the IEEE Sympo-
approach and describes existing literature using narratives                 sium on Visual Analytics Science and Technology (VAST)
without performing quantitative synthesis of study results                  [57]. In these corpora, the researchers did not find an
[75]. Systematic reviews is itself a type of evaluation method              increase in proportion of papers with evaluation. Similar to
with the purpose to provide snapshots of existing knowl-                    Barkhuus and Rode, Perer and Shneiderman also expressed
edge based on published study results, where “the                           concerns over the quality of evaluation, as most evaluations
researcher focuses on formulating general relations among                   conducted were controlled studies with non-domain ex-
a number of variables of interest” that “hold over some                     perts as test subjects. Our focus in contrast was to derive a
relatively broad range of populations,” [53, p. 158]. To the                common set of evaluation questions and approaches to
best of our knowledge, two systematic reviews on evalua-                    ground the development of our scenarios.
tion methods have been conducted, both counted the
number of papers in specific corpora based on the authors’                  4.3 Evaluation Methodologies and Best Practices
classification scheme.                                                      There exist a large number of publications that reflect
   The first is Barkhuus and Rode’s analysis on 24 years of                 upon current practices in visualization evaluation and
publications in the proceedings of the SIGCHI Conference                    provide recommendations to improve our status quo. In
on Human Factors in Computing Systems (CHI) [5]. The                        fact, the BELIV workshop was created as a venue for
researchers found that while the proportion of papers with                  researchers and practitioners to “explore novel evaluation
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
LAM ET AL.: EMPIRICAL STUDIES IN INFORMATION VISUALIZATION: SEVEN SCENARIOS                                                                      1523

<a id="p004-b002"></a>

<!-- p004-b002 -->
methods, and to structure the knowledge on evaluation in                                              TABLE 2
information visualization around a schema, where re-                        Venues Included in the Opencoding Stage to Identify Commonly
searchers can easily identify unsolved problems and                                     Encountered Evaluation Goals, Which
research gaps” [8]. Providing a complete summary of                                      Were Then Distilled into Scenarios
publications on evaluation probably deserves a paper of
its own. In this section, we briefly outline some of the
commonly discussed challenges.
    Kosara et al. advocated the use of studies in visualization
by enumerating situations where and how user studies may
be useful [14]. This paper is close to ours in spirit, except we
cover a more diverse set of methods and organize
evaluation situations into scenarios.
    Other publications focus on different aspects of evalua-
tion. In terms of study design, many papers urge                            “Paper with Eval” denotes the number of papers which report at least
researchers to think about the goals of the evaluation [15],                one evaluation.
[22]. The evaluation goal heavily influences the choice of
research strategies, the types of data and methods of                       5.1 Compiling an Evaluation Dictionary
collection, and the methods of data analysis. For example,                  Initially, to gather a description of existing evaluation
if the goal is to understand how a new technology affects                   practices in the visualization community, we compiled a
user workflow, then realism is important. In other words,                   dictionary of terms of existing evaluation strategies and
data collection should be from the field using non-intrusive                techniques, and collected matching definitions and example
collection mechanisms. Several researchers of these papers                  evaluation publications. Our list was compiled based on
that reflect on evaluation commented on the lack of realism                 information solicited by e-mails to participants of the BELIV
in the existing evaluation efforts, which are mostly                        2008 workshop combined with our own knowledge and
laboratory based, using basic visual search tasks with                      research (e.g., [8], [10], [38], [41], [47], [63]). The process
non-target users. One way to ensure validity is to ensure                   yielded a wealth of information which required additional
realism in tasks, data, workflow, and participants [2], [22],               structure but provided us with a richer understanding of
[63]. An alternative is to provide an understanding of                      the types of evaluations commonly used and helped to
situations where some of these requirements can be                          provide necessary context for us to perform the open coding
released, for example, using non-domain expert partici-                     and tagging of the evaluation papers.
pants. Other commonly discussed topics of study design
include the short durations of most study periods [63], the                 5.2 Open Coding and Tagging
narrowness of study measurements [63], and possibly                         From the set of terms and examples collected in the first
insufficient training of participants [2]. In terms of data                 phase, we derived an initial eight tags that classified
analysis, concerns have been expressed on the narrowness                    evaluations in terms of evaluation goals. These tags included
of questions posed and statistical methods applied [22].                    topics such as data analysis, decision making, or usability.
Given that most of the existing evaluation studies are one-
                                                                            We selected four major visualization publication venues
offs, researchers have suggested doing follow-up studies to
                                                                            from which to identify commonly encountered evaluations:
further investigate unanswered questions [22], [47].
    In short, all aspects of evaluation require careful                        .    Eurographics/IEEE Symposium on Visualization
attention. This paper is an effort to provide a different                           (EuroVis).
kind of guide for visualization researchers and practi-                        . IEEE Information Visualization (InfoVis).
tioners through concrete scenarios illustrated with exist-                     . IEEE Visual Analytics Science and Technology
ing evaluations.                                                                    (VAST).
                                                                               . Palgrave’s Journal of Information Visualization (IVS).
5   METHODOLOGY                                                             From these sources, we collected 850 papers and conducted
                                                                            a first coding pass that culled papers that did not mention
Early in our project, we decided to take a descriptive rather
                                                                            evaluation and left 361 evaluation papers for further
than a prescriptive approach. In other words, our paper
                                                                            consideration. Publication years and number of papers
describes and comments on existing practices in evaluating
visualizations, but we do not prescribe specific evaluation                 involved are summarized in Table 2.
methods as we believe that the final decision on appro-                        Three of us performed the open coding [17] on parts of
priate methods should be made on a case-by-case basis. We                   the data set. For each paper, we attached one or more tags
identified seven evaluation scenarios most commonly                         from the initial set and recorded the reported evaluation
encountered by visualization researchers which are meant                    goals and methods. As we proceeded in coding selected
to inform the development of appropriate evaluation                         publications, each of us independently added new tags to
strategies. The scenarios were derived from data collected                  the initial collection, which were then shared among all
through open coding [17] of publications from four                          coders during the tagging period. At regular intervals, we
information visualization publication venues (see Table 2).                 discussed the definition of each tag within the group and
Our approach included the following steps to derive the                     through consensus, adopted new tags from the other coders
scenarios:                                                                  during the process and recoded papers with the new tags.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
1524                                     IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,               VOL. 18,   NO. 9,   SEPTEMBER 2012

<a id="p005-b002"></a>

<!-- p005-b002 -->
TABLE 3
         Original Coding Tags, the Number of Papers Classified, and the Final Scenario to Which They Were Assigned

<a id="p005-b003"></a>

<!-- p005-b003 -->
By the end of our publication coding, we had expanded                    the common evaluation questions, and applicable evaluation
our initial tag set to 17 tags. Details of the tags can be found in         methods along with concrete examples. Our scenarios can be
Appendix A, which can be found on the Computer Society                      roughly classified into two broad categories based on their
Digital Library at http://doi.ieeecomputersociety.org/                      focus. We call these two categories process and visualization.
10.1109/TVCG.2011.279.                                                      In the process group, the main goal of the evaluation is to
                                                                            understand the underlying process and the roles played by
5.3 Developing Scenarios                                                    visualizations. While evaluators may record specific user
We engaged in one final coding pass during which we                         performance and feedback, the goal is to capture a more
grouped tags based on similarity of evaluation goals and                    holistic view of the user experience. In contrast, evaluations
research questions. We removed two tags which focused on                    can focus on the visualization itself, with the goal to test
the development of new evaluation methodologies. We                         design decisions, explore a design space, bench-mark against
considered these to be beyond the scope of this paper as                    existing systems, or to discover usability issues. Usually in
they did not represent actual evaluations which had been                    these evaluations, a part of the visualization system or
conducted. Our final set included seven tags which                          technique is tested. We describe the four visualization
represent main distinguishable evaluation questions and                     scenarios in Sections 6.1, 6.2, 6.3, and 6.4, followed by the
goals. This consolidation provides a more manageable list                   three process scenarios in Sections 6.5, 6.6, and 6.7.
of elements in order to facilitate the applicability of these
goals and questions in practice, as described in Section 3.                 6.1   Understanding Environments and Work
Scenarios, tags, and paper numbers for each are summar-                           Practices
ized in Table 3 in the Appendix, available in the online                    Evaluations in the UWP group elicit formal requirements
supplemental material. The full set of papers with their                    for design. In most software development scenarios, it is
codes can be found at: http://bit.ly/7-vis-scenarios. The                   recommended to derive requirements from studying the
building of scenarios is, thus, the result of an iterative                  people for which a tool is being designed [77] but, as noted
process among coders where phases of individual grouping                    by Munzner [54, p. 7 ], “hardly any papers devoted solely to
and collective consolidation alternated.                                    analysis at this level [problem characterization] have been
                                                                            published in venues explicitly devoted to visualization.”
                                                                            Similarly, Plaisant [63] has argued that there is a growing
6      SCENARIOS                                                            need for information visualization designers to study the
In this section, we present our seven evaluation scenarios                  design context for visualization tools including tasks, work
which represent classes or categories of evaluations we                     environments, and current work practices. Yet, in informa-
found in our literature analysis. For each scenario, we                     tion visualization research studying people and their task
provide a definition, identify the popular goals and outputs,               processes is still rarely done and only few notable
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
LAM ET AL.: EMPIRICAL STUDIES IN INFORMATION VISUALIZATION: SEVEN SCENARIOS                                                                      1525

<a id="p006-b002"></a>

<!-- p006-b002 -->
exceptions have published results of these analyses (e.g.,                     Interviews. There are several types of interviewing
[40], [85]).                                                                techniques that can be useful in this context. Contextual
                                                                            inquiry [36] is a user-centered design method in which
6.1.1 UWP: Goals and Outputs                                                people are first observed and then interviewed while
The goal of information visualization evaluations in this                   engaged in their daily routines within their natural work
category is to work towards understanding the work,                         environment. The researcher tries to interfere as little as
analysis, or information processing practices by a given                    possible. Picking the right person to interview is critical in
group of people with or without software in use. The output                 order to gather useful results. Interviews can also be
of studies in this category are often design implications                   conducted within a laboratory context. These types of
based on a more holistic understanding of current work-                     interviews are more common in information visualization:
flows and work practices, the conditions of the working                     Pretorius and van Wijk interviewed domain experts about
environment itself, and potentially current tools in use.                   their own data to learn how they analyzed state transition
Studies that involve the assessment of people’s work                        graphs [65], Brewer et al. [9] interviewed geo-visualization
practices without a specific visualization tool typically have              experts to learn about multi-disciplinary science collabora-
the goal to inform the design of a future visualization tool.               tion and how it could be facilitated with collaborative
Studies involving the assessment of workflow and practices                  visualization tools.
with a specific tool in people’s work environment try to                       Laboratory observation. Observational studies also
assess factors that influence the adoption of a tool to find                sometimes occur in laboratory settings in order to allow
out how a tool has been appropriated and used in the                        for more control of the study situation. For example, two
intended work environments in order to elicit more specific                 studies from the collaborative visualization field looked at
                                                                            how visualizations are used and shared by groups of people
design advice for future versions of the tool.
                                                                            and how visualization results are integrated [40], [67]. Both
6.1.2 UWP: Evaluation Questions                                             studies presented rich descriptions of how people inter-
Questions in this scenario usually pertain to identifying a                 acted with visualizations and how these activities could be
set of features that a potential visualization tool should                  supported by technology.
have. For example,                                                          6.2 Evaluating Visual Data Analysis and Reasoning
   .    What is the context of use of visualizations?                       Evaluations in the VDAR group study if and how a
   .    In which daily activities should the visualization tool             visualization tool supports the generation of actionable and
        be integrated?                                                      relevant knowledge in a domain. In general, VDAR evalua-
   .    What types of analyses should the visualization                     tion requires fairly well developed and reliable software.
        tool support?
                                                                            6.2.1 VDAR: Goals and Outputs
   .    What are the characteristics of the identified user
        group and work environments?                                        The main goal of VDAR evaluation is to assess a
   .    What data are currently used and what tasks are                     visualization tool’s ability to support visual analysis and
        performed on it?                                                    reasoning about data. Outputs are both quantifiable metrics
   .    What kinds of visualizations are currently in use?                  such as the number of insights obtained during analysis
        How do they help to solve current tasks?                            (e.g., [69], [70]), or subjective feedback such as opinions on
   .    What challenges and usage barriers can we see for a                 the quality of the data analysis experience (e.g., [74]).
        visualization tool?                                                    Even though VDAR studies may collect objective
                                                                            participant performance measurements, studies in this
6.1.3 UWP: Methods and Examples                                             category look at how an integrated visualization tool as a
There is a wealth of methods available for studying work                    whole supports the analytic process, rather than studying
environments and work practices. Most of these rely on                      an interactive or visual aspect of the tool in isolation. We
qualitative data such as interviews or observational data,                  cover the latter case in our scenario Evaluating User
audio-visual, or written material.                                          Performance in Section 6.5. Similarly, VDAR is more process
   Field observation. Observational methods are the most                    oriented than the identification of usability problems in an
common way to elicit information on current work practices                  interface to refine the prototype, which is covered in
and visualization use. We further describe the goals and                    Section 6.6. Here, we first focus on the case of a single user.
basics of this method in Section 6.6. In information                        Collaboration is discussed in Section 6.4, Evaluating
visualization, few published examples exist of this type of                 collaborative data analysis.
study, but more have been called for [41]. In a study on                    6.2.2 VDAR: Evaluation Questions
automotive engineers Sedlmair et al. [72] observed eight
                                                                            Data analysis and reasoning is a complex and ill-defined
analysis experts at their workplace and derived information
                                                                            process. Our sample questions are inspired by Pirolli and
on domain-specific tool use, why tools were used, and
                                                                            Card’s model of an intelligence analysis process [61],
when participants entered in collaborative analysis. The
                                                                            considering how a visualization tool supports:
researchers then used the results of the study to derive a set
of requirements for the design of data analysis systems for                    .     Data exploration? How does it support processes
this domain. Both this study and another by Tory and                                 aimed at seeking information, searching, filtering,
Staub-French [85] combined observation with interviews.                              and reading and extracting information?
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
1526                                     IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,                 VOL. 18,   NO. 9,   SEPTEMBER 2012

<a id="p007-b002"></a>

<!-- p007-b002 -->
.    Knowledge discovery? How does it support the                        their data sets” [74, p. 313]. To answer this data exploration
        schematization of information or the (re-)analysis                  question, Seo et al. used participatory observations [10, p. 36]
        of theories?                                                        and interviews, conducted weekly for a period of four to six
   .    Hypothesis generation? How does it support hy-                      weeks, during which time the participants were asked to use
        pothesis generation and interactive examination?                    the tool in their everyday work.
   .    Decision making? How does it support the commu-                         Insight-based evaluations try to capture insight as “an
        nication and application of analysis results?                       individual observation about the data by the participant, a
                                                                            unit of discovery” [69, p. 4]. Data collection methods
6.2.3 VDAR: Methods and Examples                                            proposed are either the diary method or capturing video
Studying how a visualization tool may support analysis and                  using a think-aloud protocol. For example, Saraiya et al.
reasoning is difficult since analysis processes are typically               conducted a longitudinal study with biologists and bioinfor-
fluid and people use a large variety of approaches [40]. In                 maticians using real-life microarray data [70]. The goals of the
addition, the products of an analysis are difficult to                      study were to deepen understanding of the visual analytics
standardize and quantify since both the process and its                     process, to understand how existing tools were used in
outputs are highly context sensitive. For these reasons,                    analysis, and to test out an evaluation methodology. Data
evaluations in VDAR are typically field studies, mostly in                  were collected using a diary maintained by the participants to
the form of case studies. They strive to be holistic and to                 record the analysis process, the insights gained from the data,
achieve realism by studying the tool use in its intended                    and which visualization and interaction techniques led to
environment with realistic tasks and domain experts. How-                   insights, and the successes and frustrations participants
ever, we also found experiments in which parts of the analysis              experienced with the software tools. Over the course of the
process were controlled and studied in a laboratory setting.                study, debriefing meetings were held once every two to three
   In this section, we focus on techniques that individual                  weeks for the researchers to discuss data insights and
researchers can use, as opposed to community-wide                           participants’ experience with the tools. Unlike the MILC
evaluation efforts such as the Visualization Contest or the                 studies, the researchers did not provide any help with the
Visual Analytics Challenge [16]. The Visual Analytics                       software tools and did not guide their participants’ data
Challenge provides a useful collection of data sets and                     analysis in any way to minimize the study’s impact on the
analysis problems that can be used in wider VDAR                            participants’ normal data analysis process.
evaluations, and a repository of examples that demonstrate                      Laboratory observation and interviews. Similar to case
how other tools have been used to analyze the data.                         studies, laboratory observation and interviews are qualita-
   Case studies. Case studies conducted in VDAR are                         tive methods to capture the open endedness of the data
mostly studies on domain experts interacting with a                         analysis and reasoning processes. For example, Grammel et
visualization to answer questions from Section 6.2.2. For                   al. used these methods to study how information visualiza-
example, Trafton et al. conducted an exploratory investiga-                 tion novices construct visualizations [23]. Participants, who
tion in the field to answer questions such as “How are                      were students, were given a fictitious data set to look for
complex visualizations used, given the large amount of data                 interesting insights. Since the researchers’ focus was on the
they contain?” [86, p. 16 ]. The researchers recruited three                process of constructing visualizations, rather than evaluat-
pairs of meteorological forecasters and asked them to                       ing a specific visualization, their study used commercial
prepare a written information brief for a flight. The                       visualization software (Tablaeu) via a human mediator,
researchers then open-coded video data to capture the type                  both to minimize the effects of the interface and to gain a
of visualizations used in various stages of the analysis.                   deeper understanding of the construction process. These
   In some cases, researchers collect data over a longer                    observations, as well as follow-up interviews, were open
period of time (from weeks to months) with participants                     coded to derive abstract models on the construction process
working on their own problems in their normal environ-
                                                                            and its barriers.
ments. Analysis activities may be captured by automated
                                                                                Controlled experiment. Given the open-ended nature of
logging or self-reporting, using, for example, a diary
                                                                            exploration and the specificity of case studies, it may be
method [81]. Two examples of long-term case studies in
                                                                            beneficial to isolate important factors in the analysis process
visualization evaluation are: Multidimensional In-depth
                                                                            and study them using laboratory experiments. For example,
Long-term Case studies (MILCs) [76] and insight-based
evaluations [70].                                                           the Scented Widgets study measured how social navigation
   MILC evaluations use multiple techniques such as                         cues implemented as scents affected information foraging
observations, interviews, surveys, and automated logging                    behaviors. Rather than capturing all aspects of VDAR as in
to assess user performance, interface efficacy, and interface               case studies, the researchers encapsulated participant
                                                                            behaviors in a few metrics: the number of revisits, the
utility [76]. In MILC studies, researchers offer assistance to
                                                                            number of unique discoveries, and subjective preferences
participants in learning the system, and may improve the
                                                                            based on log data [92].
systems based on participant feedback. MILC evaluations
                                                                                In some cases, experimenters may use the controlled
have been employed, for instance, to evaluate knowledge
                                                                            experiment method as part of their evaluation methods to
discovery tools [74] and the integration of statistics and
                                                                            study VDAR. One example is an early insight-based
visualization [57]. The main question Seo et al. set out to
                                                                            evaluation [69].1 To attain the goals of measuring selected
answer in their MILC case studies using the Hierarchical
Clustering Explorer (HCE) was “how do HCE and the rank-                        1. This was an earlier iteration of insight-based evaluation, different from
by-feature framework change the way researchers explore                     the longitudinal study mentioned above.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
LAM ET AL.: EMPIRICAL STUDIES IN INFORMATION VISUALIZATION: SEVEN SCENARIOS                                                                      1527

<a id="p008-b002"></a>

<!-- p008-b002 -->
visualization tools’ ability to generate insight, the study                 6.3.3 CTV: Methods and Examples
used a protocol that combined elements of the controlled                    Controlled experiments. Quantitative studies aiming at
experiment and usability testing methods. The basic                         measuring improvement in communication or learning,
structure of the evaluation was a 3 (data sets)  5                         employ traditional controlled experiment schemes. As an
(visualization tool) between subjects design. Given the                     example, Sedig et al. studied how students used a
goals to identify and understand insight occurrence, this                   mathematical visualization tool aimed at teaching basic
evaluation collected a rich set of qualitative data using                   concepts in geometry [71]. A similar study was performed
usability testing techniques. For example, a think-aloud                    in the context of a basic programming class, using a tool
protocol was used to solicit participants’ observations,                    that visualized the role of variables in program animation
inferences, and conclusions about the data set; a diary                     [68]. This last experiment is of special interest as it
method to record participants’ estimations of potential                     highlights how measuring learning may require the study
insights attainable; open coding of video recordings to                     to span several weeks or months and may, thus, take longer
capture and characterize individual occurrences of insights                 than other traditional evaluations.
by domain experts.                                                             Field observation and interviews. Qualitative methods
   Another example is an evaluation of four visual                          like direct observation and interviews are often paired up
analytics systems, including two versions of Jigsaw [44].                   with experiments in this context. The studies mentioned
Non-expert participants were asked to identify a hidden                     above, for instance, both complement their quantitative
terrorist plot using 50 documents viewed with one of the                    approach with observations of tools in use to understand
four systems. In addition to scoring accuracy of the                        how information is acquired and to better investigate the
answers, Kang et al. also analyzed participants’ activity                   process that leads to concept learning. In the context of
patterns such as document viewing, querying, and note                       casual visualizations, that is, visualizations that “depict
taking. These patterns revealed participants’ investigative                 personally meaningful information in visual ways that
strategies, how Jigsaw influenced these strategies, as well                 support everyday users in both everyday work and non-
as their sense-making processes.                                            work situations” [64], direct observation and interviews are
6.3   Evaluating Communication through                                      common evaluation techniques. For example, Skog et al.
      Visualization                                                         [78] studied the use of an ambient visualization to convey
Evaluations in the CTV group study if and how commu-                        real-time information of bus departure times in a public
nication can be supported by visualization. Communication                   university area. The evaluation consists of interviewing
can pertain to aspects such as learning, teaching, and idea                 people and spending enough time in the area to understand
presentation as well as casual consumption of visual                        people’s interaction with the system. Viegas et al. [89]
information as in ambient displays.                                         studied a visual installation in a museum’s gallery. The
                                                                            authors observed the reactions of people to the installation
6.3.1 CTV: Goals and Outputs                                                and collected people’s impressions to draw conclusions on
Visualizations evaluated as part of this scenario typically                 the design. In a similar context, Hinrichs et al. [35] used an
have the goal or purpose to convey a message to one or                      observational and an open-coding approach to analyze how
more persons, in contrast to targeting focused data                         visitors in an art museum approached and interacted with a
exploration or discovery. Their effectiveness is usually                    visualization installation. From this, design considerations
measured in terms of how effectively such a message is                      for information visualizations in the museum context were
delivered and acquired. Ambient displays are a common                       derived. As noted by Pousman et al. [64], this kind of
example, as they are usually built to quickly communicate                   observational evaluation is often needed in such contexts
peripheral information to passers-by.                                       because it is necessary to capture data in a setting where
                                                                            people use the tools naturally.
6.3.2 CTV: Evaluation Questions
                                                                            6.4 Evaluating Collaborative Data Analysis
Studies in CTV are often intended to quantify a tool’s
                                                                            Evaluations in the CDA group study whether a tool allows
quality through metrics such as learning rate, information
                                                                            for collaboration, collaborative analysis, and/or collabora-
retention and accuracy, or qualitative metrics such as
                                                                            tive decision-making processes. Collaborative data analysis
interaction patterns of the way people absorb information
                                                                            differs from single-user analysis in that a group of people
or approach the tool. Questions thus pertain to the quality
                                                                            share the data analysis experience and often have the goal
with which information is acquired and the modalities
                                                                            to arrive at a joint conclusion or discovery.
with which people interact with the visualizations.
Examples are:                                                               6.4.1 CDA: Goals and Outputs
   .    Do people learn better and/or faster using the                      Evaluations in this group study how an information
        visualization tool?                                                 visualization tool supports collaborative analysis and/or
   .    Is the tool helpful in explaining and communicating                 collaborative decision-making processes. Collaborative sys-
        concepts to third parties?                                          tems should support both taskwork, the actions required to
   .    How do people interact with visualizations installed                complete the task, and teamwork, the actions required to
        in public areas? Are they used and/or useful?                       complete the task as a group [59]. For collaborative
   .    Can useful information be extracted from a casual                   visualization, this means that systems must not only
        information visualization?                                          support group work well, but also be good data analysis
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
1528                                     IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,               VOL. 18,   NO. 9,   SEPTEMBER 2012

<a id="p009-b002"></a>

<!-- p009-b002 -->
tools (taskwork). We cover the evaluation of taskwork and its               heuristics are based on the mechanics of collaboration [28],
questions in other scenarios and focus on teamwork here.                    [60] or low-level actions and interactions that a collaborative
   Studies in CDA have varying goals and, thus, are                         system must support in order for group members to be able
defined by different types of outputs. Most commonly                        to complete a task in a shared manner. Other sets include
CDA studies aim to gain a more holistic understanding of                    heuristics based on the locales framework to study the
group work processes or tool use during collaboration with                  influences of locales (places) on social activities [25] or
the goal to derive concrete design implications. It is                      awareness [19].
recognized that the study of teamwork is difficult due to                      Log analysis. Analysis of logs and user traces were the
a number of factors including a greater number of variables                 main sources of information analyzed in studies of
to consider, the complicated logistics of evaluation, or the
                                                                            distributed collaborative web-based information visualiza-
need to understand and judge group work processes [55].
                                                                            tion tools [33], [90]. Both analyses resulted in descriptions
Collaborative systems (or groupware) can be evaluated on a
number of different levels such as the organization it will be              and statistics of collaborative use of system features and
embedded in, the team or group that will be using it, or the                suggestions for system improvement. Studies involving the
system itself. While there have been a number of papers                     investigation of logs or comments have the advantage of
concerned with the evaluation of groupware, only few                        being relatively easy to conduct and evaluate. Little
examples of evaluations for collaborative information                       interaction with participants is used to analyze specific
visualization systems exist.                                                system features or tool use overall. To elicit more user-
                                                                            specific data, these evaluations have been combined with
6.4.2 CDA: Evaluation Questions                                             questionnaires or interviews (e.g., [33]). On the other hand,
For the evaluation of collaborative visualization systems,                  these studies cannot clearly evaluate interaction between
the following questions may be relevant:                                    participants, their work or other processes that do not
                                                                            generate a traceable log entry.
   .    Does the tool support effective and efficient collabora-               Field or laboratory observation. Qualitative user studies
        tive data analysis?                                                 have a long tradition within CSCW [26], [55]. Observational
   .    Does the tool satisfactorily support or stimulate                   studies are often combined with logging of user activity,
        group analysis or sensemaking?                                      questionnaires, or interviews. For example, two recent
   .    Does the tool support group insight? [80]                           studies on co-located synchronous collaboration [39], [50]
   .    Is social exchange around and communication about                   used such a combination of techniques to analyze group
        the data facilitated?                                               work and analysis processes. Effectiveness of group work
   .    How is the collaborative visualization system used?                 was assessed in the first study by using a scoring
   .    How are certain system features used during                         mechanism from the VAST contest [16], [39]. Effectiveness
        collaborative work? What are patterns of system use?                of group work is often not well represented by time and
   .    What is the process of collaborative analysis? What                 accuracy which are common metrics for usability studies.
        are users’ requirements?                                            Isenberg et al. studied how effectively their collaborative
                                                                            social network analysis system CoCoNutTrix [38] supported
6.4.3 CDA: Methods and Examples                                             the collaborative analysis process. They performed an
As research on collaborative visualization systems has only                 observational study and post-session interview to assess
recently begun to receive increased research attention, there               how well the system supported the following factors of the
are only few examples of studies in this area. We thus draw                 collaboration: explicit communication, consequential com-
on results from both Computer-Supported Cooperative                         munication, group awareness, coordination of actions,
Work (CSCW) as well as the small set of recent studies in                   group insight, subjective work preferences, and general
collaborative visualization.                                                user reactions to the collaborative environment. Also,
    Within the field of CSCW, a multitude of study and data                 previous studies exist which have also used timing
collection methods have been applied to the analysis of                     information to assess group work effectiveness [52].
group work [55], [58]. The context of group work (e.g., group                  Without digital systems, other more exploratory obser-
configuration, work environment) has been identified as a                   vational studies in visualization and visual analytics
critical factor in the evaluation and acceptance of collabora-              assessed group analysis processes [40] or collaborative
tive systems (e.g., [27], [55], [87]). Yet, several research                information synthesis [67]. For collaborative systems,
papers have outlined the practicality of early formative                    studies of work processes are often seen as important
evaluations in less authentic environments (e.g., [60], [87]).              prerequisites for estimating outcomes of tool use and to
Coupled with later more situated fieldwork, a clearer                       develop mature CSCW tools [55].
picture of collaborative systems in use and their influence                    In contrast to single-user systems, collaborative visual
on groups and organizations can be obtained. Here, we                       analysis systems must also consider the groups’ interactions
highlight a number of possible evaluation techniques.                       and possible harmony/disharmony as they proceed in their
    Heuristic evaluation. Heuristic evaluation has been                     joint discovery efforts. Stahl [80] defines the notion of group
previously proposed for the evaluation of visualization                     cognition as “computer-supported collaborative knowledge
systems [83], [95]. Finding an appropriate set of heuristics is             building” and recommends the study of this collaborative
the main challenge for visualization systems not only to                    knowledge building through discourse analysis and ob-
evaluate taskwork [95]. For the evaluation of teamwork, a                   servation. It would be interesting to combine this approach
set of heuristics for the assessment of effectiveness and                   with insight-based methodologies (e.g., [70]) for the study
efficiency of collaboration has been proposed [4]. These                    of group insight.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
LAM ET AL.: EMPIRICAL STUDIES IN INFORMATION VISUALIZATION: SEVEN SCENARIOS                                                                      1529

<a id="p010-b002"></a>

<!-- p010-b002 -->
6.5 Evaluating User Performance                                             scalability of particular visualization techniques. For exam-
Evaluations in the UP group study if and how specific                       ple, Yost and North investigated the perceptual scalability of
features affect objectively measurable user performance.                    different visualizations using either a 2-megapixel display or
                                                                            with data scaled up using a 32 megapixel tiled display [94].
6.5.1 UP: Goals and Outputs                                                 Another example is Lam et al.’s study to assess effects of
User performance is predominantly measured in terms of                      image transformation such as scaling, rotation, and fisheye
objectively measurable metrics such as time and error rate,                 on visual memory [48]. In some cases, these experiments can
yet it is also possible to measure subjective performance such              be performed outside of laboratories. An increasingly
as work quality as long as the metrics can be objectively                   popular approach is crowdsourcing using Amazon’s Me-
assessed. The most commonly used metrics are task                           chanical Turk service (http://aws.amazon.com/mturk/).
completion time and task accuracy. Outputs are generally
                                                                            Interested readers are directed to validation studies of the
numerical values analyzed using descriptive statistics (such
                                                                            method [30], [45].
as mean, median, standard deviations, and confidence
                                                                               The second main evaluation goal in UP is to benchmark a
intervals) and modeled by such methods as ANalysis Of
                                                                            novel system or technique with existing counterparts. These
VAriance (ANOVA) to partition observed variance into
components.                                                                 are sometimes known as head-to-head comparisons as
                                                                            participants perform the same tasks on all study interfaces.
6.5.2 UP: Evaluation Questions                                              Interface effectiveness is usually defined by objective
Questions addressed using evaluation methods in the UP                      measurements such as time and accuracy. One example
group are generally narrow and determined prior to the start                includes the SpaceTree study, where a novel tree browser
of the evaluation. There are basically two types of questions:              was compared with a hyperbolic tree browser and an
                                                                            Explorer-type interface which displayed tree data for a
   .    What are the limits of human visual perception and                  number of node-finding and navigation tasks [62].
        cognition for specific kinds of visual encoding or                     While study metrics are most commonly time and
        interaction techniques?
                                                                            accuracy, researchers are starting to look at different
   .    How does one visualization or interaction techni-
                                                                            metrics. One example is memorability. Examples include
        que compare to another as measured by human
                                                                            a study on spatial location memory using Data Mountain in
        performance?
                                                                            the short term [66], and six months later [18]. In cases
6.5.3 UP: Methods and Examples                                              where quality of work instead of objective measures are
Controlled experiments. In order to answer evaluation                       used as metrics, expert evaluators are required. One
questions with quantitative and statistically significant                   example is Hornbæk and Frokjær’s study on document
results, evaluations in the UP group require high precision.                visualization, where authors of the documents were asked
The most commonly used methodologies involve an                             to determine quality of essays produced by participants
experimental design with only a small number of variables                   [37]. Individual differences may also play a role in user
changed between experiment conditions such that the                         performance [11]. For example, in the evaluation of Life-
impact of each variable can be measured ([10, p. 28]; [53,                  Lines, Alonso et al. looked at the interaction between
p. 156]). Methods are commonly referred to as controlled                    participants’ spatial visualization ability and display format
experiments, quantitative evaluation, or factorial design experi-           (LifeLines versus Tabular) in displaying temporal personal
ments. A controlled experiment requires the abstraction of                  history information [1].
real-life tasks to simple tasks that can be performed by a                     Field logs. Systems can automatically capture logs of
large number of participants repeatedly in each study                       users interacting with a visualization. Evaluators analyze
session [63]. Due to the need of a relatively large number of               these logs to draw usage statistics or single out interesting
participants, researchers often need to recruit non-experts.
                                                                            behaviors for detailed study. This kind of evaluation,
As a result, study tasks have to be further abstracted to
                                                                            especially when performed in web-based environments,
avoid the need for domain knowledge. Both types of task
                                                                            has the advantage of providing a large number of
abstractions may sacrifice realism. One reason to study
                                                                            observations for evaluation. Also, participants can work
human perceptual and cognitive limits is to explore the
design space for visualization and interaction techniques.                  in their own settings while data are collected, thus
The outcomes of these studies are usually design guide-                     providing a type of ecological validity. Two recent works
lines, and in some cases, models. For example, Tory et al.                  used log-based evaluation. Mackinlay et al. [49] used
explored the design space of point displays and information                 computer logs to evaluate the visual effectiveness of a
landscape displays, dimensionality, and coloring method to                  function inserted into Tableau to suggest users’ predefined
display spatialized data [84]. Bartram and Ware explored                    visual configurations for the data at hand. Viegas et al. [90]
the design space of using motion as a display dimension [6].                examined how their design decisions for ManyEyes were
Heer and Robertson explored the use of animated transi-                     received after deployment.
tions in linking common statistical data graphics [32].
   Another reason to study human perceptual limits is to find               6.6 Evaluating User Experience
out how people perform with specific visualization techni-                  Evaluations in the UE group study people’s subjective
ques under different circumstances such as data set sizes and               feedback and opinions in written or spoken form, both
display formats. The goal of the evaluation is to explore the               solicited and unsolicited.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
1530                                     IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,               VOL. 18,   NO. 9,   SEPTEMBER 2012

<a id="p011-b002"></a>

<!-- p011-b002 -->
6.6.1 UE: Goals and Outputs                                                 behaviors, or of direct user feedback when methods like
Evaluation of user experience seeks to understand how                       structured interviews and questionnaires are used.
people react to a visualization either in a short or a long                     Informal evaluation. An informal user feedback evalua-
time span. A visualization here may interchangeably be                      tion is performed by demoing the visualization to a group
intended as an initial design sketch, a working prototype, as               of people, often and preferably domain experts, letting
well as a finished product. The goal is to understand to                    them “play” with the system and/or observe typical system
what extent the visualization supports the intended tasks as                features as shown by representatives. The method is
                                                                            characterized by a very limited degree of formalism. For
seen from the participants’ eyes and to probe for require-
                                                                            instance, it generally does not have a predefined list of tasks
ments and needs. Evaluations in UE produce subjective
                                                                            or a structured evaluation script as in usability tests. It is the
results in that what is observed, collected, or measured is
                                                                            simplest kind of evaluation and it is, probably for this
the result of subjective user responses. Nonetheless objec-
                                                                            reason, extremely common. These types of evaluations have
tive user experience measurements exist, for example,
                                                                            been used to: assess “intuitiveness and functionality” [43],
recording user reactions through the use of body sensors
                                                                            “probe for utility and usability” [21], “identify design flaws
or similar means [51]. Interestingly, several subjective
                                                                            and users’ subjective preferences” [79], “evaluate and
measures simply mirror the measures we have in user
                                                                            improve [our] implementation of the ideas” [20], or “to
performance, with the difference that they are recorded as
                                                                            solicit ideas for improvements and enhancements” [91].
they are perceived by the participant. Examples are:
                                                                                Usability test. A usability test is carried out by observing
perceived effectiveness, perceived efficiency, perceived
                                                                            how participants perform a set of predefined tasks. For each
correctness. Other measures include satisfaction, trust, and
                                                                            session, the evaluators take notes of interesting observed
features liked/disliked, etc. The data collected in such a                  behaviors, remarks voiced by the participant, and major
study can help designers to uncover gaps in functionality                   problems in interaction. The set of tasks is usually defined
and limitations in the way the interface or visualization is                to address a subset of features the designer deems
designed, as well as uncover promising directions to                        important for the project. What differentiates this method
strengthen the system. In contrast to UP (Evaluating User                   from the others is the careful preparation of tasks and
Performance, Section 6.5), the goal of UE is to collect user                feedback material like questionnaires and interview scripts.
reactions to the visualization to inform design. Tradition-                 Its main goal is to perfect the design by spotting major flaws
ally, studies in UP are more geared toward the production                   and deficiencies in existing prototypes [24]. Nonetheless it
of generalizable and reproducible results whereas those in                  can also serve the purpose of eliciting overlooked require-
UE tend to be specific to the given design problem. While                   ments. Wongsuphasawat and Shneiderman [93] ran a well-
VDAR (Evaluating Visual Data Analysis and Reasoning,                        structured usability test with eight participants to evaluate
Section 6.2) focuses on the output generated through the                    Similan, a data visualization tool for the analysis of
data analysis and reasoning process, UE looks more at the                   temporal categorical records. They ran the study with the
personal experience. UWP (Understanding Environments                        goal to “examine the learnability,” “assess the benefits,”
and Work Practices, Section 6.1) is similar to UE in that                   “determine if users could understand,” and to “observe the
prolonged user observation may take place. Nonetheless,                     strategies the users chose and what problems they encoun-
UWP focuses on studying users and their environment                         tered while using the tool.”
whereas UE focuses on a specific visualization.                                 Field observation. This method is similar to a usability
                                                                            test in that careful observation of users is involved. The
6.6.2 UE: Evaluation Questions                                              observation however happens in a real-world setting, where
The main question addressed by UE is: what do my target                     the system under study is used freely. The main goal of field
users think of the visualization? More specifically                         observations is to understand how users interact with the
                                                                            tool in a real setting and thus to derive useful information on
   1.   What features are seen as useful?                                   how it can be perfected. Often, the information extracted
   2.   What features are missing?                                          from this kind of study is a series of emergent patterns that
   3.   How can features be reworked to improve the                         can inspire new designs or improve the current one.
        supported work processes?                                           Sometimes, this kind of study can be followed by a more
   4.   Are there limitations of the current system which                   formal step of questionnaires or interviews to better under-
        would hinder its adoption?                                          stand the nature of the observed patterns. An example of
   5.   Is the tool understandable and can it be learned?                   field observation is the study of Vizster, a visualization for
                                                                            the exploration of online communities [31], where the
6.6.3 UE: Methods and Examples                                              authors observed usage in an “installation at a large party”
Evaluations in this category can take varied forms: they can                where participants were free to use the developed tool.
focus on understanding a small number of users’ initial                         Laboratory questionnaire. The large majority of con-
reactions, perhaps in depth (as in case studies) but they can               trolled experiments are followed by a subjective user
also collect extensive qualitative feedback with statistical                experiment rating phase where participants fill out a
relevance, for example, in the form of questionnaires.                      questionnaire to solicit their opinions and reactions to the
Evaluations can be short term to assess current or potential                tested visualization. These questions may be expressed in a
usage and long term to assess the adoption of a visualiza-                  five- or seven-point Likert Scale, or open-ended with free
tion in a real usage scenario. The output consists of data                  answers. While this phase of the evaluation is generally
recorded either during or after visualization use. The data                 coupled with evaluating user experiment studies, we include
can be the result of indirect expert collection of user                     it here as the method can be used alone. See Section 6.5 for
experience, when the evaluator takes notes on observed                      examples of controlled experiments.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
LAM ET AL.: EMPIRICAL STUDIES IN INFORMATION VISUALIZATION: SEVEN SCENARIOS                                                                      1531

<a id="p012-b002"></a>

<!-- p012-b002 -->
6.7 Evaluating Visualization Algorithms
Evaluations in the VA group study the performance and
quality of visualization algorithms by judging the generated
output quantitatively. A visualization algorithm is broadly
defined as a procedure that optimizes the visual display of
information according to a given visualization goal.

<a id="p012-b003"></a>

<!-- p012-b003 -->
6.7.1 VA: Goals and Outputs
Evaluations of visualization algorithms aim at: 1) showing
how a given solution scores in comparison to selected
alternatives; 2) exploring limits and behavior of the
algorithm according to data size, data complexity, special                  Fig. 1. Each year shows the average number of evaluations coded in
                                                                            each category. Bar height indicates an increase in number of
cases, etc. Algorithm evaluation normally targets perfor-                   evaluations reported overall.
mance or visualization quality. Performance is stated in
terms of computational efficiency, visualization quality is                 its effectiveness to state-of-the-art algorithms like PLSA+PE,
computed through the definition of a number of metrics.                     LSP, ISOMAP, MDS, and PCA. They used label prediction
                                                                            accuracy as a quality measure. Documents are labeled by a
6.7.2 VA: Evaluation Questions
                                                                            majority voting procedure and accuracy is measured in
Questions in this scenario usually pertain to the visual                    relation to the extent by which documents with the same label
effectiveness or computational efficiency with which data is                are located together while documents with different labels are
represented. Typical questions in this domain are:                          located far away from each other in the visualization space.
                                                                                Algorithmic performance. The analysis of algorithmic
   1.   Which algorithm shows the patterns of interest
                                                                            performance is so common in the whole domain of
        better?
                                                                            Computer Science that a full discussion of its features is
   2.   Which algorithm provides a more truthful represen-
                                                                            beyond the scope of the paper. Information visualization,
        tation of the underlying data?                                      by employing algorithms to display data in clever and
   3.   Which algorithm produces the least cluttered view?                  efficient ways, is of course also often evaluated in terms of
   4.   Is the algorithm faster than other state-of-the-art                 algorithmic efficiency as well as visual output. Good
        techniques? Under what circumstances?                               evaluations of algorithm performance use an experimental
   5.   How does the algorithm scale to different data sizes                setup in which alternative algorithms score on variations of
        and complexities?                                                   test data sets and parameters of interest (e.g., data size and
   6.   How does the algorithm work in extreme cases?                       complexity). For instance, Artero et al. [3] evaluate alter-
                                                                            native algorithms to uncover clusters in parallel coordi-
6.7.3 VA: Methods and Examples                                              nates. Peng et al. [56] test alternative heuristic search
Within this class, we found two main classes of methods:                    strategies for their axes reordering procedures and run a
visualization quality assessment and algorithmic perfor-                    number of experiments to see how their behavior changes
mance.                                                                      on different data sizes. Researchers might also use standard
   Visualization quality assessment. Many of the algo-                      benchmarking data sets, where available. One notable
rithms employed in visualization use non-trivial procedures                 example is the graph data sets from the AT&T Graph
to generate views optimized according to a stated visualiza-                Library (www.graphdrawing.org) which is used to evaluate
tion goal. In order to assess their effectiveness, researchers              graph-drawing algorithms.
have used automatic procedures which compare one
solution to another. The outcome of such an assessment
might be proof of a competitive algorithm or information on                 7    DISCUSSION
variations of the algorithm (e.g., alternative parameter                    Evaluation is becoming increasingly important in the field
settings). Visualization quality assessment is based on the                 of information visualization. The scenarios presented in this
definition of one or more image quality measures that                       paper provide an overview of the wide range of evaluation
capture the effectiveness of visual output according to a
                                                                            goals and questions in which the information visualization
desired property of the visualization.
                                                                            research community is currently engaged. In this project,
   Hao et al. [29] used metrics to compare different solutions
                                                                            we analyzed several hundred evaluation papers (Table 2)
to dynamic visualization measuring constancy of display and
usage of display space for a data stream monitoring tool.                   and surveyed existing evaluation taxonomies and guideline
Constancy is measured in terms of changed pixels over time                  papers (Table 1). In this section, we discuss evaluation
and display space in terms of used pixels in the available                  trends we observed from our analysis, as well as our
space. Bederson et al. [7] compared alternative ordered                     thoughts about evaluation guides.
TreeMap algorithms in terms of “the average aspect ratio of a
                                                                            7.1 Trends in Evaluation
TreeMap layout, and the layout distance change function,
which quantify the visual problems created by poor layouts”                 The most obvious trend we observed showed that, over the
and provide specific metrics for their computation. Chen et al.             years, evaluations have become more and more prevalent,
[12] compared alternative strategies to construct overview                  as seen in the continued increase in the number of papers
Dendrogram trees by comparing them through an abstraction                   reporting at least one evaluation (Fig. 1). The diversity of
quality measure. Chen et al. [13] proposed a novel projection               evaluation scenarios also increased with time, as seen in
technique to visualize large document corpora and compare                   Fig. 2. Nonetheless, the distributions of papers across the
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
1532                                     IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,               VOL. 18,   NO. 9,   SEPTEMBER 2012

<a id="p013-b002"></a>

<!-- p013-b002 -->
7.2 Reflecting on This Project
                                                                            While researching for this project, we analyzed a vast
                                                                            number of publications on evaluation (Table 1). From this
                                                                            analysis, we took a different approach to offer a different
                                                                            type of help to visualization evaluators. The main char-
                                                                            acteristics of our approach include our focus on goals and
                                                                            outputs rather than methods, offering a wide range of
                                                                            examples in our scenarios, and being descriptive rather
                                                                            than prescriptive.

<a id="p013-b003"></a>

<!-- p013-b003 -->
7.2.1 Focusing on Goals and Outputs, Not Methods
Fig. 2. Each year shows the average number of evaluations coded per
                                                                            Instead of focusing on evaluation methods, we focused on
scenario per venue.                                                         evaluation goals and outputs organized as scenarios. We
                                                                            took this approach because we believe that focusing on
seven scenarios remain skewed toward three scenarios:                       evaluation methods may limit the development of new
Evaluating User Performance (33 percent), Evaluating User                   methods to address existing evaluation goals, and inap-
Experience (34 percent), and Evaluating Visualization Algo-                 propriate application of commonly-used methods may limit
rithms (22 percent). Together, these three scenarios con-                   the type of evaluation questions posed, which in turn may
tribute to 85 percent of all evaluation papers over the years.              slow the progress of our understanding of visualization and
This is in sharp contrast to the 15 percent share of the                    its supported processes.
process scenarios.
    The fact that the process visualization group is much less              7.2.2 Many-to-Many Mapping between Scenarios and
represented in the literature is somewhat surprising as the                         Methods
questions in these groups are of high relevance to the field:               Our scenarios do not map directly to a single evaluation
how can visualization tools be integrated and used in                       method. In fact, many methods are listed under different
everyday work environments (UWP), how are tasks such as                     scenarios. This is due to two reasons. First, we hope by
reasoning, knowledge discovery, or decision making sup-                     providing a more diverse set of methods in each scenario,
ported (VDAR), how does a visualization support commu-                      we can encourage evaluators to explore creative ways to
nication and knowledge transfer (CTV), and how does a                       employ these methods. One example is the use of the
visualization support collaborative analysis (CDA). These                   controlled experiment method in Evaluating Visual Data
questions are of high practical value beyond specific                       Analysis and Reasoning. Given the complexity and open-
individual tools and can benefit both researchers and                       endedness of VDAR, it may be surprising that a relatively
practitioners in all areas of visualization.                                precise and unrealistic method [53] can be used. In our
    Several reasons could explain our current evaluation
                                                                            examples, this method was used in the Scented Widget
focus. Evaluation in the information visualization commu-
                                                                            study where the experimenters isolated the factor under
nity has been following the traditions of Human-Compu-
                                                                            investigation [92], and also as part of the evaluation
ter Interaction (HCI) and Computer Graphics (CG), both of
                                                                            methods in an insight-based study [69].
which also have traditionally focused on controlled
                                                                               The second reason for not providing a one-to-one
experiments, usability evaluations, and algorithm evalua-
                                                                            mapping is because we believe that no single evaluation
tions [24]. Possible questions include: 1) Are experiments
                                                                            scenario can be exhaustively inspected by one single
in the process group simply not being conducted as
frequently? 2) Does the fact that these types of evaluations                method in a single evaluation. For example, in Evaluating
are often lengthy requiring field studies, case studies, and                Collaborative Data Analysis, researchers have used many
extensive qualitative data analysis contribute to their                     methods including heuristic evaluations, log analysis, and
under-representation? 3) Are we as a community less                         observations. The variety of evaluation methods found in
welcoming to these different—often qualitative types—of                     our scenarios reflects the richness of evaluation opportu-
evaluations? The lack of evaluations in this group raises                   nities in these scenarios.
questions about whether we as a community should take
                                                                            7.2.3 Descriptive, Not Prescriptive
steps to encourage more evaluations in these groups to be
conducted and published.                                                    The last point we wish to reflect upon is our decision to take
    In the wider HCI community, it is comparatively                         a descriptive rather than prescriptive approach in our
common that publications solely focus on evaluation, often                  project. In other words, we do not assign a certain
using field and long-term evaluation approaches. In the                     evaluation method to a goal or question. Rather, we report
process evaluation group, we used examples from venues                      on studies with similar goals and questions. This is due to
outside of the four publication venues we coded to illustrate               our belief that selecting an appropriate evaluation method
scenarios in which these types of methodologies are more                    requires deep understanding of the evaluation goals and
common (e.g., [40], [57], [86], [87]). As our community                     constraints. This project is at too high a level to delineate
continues to grow, we need to think critically about what                   enough details to be prescriptive. Instead, we provide
types of evaluations we would like to see more of and how                   illustrative examples as starting points for evaluators in
they can benefit our community.                                             designing their own studies.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
LAM ET AL.: EMPIRICAL STUDIES IN INFORMATION VISUALIZATION: SEVEN SCENARIOS                                                                      1533

<a id="p014-b002"></a>

<!-- p014-b002 -->
8       CONCLUSION                                                          reflect on evaluation goals and questions before choosing
                                                                            methods. By providing a diverse set of examples for each
Our seven evaluation scenarios encapsulate the current
                                                                            scenario, we hope that evaluation in our field will employ a
state of evaluation practices in our surveyed papers. From
                                                                            more diverse set of evaluation methods.
the 850 papers, we surveyed in the EuroVis, InfoVis, and
                                                                               For this paper, we have coded four main visualization
VAST conferences as well as the IVS journal, we found
                                                                            venues and arrived at the codes we used through
361 papers that included evaluations. We coded these
                                                                            discussions and several coding passes. We encourage others
evaluations according to 17 tags (Table 3), condensed
                                                                            to extend our coding or to recode our results at a later point
these tags into seven scenarios, and classified them into
                                                                            in time to see how the community has evolved in terms of
process and visualization.
   Scenarios based on process include:                                      what kind of evaluation papers are published. The full list
                                                                            of papers we coded, together with their respective codes
    .   UWP: To derive design advice through developing a                   can be found at: http://bit.ly/7-vis-scenarios.
        better understanding of the work, analysis, or                         Since our coding is based on the published literature, it is
        information processing practices by a given group                   entirely possible that further coding can reveal new
        of people with or without software use.                             scenarios and questions which we may not have considered
    . VDAR: To assess how an information visualization                      here. We encourage others to publish these findings and
        tool supports analysis and reasoning about data and                 help to expand our evolving understanding of evaluation in
        helps to derive relevant knowledge in a given domain.               information visualization, thus developing a repository of
    . CTV: To assess the communicative value of a                           examples and scenarios as references for evaluators.
        visualization or visual representation in regards to
        goals such as teaching/learning, idea presentation,
        or casual use.                                                      ACKNOWLEDGMENTS
    . CDA: To understand to what extent an information                      The authors would like to thank Adam Perer and Amy
        visualization tool supports collaborative data analy-               Voida for early discussions on structuring evaluation
        sis by groups of people.                                            methodologies. They would also like to thank the partici-
    Scenarios based on visualization include:                               pants of BELIV 2008 who have contributed material to our
    .   UP: To objectively measure how specific features                    early data collection on evaluation methodologies in
        affect the performance of people with a system.                     information visualization.
   . UE: To elicit subjective feedback and opinions on a
        visualization tool.                                                 REFERENCES
   . VA: To capture and measure characteristics of a                        [1]  D.L. Alonso, A. Rose, C. Plaisant, and K.L. Norman, “Viewing
        visualization algorithm.                                                 Personal History Records: A Comparison of Tabular Format and
   These scenarios can be used as a practical context-based                      Graphical Presentation Using Lifelines,” Behaviour & Information
                                                                                 Technology, vol. 17, no. 5, pp. 249-262, 1998.
approach to exploring evaluation options. To briefly                        [2] K. Andrews, “Evaluation Comes in Many Guises,” Proc. CHI
reiterate, we provide information on                                             Workshop BEyond Time and Errors: Novel Evaluation Methods for
                                                                                 Information Visualization (BELIV), pp. 7-8, 2008.
    1.  Choosing a focus. Choosing an evaluation focus                      [3] A.O. Artero, M.C.F. de Oliveira, and H. Levkowitz, “Uncovering
                                                                                 Clusters in Crowded Parallel Coordinates Visualizations,” Proc.
        involves choosing among process or visualization
                                                                                 IEEE Symp. Information Visualization (InfoVis), pp. 81-88, 2004.
        evaluation scenarios and a consideration of the                     [4] K. Baker, S. Greenberg, and C. Gutwin, “Heuristic Evaluation of
        possibly analysis phases.                                                Groupware Based on the Mechanics of Collaboration,” Proc. Int’l
   2. Picking suitable scenarios. Scenarios in Section 6                         Conf. Eng. for Human-Computer Interaction, pp. 123-139, 2001.
                                                                            [5] L. Barkhuus and J.A. Rode, “From Mice to Men: 24 Years of
        give information on evaluation questions and foci.                       Evaluation in CHI,” Proc. alt.chi: Extended Abstracts of the Conf.
   3. Considering applicable approaches. The scenario                            Human Factors in Computing Systems (CHI), 2007.
        descriptions list possible methods and reference                    [6] L. Bartram and C. Ware, “Filtering and Brushing with Motion,”
        examples of where they have been applied.                                Information Visualization, vol. 1, no. 1, pp. 66-79, 2002.
                                                                            [7] B.B. Bederson, B. Shneiderman, and M. Wattenberg, “Ordered and
   4. Creating evaluation design and planned analyses.                           Quantum Treemaps: Making Effective Use of 2D Space to Display
        Methods and examples provide background litera-                          Hierarchies,” ACM Trans. Graphics, vol. 21, no. 4, pp. 833-854,
        ture which can inspire designing evaluation meth-                        2002.
                                                                            [8] E. Bertini, A. Perer, C. Plaisant, and G. Santucci, “Beyond Time
        ods for one’s own study. However, since evaluation                       and Errors: Novel Evaluation Methods for Information Visualiza-
        is still in flux, it is important to keep abreast of new                 tion (beliv),” Proc. Extended Abstracts of the Conf. Human Factors in
        evaluation methods in your considerations.                               Computing Systems (CHI), pp. 3913-3916, 2008.
                                                                            [9] I. Brewer, A.M. MacEachren, H. Abdo, J. Gundrum, and G. Otto,
   Our scenario approach can, thus, be used as a starting                        “Collaborative Geographic Visualization: Enabling Shared Under-
point for expanding the range of evaluation studies and                          standing of Environmental Processes,” Proc. IEEE Symp. Informa-
open new perspectives and insights on information visua-                         tion Visualization (InfoVis), pp. 137-141, 2000.
                                                                            [10] S. Carpendale, “Evaluating Information Visualizations,” Informa-
lization evaluation. In contrast to other overview articles on                   tion Visualization: Human-Centered Issues and Perspectives, A.
evaluation, a major contribution of our work is that we                          Kerren, J.T. Stasko, J.-D. Fekete, and C. North, eds., pp. 19-45,
based our evaluation categorization on evaluation questions                      Springer, 2007.
                                                                            [11] C. Chen and Y. Yu, “Empirical Studies of Information Visualiza-
and goals instead of on existing methods. Our intention is to                    tion: A Meta-Analysis,” Int’l J. Human-Computer Studies, vol. 53,
encourage the information visualization community to                             no. 5, pp. 851-866, 2000.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-015"></a>

## PDF page 15

<a id="p015-b001"></a>

<!-- p015-b001 -->
1534                                     IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,               VOL. 18,   NO. 9,   SEPTEMBER 2012

<a id="p015-b002"></a>

<!-- p015-b002 -->
[12] J. Chen, A.M. MacEachren, and D.J. Peuquet, “Constructing              [34] D.M. Hilbert and D.F. Redmiles, “Extracting Usability Information
     Overview + Detail Dendrogram-Matrix Views,” IEEE Trans.                     from User Interface Events,” ACM Computing Survey, vol. 32, no. 4,
     Visualization and Computer Graphics, vol. 15, no. 6, pp. 889-896,           pp. 384-421, 2000.
     Nov. 2009.                                                             [35] U. Hinrichs, H. Schmidt, and S. Carpendale, “EMDialog: Bringing
[13] Y. Chen, L. Wang, M. Dong, and J. Hua, “Exemplar-Based                      Information Visualization into the Museum,” IEEE Trans. Visua-
     Visualization of Large Document Corpus,” IEEE Trans. Visualiza-             lization and Computer Graphics, vol. 14, no. 6, pp. 1181-1188, Nov./
     tion and Computer Graphics, vol. 15, no. 6, pp. 1161-1168, Nov./Dec.        Dec. 2008.
     2009.                                                                  [36] K. Holtzblatt and S. Jones, Contextual Inquiry: A Participatory
[14] R.K. Christopher, C.G. Healey, V. Interrante, D.H. Laidlaw, and C.          Technique for Systems Design. Lawrence Earlbaum, 1993.
     Ware, “Thoughts on User Studies: Why, How, and When,” IEEE             [37] K. Hornbæk and E. Frokjær, “Reading of Electronic Documents:
     Computer Graphics and Applications, vol. 23, no. 4, pp. 20-25, July         The Usability of Linear, Fisheye and Overview+Detail Interfaces,”
     2003.                                                                       Proc. Conf. Human Factors in Computing Systems (CHI), pp. 293-300,
[15] J. Corbin and A. Strauss, Basics of Qualitative Research: Techniques        2001.
     and Procedures for Developing Grounded Theory. Sage Publications,      [38] P. Isenberg, A. Bezerianos, N. Henry, S. Carpendale, and J.-D.
     2008.                                                                       Fekete, “CoCoNutTrix: Collaborative Retrofitting for Information
[16] L. Costello, G. Grinstein, C. Plaisant, and J. Scholtz, “Advancing          Visualization,” Computer Graphics and Applications: Special Issue on
     User-Centered Evaluation of Visual Analytic Environments                    Collaborative Visualization, vol. 29, no. 5, pp. 44-57, 2009.
     through Contests,” Information Visualization, vol. 8, pp. 230-238,     [39] P. Isenberg, D. Fisher, M. Ringel Morris, K. Inkpen, and M.
     2009.                                                                       Czerwinski, “An Exploratory Study of Co-Located Collabora-
[17] J.W. Creswell, Research Design, Qualitative, Quantitative, and Mixed        tive Visual Analytics around a Tabletop Display,” Proc. Conf.
     Methods Approaches, second ed. Sage Publications, Inc., 2002.               Visual Analytics Science and Technology (VAST), pp. 179-186,
[18] M.P. Czerwinski, M.V. Dantzich, G. Robertson, and H. Hoffman,               2010.
     “The Contribution of Thumbnail Image, Mouse-over Text and              [40] P. Isenberg, A. Tang, and S. Carpendale, “An Exploratory Study of
     Spatial Location Memory to Web Page Retrieval in 3D,” Proc. Int’l           Visual Information Analysis,” Proc. Conf. Human Factors in
     Conf. INTERACT, pp. 163-170, 1999.                                          Computing Systems (CHI), pp. 1217-1226, 2008.
[19] J. Drury and M.G. Williams, “A Framework for Role-Based                [41] P. Isenberg, T. Zuk, C. Collins, and S. Carpendale, “Grounded
     Specification and Evaluation of Awareness Support in Synchro-               Evaluation of Information Visualizations,” Proc. CHI Workshop
     nous Collaborative Applications,” Proc. Workshops Enabling Tech-            BEyond Time and Errors: Novel Evaluation Methods for Information
     nologies: Infrastructure for Collaborative Enterprises (WETICE),            Visualization (BELIV), pp. 56-63, 2008.
     pp. 12-17, 2002.                                                       [42] M.Y. Ivory and M.A. Hearst, “The State of the Art in Automating
[20] T. Dwyer and D.R. Gallagher, “Visualising Changes in Fund                   Usability Evaluation of User Interfaces,” ACM Computing Surveys,
     Manager Holdings in Two and a Half-Dimensions,” Information                 vol. 33, no. 4, pp. 470-516, 2001.
     Visualization, vol. 3, no. 4, pp. 227-244, 2004.                       [43] F. Janoos, S. Singh, O. Irfanoglu, R. Machiraju, and R. Parent,
[21] R. Eccles, T. Kapler, R. Harper, and W. Wright, “Stories in                 “Activity Analysis Using Spatio-Temporal Trajectory Volumes in
     Geotime,” Information Visualization, vol. 7, no. 1, pp. 3-17, 2008.         Surveillance Applications,” Proc. Symp. Visual Analytics Science and
[22] G. Ellis and A. Dix, “An Exploratory Analysis of User Evaluation            Technology (VAST), pp. 3-10, 2007.
     Studies in Information Visualization,” Proc. AVI Workshop BEyond       [44] Y.-A. Kang, C. Görg, and J. Stasko, “Evaluating Visual Analytics
     Time and Errors: Novel Evaluation Methods for Information Visualiza-        Systems for Investigative Analysis: Deriving Design Principles
     tion (BELIV), 2006.                                                         from a Case Study,” Proc. Symp. Visual Analytics Science and
[23] L. Grammel, M. Tory, and M.-A. Storey, “How Information                     Technology (VAST), pp. 139-146, 2009.
     Visualization Novices Construct Visualizations,” IEEE Trans.           [45] A. Kittur, E.H. Chi, and B. Suh, “Crowdsourcing User Studies
     Visualization and Computer Graphics, vol. 16, no. 6, pp. 943-952,           with Mechanical Turk,” Proc. Conf. Human Factors in Computing
     Nov./Dec. 2010.                                                             Systems (CHI), pp. 453-456, 2008.
[24] S. Greenberg and B. Buxton, “Usability Evaluation Considered           [46] O. Kulyk, R. Kosara, J. Urquiza, and I. Wassin, “Human-
     Harmful (Some of the Time),” Proc. Conf. Human Factors in                   Centered Aspects,” Human-Centered Visualization Environments,
     Computing Systems (CHI), pp. 217-224, 2008.                                 G. Goos, J. Hartmanis, and J. van Leeuwen, eds., pp. 13-76,
[25] S. Greenberg, G. Fitzpatrick, C. Gutwin, and S. Kaplan,                     Springer, 2007.
     “Adapting the Locales Framework for Heuristic Evaluation               [47] H. Lam and T. Munzner, “Increasing the Utility of Quantitative
     of Groupware,” Australian J. Information Systems, vol. 7, no. 2,            Empirical Studies for Meta-Analysis,” Proc. CHI Workshop BEyond
     pp. 102-108, 2000.                                                          Time and Errors: Novel Evaluation Methods for Information Visualiza-
[26] S. Greenberg, “Observing Collaboration: Group-Centered De-                  tion (BELIV), pp. 21-27, 2008.
     sign,” HCI Remixed: Reflections on Works That Have Influenced the      [48] H. Lam, R.A. Rensink, and T. Munzner, “Effects of 2D Geometric
     HCI Community, T. Erickson, and D.W. McDonald, eds., chapter                Transformations on Visual Memory,” Proc. Symp. Applied Percep-
     18, pp. 111-118, MIT Press, 2008.                                           tion in Graphics and Visualization (APGV), pp. 119-126, 2006.
[27] J. Grudin, “Why Cscw Applications Fail: Problems in the Design         [49] J.D. Mackinlay, P. Hanrahan, and C. Stolte, “Show Me: Automatic
     and Evaluation of Organizational Interfaces,” Proc. Conf. Compu-            Presentation for Visual Analysis,” IEEE Trans. Visualization and
     ter-Supported Cooperative Work (CSCW), pp. 85-93, 1988.                     Computer Graphics, vol. 13, no. 6, pp. 1137-1144, Nov./Dec. 2007.
[28] C. Gutwin and S. Greenberg, “The Mechanics of Collaboration:           [50] N. Mahyar, A. Sarvghad, and M. Tory, “A Closer Look at Note
     Developing Low Cost Usability Evaluation Methods for Shared                 Taking in the Co-Located Collaborative Visual Analytics Process,”
     Workspaces,” Proc. Workshops Enabling Technologies: Infrastructure          Proc. Conf. Visual Analytics Science and Technology (VAST), pp. 171-
     for Collaborative Enterprises (WETICE), pp. 98-103, 2000.                   178, 2010.
[29] M. Hao, D.A. Keim, U. Dayal, D. Oelke, and C. Tremblay,                [51] R. Mandryk, “Modeling User Emotion in Interactive Play
     “Density Displays for Data Stream Monitoring,” Computer                     Environments: A Fuzzy Physiological Approach,” PhD thesis,
     Graphics Forum, vol. 27, no. 3, pp. 895-902, 2008.                          Simon Fraser Univ., 2005.
[30] J. Heer and M. Bostock, “Crowdsourcing Graphical Perception:           [52] G. Mark and A. Kobsa, “The Effects of Collaboration and System
     Using Mechanical Turk to Assess Visualization Design,” Proc.                Transparency on CIVE Usage: An Empirical Study and Model,”
     Conf. Human Factors in Computing Systems (CHI), pp. 203-212, 2010.          Presence, vol. 14, no. 1, pp. 60-80, 2005.
[31] J. Heer and D. Boyd, “Vizster: Visualizing Online Social Net-          [53] J. McGrath, “Methodology Matters: Doing Research in the
     works,” Proc. Symp. Information Visualization (InfoVis), pp. 33-40,         Behavioral and Social Sciences,” Readings in Human-Computer
     2005.                                                                       Interaction: Toward the Year 2000, Morgan Kaufmann, 1994.
[32] J. Heer and G. Robertson, “Animated Transitions in Statistical         [54] T. Munzner, “A Nested Process Model for Visualization Design
     Data Graphics,” IEEE Trans. Visualization and Computer Graphics,            and Validation,” IEEE Trans. Visualization and Computer Graphics,
     vol. 13, no. 6, pp. 1240-1247, Nov./Dec. 2007.                              vol. 15, no. 6, pp. 921-928, Nov./Dec. 2009.
[33] J. Heer, F.B. Viégas, and M. Wattenberg, “Voyagers and Voyeurs:       [55] D.C. Neale, J.M. Carroll, and M.B. Rosson, “Evaluating Computer-
     Supporting Asynchronous Collaborative Information Visualiza-                Supported Cooperative Work: Models and Frameworks,” Proc.
     tion,” Proc. Conf. Human Factors in Computing Systems (CHI),                Conf. Computer-Supported Cooperative Work (CSCW), pp. 112-121,
     pp. 1029-1038, 2007.                                                        2004.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-016"></a>

## PDF page 16

<a id="p016-b001"></a>

<!-- p016-b001 -->
LAM ET AL.: EMPIRICAL STUDIES IN INFORMATION VISUALIZATION: SEVEN SCENARIOS                                                                         1535

<a id="p016-b002"></a>

<!-- p016-b002 -->
[56] W. Peng, M.O. Ward, and E.A. Rundensteiner, “Clutter Reduction            [77] B. Shneiderman and C. Plaisant, Designing the User Interface:
     in Multi-Dimensional Data Visualization Using Dimension Re-                    Strategies for Effective Human-Computer Interaction, fifth ed.
     ordering,” Proc. Symp. Information Visualization (InfoVis), pp. 89-96,         Addison-Wesley, 2009.
     2004.                                                                     [78] T. Skog, S. Ljungblad, and L.E. Holmquist, “Between Aesthetics
[57] A. Perer and B. Shneiderman, “Integrating Statistics and                       and Utility: Designing Ambient Information Visualizations,” Proc.
     Visualization for Exploratory Power: From Long-Term Case                       Symp. Information Visualization (InfoVis), pp. 233-240, 2003.
     Studies to Design Guidelines,” IEEE Computer Graphics and                 [79] H. Song, E. Curran, and R. Sterritt, “Multiple Foci Visualisation of
     Applications, vol. 29, no. 3, pp. 39-51, May/June 2009.                        Large Hierarchies with Flextree,” Information Visualization, vol. 3,
[58] D. Pinelle and C. Gutwin, “A Review of Groupware Evaluations,”                 no. 1, pp. 19-35, 2004.
     Proc. Workshops Enabling Technologies: Infrastructure for Collaborative   [80] G. Stahl, Group Cognition. MIT Press, 2006.
     Enterprises (WETICE), pp. 86-91, 2000.                                    [81] G. Symon, Qualitative Research Diaries, pp. 94-117. Sage Publica-
[59] D. Pinelle and C. Gutwin, “Groupware Walkthrough: Adding                       tions, 1998.
     Context to Groupware Usability Evaluation,” Proc. Conf. Human             [82] Illuminating the Path: The Research and Development Agenda for
     Factors in Computing Systems (CHI), pp. 455-462, 2002.                         Visual Analytics, J. Thomas, and K.A. Cook, eds. IEEE CS Press,
[60] D. Pinelle, C. Gutwin, and S. Greenberg, “Task Analysis for                    2005.
     Groupware Usability Evaluation: Modeling Shared-Workspace                 [83] M. Tory and T. Möller, “Evaluating Visualizations: Do Expert
     Tasks with the Mechanics of Collaboration,” ACM Trans. Human                   Reviews Work?” Computer Graphics and Applications, vol. 25, no. 5,
     Computer Interaction, vol. 10, no. 4, pp. 281-311, 2003.                       pp. 8-11, 2005.
[61] P. Pirolli and S. Card, “The Sensemaking Process and                      [84] M. Tory, D.W. Sprague, F. Wu, W.Y. So, and T. Munzner,
     Leverage Points for Analyst Technology as Identified through                   “Spatialization Design: Comparing Points and Landscapes,” IEEE
     Cognitive Task Analysis,” Proc. Int’l Conf. Intelligence Analysis,             Trans. Visualization and Computer Graphics, vol. 13, no. 6, pp. 1262-
     2005.                                                                          1285, Nov./Dec. 2007.
[62] C. Plaisant, J. Grosjean, and B. Bederson, “Spacetree: Supporting         [85] M. Tory and S. Staub-French, “Qualitative Analysis of Visualiza-
     Exploration in Large Node Link Tree, Design Evolution and                      tion: A Building Design Field Study,” Proc. CHI Workshop BEyond
     Empirical Evaluation,” Proc. Symp. Information Visualization                   Time and Errors: Novel Evaluation Methods for Information Visualiza-
     (InfoVis), pp. 57-64, 2007.                                                    tion (BELIV), 2008.
[63] C. Plaisant, “The Challenge of Information Visualization Evalua-          [86] J.G. Trafton, S.S. Kirschenbaum, T.L. Tsui, R.T. Miyamoto, J.A.
     tion,” Proc. Working Conf. Advanced Visual Interfaces (AVI), pp. 109-          Ballas, and P.D. Raymond, “Turning Pictures into Numbers:
     116, 2004.                                                                     Extracting and Generating Information from Complex Visualiza-
[64] Z. Pousman, J. Stasko, and M. Mateas, “Casual Information                      tions,” Int’l J. Human-Computer Studies, vol. 53, no. 5, pp. 827-850,
     Visualization: Depictions of Data in Everyday Life,” IEEE Trans.               2000.
     Visualization and Computer Graphics, vol. 13, no. 6, pp. 1145-1152,       [87] M. Twidale, D. Randall, and R. Bentley, “Situated Evaluation for
     Nov./Dec. 2007.                                                                Cooperative Systems,” Proc. Conf. Computer-Supported Cooperative
[65] A.J. Pretorius and J.J. van Wijk, “Visual Inspection of Multivariate           Work (CSCW), pp. 441-452, 1994.
     Graphs,” Computer Graphics Forum, vol. 27, no. 3, pp. 967-974,            [88] Usability.net. Usability.net Methods, http://www.usabilitynet.
     2008.                                                                          org/tools/methods.htm, 2009.
                                                                               [89] F. Viégas, E. Perry, E. Howe, and J. Donath, “Artifacts of the
[66] G. Robertson, M. Czerwinski, K. Larson, D.C. Robbins, D. Thiel,
                                                                                    Presence Era: Using Information Visualization to Create an
     and M. van Dantzich, “Data Mountain: Using Spatial Memory for
                                                                                    Evocative Souvenir,” Proc. Symp. Information Visualization
     Document Management,” Proc. Symp. User Interface Software and
                                                                                    (InfoVis), pp. 105-111, 2004.
     Technology, pp. 153-162, 1998.
                                                                               [90] F. Viégas, M. Wattenberg, F. van Ham, J. Kriss, and M. McKeon,
[67] A. Robinson, “Collaborative Synthesis of Visual Analytic Results,”
                                                                                    “Many Eyes: A Site for Visualization at Internet Scale,” IEEE
     Proc. Symp. Visual Analytics Science and Technology (VAST), pp. 67-
                                                                                    Trans. Visualization and Computer Graphics, vol. 12, no. 5, pp. 1121-
     74, 2008.
                                                                                    1128, Nov./Dec. 2007.
[68] J. Sajaniemi and M. Kuittinen, “Visualizing Roles of Variables in
                                                                               [91] C. Weaver, D. Fyfe, A. Robinson, D. Holdsworth, D. Peuquet, and
     Program Animation,” Information Visualization, vol. 3, no. 3,
                                                                                    A.M. MacEachren, “Visual Exploration and Analysis of Historic
     pp. 137-153, 2004.                                                             Hotel Visits,” Information Visualization, vol. 6, no. 1, pp. 89-103,
[69] P. Saraiya, C. North, and K. Duca, “An Evaluation of Microarray                2007.
     Visualization Tools for Biological Insight,” Proc. Symp. Information      [92] W. Willett, J. Heer, and M. Agrawala, “Scented Widgets:
     Visualization (InfoVis), pp. 1-8, 2004.                                        Improving Navigation Cues with Embedded Visualizations,”
[70] P. Saraiya, C. North, V. Lam, and K.A. Duca, “An Insight-Based                 IEEE Trans. Visualization and Computer Graphics, vol. 12, no. 5,
     Longitudinal Study of Visual Analytics,” IEEE Trans. Visualization             pp. 1129-1136, Nov./Dec. 2007.
     and Computer Graphics, vol. 12, no. 6, pp. 1511-1522, Nov./Dec.           [93] K. Wongsuphasawat and B. Shneiderman, “Finding Comparable
     2006.                                                                          Temporal Categorical Records: A Similarity Measure with an
[71] K. Sedig, S. Rowhani, J. Morey, and H.-N. Liang, “Application of               Interactive Visualization,” Proc. Symp. Visual Analytics Science and
     Information Visualization Techniques to the Design of a Mathe-                 Technology (VAST), pp. 27-34, 2009.
     matical Mindtool: A Usability Study,” Information Visualization,          [94] B. Yost and C. North, “The Perceptual Scalability of Visualiza-
     vol. 2, no. 3, pp. 142-159, 2003.                                              tion,” IEEE Trans. Visualization and Computer Graphics, vol. 13,
[72] M. Sedlmair, D. Baur, S. Boring, P. Isenberg, M. Jurmu, and A.                 no. 6, pp. 837-844, Sept./Oct. 2007.
     Butz, “Requirements for a Mde System to Support Collaborative             [95] T. Zuk, L. Schlesier, P. Neumann, M.S. Hancock, and S.
     In-Car Communication Diagnostics,” Proc. CSCW Workshop                         Carpendale, “Heuristics for Information Visualization Evalua-
     Beyond the Laboratory: Supporting Authentic Collaboration with                 tion,” Proc. AVI Workshop BEyond Time and Errors: Novel Evaluation
     Multiple Displays, 2008.                                                       Methods for Information Visualization (BELIV), pp. 55-60, 2006.
[73] M. Sedlmair, P. Isenberg, D. Baur, and A. Butz, “Information
     Visualization Evaluation in Large Companies: Challenges, Ex-
     periences and Recommendations,” Information Visualization J.,
     vol. 10, no. 3, pp. 248-266, 2011.
[74] J. Seo and B. Shneiderman, “Knowledge Discovery in High-
     Dimensional Data: Case Studies and a User Survey for the Rank-
     by-Feature Framework,” IEEE Trans. Visualization and Computer
     Graphics, vol. 12, no. 3, pp. 311-322, May/June 2006.
[75] W. Shadish, T. Cook, and D. Campbell, Experimental and Quasi-
     Experimental Designs. Houghton Mifflin Company, 2002.
[76] B. Shneiderman and C. Plaisant, “Strategies for Evaluating
     Information Visualization Tools: Multi-Dimensional In-Depth
     Long-Term Case Studies,” Proc. AVI Workshop BEyond Time and
     Errors: Novel Evaluation Methods for Information Visualization
     (BELIV), 2006.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.

<a id="page-017"></a>

## PDF page 17

<a id="p017-b001"></a>

<!-- p017-b001 -->
1536                                     IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,               VOL. 18,   NO. 9,   SEPTEMBER 2012

<a id="p017-b002"></a>

<!-- p017-b002 -->
Heidi Lam received the PhD degree from the                                  Catherine Plaisant received the Doctorat
                       University of British Columbia in 2008. She is a                            d’Ingénieur degree in France in 1982 and joined
                       software engineer at Google, Inc. Her main                                  HCIL in 1987. She is a senior research scientist
                       research interests include information visualiza-                           at the Human-Computer Interaction Laboratory
                       tion with the focus of exploratory data analysis                            of the University of Maryland Institute for
                       and evaluations in information visualization.                               Advanced Computer Studies. She enjoys most
                                                                                                   working with multidisciplinary teams on design-
                                                                                                   ing and evaluating new interface technologies
                                                                                                   that are useable and useful. She has written
                                                                                                   more than 100 refereed technical publications
                                                                            on the subjects of information visualization, evaluation methods,
                       Enrico Bertini received the PhD degree from          electronic health record interfaces, digital libraries, online help, etc.
                       Sapienza University of Rome, Italy, in 2006 with     She coauthored with Ben Shneiderman the 5th Edition of Designing the
                       a thesis on clutter reduction in information         User Interface.
                       visualization. He is a research associate at the
                       University of Konstanz, Germany. His main                                   Sheelagh Carpendale is a professor at the
                       research interest is visual analytics, with a                               University of Calgary where she holds a Canada
                       specific focus on large high-dimensional data,                              Research Chair in Information Visualization and
                       integration of automatic and interactive data                               an NSERC/iCORE/SMART Industrial Research
                       analysis, and evaluation.                                                   Chair in Interactive Technologies. She directs
                                                                                                   the Innovations in Visualization (InnoVis) re-
                                                                                                   search group and Computational Media Design,
                                                                                                   an interdisciplinary graduate degree specializa-
                      Petra Isenberg received the Diplom-degree in                                 tion. Her research on information visualization,
                      computational visualistics from the University of                            large interactive displays, and new media art
                      Magdeburg in 2004 and the PhD degree from             draws on her dual background in computer science (BSc., PhD Simon
                      the University of Calgary in 2009. She is a           Fraser University) and Visual Arts (Sheridan College, School of Design
                      research scientist at INRIA, Saclay, France in        and Emily Carr, College of Art).
                      the Aviz research group. Her main research area
                      is information visualization and visual analytics
                      with a focus on collaborative work scenarios.
                      She is interested in exploring how people can         . For more information on this or any other computing topic,
                      most effectively work together when analyzing         please visit our Digital Library at www.computer.org/publications/dlib.
large and complex data sets on novel display technology such as touch
screens or tabletops.

<a id="p017-b003"></a>

<!-- p017-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 25,2025 at 11:15:17 UTC from IEEE Xplore. Restrictions apply.
