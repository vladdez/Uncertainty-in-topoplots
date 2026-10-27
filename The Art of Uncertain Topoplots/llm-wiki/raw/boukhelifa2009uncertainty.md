---
id: "boukhelifa2009uncertainty"
title: "Uncertainty Visualization: Why Might It Fail?"
source_file: "The Art of Uncertain Topoplots/papers/boukhelifa2009uncertainty.pdf"
source_sha256: "f8cfae19555b629143439bc3dd8de19e71e5c32271b4720fc593fcf3cc9b2171"
extraction_format: 1
---

# Uncertainty Visualization: Why Might It Fail? — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
CHI 2009 ~ Spotlight on Works in Progress ~ Session 1                                                          April 4-9, 2009 ~ Boston, MA, USA

<a id="p001-b002"></a>

<!-- p001-b002 -->
Uncertainty Visualization –
                                                          Why Might it Fail?

<a id="p001-b003"></a>

<!-- p001-b003 -->
Nadia Boukhelifa                                           Abstract
                            School of Computing                                        There is a gulf between the rhetoric in visualization
                            University of Leeds                                        about the importance of uncertainty, and the practice
                            Leeds UK                                                   of visualization in which uncertainty is rarely seen other
                            nadiab@comp.leeds.ac.uk                                    than as a laboratory exercise. We reflect on why
                                                                                       something viewed as fundamental in science and
                            David John Duke                                            engineering is rarely if ever adopted in visualization
                            School of Computing                                        practice. Our analysis is informed both by research
                            University of Leeds                                        progress and by our own experience in an ongoing
                            Leeds UK                                                   industrial case study on modelling and mapping
                            djd@comp.leeds.ac.uk                                       underground assets, where it would appear that
                                                                                       uncertainty plays a major role. In this case study, we
                                                                                       try to identify promoting and limiting factors. We
                                                                                       conclude that the value of uncertainty visualization is
                                                                                       severely limited by the quality and scope of uncertainty
                                                                                       data, by the limited confidence in the data itself, and by
                                                                                       the perceptual and cognitive confusion that the
                                                                                       depiction of this data can generate. We hope to
                                                                                       broaden the discussion on the utility of uncertainty in
                                                                                       visualization from the purely technical and perceptual
                                                                                       issues to social and organizational factors.

<a id="p001-b004"></a>

<!-- p001-b004 -->
Keywords
                                                                                       Uncertainty visualization, maps, utility data, service
                            Copyright is held by the author/owner(s).                  plans.
                            CHI 2009, April 4 – 9, 2009, Boston, Massachusetts, USA.
                            ACM 978-1-60558-247-4/09/04.                               ACM Classification Keywords
                                                                                       H5.m. Information interfaces and presentation.

<a id="p001-b005"></a>

<!-- p001-b005 -->
4051

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
CHI 2009 ~ Spotlight on Works in Progress ~ Session 1                                                                April 4-9, 2009 ~ Boston, MA, USA

<a id="p002-b002"></a>

<!-- p002-b002 -->
Uncertainty visualization is concerned with presenting     the different notions of uncertainty and the varied
                                          data alongside auxiliary information such as accuracy,     usage of this term, there is general agreement that
                                          error or other factors of provenance that influence        uncertainty is understood as a composition of multiple
                                          interpretation and judgement. There are various fields     concepts. Uncertainty visualization is, however, very
                                          where uncertainty information is vital to making           application-specific, and which sources of uncertainty
                                          accurate interpretations of data. In the physical          are chosen and how data is represented varies widely.
                                          sciences and engineering, for example, it is rare to
                                          publish a graph that did not involve some indication of    Multiple Stages and Pipelines
                                          accuracy, either explicitly or via annotation. Yet in      We describe uncertainty visualization as a three-stage
                                          visualization, such indicators are not the norm.           process (Figure 2) requiring different skills and types of
                                                                                                     knowledge at each stage: domain knowledge at the
                                          We give a critical analysis of uncertainty visualization   data provision stage to determine the relevant sources
                                          techniques and applications. We first provide a brief      of uncertainty and how they should be modelled;
                                          background on research in uncertainty visualization        visualization skills to decide best methods to depict
                                          using a three-stage conceptual pipeline covering           uncertainty; and the ability to interpret presented
                                          provision, depiction and usage. We then apply our          information and use it within the context of a task.
                                          three-stage analysis to an industrial case study on
                                          modelling and mapping underground assets. Finally, we
                                          reflect on our experience so far in a commercial project
                                          (VISTA) and try to identify promoting and limiting
                                          factors.

<a id="p002-b003"></a>

<!-- p002-b003 -->
Understanding Uncertainty
                                          There has been a number of surveys on uncertainty
                                          visualization, each concentrating on a specific aspect
                                          such as depiction [4], a particular domain such as         Figure 2 Three routes for uncertainty in visualization: [a]
                                          Geographical Information Systems [5], or a specific        explicit modelling with the data, [b] implicit modelling where
                                          type of uncertainty such as risk [1].                      data is first interpreted in light of the available uncertainty
                                                                                                     information [c] informal interpretation at the user end.

<a id="p002-b004"></a>

<!-- p002-b004 -->
Various Definitions and Taxonomies                         Three Key Challenges
Figure 1 [Top] An image showing
                                          Numerous definitions of uncertainty can be found in the    First, one might ask whether metadata about
bones of a human foot rendered
illustratively to indicate areas of low   literature reflecting the range of concerns that come      uncertainty is inherently any different from other data
quality information [8]. [Bottom]         under the general term. Often the relationship between     that are processed in the visualization. Uncertainty can
Vector glyphs to visualize uncertain      accuracy and uncertainty is debated. In cartography,       be provided as secondary data not requiring immediate
winds and ocean currents [7].             uncertainty and data quality have a close link and the     user attention or embedded with the primary data itself
                                          two terms are sometimes used synonymously. Despite         and available within the standard pipeline. Second,

<a id="p002-b005"></a>

<!-- p002-b005 -->
4052

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
CHI 2009 ~ Spotlight on Works in Progress ~ Session 1                                                             April 4-9, 2009 ~ Boston, MA, USA

<a id="p003-b002"></a>

<!-- p003-b002 -->
there is the issue of finding a representation that is      related to risk [1]. When information about uncertainty
                                        compatible with the primary data, the tasks served by       is available, it is incorporated in the display either by
                                        the visualization, and the organizational importance        altering the appearance of the underlying data (e.g.
                                        assigned to the uncertainty. Options include use of high    Figure 1-top), or by creating new visualization
                                        salience symbology (e.g. “danger symbols”);                 primitives separately from the underlying data (e.g.
                                        incorporation within the primary data display (e.g. error   Figure 1-bottom). Although various examples of
                                        bars); or utilising low-key secondary displays. The         depiction techniques may be found in the literature,
                                        difficulty is to blend the graphics without                 there is a mismatch between efforts to conceptualize,
                                        overshadowing critical data. Third, there is the            represent and use uncertainty information.
                                        challenge of assessing how uncertainty information is
                                        used, for instance to support decision making.              Usage – how do we know?
                                                                                                    Does it enhance the task? The fitness of uncertainty
Figure 3 A single domain service plan
                                        Decomposing the Pipeline – The Literature                   representation for a given task have been investigated
showing gas pipes in red.
                                        Sources of uncertainty may reside at the acquisition        by a number of researchers; e.g. [3] set out to test
                                        stage due to errors in measurements; when filtering         the effectiveness of visual mappings by examining user
                                        because of incomplete knowledge; during modelling as        performance when interacting with different depiction
                                        a result of inappropriate visual mappings; when             methods. They found that subjects performed better
                                        rendering due to approximations in illumination             using a combined view (either as static or animation)
                                        calculations or at the comprehension stage caused by        than separate or toggled views.
                                        human bias, subjectivity and incomplete knowledge.
                                                                                                    How useful is it? If we adapt the visualization to depict
                                        Provision – how do we model?                                uncertainty, will users incorporate this information into
                                        Uncertainty information can be collected from the real      decision making, or do they rely on heuristics in making
                                        world or simulated using statistical modelling. It can be   judgements? Other related questions are concerned
                                        derived automatically or interactively attached as          with whether different users incorporate uncertainty
                                        metadata with quantitative or qualitative values.           information in the same way, or their level of expertise,
                                        Categories of confidence in data can be expressed by        prior knowledge or other factors play a role in how this
                                        assigning values to pre-defined uncertainty classes,        information is incorporated in decision making.
                                        ranges of values or sets of possible values, and can
                                        also be described quantitatively by scalar values like      Does it matter? Does the inclusion of uncertainty
Figure 4 An on-site plan showing
                                        probability and error percentages [4].                      information in representation actually improve decision
multiple utility domains.
                                                                                                    making? Such evaluations study the degree of influence
                                        Depiction - how do we show?                                 on user confidence and whether this degree of influence
                                        Although uncertainty information may be                     depends on the nature of the decision task or other
                                        communicated textually or numerically, visual depiction     factors. For example, this influence may depend on how
                                        is usually preferred especially when this uncertainty is    uncertainty is expressed [2] (e.g. texture or value).

<a id="p003-b003"></a>

<!-- p003-b003 -->
4053

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
CHI 2009 ~ Spotlight on Works in Progress ~ Session 1                                                                   April 4-9, 2009 ~ Boston, MA, USA

<a id="p004-b002"></a>

<!-- p004-b002 -->
The evaluation of uncertainty visualization is a complex    fieldwork and planning (e.g. Figure 3 and Figure 4) do
                                              task and requires consideration of multiple parameters      not reflect either the quality of the underlying data or
                                              such as the visual domain (e.g. map or plot), methods       its provenance, and this has a major impact on the cost
                                              of depiction (e.g. intrinsic or extrinsic), user (e.g.      and time taken to carry out streetworks, and on the
                                              novice or expert), task (e.g. detect or assess) and         likelihood of collateral damage. VISTA aims to reduce
                                              potential impact. Evidence suggests that the way            streetworks and their costs by developing an integrated
                                              uncertainty is expressed can influence the                  data model for buried assets, and critically for this
                                              effectiveness, the usefulness and impact of the display.    context, supporting this integration with visualization
                                                                                                          techniques that adequately reflect the inherent
                                              Reconstructing the Pipeline – VISTA Project                 uncertainty in the data.
                                              In the VISTA project [6] we are working within a
                                              consortium of private companies providing utility           Provision
                                              services (gas, electricity, sewerage, water, telecoms,      Sources of uncertainty that may be present in utility
Figure 5 Depicting uncertainty using blur:
different levels of positional accuracy for   etc), civil engineering companies sub-contracted to         records include: error in digitisation or as a result of
water pipes are denoted by different levels   repair and replace these assets, and UK government          data entered incorrectly; accuracy which can be
of blur.                                      and industry bodies concerned with the effective            absolute or relative (e.g. ±20 cm or within the
                                              management of these services. Data records that             pavement); imprecision: e.g. when using Global
                                              describe these utility services are stored and              Navigation Satellite System (GNSS), the receiver
                                              maintained by companies and are the result of surveys       records points over a 24 hour period with measurement
                                              in the field and digitized paper plans. This data is used   precision of ±5 cm; lineage: e.g. to describe whether
                                              by on-site and back office teams to carry out, broadly      data has been collected using Differential Global
                                              speaking, three types of tasks: (a) operational tasks       Positioning System (DGPS), relative to Ordnance
                                              concerned with the delivery of services on a day-to-day     Survey (OS), or hand drawn; subjectivity e.g. the
                                              basis, e.g. asset detection and new installations; (b)      construction engineers' notes; and non-specificity
                                              planning tasks concerned with decision making and           where an attribute value is known to be one of several
                                              developing processes and standards, e.g. network and        alternatives.
                                              emergency planning; and (c) management tasks
                                              concerned with improving performance, e.g. work and         Information on positional accuracy is particularly
                                              asset management and risk assessment.                       important for asset detection because it allows more
                                                                                                          informed decisions on the field. The location of assets is
Figure 6 Depicting uncertainty using colour
                                              Changes in surveying and database technologies over         often recorded relative to an OS map or control points
bands: grey denotes sewer pipes and
magenta denotes the Ordnance Survey (OS)      the last 200+ years, compounded by major                    surveyed sometimes in the past rather than absolute,
backdrop. Colour bands denote locational      organizational changes within the utility industries,       thus metadata to describe positional accuracy is usually
confidence: green for accurate, yellow for    meant that data about buried assets is of highly            stored in a database. For instance, five confidence
probable and red for uncertain.               variable quality and is recorded in disparate formats       categories may be used (from more accurate to less
                                              across multiple databases. Current maps used in

<a id="p004-b003"></a>

<!-- p004-b003 -->
4054

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
CHI 2009 ~ Spotlight on Works in Progress ~ Session 1                                                               April 4-9, 2009 ~ Boston, MA, USA

<a id="p005-b002"></a>

<!-- p005-b002 -->
accurate): internal survey, third party survey,               related to the number of levels that the user is able to
                             indicative, assumed, schematic.                               distinguish and remember; (b) over-plotting in 2D can
                                                                                           result in certain lines looking less blurred or more
                             Unfortunately, each organisation has its own confidence       certain than they are in reality; (c) blurred lines on
                             classification scheme, which means that although a            printed plans may be associated with low quality
                             company can grade the quality of its own data, it has         printing rather than low quality information.
                             no basis of relating its measures to data from third
                             parties. Moreover, the provision of uncertainty               The “traffic light” metaphor is intuitive but mapping
                             information is patchy – currently not all asset attributes    different categorizations of confidence from various
                             have associated metadata. Uncertainty information is          data sources inevitably introduces inaccuracies, i.e.
                             still expensive to capture and difficult to validate.         uncertainty about uncertainty. Another challenge for
                                                                                           any intrinsic method to depict uncertainty is how to
                             Depiction                                                     deal with missing data.
                             Research carried out in VISTA to visualize uncertainty
                             has focused on the visualization of positional accuracy       The sparse nature of uncertainty information, the lack
                             as this is the source that utility partners expressed         of a consistent format for expressing it and the need to
                             most interest in; this is currently also the most             accommodate various display media and user expertise
                             articulated source of uncertainty in utility records. We      all pose a great challenge to the visualization designer
                             used two popular visual variables to indicate the             as popular methods in the literature cannot be easily
                             positional accuracy of assets: blur and colour. The           adopted in real-life applications.
                             choice of depiction method was driven by the need for
                             simple methods and visual metaphors suitable for non-         Usage
                             technical audiences. [2] suggested that intrinsic             The evaluation of the service plans themselves posed a
                             methods, such as clarity, are more suitable for non-          great challenge. The difficulty in this is that plans are a
                             technical users than extrinsic methods.                       specialised representation. A plan succeeds if the task
                                                                                           is performed correctly, e.g. an asset is located without
                             Blurring (Figure 5) provides users with qualitative           other assets being damaged in the process. In practice
                             information about spatial accuracy. The more blurred a        however, the value of the plan may be compromised by
                             polyline, the less accurate its position. Our second          uncertainties within the data. A “good plan” might none
                             scheme is the “traffic lights” visualization (Figure 6). It   the less lead to task failure. The plan itself is only one
                             uses a three-colour unified scheme to paint colour            part of a large social system, where a “bad plan” may
                             bands around utility pipes indicating the confidence in       be ameliorated by local knowledge. It is not
                             the location of assets.                                       straightforward to arrange a controlled study. Our
                                                                                           argument was probabilistic - by encapsulating accepted
                             We encountered a number of issues when                        good design practice we hoped that the quality of the
                             implementing the blur method; (a) perceptual issues

<a id="p005-b003"></a>

<!-- p005-b003 -->
4055

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
CHI 2009 ~ Spotlight on Works in Progress ~ Session 1                                                                April 4-9, 2009 ~ Boston, MA, USA

<a id="p006-b002"></a>

<!-- p006-b002 -->
plans will be improved irrespective of contextual issues;   implementation; and provision of a socially-agreed
                             a better plan should lead to a better outcome.              system for depiction.

<a id="p006-b003"></a>

<!-- p006-b003 -->
Reflections and Outlook                                     Acknowledgements
                             In contrast to many geo-visualization applications in       We thank the VISTA consortium of academic and
                             the literature, there is industrial pressure on utility     industry partners (listed at [6]).
                             organizations to show assets visually while at the same
                             time observe established drawing practices (e.g. a          References
                             recommended colour scheme or line styles for the            [1] Bostrom, A., Anselin, L., Farris, J. Visualising
                             different asset types). The utility sector has long been    seismic risk and uncertainty: A review of related
                                                                                         research. Annals of the New York Academy of Sciences
                             working on the subject of standards both with regards
                                                                                         1128,1 (2008), 29-40.
                             to data and symbology. The difficulty, however, is that
                                                                                         [2] Deitrick, S., Edsall, R. The influence of uncertainty
                             even something as widely available as standard error
                                                                                         visualization on decision making: An empirical
                             bars, for instance, may not be as commonly understood
                                                                                         evaluation. Progress in Spatial Data Handling (2006),
                             as one might think. This is a clear example of the long     719-738.
                             running argument between the view of maps as social
                                                                                         [3] Evans, B.J. Dynamic display of spatial data-
                             systems and their view as design artifacts.                 reliability: Does it benefit the map user? Computers
                                                                                         and Geosciences - Special Issue on Exploratory
                             Ultimately, utility companies wish to survey assets in      Cartographic Visualization 23, 4 (1997), 409-422.
                             the field using absolute rather than relative accuracy;     [4] Griethe, H., Schumann, H. The Visualization of
                             much effort to deal with uncertainty information in the     uncertain data: Methods and problems. In Proceedings
                             utility sector have been focused on methods to              of SimVis’06 (2006), 143-156.
                             eliminate locational uncertainty via new survey             [5] MacEachren, A., Robinson, A., Hopper, S., Gardner,
                             technology. It is not possible to remove all sources of     R.M., Gahegan, M., Hetzler, E. Visualizing geospatial
                             uncertainty from utility data; subjectivity and non-        information uncertainty: What we know and what we
                             specificity are intrinsic as humans will continue to        need to know. Cartography and Geographic Information
                                                                                         Science 32, 3 (2005), 139-160.
                             mediate the provision of data. Moreover, the temporal
                             issue is an important one as there is often a time gap      [6]   VISTA Project. http://www.vistadtiproject.org/.
                             between learning the information and reporting it.          [7] Wittenbrink, C., Pang, A., Lodha, S. Glyphs for
                                                                                         visualizing uncertainty in vector fields. IEEE
                             There is much space for improving the way uncertainty       Transactions on Visualization and Computer Graphics 2
                                                                                         (1996), 266-279.
                             information is currently captured, depicted and shared.
                             To make uncertainty visualization successful, there         [8] Wray, K. Using the creative design process to
                                                                                         develop illustrative rendering techniques to represent
                             need to be better techniques to capture and model
                                                                                         information quality. Journal of Young Investigators 17
                             uncertainty data; an agreement on data and                  (2008).

<a id="p006-b004"></a>

<!-- p006-b004 -->
4056
