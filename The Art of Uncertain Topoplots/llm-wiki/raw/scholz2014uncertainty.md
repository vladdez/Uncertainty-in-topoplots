---
id: "scholz2014uncertainty"
title: "Uncertainty in Geographic Data on Bivariate Maps: An Examination of Visualization Preference and Decision Making"
source_file: "The Art of Uncertain Topoplots/papers/scholz2014uncertainty.pdf"
source_sha256: "81129de96caf64b1eb28ff08abfe4b5d6c13dd683d33fd2ddab348c54b797548"
extraction_format: 1
---

# Uncertainty in Geographic Data on Bivariate Maps: An Examination of Visualization Preference and Decision Making — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3, 1180-1197; doi:10.3390/ijgi3041180
                                                                                          OPEN ACCESS
                                                               ISPRS International Journal of
                                                                    Geo-Information
                                                                                     ISSN 2220-9964
                                                                            www.mdpi.com/journal/ijgi/
Article

<a id="p001-b002"></a>

<!-- p001-b002 -->
Uncertainty in Geographic Data on Bivariate Maps:
An Examination of Visualization Preference
and Decision Making
Ruojing W. Scholz * and Yongmei Lu

<a id="p001-b003"></a>

<!-- p001-b003 -->
Department of Geography, Texas State University, San Marcos, TX 78666, USA;
E-Mail: yl10@txstate.edu

<a id="p001-b004"></a>

<!-- p001-b004 -->
* Author to whom correspondence should be addressed; E-Mail: rw1283@txstate.edu;
  Tel.: +1-512-618-1243.

<a id="p001-b005"></a>

<!-- p001-b005 -->
External Editor: Wolfgang Kainz

<a id="p001-b006"></a>

<!-- p001-b006 -->
Received: 31 July 2014; in revised form: 13 October 2014 / Accepted: 13 October 2014 /
Published: 24 October 2014

<a id="p001-b007"></a>

<!-- p001-b007 -->
Abstract: Uncertainty exists widely in geographic data. However, it is often disregarded
      during data analysis and decision making. Proper visualization of uncertainty can help map
      users understand uncertainty in geographic data and make informed decisions. The study
      reported in this paper examines map users’ perception of and preferences for different
      visual variables to report uncertainty on bivariate maps. It also explores the possible impact
      that knowledge and training in Geographic Information Sciences and Systems (GIS) may
      have on map users’ decision making with uncertainty information. A survey was conducted
      among college students with and without GIS training. The results showed that boundary
      fuzziness and color lightness were the most preferred visual variables for representing
      uncertainty using bivariate maps. GIS knowledge and training was found helpful for some
      survey participants in their decision making using bivariate uncertainty maps. The results
      from this case study provide guidance for reporting uncertainty on bivariate maps, aiming
      at encouraging informed decision making.

<a id="p001-b008"></a>

<!-- p001-b008 -->
Keywords: bivariate map; uncertainty visualization; decision making; visual variable;
      Geographic Information Sciences and Systems (GIS)

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                      1181

<a id="p002-b002"></a>

<!-- p002-b002 -->
1. Introduction

<a id="p002-b003"></a>

<!-- p002-b003 -->
Uncertainty is resulted from not knowing the exact degree of the discrepancy between geographic
data and the geographic reality which these data are intended to represent. The quality of geographic data
is affected by positional, attribute, or temporal accuracy, consistency, completeness, or lineage [1,2].
Limitation in human knowledge and capacities, instruments, analysis techniques, and the financial
budget can all introduce uncertainty into geographic data. Uncertainty can be propagated or amplified
during the process of data management, analysis, and visualization. Despite the fact that uncertainty
exists widely in geographic data, it is often disregarded during analysis and decision making [3].
Without proper consideration of uncertainty in geographic data, a policy decision may be inappropriate
and may affect people’s lives dramatically.
   In the past thirty years, researchers in Geographic Information Sciences and Systems (GIS) and the
related fields have made great progress in defining, measuring, modeling and visualizing uncertainty in
geographic data. Uncertainty was identified as one of the long-term research priorities by the
University Consortium of Geographic Information Science (UCGIS) in 1996 [4]. Researchers
concluded that appropriate visualization of uncertainty can help map users understand uncertainty and
make more informed decisions [5,6]. Various methods for uncertainty visualization have been
developed and their effectiveness has been tested [5,7–16]. However, there are some gaps in literature
regarding how map users may prefer the different visualization techniques and the potential impact of
map users’ background on their decision making using uncertainty maps. Particularly, the existing
studies failed to address two important questions: (1) which uncertainty visualization method(s) is
preferred by map users, and (2) does GIS knowledge and training affect map users’ decision making
using uncertainty maps.
   The study reported in this paper was conducted to examine the preference for the different
visualization methods for representing uncertainty in geographic data and to examine if GIS
knowledge and training affects map users’ ability to incorporate uncertainty for better decision
making. A survey of 72 undergraduate students was conducted in April 2012 at Texas State University.
The findings can provide guidelines for visualizing uncertainty on bivariate maps to encourage
informed decision making.

<a id="p002-b004"></a>

<!-- p002-b004 -->
2. Literature Review

<a id="p002-b005"></a>

<!-- p002-b005 -->
Evans [5] stated that it was map designers’ responsibility to provide uncertainty information to map
users so that decisions could be made with the awareness of the data limitation. In the past thirty years,
many empirical researches focused on developing effective methods to visualize uncertainty on a
map [5,7–16]. Among these studies, MacEachren suggested three types of uncertainty visualization
methods: map pairs, bivariate maps and dynamic representations [17]. Map pairs use one map to
represent data and the other map to represent the associated uncertainty [9,11,13]. Bivariate maps
report data and uncertainty with one map by using two different visual variables to represent data and
uncertainty [5,7,9,11]. Dynamic representation shows a sequence of possible realizations continuously
on a computer screen [5,9,10,12,13,18]. Among these three types of methods, dynamic representation

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                     1182

<a id="p003-b002"></a>

<!-- p003-b002 -->
is mostly limited to digital environment. Bivariate maps were found by multiple studies, e.g., [16,19]
to be easier and more accurate in presenting data and uncertainty than map pairs.
   Different visual variables can be used for representing uncertainty on bivariate maps. Bertin
suggested location, size, value, texture, color, orientation, and shape [20]. MacEachren suggested edge
crispness (fuzziness), fill clarity, fog, and resolution [17]. Gershon suggested boundary (thickness,
texture, and color), transparency, animation, and extra dimensionality [21]. Among the above visual
variables, size and color value may be more appropriate for depicting uncertainty in numerical data [17].
Texture was found to be effective on binary maps to represent the existence of uncertainty [11]. The
study by Schweizer and Goodchild [7] and that by MacEachren et al. [11] found that an integral
representation using one color attribute to represent data and another to represent uncertainty was
ineffective and difficult for map users to identify data and uncertainty. Leitner and Buttenfield [6]
supported using lighter color to display high level of certainty. However, in Kubicek and Sasinka’s
study [16], the majority of the participants preferred lighter color for more uncertain information.
MacEachren and others [22] suggested that opaque objects are better to represent certainty and
transparent objects are better for uncertainty. Overall, there is a lack of consensus in literature
regarding which visual variable is best at depicting uncertainty and how uncertainty should be
visualized on bivariate maps.
   A few studies have examined how decision making could be affected by the visualization of
uncertainty. Evans [5] conducted a survey asking the participants to select a site with plenty of
hardwood trees. Working with maps of land use classification and their reliability information, most of
the participants made correct decisions, and they acknowledged the helpfulness of uncertainty
information for their decision making. Leitner and Buttenfield [6] tested how time, correctness, and
confidence in decision making were affected by uncertainty visualization. Their study showed that the
number of the survey participants who made correct decisions increased significantly when uncertainty
was reported on the map; this was achieved without increasing decision-making time. They concluded
that uncertainty visualization added clarity rather than complexity to a map. However, in a study by
Viard et al. [19], the participants did not make better decisions when uncertainty information was
applied. The authors concluded that, to add value for decision making, visualization of uncertainty
should be carefully designed and with minimal burden on map users.
   The existing literature seems suggesting that visualization of uncertainty can improve decision
making when the uncertainty information is properly presented [5,6,19]. However, map users’ ability
to understand the uncertainty information that is depicted on maps may impact the quality of decision
making. This aspect has been neglected by previous studies and the factors that contribute to map
users’ ability to understand and use uncertainty have been under-investigated. Blenkinsop et al. [18] and
Kubicek and Sasinka [16] found that experienced GIS users performed better in identifying uncertainty
information on maps. The GIS novices in the study by Blenkinsop et al. [18] reported that they could
not understand the map due to their unfamiliarity with the concept of uncertainty. Contradictory to
these two studies, Evans [5] found no significant difference between GIS novices and experienced GIS
users in decision making with uncertainty maps.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                     1183

<a id="p004-b002"></a>

<!-- p004-b002 -->
3. Method

<a id="p004-b003"></a>

<!-- p004-b003 -->
Through a survey, this study examined the preference of map users for different visual variables for
reporting uncertainty on bivariate maps. Moreover, this study investigated if and how map users’ GIS
background may impact their capability in using uncertainty for decision making. This section of the
paper explains the development of the uncertainty maps that were used in the survey, the design and
implementation of the survey, and the techniques that were employed to analyze the survey data.

<a id="p004-b004"></a>

<!-- p004-b004 -->
3.1. Maps with Uncertainty Information

<a id="p004-b005"></a>

<!-- p004-b005 -->
Annual precipitation data was collected for selected weather stations in Texas between 2001 and
2010. The mean and standard deviation of the annual precipitation at each weather station was
calculated. The mean value was used as a prediction for the annual precipitation at a weather station
for a future year and the standard deviation was used as a measure of the prediction uncertainty.
   Maps were made to visualize the predicted annual precipitation and the associated uncertainty.
Symbol size was used to represent the predicted precipitation volume at each weather station. Visual
variables including boundary fuzziness, color lightness, symbol shape, and symbol transparency were
used to report the level of uncertainty (least, medium, and most uncertain) on the maps. Four bivariate
maps were used in Part 1 of the survey (Appendix I), which was designed to investigate the map users’
preference for uncertainty visualization techniques on a bivariate map. The map legends do not carry
any information about the uncertainty visualization; the purpose was to examine how map users
intuitively associate the variation of each visual variable with the level of uncertainty.
   The two maps in Part 2 of the survey (Appendix I) were designed to examine how map users utilize
uncertainty information for geographic decision making. The first map shows only the predicted
precipitation while the second map shows both the predicted precipitation and the levels of uncertainty
associated with the predictions. Boundary fuzziness was used to represent levels of uncertainty on the
second map as it is believed to be in accordance with map users’ intuition about uncertainty [23]. The
map legend of the second map explains the visualization of both precipitation and uncertainty on the map.

<a id="p004-b006"></a>

<!-- p004-b006 -->
3.2. Survey Design and Participants

<a id="p004-b007"></a>

<!-- p004-b007 -->
There are two tasks in the survey: a visualization task (Survey Part 1) and a decision-making task
(Survey Part 2). The two tasks were fulfilled through two phases in sequence. The visualization task
was achieved in phase one in order to investigate how the different uncertainty visualization methods
for bivariate maps are preferred by map users. The decision-making task was for phase two and
examines map users’ performance on incorporating uncertainty into decision making. The survey
participants were asked to complete the visualization task first so that the application of a visual
variable in a map in Part 2 would not impact their choice for uncertainty visualization in Part 1.
   In the visualization task (Part 1), maps 1–4 were provided to the participants. No contextual
information about areal precipitation or the associated uncertainty of the precipitation data were shown
on the maps. Each map was followed by one question asking which directional change of a visual
variable is perceived to be associated with a high level of uncertainty. The four questions were: “Do
fuzzier boundary or less fuzzy boundary symbols indicate a high level of uncertainty?”, “Do darker

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                       1184

<a id="p005-b002"></a>

<!-- p005-b002 -->
colored or lighter colored symbols indicate a high level of uncertainty?”, “Do more angular or less
angular (i.e., more circular) shape symbols represent a high level of uncertainty?”, and “Do more
transparent or less transparent symbols represent a high level of uncertainty?”. Finally, after viewing
all four maps, the participants were asked to rank the four maps from the most preferred uncertainty
visualization to the least preferred.
    In the decision-making task (Part 2), the participants were asked to choose a better place between
the two candidate places to grow a pseudo type of crop. This type of crop was assumed to require an
annual precipitation of between 31 and 40 inches. Both candidate places were predicted to have the
same perfect level of precipitation for the crop, but with different prediction uncertainty. Map 1 shows
the predicted annual precipitation only. Without showing the prediction uncertainty, place (a) and
place (b) were expected to be equally good for growing the crop. Map 2 shows both prediction and
uncertainty information and was presented to the participants after they finished working with Map 1.
On Map 2, the fuzzier boundary symbol at place (a) indicates that the prediction has a higher level of
uncertainty than the prediction at place (b). Therefore, place (b) was supposed to be better than place (a)
for growing the crop. The last three questions in Part 2 of the survey were used to examine the
participants’ perception towards and capabilities in using uncertainty information in decision making.
    With the approval from the Institutional Review Board (IRB) of the authors’ university, the survey
was conducted on campus in late April of 2012. The participants included 72 undergraduate students
from two World Geography classes, one Remote Sensing class, and two Advanced GIS classes. These
classes were chosen to balance the participants’ GIS background needed for this study. According to
the GIS course sequence design and requirements at the authors’ university, a student would have
taken one or more GIS courses before being able to enroll in the Remote Sensing or the Advanced GIS
courses. The World Geography course falls outside of the GIS-related course sequence and does not
have such pre-requisite. Of the 72 students who finished the survey, 28 students would have taken
three or more GIS/Cartography/Remote Sensing classes by the end of the spring 2012 semester. They
were grouped as Experienced GIS Users. A total of 32 students never had any GIS related classes.
They were grouped as GIS Novices. The remaining 12 students would have taken one or two GIS
related classes by the end of the spring 2012 semester. Aiming at examining the potential impact of
GIS knowledge and training on map users’ preference for visualization of uncertainty information and
the impact on their decision making with uncertainty information, these 12 students were excluded
from further analyses. For informational purposes, the data from their surveys are reported in Appendix II.

<a id="p005-b003"></a>

<!-- p005-b003 -->
3.3. Analysis Methods

<a id="p005-b004"></a>

<!-- p005-b004 -->
The ranks of the four maps in the responses to Question 5 in Survey Part 1 were coded into
preference scores. Among the 60 surveys included in the analyses, 37 participants provided valid
rankings. For each valid response, a map ranked first is the most preferred map for reporting
uncertainty and receives a preference score of 4; a map ranked the fourth is the least preferred and
receives a preference score of 1. Kendall’s coefficient of concordance [24–26] was applied to these
37 sets of preference scores to examine the strength of the agreement among the participants regarding
preferences for the four bivariate map visualization methods for uncertainty.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                    1185

<a id="p006-b002"></a>

<!-- p006-b002 -->
For each of the uncertainty maps in Part 1 of the survey, analyses were conducted to investigate the
preference difference between the Experienced GIS Users group and the GIS Novices group. The
participants’ ranking of preference for the four uncertainty visualization methods were summarized for
both groups and are reported in Table 1. Chi-square Test of Homogeneity [26] was used to compare
the preferences of the Experienced GIS Users and the GIS Novices. However, the problem of small
expected frequency exists for all four maps. This problem was corrected by combining adjacent
columns in the contingency table to achieve a greater expected cell frequency [26].

<a id="p006-b003"></a>

<!-- p006-b003 -->
Table 1. Number of preference ranking for the four maps.
                                 Participant     Least     2nd-Least   2nd-Most      Most
             Visual Variable
                                   Group       Preferred   Preferred   Preferred   Preferred
                                 Experienced
                Boundary                          1           3           4           9
                                  GIS Users
              fuzziness map
                                 GIS Novices      1           1           6           12
                                 Experienced
              Color lightness                     0           7           5           5
                                  GIS Users
                   map
                                 GIS Novices      0           6           7           7
                                 Experienced
               Symbol shape                       15          1           0           1
                                  GIS Users
                  map
                                 GIS Novices      16          1           3           0
                                 Experienced
                  Symbol                          1           6           8           2
                                  GIS Users
             transparency map
                                 GIS Novices      3           12          4           1

<a id="p006-b004"></a>

<!-- p006-b004 -->
4. Results and Discussion

<a id="p006-b005"></a>

<!-- p006-b005 -->
4.1. Visualization of Uncertainty

<a id="p006-b006"></a>

<!-- p006-b006 -->
Regarding using different visual variables to represent a high level of uncertainty, the majority of
the survey participants preferred map symbols with a fuzzier boundary (92%), lighter color (85%),
more angular shape (66%), and more transparency (68%) (Figure 1). The result supports Johnson and
Sanderson’s statement that fuzzy objects tend to naturally be considered as uncertain [23]. The choice
of using lighter color symbols for a high level of uncertainty echoes the finding by Kubicek and
Sasinka [16] and MacEachren [17] that lighter colors are perceived as being less prominent. The
participants’ choice of more transparent symbols for a high level of uncertainty supports MacEachren
and others [22], suggesting that opaque objects are more likely to be considered as more certain ones.
Furthermore, it is important to note that the participants tended to concur more on how boundary
fuzziness and symbol lightness should be used to represent uncertainty on a bivariate map. Therefore,
symbol boundary fuzziness and color lightness are more appropriate variables for uncertainty
visualization on bivariate maps as these variables tend to be interpreted in a similar way by most map
readers, and they are the most preferred visual variables.
   When comparing the Experienced GIS Users with the GIS Novices in how they associate the
changing directions of the four visual variables with a high level of uncertainty, the largest gap was
found on symbol transparency (Figure 1). A much higher percentage of Experienced GIS Users (82%)

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                      1186

<a id="p007-b002"></a>

<!-- p007-b002 -->
than the GIS Novices (56%) chose more transparent symbols for a high level of uncertainty.
Consistently, more Experienced GIS Users than GIS Novices in the survey associated the changing of
the visual variables with the dynamics of uncertainty levels in the directions that were predicted in
literature, e.g., [16,17,22,23]. This suggests the possible impact of GIS training on one’s map reading
and uncertainty interpretation skills.

<a id="p007-b003"></a>

<!-- p007-b003 -->
Figure 1. Percentage of participants who prefer different visual variables to represent a
     high level of uncertainty.

<a id="p007-b004"></a>

<!-- p007-b004 -->
Each survey participant was asked to rank the four maps from the most preferred to the least
preferred for visualization of uncertainty (Question 5 in Part 1 of the survey). A total of 37 survey
participants provided valid responses to this question, among whom 17 were Experienced GIS Users
and 20 were GIS Novices (Table 1). The ranks of preference were coded and summarized in Table 1.
Kendall’s coefficient of concordance test was conducted on the 37 sets of preference scores; the result
revealed a significant agreement (p ≤ 0.005) among the survey participants in terms of their ranking for
the four maps. Specifically, boundary fuzziness was the most preferred (with a mean preference score
of 3.35), followed by color lightness (score of 2.97), symbol transparency (score of 2.38), and symbol
shape (score of 1.3) (Figure 2). It is interesting to note that this order of preference for the four
visualization variables is the same as the agreement levels among the survey participants when they
were asked how to associate the visual variables with uncertainty levels. This reinstates the finding that
boundary fuzziness and color lightness are the most appropriate visual variables to report uncertainty
on bivariate maps, as they create the least confusion (Figure 1) and are the most preferred (Figure 2).
   When comparing the Experienced GIS Users with the GIS Novices on their preference for the
visual variables to report uncertainty, Chi-square tests revealed no significant difference for boundary
fuzziness, color lightness, and symbol shape. However, when symbol transparency was investigated,
significant difference was identified between these two groups (p < 0.05). The Experienced GIS Users
ranked symbol transparency higher than the GIS Novices (Table 1). Recall that there was a relatively

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                        1187

<a id="p008-b002"></a>

<!-- p008-b002 -->
low level of agreement (68%) among the survey participants on using more transparent symbols to
represent a high level of uncertainty. This confirms that a map that visualizes uncertainty by symbol
transparency tends to be difficult for map readers to interpret, especially for the GIS Novices who lack
training in map reading. Overall, boundary fuzziness was the most preferred visual variable for
representing uncertainty, and the participants showed a strong consensus that fuzzier boundary
symbols were better at indicating a high level of uncertainty.

<a id="p008-b003"></a>

<!-- p008-b003 -->
Figure 2. The mean and standard deviation of preference scores of the four visual variables
      in representing uncertainty.

<a id="p008-b004"></a>

<!-- p008-b004 -->
4.2. Uncertainty and Decision Making

<a id="p008-b005"></a>

<!-- p008-b005 -->
Part 2 of the survey was to investigate map users’ ability to use uncertainty information together
with geographic data for decision making. When only the predicted precipitation was shown on the
map, approximately 82% of the survey participants decided that place (a) and place (b) were equally
good for growing the crop. When the prediction uncertainty was provided as well, approximately 70%
of the participants chose place (b) as better than place (a) to grow the crop. This result revealed that the
majority of the participants were able to successfully incorporate the uncertainty information about
precipitation into their location decision process. This confirms the findings by Evans [5] and by Leitner
and Buttenfield [6], and suggests that most people could make better decisions with uncertainty
information properly reported on a map.
   Among the 60 survey responses that were included for this case study, a higher percentage of the
Experienced GIS Users than the GIS Novices made the correct decision on where to grow the crop;
this remained true regardless of whether uncertainty information was provided or not (Table 2). This
may indicate that the Experienced GIS Users understood both general maps and uncertainty maps
better, and they were better at making decisions with uncertainty information. However, a Chi-square
test did not reveal any significant difference between these two groups of participants in their decision
making (Table 2). A short introduction of the uncertainty aspect in precipitation prediction was given

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                                 1188

<a id="p009-b002"></a>

<!-- p009-b002 -->
at the beginning of the survey. It is possible that this brief discussion may have helped the GIS Novices
make better decisions on the survey questions.

<a id="p009-b003"></a>

<!-- p009-b003 -->
Table 2. Observed frequencies of correct and incorrect decisions made with and without
     the uncertainty information.
                                                       Correct          Incorrect         Percentage of
                         Decisions
                                                       Decisions        Decisions        Correct Decisions
             Decision made          Experienced GIS
                                                          25               3                   89%
           without uncertainty           Users
               information            GIS Novices         24               8                   75%
            Decision made           Experienced GIS
                                                          21               7                   75%
            with uncertainty             Users
              information             GIS Novices         21               11                  66%

<a id="p009-b004"></a>

<!-- p009-b004 -->
To understand participants’ acceptance level of uncertainty maps, the survey asked the participants
how helpful they felt uncertainty information was for their decision making, and if they were willing to
use uncertainty information for their future decision making. Approximately 95% of the participants
acknowledged that uncertainty information was helpful in decision making and 92% indicated they
would use uncertainty information if provided (Tables 3 and 4). More people seemed to appreciate
uncertainty information and were willing to use it for decision making than people who actually made
correct decisions with the uncertainty map (Tables 2–4). This may indicate a gap between people’s
acceptance level to uncertainty maps and their actual capability in incorporating uncertainty maps in
making correct decisions.

<a id="p009-b005"></a>

<!-- p009-b005 -->
Table 3. Observed frequencies on the helpfulness of uncertainty information for
     decision making.
            Does Uncertainty Information Help         Experienced
                                                                        GIS Novices            Total
               You Make Better Decisions?              GIS Users
                      Very helpful                        11                   11                22
                    Somewhat helpful                      17                   18                35
                      Not at all helpful                   0                    2                2
                          Not sure                         0                    1                1
                            Total                         28                   32                60

<a id="p009-b006"></a>

<!-- p009-b006 -->
Table 4. Observed frequencies on willingness to use uncertainty information in
     decision making.
      Are You Willing to Use Uncertainty Information        Experienced         GIS Novices            Total
           in Decision Making if It Is Provided?             GIS Users
                           Yes                                  26                  29                  55
                            No                                   2                  3                   5
                            Total                                  28               32                  60

<a id="p009-b007"></a>

<!-- p009-b007 -->
Five participants (roughly 8% of total) were reported to be unwilling to use uncertainty for future
decision making. Survey data showed that either they did not understand the concept of uncertainty

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                      1189

<a id="p010-b002"></a>

<!-- p010-b002 -->
(only one participant) or the uncertainty map was too complicated for them to use (the other four
participants). The same problem was identified by Blenkinsop and others [18]. Note that none of the
survey participants chose the option “Do not care about uncertainty”. Therefore, with appropriate
education on uncertainty and uncertainty maps, the general public could potentially incorporate
uncertainty information to make better decisions.

<a id="p010-b003"></a>

<!-- p010-b003 -->
5. Conclusions

<a id="p010-b004"></a>

<!-- p010-b004 -->
This paper investigated map users’ perception and preference for different visual variables on
bivariate uncertainty maps, and further examined if GIS knowledge and training had an impact on map
users’ ability to understand uncertainty and use uncertainty maps for decision making. Precipitation
data from Texas was collected and used to make several precipitation prediction maps with various
uncertainty levels. A survey was conducted among the college students at the authors’ university. Data
was collected on map users’ preferences for visual variables for reporting uncertainty on bivariate
maps and on how well uncertainty information can be used by the participants for decision making.
Kendall’s coefficient of concordance and Chi-square test of homogeneity were applied to the survey
data. The results showed that boundary fuzziness was the most preferred visual variable for uncertainty
representation on bivariate maps followed by color lightness. It was highly agreeable to the
participants that fuzzier boundaries and lighter colors were associated with a high level of uncertainty.
The Experienced GIS Users had a higher success rate than the GIS Novices in decision making, with
or without uncertainty information. It is believed that GIS knowledge and training enhanced the
Experienced GIS Users’ capability in decision making using maps. Most participants reported a
positive attitude towards using uncertainty information for decision making.
    The result of this case study is very positive. Uncertainty information was highly appreciated by
most participants, even though it is a complex concept and often hard for some people to use for
decision making. It is believed that with a carefully designed training session on geographic data
quality and a proper explanation on the map background and its uncertainty aspect, the general public
may be able to understand an uncertainty map better and further incorporate the uncertainty
information into their decision making.
    It should be noted that the conclusions of this study were drawn from a survey using one particular
dataset. Although this is a commonly adopted practice in literature, e.g., [5–7,14], the properties of any
dataset may affect the survey results and thus the findings from a study. Therefore, cautions must be
applied when extending the findings from this study to uncertainty visualization and decision making
using other datasets. Future studies are needed to investigate how dataset properties may impact users’
preference for uncertainty visualization and their decision making with uncertainty information.
Finally, the authors recognize that the choices listed as possible reasons for not willing to use
uncertainty information for decision making (last question for Part 2 of the survey) are limited and
may appear to be guiding. Note that these choices were included to reflect the findings from existing
literature. Being the last question on the entire survey, the possible impact on the survey participants’
responses should be limited.

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                      1190

<a id="p011-b002"></a>

<!-- p011-b002 -->
Acknowledgments

<a id="p011-b003"></a>

<!-- p011-b003 -->
The authors would like to thank Todd Moore for sharing the precipitation dataset for Texas, using
which the maps were created. We also thank the instructors of the GIS, Remote Sensing, and World
Geography classes for letting us conduct the survey in their classes and the students from these classes
for participating in our survey.

<a id="p011-b004"></a>

<!-- p011-b004 -->
Author Contributions

<a id="p011-b005"></a>

<!-- p011-b005 -->
Both authors have contributed equally to the research and writing of this paper.

<a id="p011-b006"></a>

<!-- p011-b006 -->
Conflicts of Interest

<a id="p011-b007"></a>

<!-- p011-b007 -->
The authors declare no conflict of interest.

<a id="p011-b008"></a>

<!-- p011-b008 -->
Correction Statement

<a id="p011-b009"></a>

<!-- p011-b009 -->
This article has been republished with a minor change. The change does not affect the scientific
content of the article and further details are available within the backmatter of the website version of
this article.

<a id="p011-b010"></a>

<!-- p011-b010 -->
References

<a id="p011-b011"></a>

<!-- p011-b011 -->
1.    United States Geological Survey (USGS). Spatial Data Transfer Standard (SDTS)—Part 1,
      Logical Specifications, 1997. U.S. Geological Survey. Available online: http://thor-f5.er.usgs.
      gov/sdts/standard/latest_draft/pdf/part1.pdf (accessed on 28 September 2014).
2.    Gahegan, M.; Ehlers, M. A framework for the modeling of uncertainty between remote sensing
      and geographic information. ISPRS J. Photogramm. Remote Sens. 2000, 55, 176–188.
3.    Zhu, A.X. Research issues on uncertainty in geographic data and GIS-based analysis. In A
      Research Agenda for Geographic Information Science; McMaster, R.B., Usery, E.L., Eds.; CRC
      Press LLC.: Boca Raton, FL, US, 2005; pp. 197–224.
4.    Usery, E.L.; McMaster, R.B. Introduction to the UCGIS research agenda. In A Research Agenda for
      Geographic Information Science; McMaster, R.B., Usery, E.L., Eds.; CRC Press LLC.: Boca Raton,
      FL, US, 2005; pp. 1–15.
5.    Evans, B.J. Dynamic display of spatial data-reliability: Does it benefit the map user? Comput.
      Geosci. 1997, 23, 409–422.
6.    Leitner, M.; Buttenfield, B. Guidelines for the display of attribute certainty. Cartogr. Geogr. Inf.
      Sci. 2000, 27, 3–14.
7.    Schweizer, D.M.; Goodchild, M.F. Data quality and choropleth maps: An experiment with the use
      of color. In Proceedings of GIS/LIS-International Conference, San Jose, CA, USA, 10–12
      November 1992; American Society for Photogrammetry and Remote Sensing: Bethesda, MD,
      USA, 1992; pp. 686–699.
8.    Wittenbrink, C.M.; Pang, A.T.; Lodha, S.K. Glyphs for visualizing uncertainty in vector fields.
      IEEE Trans. Vis. Comput. Gr. 1996, 2, 266–279.

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                   1191

<a id="p012-b002"></a>

<!-- p012-b002 -->
9.  Davis, T.J.; Keller, C.P. Modeling and visualizing multiple spatial uncertainties. Comput. Geosci.
    1997, 23, 397–408.
10. Ehlschlaeger, C.R.; Shortridge, A.M.; Goodchild, M.F. Visualizing spatial data uncertainty using
    animation. Comput. Geosci. 1997, 23, 387–395.
11. MacEachren, A.M.; Brewer, C.A.; Pickle, L.W. Visualizing georeferenced data: Representing
    reliability of health statistics. Environ. Plan. A 1998, 30, 1547–1561.
12. Bastin, L.; Fisher, P.F.; Wood, J. Visualizing uncertainty in multi-spectral remotely sensed
    imagery. Comput. Geosci. 2002, 28, 337–350.
13. Aerts, J.; Clarke, K.C.; Keuper, A.D. Testing popular visualization techniques for representing
    model uncertainty. Cartogr. Geogr. Inf. Sci. 2003, 30, 249–261.
14. Sanyal, J.; Zhang, S.; Bhattacharya, G.; Amburn, P.; Moorhead, R.J. A user study to compare four
    uncertainty visualization methods for 1D and 2D datasets. IEEE Trans. Vis. Comput. Gr. 2009,
    15, 1209–1218.
15. Burt, J.E.; Zhu, A.X.; Harrower, M. Depicting classification uncertainty using perception-based
    color models. Ann. GIS 2011, 17, 147–153.
16. Kubicek, P.; Sasinka, C. Thematic uncertainty visualization usability—Comparison of basic
    methods. Ann. GIS 2011, 17, 253–263.
17. MacEachren, A.M. Visualizing uncertain information. Cartogr. Perspect. 1992, 13, 10–19.
18. Blenkinsop, S.; Fisher, P.; Bastin, L.; Wood, J. Evaluating the perception of uncertainty in
    alternative visualization strategies. Cartographica 2000, 37, 1–14.
19. Viard, T.; Caumon, G.; Lévy, B. Adjacent versus coincident representations of geospatial
    uncertainty: Which promote better decisions? Comput. Geosci. 2011, 37, 511–520.
20. Bertin, J. Graphics and Graphic Information Processing; Walter de Gruyter: Berlin, Germany,
    1981; pp. 186–187.
21. Gershon, N. Visualization of an imperfect world. IEEE Comput. Gr. Appl. 1998, 18, 43–45.
22. MacEachren, A.M.; Robinson, A.; Hopper, S.; Gardner, S.; Murray, R.; Gahegan, M.; Hetzler, E.
    Visualizing geospatial information uncertainty: What we know and what we need to know.
    Cartogr. Geogr. Inf. Sci. 2005, 32, 139–160.
23. Johnson, C.R.; Sanderson, A.R. A next step: Visualizing errors and uncertainty. IEEE Comput.
    Gr. Appl. 2003, 23, 6–10.
24. Kendall, M.G.; Smith, B.B. The problem of m rankings. Ann. Math. Stat. 1939, 10, 275–287.
25. Wallis, W.A. The correlation ratio for ranked data. J. Am. Stat. Assoc. 1939, 34, 533–538.
26. Daniel, W.W. Applied Nonparametric Statistics, 2nd ed.; Duxbury: Pacific Grove, CA, USA,
    1990; pp. 192–198.

<a id="p012-b003"></a>

<!-- p012-b003 -->
Appendix I

<a id="p012-b004"></a>

<!-- p012-b004 -->
Survey on Visualization of Uncertainty
                                    IRB Exemption Number: XXXX

<a id="p012-b005"></a>

<!-- p012-b005 -->
My name is XXXX. I am a PhD student in the Department of XXXX at XXXX University. I would
like to invite you to participate in my research project by taking this 10-minute survey.

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                          1192

<a id="p013-b002"></a>

<!-- p013-b002 -->
The purpose of this survey is to examine how uncertainty can be incorporated into decision making,
and how to visualize uncertainty on a map. This survey consists of two parts, eleven questions.
No private information will be collected.
If you have any question about this survey or the research project, please email me at XXXX. THANK
YOU for your participation!

<a id="p013-b003"></a>

<!-- p013-b003 -->
GIS Experience

<a id="p013-b004"></a>

<!-- p013-b004 -->
Including the current semester, how many GIS/Cartography/Remote Sensing courses have you taken?
__________

<a id="p013-b005"></a>

<!-- p013-b005 -->
A. None
   B. One
   C. Two
   D. Three
   E. More than three

<a id="p013-b006"></a>

<!-- p013-b006 -->
Background (Please read carefully!)

<a id="p013-b007"></a>

<!-- p013-b007 -->
This survey consists of 6 maps showing the predicted annual precipitation value (in inches) at some
weather stations in Texas. The predicted annual precipitation value is calculated from the mean annual
precipitation of the past 10 years. Since annual precipitation varies across years, the larger the variation
at a place, the more difficult it is to accurately predict the annual precipitation; the prediction for such a
place has a higher uncertainty. The degree of uncertainty in the prediction is measured by the
variations of annual precipitation from the past 10 years.

<a id="p013-b008"></a>

<!-- p013-b008 -->
PART 1         Visualization of Uncertainty

<a id="p013-b009"></a>

<!-- p013-b009 -->
Map 1

<a id="p013-b010"></a>

<!-- p013-b010 -->
1. The map below uses symbol size to represent predicted annual precipitation value and fuzziness to
   represent prediction uncertainty. Which way represents uncertainty better? _______
   A. The less fuzzy the symbol, the more uncertain in precipitation like weather station (a)
   B. The fuzzier the symbol, the more uncertain in precipitation like weather station (b)

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                   1193

<a id="p014-b002"></a>

<!-- p014-b002 -->
Map 2

<a id="p014-b003"></a>

<!-- p014-b003 -->
2. The map below uses symbol size to represent predicted annual precipitation value and brightness
   of the color to represent prediction uncertainty. Which way represents uncertainty better? _______
   A. The darker the symbol, the more uncertain in precipitation like weather station (a)
   B. The lighter the symbol, the more uncertain in precipitation like weather station (b)

<a id="p014-b004"></a>

<!-- p014-b004 -->
Map 3

<a id="p014-b005"></a>

<!-- p014-b005 -->
3. The map below uses symbol size to represent predicted annual precipitation value and symbol
   shape to represent prediction uncertainty. Which way represents uncertainty better? _______
   A. The more angular in shape, the more uncertain in precipitation like weather station (a)

<a id="page-015"></a>

## PDF page 15

<a id="p015-b001"></a>

<!-- p015-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                   1194

<a id="p015-b002"></a>

<!-- p015-b002 -->
B. The more circular in shape, the more uncertain in precipitation like weather station (b)

<a id="p015-b003"></a>

<!-- p015-b003 -->
Map 4

<a id="p015-b004"></a>

<!-- p015-b004 -->
4. The map below uses symbol size to represent predicted annual precipitation value and transparency
   to represent prediction uncertainty. Which way represents uncertainty better? _______
   A. The more transparent, the more uncertain in precipitation like weather station (a)
   B. The less transparent, the more uncertain in precipitation like weather station (b)

<a id="p015-b005"></a>

<!-- p015-b005 -->
5. Please rank Map 1 to Map 4 from your most favorite way to least favorite way in presenting
   uncertainty information: _____________________________________

<a id="p015-b006"></a>

<!-- p015-b006 -->
PART 2        Uncertainty and Decision Making

<a id="p015-b007"></a>

<!-- p015-b007 -->
Map 1

<a id="page-016"></a>

## PDF page 16

<a id="p016-b001"></a>

<!-- p016-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                     1195

<a id="p016-b002"></a>

<!-- p016-b002 -->
1. The following map shows the predicted annual precipitation value using symbol size. Assume you
   are growing a certain type of crop requiring annual precipitation between 31 and 40 inches, when
   everything else is equal, compared to place (b), place (a) is _________
   A. more preferred for growing the crop
   B. less preferred for growing the crop
   C. equally preferred for growing the crop

<a id="p016-b003"></a>

<!-- p016-b003 -->
Map 2

<a id="p016-b004"></a>

<!-- p016-b004 -->
The map below uses symbol size to represent predicted annual precipitation value and fuzziness to
represent prediction uncertainty. The fuzzier triangles indicate higher degrees of uncertainty.

<a id="p016-b005"></a>

<!-- p016-b005 -->
2. Assume you are growing a certain type of crop requiring annual precipitation between 31 and 40 inches,
   compared to place (b), place (a) is _________
   A. more preferred for growing the crop
   B. less preferred for growing the crop
   C. equally preferred for growing the crop

<a id="page-017"></a>

## PDF page 17

<a id="p017-b001"></a>

<!-- p017-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                     1196

<a id="p017-b002"></a>

<!-- p017-b002 -->
Considering the previous two maps, please tell us:

<a id="p017-b003"></a>

<!-- p017-b003 -->
3. Does uncertainty information help you make better decisions? ________
   A. Very helpful
   B. Somewhat helpful
   C. Not at all helpful
   D. Not sure
4. Are you willing to use uncertainty information in decision making if it is provided? ________
   A. Yes
   B. No
5. If your answer is “No” to the above question, why? ________
   A. Do not care about Uncertainty
   B. Do not understand Uncertainty
   C. Too complicated to use information on Uncertainty
   D. Other

<a id="p017-b004"></a>

<!-- p017-b004 -->
If “Other”, please explain here:
Appendix II

<a id="p017-b005"></a>

<!-- p017-b005 -->
Table A1. Percentage of participants in neither group who prefer for different visual
     variables to represent a high level of uncertainty.
       Visual Variables for a High      Fuzzier        Lighter      More Angular       More
          Level of Uncertainty         Boundary         Color          Shape        Transparency
       Percentage of participants in
                                         75%            92%             83%             83%
              neither group

<a id="p017-b006"></a>

<!-- p017-b006 -->
Table A2. Number of preference ranking for the four maps by participants in neither group.

<a id="page-018"></a>

## PDF page 18

<a id="p018-b001"></a>

<!-- p018-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                               1197

<a id="p018-b002"></a>

<!-- p018-b002 -->
Least       2nd-Least    2nd-Most         Most
                      Visual Variable
                                                    Preferred     Preferred    Preferred      Preferred
                  Boundary fuzziness map               1               1            3            4
                    Color lightness map                1               5            0            3
                     Symbol shape map                  6               2            1            0
                  Symbol transparency map              1               1            5            2

<a id="p018-b003"></a>

<!-- p018-b003 -->
Table A3. The mean and standard deviation of preference scores of the four visual
     variables in representing uncertainty by participants in neither group.
                                        Boundary             Color             Symbol            Symbol
              Visual Variable
                                        Fuzziness          Lightness            Shape         Transparency
           Mean preference score          3.11               2.56                1.44             2.89
            Standard deviation            1.054              1.130              0.726             0.928

<a id="p018-b004"></a>

<!-- p018-b004 -->
Table A4. Observed frequencies of correct and incorrect decisions made with and without
     the uncertainty information by participants in neither group.
                                                      Correct          Incorrect         Percentage of
                         Decisions
                                                      Decisions        Decisions        Correct Decisions
             Decision made without uncertainty
                                                           7               4                  64%
                       information
              Decision made with uncertainty
                                                           8               4                  67%
                       information

<a id="p018-b005"></a>

<!-- p018-b005 -->
Table A5. Observed frequencies on the helpfulness of uncertainty information for decision
     making by participants in neither group.
          Does Uncertainty
                                      Very       Somewhat         Not at All
        Information Help You                                                       Not Sure          Total
                                     Helpful      Helpful          Helpful
        Make Better Decisions?
         Participants in neither
                                        3              8               1                0             12
                 group

<a id="page-019"></a>

## PDF page 19

<a id="p019-b001"></a>

<!-- p019-b001 -->
ISPRS Int. J. Geo-Inf. 2014, 3                                                                  1198

<a id="p019-b002"></a>

<!-- p019-b002 -->
Table A6. Observed frequencies on willingness to use uncertainty information in decision
     making by participants in neither group.
         Are You Willing to Use Uncertainty Information in
                                                             Yes        No         Total
                Decision Making if It Is Provided?
                   Participants in neither group             11          1          12

<a id="p019-b003"></a>

<!-- p019-b003 -->
© 2014 by the authors; licensee MDPI, Basel, Switzerland. This article is an open access article
distributed under the terms and conditions of the Creative Commons Attribution license
(http://creativecommons.org/licenses/by/4.0/).
