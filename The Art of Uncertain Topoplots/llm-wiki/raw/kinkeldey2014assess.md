---
id: "kinkeldey2014assess"
title: "How to Assess Visual Communication of Uncertainty? A Systematic Review of Geospatial Uncertainty Visualisation User Studies"
source_file: "The Art of Uncertain Topoplots/papers/kinkeldey2014assess.pdf"
source_sha256: "fafb766d5c8afc54c70f4f0dd80e97aa712e18829c29c4b45f73d2ffa11d29c3"
extraction_format: 1
---

# How to Assess Visual Communication of Uncertainty? A Systematic Review of Geospatial Uncertainty Visualisation User Studies — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
The Cartographic Journal
      The World of Mapping

<a id="p001-b002"></a>

<!-- p001-b002 -->
ISSN: 0008-7041 (Print) 1743-2774 (Online) Journal homepage: www.tandfonline.com/journals/ycaj20

<a id="p001-b003"></a>

<!-- p001-b003 -->
How to Assess Visual Communication of
Uncertainty? A Systematic Review of Geospatial
Uncertainty Visualisation User Studies

<a id="p001-b004"></a>

<!-- p001-b004 -->
Christoph Kinkeldey, Alan M. MacEachren & Jochen Schiewe

<a id="p001-b005"></a>

<!-- p001-b005 -->
To cite this article: Christoph Kinkeldey, Alan M. MacEachren & Jochen Schiewe (2014)
How to Assess Visual Communication of Uncertainty? A Systematic Review of Geospatial
Uncertainty Visualisation User Studies, The Cartographic Journal, 51:4, 372-386, DOI:
10.1179/1743277414Y.0000000099

<a id="p001-b006"></a>

<!-- p001-b006 -->
To link to this article: https://doi.org/10.1179/1743277414Y.0000000099

<a id="p001-b007"></a>

<!-- p001-b007 -->
© The British Cartographic Society 2014

<a id="p001-b008"></a>

<!-- p001-b008 -->
Published online: 01 Sep 2014.

<a id="p001-b009"></a>

<!-- p001-b009 -->
Submit your article to this journal

<a id="p001-b010"></a>

<!-- p001-b010 -->
Article views: 10639

<a id="p001-b011"></a>

<!-- p001-b011 -->
View related articles

<a id="p001-b012"></a>

<!-- p001-b012 -->
View Crossmark data

<a id="p001-b013"></a>

<!-- p001-b013 -->
Citing articles: 41 View citing articles

<a id="p001-b014"></a>

<!-- p001-b014 -->
Full Terms & Conditions of access and use can be found at
             https://www.tandfonline.com/action/journalInformation?journalCode=ycaj20

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
The Cartographic Journal    Vol. 51 No. 4     pp. 372–386    November 2014
# The British Cartographic Society 2014

<a id="p002-b002"></a>

<!-- p002-b002 -->
SURVEY

<a id="p002-b003"></a>

<!-- p002-b003 -->
How to Assess Visual Communication of Uncertainty? A
Systematic Review of Geospatial Uncertainty Visualisation
User Studies
Christoph Kinkeldey1, Alan M. MacEachren2 and Jochen Schiewe1
1
 HafenCity University Hamburg, Lab for Geoinformatics and Geovisualization, Überseeallee 16, Hamburg 20457,
Germany. 2GeoVISTA Center and Department of Geography, Penn State University, University Park, PA 16802, USA
Email: christoph.kinkeldey@hcu-hamburg.de

<a id="p002-b004"></a>

<!-- p002-b004 -->
For decades, uncertainty visualisation has attracted attention in disciplines such as cartography and geographic
    visualisation, scientific visualisation and information visualisation. Most of this research deals with the development of
    new approaches to depict uncertainty visually; only a small part is concerned with empirical evaluation of such techniques.
    This systematic review aims to summarize past user studies and describe their characteristics and findings, focusing on the
    field of geographic visualisation and cartography and thus on displays containing geospatial uncertainty. From a
    discussion of the main findings, we derive lessons learned and recommendations for future evaluation in the field of
    uncertainty visualisation. We highlight the importance of user tasks for successful solutions and recommend moving
    towards task-centered typologies to support systematic evaluation in the field of uncertainty visualisation.

<a id="p002-b005"></a>

<!-- p002-b005 -->
Keywords: uncertainty, geovisualisation, information visualization, scientific visualization, evaluation, user studies

<a id="p002-b006"></a>

<!-- p002-b006 -->
INTRODUCTION                                                        uncertainty (explicit) or signifying it indirectly, e.g. through
                                                                    multiple visualisations showing different possible outcomes
All geospatial data contain uncertainty and ignoring this
                                                                    (implicit) (Deitrick, 2012). Explicit depiction of uncer-
fact can have severe consequences for spatial analysis and
decision making (Zhang and Goodchild, 2002). Past                   tainty graphically is most common. Implicit uncertainty
research has suggested that communicating information               depiction is given less attention in the uncertainty
about data uncertainty has the potential to increase trust in       visualisation literature.
the results when analyses are conducted (Fisher et al., 2012)
and to support decision making that uses the data (Aerts
                                                                    N intrinsic/extrinsic
et al., 2003; Deitrick and Edsall, 2006; Leitner and Bu-            This commonly used distinction was introduced by both
ttenfield, 2000). Visualisation of uncertainty has attracted        Howard and MacEachren (1996) and Gershon (1998) in
substantial attention over more than two decades. Much              cartographic and information visualisation contexts, respec-
of the work has focused on developing typologies of un-             tively. Intrinsic techniques alter the existing symbology to
certainty that represent various aspects of data and how it         represent uncertainty, basically through manipulation of
might be signified (Buttenfield and Weibel, 1988; Pang              visual variables, e.g. colour value. In contrast to this,
et al., 1997; Sanyal et al., 2009; Thomson et al., 2005) and        extrinsic approaches add new objects to the display to depict
on developing methods to depict uncertainty visually (e.g.          uncertainty, e.g. glyphs or grids.
Cedilnik and Rheingans, 2000; Ehlschlaeger et al., 1997;
Sanyal et al., 2010; Wittenbrink et al., 1996). A compre-
hensive review of uncertainty typologies is provided by
                                                                    N visually integral/separable
MacEachren et al. (2005) and a review of uncertainty                The third dichotomy focuses on the visual cognitive
visualisation across science by Brodlie et al. (2012). From         response of the viewer: A visually integral signification of
the broad literature, five common dichotomous categories            uncertainty cannot be perceptually separated from the data
for uncertainty visualisation can be identified:                    signification while a visually separable signification can be
                                                                    read independently (MacEachren et al., 1998). These
N explicit/implicit                                                 categories show some overlap with intrinsic/extrinsic
This category distinguishes between directly expressing             because intrinsic methods tend to be visually integral and
uncertainty, e.g. using glyphs that signify levels of               extrinsic ones visually separable, but there are exceptions.

<a id="p002-b007"></a>

<!-- p002-b007 -->
DOI: 10.1179/1743277414Y.0000000099

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
A Systematic Review of Geospatial Uncertainty Visualisation User Studies                                                       373

<a id="p003-b002"></a>

<!-- p003-b002 -->
after a critical review of existing studies and their findings,
                                                                     we derive lessons learned and recommendations for future
                                                                     work. Our focus lies on user studies from the early 1990s
                                                                     until the present that involve uncertainty visualisation in the
                                                                     domains of cartography and geovisualisation, scientific
                                                                     visualisation and information visualisation. We concentrate
                                                                     on visualisation of geospatial uncertainty, thus, this review is
                                                                     more comprehensive for studies that include some geo-
                                                                     graphic component than those that are primarily aspatial.
                                                                     Apart from that, we focus on empirical studies involving
                                                                     users, typically using metrics such as map reading accuracy
                                                                     and speed or user confidence. Studies that do not appear
Figure 1. UVis3 (‘Uncertainty Visualisation cube’) for categorisa-   in our list include, e.g. conceptual evaluations that use
tion of uncertainty signification in visualisations
                                                                     heuristics derived from general guidelines and rules for data
                                                                     visualisation coined by Bertin, Tufte, Ware and Chambers
                                                                     (Riveiro, 2007a; Riveiro, 2007b; Wittenbrink et al., 1996;
                                                                     Zuk and Carpendale, 2006). Such studies, while not our
N coincident/adjacent                                                focus here, do provide basic statements on the usability of
                                                                     different methods and therefore can help to choose suitable
This categorisation refers to view organisation, i.e. if data        visualisation techniques. Another type of study we did not
and uncertainty are represented in an integrated view                consider are case studies (without users involved) that
(coincident) or in separate views (adjacent) (MacEachren,            demonstrate the basic usability and utility of a method
1992).                                                               (e.g. Allendes Osorio and Brodlie, 2008; Dooley and Lavin,
                                                                     2007), sometimes in connection with assessing display
N static/dynamic                                                     performance (Rhodes et al., 2003).
   The distinction here is between a classical static map               Owing to the volume of literature, differences in goals
   versus a dynamic map using animation and/or                       and diversity of methods, this paper reviews and analyses
   interactive controls. One example of the latter is                studies focused on communicating uncertainty (together or
   dynamic alternation in which a map depicting the                  separately from communicating data) and not on those that
   data is alternated with one depicting data uncertainty,           investigate uncertainty visualisation impacts on reasoning
   often with user control (‘toggling’).                             and decision making (which we will address in a follow up
                                                                     paper). Some studies contribute to both aspects and will
  Based on these categories, we propose a structure to
                                                                     thus appear in both papers.
describe uncertainty visualisation approaches in a systematic
                                                                        This paper is organized as follows: In the section on
way using the following three main dichotomies:
                                                                     ‘Analysis of the literature’, we describe the methodology of
N coincident/adjacent;                                               the review and outline the main characteristics of the
N intrinsic/extrinsic; and                                           studies. This includes the distribution of studies over the
N static/dynamic.                                                    years, the types of uncertainty and the visualisation
                                                                     techniques that have been assessed, the kind of application
We represent these three dichotomies as axes of an                   domains the studies deal with, the groups of participants
Uncertainty Visualisation cube (UVis3, Figure 1). We left            that were involved and the tasks that were conducted. In
out ‘explicit/implicit’ and ‘integral/separable’ from the list,      the section on ‘Discussion of findings’, we summarize and
since most approaches are explicit. And, as already                  discuss the main findings of the studies, organized using the
discussed, ‘visually integral/separable’ on the one hand             UVis3 we introduced above. From the discussion, we derive
corresponds to ‘intrinsic/extrinsic’ in most cases and on the        lessons learned and identify open questions. In the
other hand is a distinction focused on human visual                  conclusion, we summarize the main findings, discuss the
processing rather than signification. Thus, the cube                 limitations of the review and suggest future directions for
distinguishes eight main combinations that help us to                evaluation of uncertainty visualisation.
discuss uncertainty visualisation approaches in a systematic
way in the remainder of the paper.
   As the range of methods for signifying uncertainty has
                                                                     ANALYSIS OF THE LITERATURE
grown, so has the need to assess their usability and
applicability for various use contexts. This need has                In this section, we analyse the main characteristics of the
stimulated a range of studies focused on evaluating                  user studies we included in the review; we have identified 44
uncertainty visualisation methods, but the studies have              studies described in 34 publications. Every sub-study that
been idiosyncratic, thus difficult to compare and develop            involved a different group of subjects was treated as a
generalisations from. To address this gap, we present a              separate study, e.g. the Boukhelifa et al.’s (2012) paper
review of user studies directed to evaluation of uncertainty         contained six studies. We analysed each study by summar-
visualisation methods and tools. The first step is to give an        izing its main characteristics such as the study methodol-
overview of past research and summarize the state of the art         ogy, the visualisation techniques used, the data and scenario
in uncertainty visualisation assessment. In the second step,         that were involved and the reported findings. Based on this

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
374                                                                                                        The Cartographic Journal

<a id="p004-b002"></a>

<!-- p004-b002 -->
Figure 2. Number of studies over time separated by their type. The peak in 2012 is due to the six studies from the Boukhelifa et al.’s
(2012) paper

<a id="p004-b003"></a>

<!-- p004-b003 -->
description, we were able to make comparisons and thus                Web-based experiments have emerged since 2002 and their
identified commonalities and differences.                             number has become comparable to traditional laboratory
   We have included study reports published between 1992              experiments (16 web-based versus 15 lab studies from 2002
and 2014. Over the years, there has been an increase in the           to 2014). Just a small fraction of studies (6 of 44) are based
number of studies that evaluate (rather than just categorize          solely on qualitative methods, i.e. interviews (4) and focus
or suggest methods for) uncertainty visualisation, but the            groups (2).
numbers are generally small with considerable fluctuation               In the remainder of this section, we analyse five specific
(Figure 2). As shown in Figure 3, the majority of studies             aspects of the studies: uncertainty categories, visualisation
apply quantitative methods (38 out of 44), i.e. controlled            techniques, application domains, participants and tasks,
lab experiments (22) and web-based experiments (16).                  organized in subsections.

<a id="p004-b004"></a>

<!-- p004-b004 -->
Figure 3. Number of studies per type

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
A Systematic Review of Geospatial Uncertainty Visualisation User Studies                                                       375

<a id="p005-b002"></a>

<!-- p005-b002 -->
Uncertainty categories                                            2002; Sanyal et al., 2009; Slocum et al., 2003), grid-based
When uncertainty of geospatial data is depicted, it can be        techniques (Kardos et al., 2007; 2008; Kinkeldey et al.,
quantified and represented for each of the three core             2014) or contouring (Senaratne et al., 2012).
information components: attribute (what), positional
(where) and temporal (when) uncertainty (MacEachren               Coincident/adjacent
et al., 2005). Studies dealing with uncertainty information
mainly cover the first component, attribute (also called
thematic) uncertainty. Typically, they relate to uncertain
model outputs (Aerts et al., 2003; Alberti, 2013),
classification uncertainty (Blenkinsop et al., 2000; Drecki,
2002; Kinkeldey et al., 2014) or reliability (e.g. variance) of
statistical data (MacEachren et al., 1998). Just one study (at
least from those focusing on communication of uncer-
tainty) deals with positional uncertainty visualisation           Starting with the earliest research on uncertainty visualisa-
exclusively (Grigoryan and Rheingans, 2004). There are            tion, coincident approaches (with data and uncertainty
no studies in the set assembled here that solely deal with        integrated in the existing display) have been contrasted with
temporal aspects of uncertainty. Less than a fourth of the        adjacent approaches with data and uncertainty in separate
studies (10/44) involve multiple types of uncertainty.            views (MacEachren, 1992). While most studies assess
These studies fall into two categories: either different types    coincident approaches, there are a number of studies that
of uncertainty are evaluated separately, such as the symbol       involve a direct comparison between adjacent and coin-
sets for attribute, positional, and temporal and uncertainty      cident views (Aerts et al., 2003; Edwards and Nelson, 2001;
in MacEachren et al. (2012). Or a combination of types is         Evans, 1997; Gerharz and Pebesma, 2009; Kardos, 2003;
involved in the evaluation, as in Kardos et al. (2003; 2007;      Kardos, 2007; Kubı́ček and Šašinka, 2011; Kunz et al.,
2008) or Zhang et al. (2008) with a focus on attribute and        2011; MacEachren et al., 1998; Retchless, 2012; Senaratne
positional aspects of uncertainty at the same time.               et al., 2012; Viard et al., 2011).

<a id="p005-b003"></a>

<!-- p005-b003 -->
Static/dynamic
Visualisation techniques
One of the basic criteria for the selection of studies for this
review was that the studies reported upon involve a visual
representation of uncertainty. To systematize the appro-
aches used in the studies, we use the three dichotomies
from the UVis3 (refer to the introduction).

<a id="p005-b004"></a>

<!-- p005-b004 -->
Intrinsic/extrinsic
                                                                  The majority of studies deal with traditional static visualisa-
                                                                  tion. As the display typically can become complex when
                                                                  uncertainty is added to data depictions, there have also been
                                                                  numerous attempts to utilize dynamic views. Some of these
                                                                  use non-interactive animation (Aerts et al., 2003; Blenkinsop
                                                                  et al., 2000; Evans, 1997; Kardos et al., 2003; Kardos et al.,
                                                                  2007; Zhang et al., 2008) and some incorporate interactive
                                                                  interfaces (Alberti, 2013; Blenkinsop et al., 2000; Evans,
                                                                  1997; Gerharz and Pebesma, 2009; Slocum et al., 2003;
Most of the studies involve intrinsic approaches, i.e. when       Senaratne et al., 2012).
visual variables of existing map content are manipulated to
represent uncertainty. Examples include colour hue and
colour value (a term under which we subsume value,                Application domains
lightness and brightness) (e.g. Aerts et al., 2003; Edwards       The majority of studies (29 out of 44 studies) use
and Nelson, 2001; Leitner and Buttenfield, 2000;                  applications from a defined domain, e.g. from environmental
MacEachren et al., 1998; Nadav-Greenberg et al., 2008;            science or health research (Table 1). An advantage of this
Retchless, 2012; Schweizer and Goodchild, 1992; Slocum            strategy is that it increases logical validity for the focus
et al., 2003), transparency (e.g. Drecki, 2002; Newman and        domain. However, by not systematically attempting to pick
Lee, 2004; Slocum et al., 2003; Viard et al., 2011), or           tasks that are general and representative of applications that
colour saturation that is used in a number of studies (e.g.       cross domains, it is difficult to know the extent to which
Drecki, 2002; Kubı́ček and Šašinka, 2011; Kunz et al.,         generalisation from the results is valid and it is difficult to
2011; Leitner and Buttenfield, 2000; Retchless, 2012;             relate results among studies. For example, when a study
Sanyal et al., 2009).                                             assesses the intuitiveness of an approach the results are often
   While in the minority, we also identified multiple studies     domain-specific: A symbol set used in aviation may be highly
that focus on extrinsic techniques, i.e. when additional          intuitive for a pilot, but this result cannot be easily transferred
graphical objects are used to represent uncertainty, typically    to other domains – for an expert with a different background,
approaches using glyphs or error bars (Alberti, 2013; Drecki,     the symbol set may not be intuitive at all.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
376                                                                                                              The Cartographic Journal

<a id="p006-b002"></a>

<!-- p006-b002 -->
Figure 4. Number of participants

<a id="p006-b003"></a>

<!-- p006-b003 -->
Participants                                                           experience in using geographic information (Gerharz and
The reported number of participants per study differs                  Pebesma, 2009; Kardos et al., 2008), experience with the
substantially (Figure 4); one important factor is whether              concept of uncertainty and its visualisation (Kardos et al.,
evidence is quantitative or qualitative. Owing to require-             2008; Kinkeldey et al., 2014), experience in maps and
ments of statistical analysis, the number is much higher in            mapping (Evans, 1997, MacEachren et al., 2012), training
studies using quantitative approaches. Lab studies, the most           or knowledge in the application domain (Aerts et al., 2003;
common evaluation type, range from 9 (Zhang et al., 2008)              Kolbeinsson, 2013; Kunz et al., 2011; Senaratne et al.,
to 123 (Viard et al., 2011) participants – the median is 31.           2012) or computer literacy more generally (Newman and
Compared to studies carried out in a laboratory, web-based             Lee, 2004). Self-assessment was often used to determine
studies have the advantage that high numbers of subjects               the subjects’ expertise, especially when participants were
can easily be recruited; the participant numbers in web-               recruited via the web (Aerts et al., 2003; Kinkeldey et al.,
based studies reviewed reflect this as they range from 32              2014; Senaratne et al., 2012). A number of studies define
(Kinkeldey et al., 2014) to 274 (Retchless, 2012) with a               groups with different levels of expertise (e.g. novices versus
median of 82. As noted above, studies involving qualitative            experts) to assess its impact on the results (Evans, 1997;
methods (i.e. focus groups, and interviews) use fewer                  Kubı́ček and Šašinka, 2011; Nadav-Greenberg et al., 2008;
participants – all have less than 15 subjects.                         Schweizer and Goodchild, 1992; Slocum et al., 2003). All
   Another crucial aspect regarding participants is their              in all, the type and level of expertise of participants often
expertise. Expertise is described in many ways that                    remain unclear and groups are usually heterogeneous in
are usually not directly comparable across studies, e.g.               expertise.

<a id="p006-b004"></a>

<!-- p006-b004 -->
Table 1. Domains used in the reviewed studies. Some publications cover more than one domain and thus appear more than once

<a id="p006-b005"></a>

<!-- p006-b005 -->
Domain                                    Studies

<a id="p006-b006"></a>

<!-- p006-b006 -->
Aviation                                  Kolbeinsson (2013)
  Land-use planning, spatial planning,      Aerts et al. (2003), Leitner and Buttenfield (2000), Senaratne et al. (2012),
  urban planning                            Vullings et al. (2013), Zhang et al. (2008)
  Remote sensing, land cover/land use       Blenkinsop et al. (2000), Drecki (2002), Evans (1997), Kinkeldey et al. (2014),
                                            Senaratne et al. (2012), Wray (2007)
  Health research, medical imaging,         Edwards and Nelson (2001), Grigoryan and Rheingans (2004), MacEachren et al.
  disease reporting                         (1998), Wray (2007)
  Environmental modeling, water             Alberti (2013), Gerharz and Pebesma (2009), Kubı́ček and Šašinka (2011), Retchless (2012),
  management, climate change, soil          Senaratne et al. (2012), Slocum et al. (2003), Viard et al. (2011)
  mapping, geology
  Natural hazard management                 Kunz et al. (2011)
  Meteorology, weather forecast             Nadav-Greenberg et al. (2008), Wittenbrink et al. (1996)
  Demography, census                        Kardos et al. (2007), Kardos et al. (2008), Schweizer and Goodchild (1992)
  No specific domain                        Bisantz et al. (1999), Bisantz et al. (2009), Boukhelifa et al. (2012), Finger and Bisantz (2002),
                                            Kardos et al. (2003), MacEachren et al. (2012), Newman and Lee (2004), Sanyal et al. (2009)

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
A Systematic Review of Geospatial Uncertainty Visualisation User Studies                                                      377

<a id="p007-b002"></a>

<!-- p007-b002 -->
Tasks                                                                 Another type of tasks includes comparisons of the
Assessing effectiveness of map communication, whether of           uncertainty of different entities (e.g. ‘which entity is more
the data in the map or uncertainty of those data, typically        uncertain?’) (Alberti, 2013; Blenkinsop et al., 2000; Evans,
involves having participants complete some task and                1997; Kinkeldey et al., 2014; MacEachren et al., 1998;
measuring accuracy and speed with which they do so.                MacEachren et al., 2012; Schweizer and Goodchild, 1992;
From the papers reviewed, we identified two major                  Viard et al., 2011). Some studies involve comparisons for
categories we discuss below: objective assessment that includes    which subjects have to aggregate uncertainty over an
tasks with measurable correctness of results such as value         area or several entities first. An example for this is the second
retrieval, ratings, comparisons or rankings, and subjective        experiment in MacEachren et al. (2012) where the overall
assessment, a category of tasks for evaluating the intuitiveness   degree of uncertainty of two sets with nine icons each have to
of an approach, the preference compared to other options or        be compared.
the subjects’ confidence in their responses when using it. As         Additionally, there are ranking tasks that let subjects
noted above, this review focuses on studies directed to the        assign an order to a number of entities by their data value
communication of uncertainty in visualisations and a               (Bisantz et al., 1999; Finger and Bisantz, 2002) or their
complementary paper about impacts of uncertainty visualisa-        uncertainty (Bisantz et al., 1999; Bisantz et al., 2009;
tion is being prepared. Thus, we do not report on decision         Blenkinsop et al., 2000; Boukhelifa et al., 2012). Ranking
tasks based on uncertain data here, although some papers           tasks by combined data value and uncertainty require
included in this review involve such tasks in addition to          interpretation and are thus not included since we focus on
communication tasks.                                               the communication aspects here.
   Few authors explicitly justify the choice of tasks, e.g.           In contrast to the tasks mentioned so far that were dealing
Sanyal et al. (2009) asked domain experts which tasks they         with specified map objects, there are other tasks including the
would find important for their application. For this reason,       search for entities that fulfil a certain characteristic, e.g.
they chose the search of hotspots in uncertainty (‘[the            extremely high or low values. Several studies incorporate
expert said he] would be interested in looking at regions of       such tasks, for example, the search for the highest data value
extreme (high or low) uncertainty’, p. 1213) and the count         (Viard et al., 2011), the lowest and/or the highest
of features of a specific combination of data and uncertainty      uncertainty (Sanyal et al., 2009; Wray, 2007), or the
(‘He also wanted to be able to discern features in the data,       identification of patterns such as clusters in the data
in the presence of uncertainty’, p. 1213).                         (Edwards and Nelson, 2001; MacEachren et al., 1998) or
                                                                   in uncertainty only (Drecki, 2002; Edwards and Nelson,
Objective assessment                                               2001; Sanyal et al., 2009). Sanyal et al. (2009) extend this
Not surprisingly, value retrieval was found to be a common         task type further to multiple entities using a counting task for
task in the uncertainty visualisation studies we reviewed. It      data values and uncertainty meaning that the number of
is a task with a long history in cartographic communication        clusters in data and uncertainty has to be determined.
research, tracing back to at least Flannery’s 1956 disserta-
tion on graduated symbol map interpretation (results of            Subjective assessment
which were re-assessed more than a decade later and
published in Flannery, 1971). We identified two kinds of           Beside tasks used to measure accuracy and speed of users,
value retrieval tasks that are used. In the first, data and/or     there is another category of tasks used to let subjects
uncertainty values have to be retrieved separately (Aerts          directly assess different aspects of usability, typically by
et al., 2003; Alberti, 2013; Kubı́ček and Šašinka, 2011;        choosing from a list of options (on a Likert scale or similar)
MacEachren et al., 1998; Nadav-Greenberg et al., 2008;             or by giving a rating (e.g. on a scale from 0 to 100). For
Wittenbrink et al., 1996). In the second, retrieval of both        instance, this is used to assess the confidence with a
data values and uncertainty happens simultaneously (Blen-          response (Alberti, 2013; Blenkinsop et al., 2000; Edwards
kinsop et al., 2000; Drecki, 2002; Kolbeinsson, 2013;              and Nelson, 2001; Evans, 1997; Grigoryan and Rheingans,
Kubı́ček and Šašinka, 2011). While generally, value retrieval   2004; Kolbeinsson, 2013; Kubı́ček and Šašinka, 2011;
tasks help assess basic map reading, the first kind                Leitner and Buttenfield, 2000). Other studies determine
corresponds to univariate and the second one to bivariate          the users’ preference for a certain technique (Boukhelifa
map reading.                                                       et al., 2012; Gerharz and Pebesma, 2009; Kardos et al.,
   A rarely used extension of value retrieval tasks is             2003; Retchless, 2012; Senaratne et al., 2012), assessment
aggregation of uncertainty over an area (Drecki, 2002;             about ease-of-use of a map or visualisation (Grigoryan and
Evans, 1997; Kinkeldey et al., 2014). This task type assesses      Rheingans, 2004; MacEachren et al., 1998) or judgment of
the users’ ability to retrieve an overall estimation from a        map attractiveness (MacEachren et al., 1998). Subjective
spatial distribution of uncertainty.                               assessment is also used to determine or the intuitiveness of
   Some studies use rating tasks in which levels of uncertainty    different symbols (MacEachren et al., 2012), the difficulty
have to be estimated, typically on a continuous scale (e.g.        to identify data and uncertainty (Newman and Lee, 2004),
from 0 to 100) (Bisantz et al., 2009; Boukhelifa et al., 2012;     or the degree of visual overload (Newman and Lee, 2004)
Finger and Bisantz, 2002) or on a Likert scale (Drecki,            perceived by participants. Alternatively, open questions are
2002). The difference from value retrieval is that no legend is    used to collect different interpretations without the
provided or needed. These tasks emphasize accuracy of              influence of predefined answers. For instance, Boukhelifa
relative judgments rather than precise value estimation or         et al. (2012) posed open questions to find out how users
legend matching.                                                   interpret the meaning of the sketchy line technique.

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
378                                                                                                    The Cartographic Journal

<a id="p008-b002"></a>

<!-- p008-b002 -->
coarser texture and lower saturation and recommended
                                                                   colour value as the first choice in terms of response
                                                                   accuracy. Boukhelifa et al. (2012) contributed a number
                                                                   of studies focused on uncertainty with line features,
                                                                   comparing known signification methods (greyscale, blur,
                                                                   dashing) to a novel representation called sketchiness (an
                                                                   imitation of hand-drawn lines). They found that in terms of
                                                                   response accuracy, a greyscale representation performed
                                                                   better than blur, dashing and sketchiness. While up to four
                                                                   levels of uncertainty could be distinguished for greyscale
                                                                   and blur, only three were discriminable for dashing and
                                                                   three to four for sketchiness (depending on the task).
                                                                      Since colour hue and value are often already used for
                                                                   representing the data itself, and ‘purity’ of colour has been
                                                                   hypothesized to be intuitive as a method to signify
                                                                   uncertainty, the manipulation of colour saturation to
Figure 5. Three of the recommended intrinsic techniques w.r.t.     represent uncertainty has been subject to a number of
user performance: colour hue, color value and transparency (from   studies. Sanyal et al. (2009) compared different uncertainty
certain5bottom to uncertain5top)                                   representations for line charts (1D) and surfaces (2D data in
                                                                   a 3D display) using artificial data. Colour-mapping from
                                                                   saturated blue for low and unsaturated blue for high
DISCUSSION OF FINDINGS                                             uncertainty was compared to coloured glyphs, glyphs of
In this section, we summarize findings from the collection         different size and error bars to represent uncertainty.
of studies reviewed here. The following subsections contain        Response accuracy for colour saturation was not consis-
findings related to five visual representation method success      tently higher with all tasks, but all in all the authors
metrics. The first, and the main part, focuses on objective        encouraged its use. However, in other studies, colour
measures of user performance (accuracy, speed) that are            saturation was found to be less effective than other
subdivided into the visualisation categories as defined in the     approaches (e.g. Drecki, 2002; Kunz et al., 2011). In
UVis3 (see the section on ‘Introduction’). This is followed        direct comparison to colour value, Leitner and Buttenfield
by study results on the general acceptance of uncertainty          (2000) recommended saturation only if colour value or
visualisation and those from user confidence as a subjective       texture are not available - with less saturation for higher
measure of task performance. The last two subsections deal         uncertainty (unless short response times are more important
with users’ judgments about representation forms, i.e.             for which they recommended more saturated colours for
preference for and intuitiveness of different representations.     higher uncertainty). In an extensive evaluation of intrinsic
                                                                   representations of uncertainty in symbols, MacEachren et al.
User performance                                                   (2012) suggested that saturation was amongst the techni-
In this subsection, we discuss findings related to user            ques with lower accuracy, together with colour hue,
performance that is typically measured as accuracy and             orientation and shape. Thus, from current knowledge,
response time. This discussion is divided into subsections         colour saturation cannot be recommended to represent
represented by the three main dichotomies: intrinsic/              uncertainty. Instead, colour hue and value as well as
extrinsic, coincident/adjacent and static/dynamic.                 transparency are better alternatives (Figure 5).
                                                                      As an alternative to colour value and saturation,
Intrinsic/extrinsic                                                whitening can be used, the representation of uncertainty
In the studies we reviewed, most uncertainty visualisation         by whiteness in the HSI colour model (Hengl, 2003).
                                                                   Kubı́ček and Šašinka (2011) found that the combination of
                                                                   hue and whiteness was not suitable for continuous
                                                                   uncertainty with an unclassed bivariate display, because
                                                                   the legend was too complex to read. Supporting this,
                                                                   Gerharz and Pebesma (2009) measured low performance
                                                                   for whiteness during retrieval of uncertainty values from a
                                                                   coincident uncertainty display, compared to colour-coded
                                                                   adjacent maps. But all in all, evidence is still rare to make
techniques under assessment were intrinsic ranging from            well-founded assumptions about the effectiveness of
manipulation of colour hue, value or saturation to other           whitening.
visual variables, such as transparency, blur or resolution.           The visual variable transparency (or opacity) is a popular
   A straightforward approach to depict uncertainty is to use      alternative for intrinsic uncertainty representation. In a
colour hue and/or value. As an example, Leitner and                study involving land cover maps, Drecki (2002) measured
Buttenfield (2000) compared the representation of attri-           higher effectiveness for transparency signifying classifica-
bute uncertainty in base maps using colour value, saturation       tion uncertainty than for colour saturation. Newman and
and texture. They found that darker colour value for high          Lee (2004) support this observation; they compared
uncertainty yielded the highest accuracy, followed by              transparency to colour mapping and to a number of

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
A Systematic Review of Geospatial Uncertainty Visualisation User Studies                                                       379

<a id="p009-b002"></a>

<!-- p009-b002 -->
extrinsic techniques in static 3D scenes. Regarding ease          than ‘value-size’ (the same approach with filled circles), but
of identification, subjects ranked transparency among the         the difference was not statistically significant.
best techniques for both data and uncertainty. All in                Extrinsic methods for representing uncertainty have a
all, there is evidence that transparency generally has            long tradition in scientific visualisation, e.g. Pang and
higher potential for uncertainty depiction than colour            colleagues designed glyphs to represent data and uncertainty
saturation.                                                       in combination. In an early study by Wittenbrink
    In order to depict data plus uncertainty for area data, an    et al. (1996), the authors compared arrow glyphs including
alternative to manipulating colour attributes is to integrate     uncertainty information (‘verity visualisation’) to common
texture and colour. While texture is often added as an            arrow glyphs without uncertainty and found that they
overlay on top of a data depiction (thus could be                 encoded bearing, magnitude, and uncertainty with almost
considered extrinsic), the visual result is that colour and       the same effectiveness as with the simple arrow glyphs. In
texture are integrated into the areas, thus becoming              the study by Newman and Lee (2004) already mentioned
intrinsic. There is some evidence that texture on colour          above, three extrinsic techniques received the highest
fill leads to good results (Kunz et al., 2011; Leitner and        ratings regarding effectiveness: multi-point, ball and arrow
Buttenfield 2000; MacEachren et al. 1998; Retchless,              glyphs. In the static 3D displays they used, these techniques
2012).                                                            outperformed intrinsic techniques such as colour mapping,
    Another intrinsic approach to represent uncertainty is to     transparency and aliasing (a combination of transparency and
vary resolution. It was used for uncertain symbols in several     blur). In related research, Grigoryan and Rheingans (2004)
studies by Bisantz and colleagues who called the technique        found that with a spatial task in a 3D display (tell if a marker is
‘icon degradation’. In an early study (Bisantz et al., 1999),     inside of the error margin of a surface), subjects were
they compared five sets of symbols (from abstract to iconic)      significantly more accurate and faster when the error margin
representing uncertain hostile and friendly identities. Using     was represented by points than with pseudo-colouring of the
resolution to represent uncertainty (with coarser resolution      surface. In the above mentioned study by Sanyal et al. (2009)
depicting higher uncertainty), they found that subjects           subjects performed well with two kinds of spherical glyphs
could appropriately sort both the abstract and iconic             (varying size and colour value) in a 2D and a 3D display.
versions of the symbols representing identity (‘friendly’ or      Regarding the use of extrinsic methods in maps, Drecki
‘hostile’) combined with six levels of uncertainty, resulting     (2002) showed that what he labeled as the ‘squares’
in 13 different symbols. This result was basically supported      technique (square glyphs coloured by land cover type that
by the first experiment in Finger and Bisantz (2002) with a       are varied in size with smaller squares representing higher
similar setup, but they observed lower user performance in        uncertainty) performed as well in terms of effectiveness as
the ‘hostile’ than in the ‘friendly’ condition. However, this     transparency and better than a display where uncertainty was
observation was not made in other studies by the group. In        represented by heights of a 3D surface.
a study by Kolbeinsson (2013) referring to the work by               Another set of extrinsic approaches that have rarely been
Bisantz and colleagues the icon degradation technique led         assessed are grid-based techniques. In two recent studies,
                                                                  Kinkeldey et al. (2014) assessed ‘noise annotation lines’, a
to decreased user performance compared to symbol shape
                                                                  technique that signifies classification uncertainty by a noise
when users needed to read a data value and uncertainty in
                                                                  grid. The web-based studies incorporated qualitative com-
combination. These findings suggest that resolution can be
                                                                  parisons of attribute uncertainty between areas in land cover
a viable alternative to the manipulation of colour attributes
                                                                  maps with four to eight uncertainty classes, using different
and transparency.
                                                                  grid designs. The authors recommend the technique for up
    The study by Bisantz et al. (2009), unlike the studies
                                                                  to six uncertainty classes when the most salient grid design is
before, did not use resolution to represent uncertainty, but      used. They point out that noise annotation lines can be a
colour saturation, value and transparency. The authors            viable alternative to intrinsic methods, especially with
compared two different backgrounds the symbols were               complex map content. Another grid-based approach is the
placed on: a uniform grey area and a map. Surprisingly, they      ‘trustree’ technique developed by Kardos et al. (2007) that
did not observe a significant effect of the background on         varies the level of detail of a tree-structured grid to represent
user performance. More insight regarding the use of               uncertainty. Since the evaluation did not include measure-
symbols on maps is provided by the Edwards and                    ment of user performance, findings are limited to subjective
Nelson’s (2001) study that assessed bivariate circle symbols      measurement (see subsection on user preference).
with size representing data and colour value representing            All in all, results on extrinsic displays discussed here
uncertainty. They compared bivariate symbols to an                highlight the potential of glyph- and grid-based techniques
approach using univariate symbols and an additional               for uncertainty representation in maps as alternatives to
depiction of uncertainty as a reliability diagram in the          intrinsic techniques. On the question of whether to choose
legend. Alternatively, uncertainty depiction through verbal       intrinsic or extrinsic techniques, the type of uncertainty to
statements in the legend was utilized. The authors found          be displayed is deemed to play a role: Kunz et al. (2011)
that generally, circle symbols on a map were much more            suggested that intrinsic approaches may be more suitable
effective than a verbal description of spatially-varied           for communicating quantitative and extrinsic approaches
uncertainty and also more effective than the uncertainty          for qualitative information. This was supported by Alberti
diagram in the legend. In particular, ‘focus-size’ (colour        (2013) and Kinkeldey et al. (2014) who conclude that the
value of the boundary of unfilled circles depicts uncertainty)    extrinsic displays they used were especially successful for the
surprisingly resulted in higher accuracy and confidence rates     communication of qualitative uncertainty. But there are also

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
380                                                                                                     The Cartographic Journal

<a id="p010-b002"></a>

<!-- p010-b002 -->
other observations suggesting that types of tasks decide if      symbols. Gerharz and Pebesma (2009) compared colour-
intrinsic or extrinsic approaches are more suitable: Slocum      coded adjacent maps and a bivariate coincident map using
et al. (2003) evaluated the effectiveness of intrinsic vs.       whitening and reported that uncertainty retrieval was more
extrinsic visualisation techniques as part of a usability        successful with adjacent maps but no difference existed for
engineering approach. They compared intrinsic RGB colour         data retrieval. In addition, all ten subjects found the tasks
coding, transparency, as well as extrinsic line glyphs and       easy to accomplish with adjacent maps and only five subjects
‘gcm glyphs’ (vertical bars and pyramids). Based on the          had this impression with the coincident map.
interviews the study relied upon, they found that subjects          There are very few results regarding response time. The
with a scientific background preferred glyphs and the less       study by Kubı́ček and Šašinka (2011) is an exception, reporting
experienced preferred colour coding and transparency.            that in a map reading task of either data or uncertainty values,
Their explanation for this is that intrinsic techniques they     coincident maps led to quicker responses than adjacent maps.
used gave a better overview of uncertainty, but in-depth         This may again be explained by saccades that are necessary
analysis was easier with extrinsic techniques. This suggests     when retrieving values from two adjacent maps.
that there may be tasks for which intrinsic techniques are          All in all, past research suggests that both coincident and
more appropriate and others for which extrinsic approaches       adjacent approaches have their applications. There is
work better.                                                     evidence that adjacent views may be usable for retrieval of
                                                                 single values, but less usable when tasks become more
Coincident/adjacent                                              complex and more saccades are needed. Generally, coin-
                                                                 cident maps can be seen as preferable because the
                                                                 integration of uncertainty into the display makes it easier
                                                                 to retrieve data and uncertainty simultaneously. However,
                                                                 they naturally become more complex than adjacent views
                                                                 and the map content is more likely to be obstructed by the
                                                                 additional uncertainty display. For instance, the use of
                                                                 bivariate colour schemes for data and uncertainty can be
                                                                 challenging. So, as shown in several studies, adjacent maps
                                                                 can be a viable alternative to avoid clutter.

<a id="p010-b003"></a>

<!-- p010-b003 -->
This subsection deals with findings about comparison of          Static/dynamic
adjacent to coincident (integrated) maps. The obvious
difference between the two approaches is that adjacent
maps require more eye movements (saccades) to retrieve
information than coincident maps. But the latter tend to
become complex and cluttering is a bigger problem when
using a single view for data and uncertainty, compared to
adjacent views.
   Amongst the studies involving a direct comparison, some       A number of studies directed to representation of data
do not suggest general differences between adjacent and          uncertainty deal with the use of dynamic approaches such as
coincident views (Kunz et al., 2011; Retchless, 2012). Most      animated displays or user interaction. The range of possible
studies report on non-significant differences between the        approaches is wide because elements from animation and
two approaches, e.g. Kubıček and Šašinka, (2011) who          interaction can be combined in numerous ways. This makes
reported that when retrieving data value and uncertainty at      it even more difficult to come to consistent conclusions
the same time, users were slightly more successful using         about the effectiveness of dynamic approaches.
adjacent views than a coincident display. In a study already        In an early study by Evans (1997) an animated (non-
discussed above, MacEachren et al. (1998) compared               interactive) ‘flicker’ map and an interactive version
adjacent maps to coincident displays that are visually-          (‘toggling’) were compared to static maps. The results
integral (colour and hue shift) and visually-separable           showed that static and (non-interactive) dynamic appro-
(colour and texture). Adjacent maps were judged to be            aches did not differ significantly in terms of user accuracy or
‘more pleasant and easier to use’. But the coincident,           speed. This result was not supported by Aerts et al. (2003).
visually-separable texture overlay yielded user performance      since they observed significantly higher accuracy for
comparable to the adjacent views. In the study mentioned         uncertainty estimation with a static adjacent view than with
above, Viard et al. (2011) compared adjacent maps to             toggling. Referring to these results, Blenkinsop et al.
coincident maps using a texture with varying transparency        (2000) reported that a static grey scale display showed
to represent the degree of uncertainty. A simple comparison      better user performance than serial animation (series of
task yielded similar results for both approaches, but with a     animated maps) or random animation (animated display of
more complex ranking task, adjacent views led to less            possible outcomes). In another study comparing static and
accurate answers than the coincident view. Coincident            dynamic, Drecki (2002) found that blinking (variations in
versus adjacent results for identification of spatial patterns   display time of map entities according to their uncertainty;
were reported by Edwards and Nelson (2001). The use of a         Fisher, 1993) was less effective than static representation
small uncertainty display in the legend of a map was less        through glyphs or opacity, but more effective than a 3D
successful than the coincident alternative using circle          surface or the manipulation of colour saturation. Senaratne

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
A Systematic Review of Geospatial Uncertainty Visualisation User Studies                                                   381

<a id="p011-b002"></a>

<!-- p011-b002 -->
et al. (2012) also observed higher user performance with          User preference
static than with dynamic approaches.                              A number of studies measured user preference for the visual
   All in all, there is evidence that animated views have a       techniques under evaluation. Generally, it can be stated that
potential to successfully represent uncertainty when static       in contrast to confidence, user preference did not always
solutions are not feasible but little evidence that they          correspond to user performance, i.e. subjects often preferred
perform better (or even as well) as more traditional static       techniques that did not necessarily work best for them. For
depictions. However, as Blenkinsop et al. (2000) suggest,         instance, although users were not successful with colour
animated approaches may be suitable for specific tasks – for      saturation they had a preference for using it (Drecki, 2002).
instance, for exploration of uncertainty of a dataset in an       This effect was also measured in the above mentioned study
early stage of analysis because they provide ‘a very effective    by Boukhelifa et al. (2012) with respect to uncertain lines:
first impression of uncertainty’ (p. 11).                         Dashing was preferred over blur, greyscale and sketchiness,
                                                                  but this did not correspond with user performance in which
Acceptance                                                        dashing yielded only three discriminable levels of uncertainty
An important overarching evaluation question is how users         (fewer than with blur or greyscale).
generally react when uncertainty is depicted visually. A             However, there are also results suggesting a match
number of studies report on this aspect and the findings are      between performance and preference. Gerharz and
not consistent: some authors report that adding uncertainty       Pebesma (2009) reported that most participants preferred
information to a map had negative effects on map                  adjacent maps over a coincident view with whiteness
readability (Schweizer and Goodchild, 1992; Slocum et             representing uncertainty and they could also retrieve
al., 2003) and that subjects wanted the display to remain         uncertainty values most accurately using the adjacent
unobstructed (Kardos et al., 2003). One obvious reason for        display. In a study focused on similar datasets but in a
this is that displays become more complex when uncertainty        web-based environment, Senaratne et al. (2012) also found
is added. Besides, users tend to be overwhelmed by the            a strong correspondence between preference and user
additional information when they make analyses or                 performance but only for the static techniques they assessed
decisions – an aspect we discuss in the second paper on           (contouring, symbols, adjacent maps), not for the dynamic
effects of uncertainty visualisation. But there are also          approaches.
findings suggesting that visualisations including uncertainty        All in all, these findings show that measuring preference
were not judged as too complex or even that addition of           does not suffice to determine the effectiveness of uncer-
uncertainty clarifies the view instead of cluttering it (Aerts    tainty visualisation techniques, but that it can give hints
et al., 2003; Alberti, 2013; Edwards and Nelson, 2001;            about what approaches are popular with different user
Kunz et al., 2011; Leitner and Buttenfield, 2000;                 groups. This information can be taken into account for
MacEachren et al., 1998; Viard et al., 2011). This suggests       choosing useful methods to depict uncertainty when user
that, when appropriate solutions are found, users do not          acceptance is essential.
necessarily see depicted uncertainty as a burden.
                                                                  Intuitiveness
User confidence                                                   The intuitiveness of different techniques was assessed by a
When assessing the usability of uncertainty visualisations,       few studies only. The first part of the study reported by
the level of confidence that subjects have with their answers     MacEachren et al. (2012) included three common meta-
can be an important aspect. However, in many studies,             phors suggested as appropriate to uncertainty signification
confidence was not measured at all. From those that did,          including: colour purity (manipulating colour saturation),
most studies reported that user performance and confidence        fog (transparency) and blur (fuzziness). Fuzziness ranked as
were in agreement, e.g. in the study by Blenkinsop et al.         the most intuitive of all signification methods, while
(2000) cited above they observed higher confidence as well        transparency was above average (but with wide variation
as better user performance with a greyscale display               in reactions) and colour saturation was not judged as
compared to an animation approach. Edwards and Nelson             intuitive. Boukhelifa et al. (2012) tested the intuitiveness of
(2001) found that bivariate symbols depicting data and            sketchiness as a representation of uncertainty. Overall, it
uncertainty (size combined with either focus or colour            was perceived as less intuitive than blur, greyscale and
value) yielded higher confidence (along with more accurate        dashing; since blur corresponds to fuzziness in the
results) than verbal and graphical depiction of uncertainty       MacEachren et al. (2012) study and greyscale to colour
in the legend. Grigoryan and Rheingans (2004) suggested           value, these results support each other. This provides
significantly higher confidence (as well as higher accuracy       further evidence for the assumption made above (from
and shorter response times) when a point-based representa-        objective measurement of user performance) that manip-
tion of positional uncertainty was used, compared to colour       ulating colour saturation is not a recommendable way to
coding. Kolbeinsson (2013) reported higher confidence for         depict uncertainty, compared to other techniques such as
shape changes than for icon degradation that also corre-          transparency and blur.
sponded to higher response accuracy. All in all, the majority        Besides the intuitiveness of a method itself, a number of
of studies measuring confidence provide evidence for the          studies address the question of ‘which end is up’: should
assumption that the successful use of a technique (in terms       high uncertainty be matched with low or high colour value
of accurate and/or fast answers) at the same time leads to        and low or high colour saturation? Lighter values signifying
high user confidence.                                             uncertainty result in a ‘fading out’ effect, whereas darker

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
382                                                                                                          The Cartographic Journal

<a id="p012-b002"></a>

<!-- p012-b002 -->
and related domains. Empirical research focused on
                                                                      geographically varied uncertainty (geo-uncertainty) visuali-
                                                                      sation is probably no less formalized or rigorous than that in
                                                                      other aspects of geovisualisation, but it is clearly no better.
                                                                      Thus, all comparisons and generalisations that we offer
                                                                      here, based on our analysis of the 44 studies reported on in
                                                                      34 papers, must be considered as starting points toward
                                                                      developing a deep understanding of geo-uncertainty visua-
                                                                      lisation, not a definitive summary.

<a id="p012-b003"></a>

<!-- p012-b003 -->
Evaluation goals
                                                                      From the publications included here, two major goals for
                                                                      existing research can be identified. The first is the
                                                                      assessment and improvement of visual displays representing
                                                                      uncertainty. Here, the question is often ‘does method A
                                                                      work better than method B’ (with ‘better’ defined in ways
Figure 6. Three best options w.r.t. intuitiveness from MacEachren     we outlined above). These studies (while not always saying
et al. (2012): fuzziness, position and colour value (the top depic-
tion in all cases was interpreted to be most uncertain)
                                                                      so explicitly) are essentially following a usability engineering
                                                                      approach where the goal is to improve a particular product
                                                                      using a summative assessment rather than to create general
colours make regions with high uncertainty more promi-                principles. One problem in many of these studies is that the
nent. Bisantz et al. (2009) measured a tendency to assign             authors tend to attempt generalisation beyond the specific
lower uncertainty to darker colours when using colour                 constraints of the test, even though the conceptual framing
value, and to more saturated colours when using saturation            of the test was not designed to do this.
to represent uncertainty. This was supported by Kubı́ček                The second goal is to advance understanding of the
and Šašinka (2011) as the majority of participants picked           cognitive processes involved in using visual displays (both
the lighter values as the best choice for higher uncertainty          static and dynamic) for interpreting information that contains
(thus darker value corresponds to lower uncertainty). In              uncertainty. Here, the question is often: how/why does
addition, subjects were faster when using this alternative. In        method A work better than method B or how does any
the most recent ‘which end is up’ research, MacEachren                method of interest change the cognitive process? Such studies
et al. (2012) reported that for colour value, light for               usually are grounded in perceptual and cognitive theory and
uncertain and dark for certain was much more intuitive than           as a result have the potential to provide a framework for
the reverse. Unsaturated colours were also more intuitively           relating the generally ad hoc results from studies that adopt a
associated with uncertainty than saturated colours, but only          usability engineering approach. Studies from the second
slightly. Colour saturation in either order scored near the           category are in the minority of those reviewed.
mean of all visual variables tested, while colour value (with
light depicting uncertain) scored near the top (just below
                                                                      Uncertainty visualisation techniques
fuzziness and location depicted as a point in a coordinate
space – see Figure 6).                                                When evaluating uncertainty visualisation the appropriate
                                                                      choice of techniques to be assessed and compared can be a
                                                                      challenge. As discussed in the introduction, typologies can
                                                                      help to choose from the universe of possible techniques and
LESSONS LEARNED
                                                                      heuristics derived from general guidelines and rules for data
Several lessons learned and recommendations can be                    visualisation can support the choice. But when different
derived from the discussion, the first ones referring to              techniques are to be compared, it is important that the
study design in general. While empirical studies of map               scenarios and datasets are informationally equivalent, i.e.
reading and use have been carried out for 60 years or more            according to Larkin and Simon (1987, p. 67) ‘[t]wo
and uncertainty visualisation has been addressed explicitly           representations are informationally equivalent if all of the
for at least half of that time, the methods used in                   information in the one is also inferable from the other, and
uncertainty visualisation evaluation remain ad hoc. Studies           vice versa’. A goal in testing, then, is often to determine
are often approached more from a usability engineering                whether they are also computationally equivalent, or whether
perspective of assessing and improving a specific product             one depiction has an advantage over another, i.e. ‘[t]wo
than from a cognitive psychology or science perspective of            representations are computationally equivalent if they are
developing general understanding of how and why repre-                informationally equivalent and, in addition, any inference
sentations work or do not work. However, even if consi-               that can be drawn easily and quickly from the information
dered from a usability engineering perspective, studies often         given explicitly in the one can also be drawn easily and
do not follow any methodology commonly agreed upon.                   quickly from the information given explicitly in the other,
This lack of formalisation and rigour in empirical methods            and vice versa’ (Larkin and Simon 1987, p. 67).
is an issue that is much broader than the study of un-                   Another crucial aspect is the role of visual metaphors that
certainty visualisation focused on here; it is an issue that cuts     have been used to depict uncertainty since the beginning of
across research in cartography, information visualisation             this field of research, e.g. fog or blur (MacEachren, 1992).

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
A Systematic Review of Geospatial Uncertainty Visualisation User Studies                                                       383

<a id="p013-b002"></a>

<!-- p013-b002 -->
The contention is that fog and blur are metaphors for lack of         the high number of classes ‘to give the appearance of
clarity or focus (as in a camera) and thus directly signify           continuous shading’ (Schweizer and Goodchild, 1992, p.
uncertainty. These metaphors have been suggested to have the          689). Their results raise the question of whether a high
potential to enable a better understanding of uncertainty             number of classes are more complex than a continuous
(Gershon, 1998) and we make the assumption that the use of            uncertainty distribution or not; to our knowledge, this
metaphors can lead to more intuitive approaches (Kinkeldey            question has not been addressed. In contrast to studies that
et al., 2014). But the usefulness of metaphors generally has          use a constant number of uncertainty classes, in the study by
rarely been investigated. It would be worthwhile to evaluate          Kinkeldey et al. (2014) about noise annotation lines the
whether metaphors increase the intuitiveness of uncertainty           number of classes was defined as an experimental factor. In
visualisation, the understanding of geo-uncertainty and the           this way, they could measure the impact of the number of
success of reasoning and decision-making under uncertain              uncertainty classes on user performance. More work is
conditions. One start toward addressing this goal is offered in       needed on the question of necessary level of detail in
MacEachren et al. (2012), in which the authors assess the             uncertainty representation to support different tasks using
intuitiveness of several strategies for signifying uncertainty (see   uncertainty visualisation (Smith et al., 2013).
the section on ‘Discussion of findings’). Follow-up work is
needed to assess the sensitivity of these findings to the specifics
                                                                      Types of uncertainty
of the visual signification and the experimental design and to
then address the more challenging questions of the relation-          Traditionally, a distinction is made between attribute (or
ship between metaphor-grounded intuitiveness of uncertainty           thematic), positional (or geometric) and temporal uncer-
signification and subsequent information interpretation,              tainty (see the section on ‘Analysis of the literature’).
reasoning with that information and decision-making.                  Although these categories seem logical and match with
                                                                      conceptualisations of data used in geographic database
                                                                      research and development (Peuquet, 1994), their use may
Is uncertainty ‘just another variable’?                               be limited for the majority of applications of uncertainty
A question that has not been extensively discussed in the             visualisation. In practice, it is hard to clearly distinguish
literature is: Do we treat uncertainty as ‘just another               between these categories: ‘[t]he categories of uncertainty
variable’ to be visually represented or does it need to be            are often interdependent, and the category boundaries are
treated differently? For example, when we picture a map               often hard to delineate’ (MacEachren et al., 2005, p. 156).
showing air pressure distribution in combination with                 For instance, when a land cover map is created from a
temperature, these two variables are certainly dependent              remotely sensed image, the boundaries shown in the map
on each other (in physical terms). The same is true with air          are uncertain. This can be a result of various sources, e.g.
pressure and its uncertainty, but we see a stronger                   the vagueness and ambiguity in the definition of land cover
dependency: Uncertainty can be seen as metadata of air-               classes (attribute uncertainty), measurement errors (posi-
pressure which we argue makes a difference. Thus, we                  tional uncertainty) and the use of images from different
support Edwards and Nelson (2001, p. 35) who stated that              capture dates (temporal uncertainty). If all three types could
‘[p]erhaps data certainty information is unique and will              be estimated, it might help an expert analyst, but a domain
require a new type of framework for designing symboliza-              specialist who is not a remote sensing expert might be
tion’. Most studies that assess the usability of uncertainty          confused. This raises the issue of how the complexity of
visualisations do not contribute to this aspect since they            uncertainty relates to the categories of user and task – if
test the retrieval of data and uncertainty separately, but            someone is trying to create a better satellite system, they
from the perspective that there is nothing special about              might need the full range of uncertainty information; if they
uncertainty. Traditionally, studies in this field focus on            are trying to decide what crop to plant, they might need a
the ability to read both the map content and its uncertainty          simple composite depiction of uncertainty.
at the same time. This may be the mandatory criterion
for a successful use of uncertainty, but the question that
                                                                      User issues
remains is whether this is sufficient to ensure that a user
does not only have two separate values in mind but an                 A number of lessons learned are related to participants and
integrated uncertain data value.                                      recruiting for empirical studies. A general objective should
                                                                      be to recruit participants who are representative for the
                                                                      target user group with respect to age, background, skills,
Classed/unclassed representations                                     experience, etc. However, the majority of studies we review
Another aspect that is often neglected in past studies is             here recruited students since they are easily available in the
whether to use classed or unclassed schemes for uncertainty           university context. Thus, most descriptions of expertise
categories. When classed uncertainty is used, the choice of           have to be judged critically. Students can be suitable parti-
the number of classes is rarely explained. In the studies             cipants for studies focusing on perceptual issues where only
reviewed here, classification schemes range from binary               expertise in terms of visual literacy and experience with visu-
classed, i.e. certain/uncertain (or reliable/unreliable), over        alisation or maps is important. But even here, students may
six classes (e.g. Bisantz et al., 1999) to 15 classes (Schweizer      not reflect the general population well, if that is the target
and Goodchild, 1992). All in all, the colour scheme used in           audience. Students have different levels of theoretical
the latter study used 15615 classes; thus, subjects had to            expertise typically combined with very limited or no work
distinguish 225 classes. It is not surprising that the authors        experience. Despite this fact, they are often described as do-
reported low user accuracy of judgments. They justify                 main or map ‘experts’ without a more detailed specification

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
384                                                                                                            The Cartographic Journal

<a id="p014-b002"></a>

<!-- p014-b002 -->
of their experience. Further, if domain expertise plays a role,            All this supports the hypothesis that the nature of tasks plays
e.g. when it is needed to understand the symbology of a                 an important role for the usability of uncertainty visualisation
map (e.g. with a geological map), students (even those                  techniques. This may explain many of the inconsistent
studying within the domain of interest) are not yet experts.            outcomes from the studies under review; two studies assessing
Thus, in recruiting and selecting participants for studies, it          a specific technique are likely to yield different results when
is important to differentiate between types of expertise,               tasks and user groups are not comparable. We further address
including at least:                                                     this aspect in the next section.

<a id="p014-b003"></a>

<!-- p014-b003 -->
N expertise in use of maps and related visual displays;
N expertise in design of maps and related visual displays;
N expertise in statistics – thus in understanding probabil-             CONCLUSION
  ities and related uncertainty metrics;                                In this review, we systematically analysed 44 user studies
N expertise in the application domain used for test                     from 34 publications dealing with uncertainty visualisation.
  scenarios (if any);                                                   More precisely, we focused on uncertainty of geospatial data
N expertise in using uncertainty estimates in the application           and geographic displays. The first step was a description of
  domain; and                                                           characteristics of the study under review (types of studies,
N expertise in using any technology that might be relevant              visualisation techniques under assessment, number and type
  (e.g. if the focus is on interactive interfaces, expertise in that)   of participants, etc.), as well as a summary of the main
                                                                        findings regarding user performance, acceptance of uncer-
Beyond recruitment of appropriate participant groups, it
                                                                        tainty visualisation, user confidence, preference and intui-
has also been shown that training is important for effective
                                                                        tiveness of techniques. From this, we derived lessons learned
empirical analysis of complex information display inter-
                                                                        and identified gaps in past evaluation research. Furthermore,
pretation, but it is usually not carried out to a sufficient
                                                                        a number of recommendations and open research questions
extent. An extensive training phase is often necessary, not
                                                                        for future studies were discussed.
only to clarify the scenarios, data and tasks, but also
                                                                           This article focused on evaluating how uncertainty can be
visualisation techniques used (especially when they are still
                                                                        communicated. It did not include issues with reasoning and
unknown to the users) and measures of uncertainty that are
                                                                        decision-making based on uncertainty visualisations – we will
needed. This is an aspect that has rarely been considered by
                                                                        address these aspects in a follow-up publication. Since this
the studies from our review.
                                                                        work focused on visualisation of uncertainty in geospatial data
                                                                        we did not try to be exhaustive for fields such as information
Task dependency                                                         visualisation or scientific visualisation (although we did
Some studies provide evidence that the usability of                     include publications from those domains when representa-
uncertainty representations can be highly user and task                 tion of geographic information uncertainty was a compo-
dependent. For instance, in the study conducted by Sanyal               nent). The fact that we dealt with visualisation of uncertainty
et al. (2009), search tasks for the lowest and highest                  means that we did not review literature on decision-making
uncertainty values resulted in different user performance               under uncertainty. We only included literature on non-visual
(although using the same data). From their study about                  communication of uncertainty in cases where that topic is
weather forecasting uncertainty, Nadav-Greenberg et al.                 included in a paper having a visual focus (e.g. studies that
(2008) suggest that ‘it is extremely important that designers           compare uncertainty visualisation to a control of verbal
of such displays consider both user and task demands because            description or numerical specification of uncertainty).
the usability and usefulness of uncertainty information                    Generally, the most important outcome is that we need
depends on these factors’ (Nadav-Greenberg et al., 2008,                to systematize future empirical studies on uncertainty
p. 44). In their study, a box plot was successful for precise           visualisation to better enable comparison and generalisation
information whereas the colour-coded maps worked better                 of the findings. As mentioned above, one way to advance this
for relative comparisons. Similar to this, in a study discussed         goal is the use of uncertainty visualisation typologies.
above, Slocum et al. (2003) reported that participants who              However, as also discussed above, existing typologies are
wanted the ‘big picture’ preferred intrinsic techniques (RGB-           focused on data types, uncertainty categories and representa-
encoding or transparency) whereas others who were aiming                tion types, i.e. they map a description of the data being
for detailed information tended to prefer extrinsic methods             displayed to a recommendation of techniques. Based on the
(i.e. glyphs). These findings show how tasks can differ                 discussion about task-dependency of uncertainty visualisation
between groups with a different level of expertise in the               usability (see the section on ‘Lessons learned’), we suggest
problem domain. Further evidence for task dependency of                 that future typologies should additionally take different
visual depiction of uncertainty is provided by Blenkinsop               categories of tasks into account. We propose that at least the
et al. (2000) who support the hypothesis from MacEachren                following three high-level task categories deserve attention:
et al. (1998) that visually separable representation of
uncertainty is preferable for exploratory use, i.e. when it is          N communication tasks
not clear what questions will be asked exactly during analysis.            This category comprises map reading tasks involving
In a focus group initiated by Zhang et al. (2008), domain                  data and uncertainty value retrieval (which location is
experts were unable to articulate what their preferred                     most uncertain?). For tasks from this category,
uncertainty visualisation methods were because they were                   visualisation techniques can be chosen following the
convinced that this strongly depends on the task.                          traditional rules from cartography.

<a id="page-015"></a>

## PDF page 15

<a id="p015-b001"></a>

<!-- p015-b001 -->
A Systematic Review of Geospatial Uncertainty Visualisation User Studies                                                              385

<a id="p015-b002"></a>

<!-- p015-b002 -->
N analytical tasks                                                role of uncertainty in geospatial data and started his PhD in
                                                                  2010. His dissertation project deals with uncertainty-aware
   Tasks that occur during analysis fall into this category,
                                                                  geovisual analytics of land cover change. The main question is if
   meaning that defined analytical questions have to be
                                                                  and how users can incorporate visually depicted uncertainty in
   answered (what area is most suitable to build a power
                                                                  change analysis.
   plant?). Approaches for uncertainty visualisation
   should be tailored to these tasks (e.g. by choosing
   uncertainty representations with the number of
   classes and level of detail needed to conduct the task).
                                                                  REFERENCES
N exploratory tasks                                               Aerts, J. C., Clarke, K. C. and Keuper, A. D. (2003). ‘Testing popular
                                                                      visualization techniques for representing model uncertainty’,
   Tasks from this category occur during exploration of               Cartography and Geographic Information Science, 30, pp.
   the data, i.e. tasks for which the strategies for and              249–261.
   outcomes from use of visual displays can hardly be             Alberti, K. (2013). Web-based visualization of uncertain spatio-
   foreseen. Because of this, visualisation methods need              temporal data. MSc thesis. Utrecht University. Utrecht, The
   to be versatile. This can be accomplished through                  Netherlands.
                                                                  Allendes Osorio, R. S. and Brodlie, K. W. (2008). ‘Contouring with
   adaptable and adaptive approaches. Dynamic                         uncertainty’, in Proceedings of 6th Theory & Practice of
   approaches, especially those involving interactivity,              Computer Graphics Conference (TP.CG.08), ed. by Lim, I. S.
   play an important role here.                                       and Tang, W., pp. 59–66, Eurographics Association, Manchester.
                                                                  Bisantz, A. M., Finger, R., Seong, Y. and Llinas, J. (1999). ‘Human
   But this is only one piece of the complex characterisation         Performance and Data Fusion Based Decision Aids’, in 2nd
of visual depiction of uncertainty. Complementary typolo-             International Conference on Information Fusion FUSION’99,
gies are needed to characterize static and dynamic methods            pp. 918–925, Sunnyvale, CA, Jul 6–8.
for signifying uncertainty visually, for user tasks related to    Bisantz, A. M., Stone, R. T., Pfautz, J., Fouse, A., Farry, M., Roth, E.,
                                                                      Nagy, A. L. and Thomas, G. (2009). ‘Visual representations of
uncertainty signification, and for the ways in which                  meta-information’, Journal of Cognitive Engineering and
interactivity can apply to enable user access to data, its            Decision Making, 3, pp. 67–91.
uncertainty and their combination. The key goal in                Blenkinsop, S., Fisher, P., Bastin, L. and Wood, J. (2000). ‘Evaluating
developing and applying such typologies is to support                 the perception of uncertainty in alternative visualization strategies’,
repeatability of, make comparisons among, and make                    Cartographica: The International Journal for Geographic
                                                                      Information and Geovisualization, 37, pp. 1–14.
generalisations from empirical studies. Thus, we propose          Boukhelifa, N., Bezerianos, A., Isenberg, T. and Fekete, J.-D. (2012).
the following main topics for future research in the field:           ‘Evaluating sketchiness as a visual variable for the depiction of
                                                                      qualitative uncertainty’, IEEE Transactions on Visualization and
N the role of intuitiveness and metaphors;                            Computer Graphics, 18, pp. 2769–2778.
N special requirements of visual depiction of uncertainty         Brodlie, K., Allendes Osorio, R. and Lopes, A. (2012). ‘A review of
  compared to other data;                                             uncertainty in data visualization’, in Expanding the Frontiers of
N systematic description of expertise and investigation of            Visual Analytics and Visualization, ed. by Dill, J., Earnshaw, R.,
                                                                      Kasik, D., Vince, J. and Wong, C, pp. 81–109, Springer, London.
  the role of training; and                                       Buttenfield, B. P. and Weibel, R. (1988). ‘Visualizing the Quality of
N development of task-centred typologies and guidelines.              Cartographic Data’, in Third International Geographic
                                                                      Information Systems Symposium (GIS/LIS ’88), San Antonio,
Dealing with these topics will help advance the goal of               TX, Nov 30–Dec 2.
systematic evaluation of uncertainty visualisation, and, as a     Cedilnik, A. and Rheingans, P. (2000) ‘Procedural Annotation of
result, will facilitate the development of practical guidelines       Uncertain Information’, in IEEE Visualization 2000, pp. 77–84,
in this field. Such guidelines are needed to approach the             Salt Lake City, UT, Oct 8–13.
                                                                  Deitrick, S. (2012). ‘Evaluating implicit visualization of geographic un-
goal of a wide application of uncertainty visualisation in
                                                                      certainty for public policy decision support’, in Proceedings of
geospatial analyses, reasoning and decision making.                   AutoCarto International Symposium on Automated Cartogra-
                                                                      phy. http://www.cartogis.org/docs/proceedings/2012/Deitrick_
                                                                      AutoCarto2012.pdf (accessed April 2014).
                                                                  Deitrick, S. and Edsall, R. (2006). ‘The influence of uncertainty
BIOGRAPHICAL NOTES                                                    visualization on decision making: an empirical evaluation’, in
                               Christoph Kinkeldey is a               Progress in Spatial Data Handling: 12th International
                                                                      Symposium on Spatial Data Handling, ed. by Riedl, A., Kainz,
                               research assistant and PhD             W. and Elmes, G. A., pp. 719–738, Springer, Berlin.
                               candidate at HafenCity Uni-        Dooley, M. A. and Lavin, S. J. (2007). ‘Visualizing method-produced
                               versity Hamburg, Germany               uncertainty in isometric mapping’, Cartographic Perspectives, 56,
                               (Lab for Geoinformatics and            pp. 17–36.
                               Geovisualization). He recei-       Drecki, I. (2002). ‘Visualization of uncertainty in geographical data’, in
                                                                      Spatial Data Quality, ed. by Shi, W., Fisher P. F. and Goodchild, M.
                               ved a university diploma               F., pp. 140–159, Taylor & Francis, London/New York.
                               (Dipl.-Ing.) from Leibniz          Edwards, L. D. and Nelson, E. S. (2001). ‘Visualizing data certainty:
                               University Hanover in civil            a case study using graduated circle maps’, Cartographic Pers-
                               engineering with a speciali-           pectives, 38, pp. 19–36.
                               zation in computer science.        Ehlschlaeger, C. R., Shortridge, A. M. and Goodchild, M. F. (1997).
                                                                      ‘Visualizing spatial data uncertainty using animation’, Computers
                               After several years of practi-         & Geosciences, 23, pp. 387–395.
cal experience as software developer in the field of web          Evans, B. J. (1997). ‘Dynamic display of spatial data reliability: does it
mapping, GIS and remote sensing he became interested in the           benefit the map user?’, Computers & Geosciences, 23, pp. 409–442.

<a id="page-016"></a>

## PDF page 16

<a id="p016-b001"></a>

<!-- p016-b001 -->
386                                                                                                                     The Cartographic Journal

<a id="p016-b002"></a>

<!-- p016-b002 -->
Finger, R. and Bisantz, A. M. (2002). ‘Utilizing graphical formats to        MacEachren, A. M., Brewer, C. A. and Pickle, L. W. (1998).
   convey uncertainty in a decision-making task’, Theoretical Issues            ‘Visualizing georeferenced data: representing reliability of health
   in Ergonomics Science, 3, pp. 1–25.                                          statistics’, Environmental and Planning A, 30, pp. 1547–1561.
Fisher, D., Popov, I. O., Drucker, S. M. and Schraefel, M. C. (2012).        Nadav-Greenberg, L., Joslyn, S. L. and Taing, M. U. (2008). ‘The effect of
   ‘Trust me, I’m partially right: incremental visualization lets analysts      weather forecast uncertainty visualization on decision-making’, Journal
   explore large datasets faster’, in Proceedings of the 2012                   of Cognitive Engineering and Decision Making, 2, pp. 24–47.
   Conference on Human Factors in Computing Systems (CHI                     Newman, T. S. and Lee, W. (2004). ‘On visualizing uncertainty in
   2012), pp. 1673–1682, ACM, New York.                                         volumetric data: techniques and their evaluation’, Journal of
Fisher, P. (1993). ‘Visualising uncertainty in soil maps by animation’,         Visual Languages & Computing, 15, pp. 463–491.
   Cartographica, 30, pp. 20–27.                                             Pang, A. T., Wittenbrink, C. M. and Lodha, S. K. (1997). ‘Approaches to
Flannery, J. J. (1956). The graduated circle: a description, analysis and       uncertainty visualization’, The Visual Computer, 13, pp. 370–390.
   evaluation of a quantitative map symbol. Unpublished PhD                  Peuquet, D. J. (1994). ‘It’s about time: a conceptual framework for the
   dissertation. University of Wisconsin.                                       representation of temporal dynamics in geographic information
Flannery, J. J. (1971). ‘The relative effectiveness of some common              systems’, Annals of the Association of American Geographers,
   graduated point symbols in the presentation of quantitative data’,           84, pp. 441–461.
   Cartographica: The International Journal for Geographic                   Retchless, D. (2012). Mapping Climate Change Uncertainty:
   Information and Geovisualization, 8, pp. 96–109.                             Effects on Risk Perceptions and Decision Making, Poster,
Gerharz, L. E. and Pebesma, E. J. (2009). ‘Usability of Interactive and         AGU Fall Meeting, San Francisco, CA.
   Non-interactive Visualization of Uncertain Geospatial Informa-            Rhodes, P.J., Laramee, R. S., Bergeron, R. D. and Sparr, T. M. (2003).
   tion’, in Geoinformatik 2009, Osnabrück, Mar 31–Apr 2, pp.                  ‘Uncertainty Visualization Methods in Isosurface Volume
   223–230.                                                                     Rendering’, in Eurographics 2003, short papers, pp. 83–88,
Gershon, N. (1998). ‘Visualization of an imperfect world’, IEEE                 Granada, Spain, Sep 1–5.
   Computer Graphics and Applications, 18, pp. 43–45.                        Riveiro, M. (2007a). ‘Cognitive evaluation of uncertainty visualization
Grigoryan, G. and Rheingans, P. (2004). ‘Point-based probabilistic              methods for decision making’, in 4th Symposium on Applied
   surfaces to show surface uncertainty’, IEEE Transactions on                  Perception in Graphics and Visualization (AGPV 2007),
   Visualization and Computer Graphics, 10, pp. 564–573.                        Tübingen, Jul 26–27, p.133.
Hengl, T. (2003). ‘Visualization of Uncertainty Using the HSI Colour         Riveiro, M. (2007b). ‘Evaluation of uncertainty visualization techni-
   Model: Computations with Colours’, in 7th International Conference           ques for information fusion’, in 10th International Conference
   on GeoComputation, Southampton, Sep 8–10, pp. 8–17.                          on Information Fusion, pp. 1–8, Quebec, Canada, Jul 9–12.
Howard, D. and MacEachren, A. M. (1996). ‘Interface design for geo-          Sanyal, J., Zhang, S., Bhattacharya, G., Amburn, P. and Moorhead, R.
   graphic visualization: tools for representing reliability’, Car-             (2009). ‘A user study to compare four uncertainty visualization
   tography and Geographic Information Science, 23, pp. 59–77.                  methods for 1D and 2D datasets’, IEEE Transactions on
Kardos, J. D., Benwell, G. L. and Moore, A. (2007). ‘Assessing                  Visualization and Computer Graphics, 15, pp. 1209–1218.
   different approaches to visualise spatial and attribute uncertainty in    Sanyal, J., Song Z., Dyer, J., Mercer, A., Amburn, P. and Moorhead,
   socioeconomic data using the hexagonal or rhombus (HoR)                      R. J. (2010). ‘Noodles: a tool for visualization of numerical weather
   trustree’, Computers, Environment and Urban Systems, 31,                     model ensemble uncertainty’, IEEE Transactions on Visualiza-
   pp. 91–106.                                                                  tion and Computer Graphics, 16, pp. 1421–1430.
Kardos, J. D., Moore, A. and Benwell, G. L. (2008). ‘Exploring               Schweizer, D. M., and Goodchild, M. F. (1992). ‘Data Quality and
   tessellation metaphors in the display of geographical uncertainty’, in       Choropleth Maps: An Experiment with the Use of Color’, in GIS/
   Geospatial Vision – New Dimensions in Cartography, ed. by                    LIS ’92, pp. 686–699, San Jose, CA, Nov 10–12.
   Moore, A. and Drecki, I., pp. 113–140, Springer, Berlin/Heidelberg.       Senaratne, H., Gerharz, L., Pebesma, E. and Schwering, A. (2012).
Kardos, J. D., Moore, A. and Benwell, G. L. (2003). ‘The visualization of       ‘Usability of spatio-temporal uncertainty visualization methods’ in
   uncertainty in spatially-referenced attribute data using TRUSTworthy         Bridging the Geographic Information Sciences, ed. by Gensel, J.,
   data structures’, in 7th International Conference on GeoCom-                 Josselin, D. and Vandenbroucke D., pp. 3–23, Springer, Berlin/
   putation, pp. 11–26, Southampton, Sep 8–10, pp. 11–26.                       Heidelberg.
Kinkeldey, C., Mason, J., Klippel, A. and Schiewe, J. (2014).                Slocum, T. A., Cliburn, D. C., Feddema, J. J. and Miller, J. R. (2003).
   ‘Evaluation of Noise Annotation Lines: Using Noise to Represent              ‘Evaluating the usability of a tool for visualizing the uncertainty of
   Thematic Uncertainty in Maps’, Cartography and Geographic                    the future global water balance’, Cartography and Geographic
   Information Science, Advance online publication. doi: 10.1080/               Information Science, 30, pp. 299–317.
   15230406.2014.949868, 2014.                                               Smith, J., Retchless, D., Kinkeldey, C. and Klippel, A. (2013). ‘Beyond
Kolbeinsson, A. (2013). Visualising uncertainty in aircraft cockpits. Is        the surface: current issues and future directions in uncertainty
   icon degradation an appropriate visualization form. MSc thesis.              visualization research’, in 26th International Cartographic
   University of Skövde. Skövde, Sweden.                                      Conference (ICC 2013), Dresden, Aug 25–30.
Kubı́ček, P. and Šašinka, Č. (2011). ‘Thematic uncertainty visualiza-    Thomson, J., Hetzler, E., MacEachren, A., Gahegan, M. and Pavel, M.
   tion usability – comparison of basic methods’, Annals of GIS, 17,            (2005). ‘A typology for visualizing uncertainty’, Proceedings of
   pp. 253–263.                                                                 SPIE, 5669, pp. 146–157.
Kunz, M., Grêt-Regamey, A. and Hurni, L. (2011). ‘Visualization of          Viard, T., Caumon, G. and Levy, B. (2011). ‘Adjacent versus coincident
   uncertainty in natural hazards assessments using an interactive              representations of geospatial uncertainty: Which promote better
   cartographic information system’, Natural Hazards, 59, pp. 1735–             decisions?’, Computers & Geosciences, 37, pp. 511–520.
   1751.                                                                     Vullings, L. A. E., Blok, C. A., Wessels, C. G. A. M. and Bulens, J. D.
Larkin, J. H. and Simon, H. A. (1987). ‘Why a diagram is (sometimes)            (2013). ‘Dealing with the uncertainty of having incomplete sources
   worth ten thousand words’, Cognitive Science, 11, pp. 65–100.                of geo-information in spatial planning’, Applied Spatial Analysis
Leitner, M. and Buttenfield, B. P. (2000). ‘Guidelines for the display of       and Policy, 6, pp. 25–45.
   attribute certainty’, Cartography and Geographic Information              Wittenbrink, C. M., Pang, A. T. and Lodha, S. K. (1996). ‘Glyphs for
   Science, 27, pp. 3–14.                                                       visualizing uncertainty in vector fields’, IEEE Transactions on
MacEachren, A. M. (1992). ‘Visualizing uncertain information’,                  Visualization and Computer Graphics, 2, pp. 266–279.
   Cartographic Perspectives, 13, pp. 10–19.                                 Wray, K. (2007). ‘Using the creative design process to develop
MacEachren, A. M., Robinson, A., Hopper, S., Gardner, S., Murray, R.,           illustrative rendering techniques to represent information quality’,
   Gahegan, M. and Hetzler, E. (2005). ‘Visualizing geospatial informa-         Journal of Young Investigators, 17.
   tion uncertainty: what we know and what we need to know’, Carto-          Zhang, Q., Blok, C. and Tang, X. (2008). ‘Animated representation of
   graphy and Geographic Information Science, 32, pp. 139–160.                  uncertainty and fuzziness in Dutch spatial planning maps’, in XXIst
MacEachren, A. M., Roth, R. E., O’Brien, J., Li, B., Swingley, D. and           ISPRS Congress Technical Commission II, pp. 1043–1048,
   Gahegan, M. (2012). ‘Visual semiotics & uncertainty visualization:           Beijing, China, Jul 3–11.
   an empirical study’, IEEE Transactions on Visualization and               Zuk, T. and Carpendale, S. (2006). ‘Theoretical analysis of uncertainty
   Computer Graphics, 18, pp. 2496–2505.                                        visualizations’ Proceedings of SPIE, 6060, p. 606007.
