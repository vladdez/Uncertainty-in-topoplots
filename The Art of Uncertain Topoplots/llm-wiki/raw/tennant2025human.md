---
id: "tennant2025human"
title: "Human Performance and Perception of Uncertainty Visualizations in Geospatial Applications: A Scoping Review"
source_file: "The Art of Uncertain Topoplots/papers/tennant2025human.pdf"
source_sha256: "a193cdfe7ccdfbda479d414ebdcc3880df537c382810a67d0c0fa6798e1835a5"
extraction_format: 1
---

# Human Performance and Perception of Uncertainty Visualizations in Geospatial Applications: A Scoping Review — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 10, OCTOBER 2025                                                          9387

<a id="p001-b002"></a>

<!-- p001-b002 -->
Human Performance and Perception of Uncertainty
     Visualizations in Geospatial Applications: A
                   Scoping Review
                                                    Ryan Tennant          and Tania Randall

<a id="p001-b003"></a>

<!-- p001-b003 -->
(Survey Paper)

<a id="p001-b004"></a>

<!-- p001-b004 -->
Abstract—Geospatial data are often uncertain due to measure-                                          I. INTRODUCTION
ment, spatial, or temporal limitations. A knowledge gap exists
                                                                                     ISK is inherent in decision-making tasks, where effec-
about how geospatial uncertainty visualization techniques influ-
ence human factors measures. This comprehensive review syn-
thesized the current literature on visual representations of uncer-
                                                                              R      tive decision-makers assess risk using available informa-
                                                                              tion [1], often derived from environmental cues that change over
tainty in geospatial data applications, identifying the breadth of            time. However, available data are frequently uncertain—whether
techniques and the relationships between strategies and human
performance and perception outcomes. Eligible articles described
                                                                              as estimations at a given moment or predictions of a future state.
and evaluated at least one method for representing uncertainty                Importantly, uncertainty influences decision-making [1], and
in geographical data with participants, including land, ocean,                individuals process uncertain information subjectively, shaped
weather, climate, and positioning data. Forty articles were included.         by personal risk tolerances and experience.
Uncertainty was visualized using multivariate and univariate maps                In systems design, it is essential to account for potential biases
through colours, shapes, boundary regions, textures, symbols, grid
noise, and text. There were varying effects, and no definitive su-
                                                                              when presenting uncertain data to users. Understanding these
perior method was identified. The predominant user focus was                  biases enables designers and developers to optimize how infor-
on novices. Trends were observed in supporting users understand               mation is conveyed across different environments, ultimately
uncertainty, user preferences, confidence, decision-making perfor-            affecting user interactions and decision-making outcomes. In-
mance, and response times for different techniques and application            creasing task complexity has led humans to rely more on com-
contexts. The findings highlight the impacts of different catego-
rizations within colour and shape techniques, heterogeneity in
                                                                              puter algorithms [2], often without recognizing how this reliance
perception and performance evaluation, performance and percep-                may shape their interpretation and use of information [3]. A
tion mismatch, and differences and similarities between novices               decision maker’s expertise also influences how uncertainty is
and experts. Contextual factors and user characteristics, including           handled. Experienced individuals may integrate new informa-
understanding the decision-maker’s tasks, user type, and desired              tion with prior knowledge to create mental models of uncertainty
outcomes for decision-support appear to be important factors influ-
encing the design of effective uncertainty visualizations. Future re-
                                                                              and make optimized decisions [4], [5]. They may also rely on
search on geospatial applications of uncertainty visualizations can           intuition and heuristic shortcuts in familiar situations [6], [7], [8].
expand on the observed trends with consistent and standardized                   In contrast, novice decision-makers tend to depend on stereo-
measurement and reporting, further explore human performance                  types [4], conscious effort, and rule-based reasoning, often
and perception impacts with 3-dimensional and interactive uncer-              struggling to manage unexpected uncertainty [6], [7], [8]. Given
tainty visualizations, and perform real-world evaluations within
various contexts.                                                             the potential for significant consequences in high-risk fields such
                                                                              as healthcare (e.g., medical diagnoses), finance (e.g., central
  Index    Terms—Uncertainty, visualization techniques                        bank interventions), and defence (e.g., adversary tracking), it
and methodologies, human performance, perception and                          is crucial to consider the human factors influencing decision-
psychophysics, human factors.
                                                                              making. This is particularly relevant in designing computerized
                                                                              decision-support systems, where uncertainty visualization may
   Received 3 April 2024; revised 14 February 2025; accepted 21 March 2025.   play a key role.
Date of publication 26 March 2025; date of current version 5 September           As numerical indications of accuracy may be insufficient for
2025. Recommended for acceptance by K. Potter. (Corresponding author: Ryan
Tennant.)                                                                     effectively conveying uncertainty [9], visualizations offer addi-
   Ryan Tennant is with the Defence Research and Development Canada,          tional context to help users assess potential risks and benefits,
Atlantic Research Centre, Dartmouth, NS B3K 5X5, Canada, and also             especially in situations of high uncertainty [10]. However, the
with the University of Waterloo, Waterloo, ON N2L 3G1, Canada (e-mail:
ryan.tennant@uwaterloo.ca).                                                   effectiveness of uncertainty visualization depends on how the
   Tania Randall is with the Defence Research and Development Canada,         information is presented [4], [11], [12], [13]. Depending on
Atlantic Research Centre, Dartmouth, NS B3K 5X5, Canada.                      the visualization technique used, decision-makers may be better
   This article has supplementary downloadable material available at
https://doi.org/10.1109/TVCG.2025.3554969, provided by the authors.           equipped to interpret data, avoid misinterpretation, refine mental
   Digital Object Identifier 10.1109/TVCG.2025.3554969                        models, mitigate decision-making risks, and identify potential

<a id="p001-b005"></a>

<!-- p001-b005 -->
© 2025 The Authors. This work is licensed under a Creative Commons Attribution 4.0 License. For more information, see
                                                       https://creativecommons.org/licenses/by/4.0/

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
9388                                            IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 10, OCTOBER 2025

<a id="p002-b002"></a>

<!-- p002-b002 -->
measurement errors, data quality issues, or inaccuracies [10],        techniques, settings, user expertise, and task scenarios may result
[12], [14], [15].                                                     in more (or less) desirable outcomes.
   This review specifically examines the visualization of geospa-        A comprehensive review is needed to examine the relation-
tial data and its unique uncertainty characteristics. Geospatial      ships between different approaches to uncertainty visualization
data are particularly prone to uncertainty due to measurement         and human factors-related outcomes to guide the design of inter-
limitations (i.e., aliasing and biases), spatial constraints (i.e.,   faces in geospatial contexts and inform decisions on conveying
coverage area, observation density, resolution) and temporal          uncertainty. The objectives of this review are to (1) synthesize
factors (i.e., when the data was collected) [16], [17], [18],         existing knowledge on how various visualization techniques
[19]. For example, as climate change reshapes the Arctic into         impact human factors measures in decision-making contexts and
a potential underwater battlespace, Canada’s defence research         (2) identify future research directions for developing and eval-
increasingly focuses on assessing the performance of acous-           uating new methods for representing information uncertainty to
tic sensors in these uncertain underwater environments. Situ-         enhance human performance. The findings will provide valuable
ational awareness is critical for anti-submarine warfare mis-         insights for display designers integrating uncertainty visualiza-
sions, particularly in understanding a vessel’s sensor detection      tion into interfaces and highlight research gaps and challenges
range within its environment. Geospatial uncertainty in these         that require further exploration in geospatial applications.
contexts arises from several factors, necessitating thoughtful
consideration of visualization approaches that support human                                    II. METHODS
factors.
   First, uncertainty arises from the environment due to inade-       A. Research Questions
quate sampling that creates poor resolution both spatially and           The research questions for this review were collectively in-
temporally [20], [21]. Specific factors include ambient noise,        formed by the need to visualize the uncertainty of geospatial
bottom topography, ocean temperature, salinity, and bottom            information in ways that support human understanding and
type [22]. Second, uncertainty in the sonar data collected within     decision-making, the limitations of current literature review
this uncertain environment may be further compounded by               outcomes, and preliminary searches for literature on uncertainty
limitations in the precision and accuracy of sensor instrumenta-      visualizations that included human subjects evaluations. The
tion [21]. Finally, detection of a specific submarine threat—or       following research questions were iteratively developed through
counter detection of one’s vessel—within this uncertain envi-         this process before the formal search of the literature was per-
ronment, with imperfect sensors, is influenced by the vessel’s        formed:
motion, acoustic signature, and tactics, each introducing addi-          1) What methods are used to visualize uncertainty in geospa-
tional layers of uncertainty [23], [24]. While models continue to           tial data to human operators?
be developed to evaluate and quantify geospatial uncertainty             2) What are the impacts of these methods on human perfor-
mathematically [25], [26], [27], it is becoming increasingly                mance and perception (HPP) of uncertainty?
important to understand how to visualize uncertainty to ac-              3) What knowledge gaps exist in understanding how to vi-
count for the human factors involved in decision-making tasks.              sualize geospatial uncertainty to improve HPP of uncer-
This includes understanding how to convey uncertainty that                  tainty?
supports conceptualization and improves risk-based decision-
making performance.
   For the military and maritime context, few available literature    B. Article Relevancy
reviews explore the impacts of various methods of representing           This review included the following databases, which were
data uncertainty and risk through geo-visualization and un-           initially searched throughout November 2021 and June 2022,
dersea representations [28], [29], despite the general increase       with the search being updated in January 2024: Association for
in research conducted within this field since 1990 [13], [29].        Computing Machinery (ACM) Digital Library, Institute of Elec-
The most recent review that includes information visualization        trical and Electronics Engineers (IEEE), PsycINFO, Scopus, and
with uncertainty discusses strategic management decisions from        Web of Science. Relevant articles were also identified through
general cognitive psychology, education, finance, consumer re-        hand-searching references using the snowballing technique, a
search and human-computer interaction [30]. Other reviews             popular method in systematic literature reviews for software
comprehensively summarize the literature on visualizing un-           engineering [31]. The resulting articles from each search were
certainty for specific and general geographical contexts [28],        exported to Covidence (Veritas Health Innovation Ltd.), where
[29], including uncertainty representations with geospatial and       duplicates were automatically identified and removed.
healthcare data [29]. One review includes geospatial contexts            The search strategy was developed for each database, using
and decision-making impacts [13], where the authors found             keywords related to four primary search categories: (1) visual-
evidence to support positive and negative outcomes. The re-           ization or representation, (2) uncertainty, (3) geospatial applica-
sults of prior reviews highlight that presenting uncertainty can      tion context, and (4) human performance or perception factors.
affect understanding and decision-making, and there is a need         Detailed search strategies are provided in the supplementary ma-
to deeply explore the context in which uncertainty information        terial (Table S1). For Web of Science, a sample search strategy
is displayed. It remains to be understood which visualization         which resulted in 9974 articles is provided as an example:

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
TENNANT AND RANDALL: HUMAN PERFORMANCE AND PERCEPTION OF UNCERTAINTY VISUALIZATIONS IN GEOSPATIAL APPLICATIONS                        9389

<a id="p003-b002"></a>

<!-- p003-b002 -->
ALL=((visual* OR represent* OR communicat*) AND (un-                -1 (↓), 0 (↔), 1 (↑). Individual studies with multiple evaluations
certainty) AND (geographic OR geodata OR geospatial OR                or experiments for a single technique were averaged, resulting
ocean OR weather OR climate OR undersea OR underwater                 in effect direction values less than 1. While presenting the
OR sonar OR radar) AND (decision OR judg* OR reason* OR               results of the various techniques on HPP factors qualitatively,
“problem solv*” OR “decision-making” OR “decision making”             this review provides a comprehensive summary that supports the
OR decide* OR perform* OR “human performance” OR “hu-                 quantitative findings of the various trends, highlighting research
man perception” OR capab* OR behaviour* OR behavior* OR               gaps on the potential performance and perception effects of
assess*))                                                             uncertainty representations with fewer evaluations or conflicting
                                                                      evidence, which can be explored through further research.
C. Article Eligibility
                                                                      F. Consultation With Defence Scientists
   Eligibility criteria for article inclusion were guided based on
information provided in previous reviews and the preliminary             The preliminary results of this review were presented at the
literature search performed before the formal search. Articles        2022 Human Systems Performance Maritime Annual Meeting,
were eligible for inclusion in the full review if they met the        which was held virtually through the Technical Cooperation
following criteria: (1) describe at least one method or technique     Program. This meeting brought together defence scientists from
for visually representing geospatial data uncertainty and report      the five-nation forum—comprising the United Kingdom, United
on the results of quantitative or qualitative evaluations with        States, Canada, Australia, and New Zealand—to share ideas,
human participants in at least one factor related to human factors;   coordinate research efforts, and enhance interoperability while
(2) are peer-reviewed articles or complete proceedings papers         avoiding duplication of work. Given this group’s expertise and
written in English. No limits were placed on the participants’ age    potential to apply or expand upon these findings, we considered
or the study protocol. Articles were excluded if they looked at       their feedback and questions particularly valuable.
applications beyond geospatial data, such as health and disease-         The session format consisted of oral presentations followed
related data, economics, and finance. Otherwise, articles were        by five-minute question-and-feedback periods. Our presentation
excluded if they were commentaries, editorials, books and book        covered an overview of the review methodology, characteristics
chapters, lectures and addresses, systematic reviews, scoping         of the included studies, and preliminary findings on the vari-
reviews, narrative reviews, dissertations, or conference abstracts.   ous uncertainty visualization techniques explored in geospatial
                                                                      applications. At this stage of the review, the articles for inclu-
                                                                      sion had been identified, but the results had not yet been fully
D. Data Extraction & Charting
                                                                      synthesized or analyzed. One key observation presented by the
   A standardized Excel (Microsoft Corporation) spreadsheet           first author was a potential mismatch between perception and
was iteratively developed to extract the following data from          performance—specifically, cases where participants’ preferred
the included articles: author(s) and date, geographical location,     uncertainty visualization methods did not necessarily lead to
research context and setting, research objective, study design,       improved decision-making.
number and type of participants, type of uncertainty visual-             A central question that emerged from the discussion was
ization method(s) or technique(s) used, uncertainty data being        whether differences existed between expert and novice partici-
represented, interface dimension (i.e., two-, three-dimensional),     pants. As this factor had not been originally extracted, we de-
human performance task or perception, objective and subjective        cided to incorporate it into our study characteristics and analysis.
metrics, performance and perception outcomes, key findings,           We believe this addition enhances the comprehensiveness of our
and research gaps. The form was iterated during the full-text         review and identifies additional areas for future research.
review process until it was determined that all relevant data was
being extracted to provide a comprehensive review.                                              III. RESULTS
                                                                         The literature search identified 21,205 articles; two were
E. Data Collation & Summarization
                                                                      identified with hand-searching and snowball sampling (Fig. 1).
   Summary tables were employed to synthesize the extracted           There were 5,591 duplicate records automatically removed by
data. The results were first summarized using descriptive statis-     Covidence, and three were manually marked as duplicates. The
tics regarding visualization techniques and environments. Tables      first author reviewed the title and abstracts of the 15,611 articles
were also constructed to visually display the reported impacts of     remaining to determine whether the abstracts of eligible article
the uncertainty representation techniques on the studied human        types discussed details related to uncertainty visualization of
factors metrics with an effect direction arrow [32], indicating       geospatial data and human subjects evaluation. When the first
the general trend of the technique on the factor, as interpreted      author was uncertain whether the abstract met the inclusion
from each study’s results. Sometimes, comparisons were made           criteria yet discussed uncertainty visualization techniques within
between visualizations with and without uncertainty, between          a geospatial domain, the article was included in the full-text
multiple uncertainty visualizations, or both. The individual          review. The number of articles after the abstract screening stage
trends were synthesized for each technique and within other           was 130, and the full text was read to confirm whether the eligi-
categories by calculating averages and standard deviations after      bility criteria were met. The full-text review initially resulted in
assigning a numerical value to individual effect direction arrows:    35 articles that met the eligibility criteria. The excluded articles

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
9390                                                   IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 10, OCTOBER 2025

<a id="p004-b002"></a>

<!-- p004-b002 -->
TABLE I
                                                                                              SUMMARY OF ARTICLE CHARACTERISTICS

<a id="p004-b003"></a>

<!-- p004-b003 -->
Fig. 1. Preferred reporting items for systematic reviews flow diagram depict-
ing the literature search and eligibility screening outcomes.

<a id="p004-b004"></a>

<!-- p004-b004 -->
from the full-text review either did not visualize geographical
characteristics in a geospatial context, did not include HPP
evaluation, did not visualize uncertainty information, were not
a peer-reviewed article or complete proceedings paper, the full-
text was unavailable, or the article was not available in English.
In January 2024, the search was updated, and five recently pub-
lished articles were included, totalling 40 included articles. The
data extracted from the articles are included in the supplementary
material, including a summary of the uncertainty visualization
methods and the contexts in which they were applied (Table S2),
and the general effect directions of the visualizations on various
HPP metrics (Table S3), with synthesized results in Tables I, II,
and supplementary tables (Table S4–S10).

<a id="p004-b005"></a>

<!-- p004-b005 -->
Several types of geospatial uncertainty data were visualized.
A. Overview of Study Characteristics                                            In the context of weather, the largest domain of uncertainty
   The characteristics of the included studies are summarized in                visualization techniques, applications ranged from visualizing
Table I. The number of published articles examining visualiza-                  hurricanes (15%, n = 6), precipitation in a specific region over
tion techniques for geospatial uncertainty and their impact on                  time (8%, n = 3), and tornado risk (5%, n = 2) with a single
HPP was 1-5 every three years until 2015. Between 2015 and                      article (3%, n = 1) on each of the following: wind speed,
2018, the highest number of articles were published (35%, n =                   temperature, wildfire hazard, earthquake aftershock, and water-
14). The number of articles on this topic decreased to 6-7 every                vapour mixing ratios. Positioning or location uncertainty was
three years until the end of 2023. Author affiliations were from                the second most extensive collection of articles in this review,
various institutions, with most articles from the United States                 where the visualization supported a user in navigating spatially
and Germany.                                                                    by providing uncertain information about their location (15%,

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
TENNANT AND RANDALL: HUMAN PERFORMANCE AND PERCEPTION OF UNCERTAINTY VISUALIZATIONS IN GEOSPATIAL APPLICATIONS                     9391

<a id="p005-b002"></a>

<!-- p005-b002 -->
TABLE II
                               UNCERTAINTY VISUALIZATION TRENDS ON HUMAN PERFORMANCE AND PERCEPTION

<a id="p005-b003"></a>

<!-- p005-b003 -->
n = 6). Otherwise, the context involved uncertain information       univariate or multivariate categories. Univariate visualizations
about the land area when choosing an optimal location for plac-     represented the uncertainty associated with a single variable
ing an object or identifying where an object might be expected      in a geographic area. For example, univariate visual encoding
(20%, n = 8). Climate-focused articles presented visualizations     included varying colour saturation, transparency, texture, or an
about long-term changes in global temperatures (3%, n = 1),         outline of an uncertain area. Sometimes univariate visualizations
wind patterns (3%, n = 1), and precipitation (8%, n = 3), and       were shown side by side: one with the variable being commu-
articles that focused on aspects related to changes in the land     nicated to the user and an identical map juxtaposed displaying
or landscape included visualizations for the following: urban       the uncertainty associated with that variable. Univariate visual-
growth, soil depth, land porosity, vegetation, and general land     izations depicted uncertainty by displaying multiple possibilities
change.                                                             for a single variable, such as static ensemble lines or geolocation
   All of the studies in this review included two-dimensional vi-   centroids.
sualizations. Static displays with non-moving images were more         Multivariate visualizations represented the relationship be-
common than animated visualizations or displays that could be       tween two or more variables in a geographic area, where at
interacted with. Only one study included visualizations showing     least one of the variables was the confidence of another or their
a third dimension but did not evaluate 3-dimensional (3D) data.     relationship. For example, multivariate visual encoding included
Most experiments were conducted in a laboratory setting, while      combinations of techniques to represent these variables, such as
the others were conducted online. One study in the context          colours and colour values, the shape and size of icons, and glyph
of positioning uncertainty was considered a field study, where      sizes with colour values. In most cases, the multivariate visual-
the participants used visualizations while navigating through a     izations appeared to be bivariate, representing the relationship
neighbourhood. Most studies used quantitative analyses, while       between two variables in a geographic area, where one of the
some included qualitative analyses of interviews or post-study      variables was the uncertainty of the other variable.
feedback. Fewer articles explicitly performed a mixed-method           Whether the study examined univariate and/or multivariate
study, including quantitative and qualitative measures.             visualizations, the techniques used for representing uncertainty
                                                                    varied. Colour was the most common technique to show uncer-
                                                                    tainty. However, it is essential to note that colours were used
B. Uncertainty Visualization Methods
                                                                    in different ways, including the degree of increasing lightness,
   A summary of the included studies and the methods used           whiteness, desaturation, or transparency to encode increasing
for visualizing geospatial uncertainty are presented in Table S2    uncertainty, using a spectrum of colours and mapping each
of the supplementary material. In addition to grouping by data      colour to a discrete or continuous uncertainty value, or us-
type, the visualizations in each study were also grouped into       ing two colours to represent uncertainty above and below a

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
9392                                            IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 10, OCTOBER 2025

<a id="p006-b002"></a>

<!-- p006-b002 -->
threshold value. Shapes were the second most common tech-             colour [33]. In the context of informing the placement of ships
nique, including rounded or polygonal. Shapes encompassed an          that minimize danger, Correll et al. [33] identified that their
area or region of uncertainty and often encoded uncertainty in        specific modification to the multivariate map that suppresses
a binary fashion, where the region within the shape indicated a       high uncertainty values increased the likelihood of participants
particular uncertainty value. Some research also used shapes to       avoiding risky decisions.
encode uncertainty as a Gaussian distribution from a centroid.           Conversely, Schneider et al. [35] did not find the same benefits
Similarly, the boundary technique also encompassed an area            to multivariate maps in an earthquake aftershock prediction
or region of uncertainty. These visualizations were distinctly        context for understanding uncertainty and decision-making out-
different as they did not focus on a particular or necessarily rec-   comes. The authors found that adjacent univariate maps and
ognizable shape or included centroids or Gaussian distributions       a multivariate map using transparency did not support partic-
within the shape area. A boundary region technique was often          ipants in recognizing that areas with higher uncertainty could
investigated in the context of how an enclosed region, which          experience worse aftershock outcomes [35]. Instead, adjacent
may not be uniform or include more than one boundary level,           displays showing the lowest and highest likelihoods of after-
can be a less complex encoding method.                                shocks supported participants in understanding that areas with
   Textures overlaid a pattern or stippling onto a display. They      greater uncertainty could see significant damage [35]. Interest-
may or may not purposely obscure the displayed values being           ingly, the authors did not label this visualization as showing
communicated (e.g., to obscure high uncertainty areas). The           uncertainty, and these adjacent visualizations showing the two
uncertainty was encoded in a binary manner (e.g., texture vs          extreme bounds of aftershock rates led to similar inaccuracies
no texture) or continuously as the texture becomes dense or           in reading the uncertainty levels compared to the multivariate
sparse. Similarly, symbols were used in a couple of studies as an     map [35].
overlayed component in the visualization, indicating uncertainty         Other articles that included univariate or multivariate visual-
that could be binary or continuous and could incorporate other        izations used shapes to represent uncertainty, focusing primar-
techniques described using colour and texture. A couple of stud-      ily on geolocation information [36], [37], [38]. These studies
ies used text to describe uncertainty (e.g., “confidence low”) or     applied visualization techniques in the context of hurricane
provide confidence percentages on a map grid. Finally, grid noise     forecasts. They found that multivariate maps using animations
was the least explored technique in this review. The grid noise       of pixel trajectories supported the understanding of uncertainty
method involved increasing the width or graininess of the grid        and decision-making outcomes better than a static univariate
lines to indicate areas of increasing uncertainty continuously or     display [38]. In the univariate context, static ensemble trajectory
discretely.                                                           lines may better support decision-making and understanding
   Colours, grid noise, symbols, textures, and text-based tech-       of uncertainty than a multivariate uncertainty cone [36], [37],
niques were generally used to represent uncertainty in charac-        as the cone shape is more often mistaken as the hurricane
teristics tied to defined geographic areas. Boundary regions and      growing [37]. Participants have also had greater misconceptions
shape-based techniques were more commonly used to represent           about the potential damage that could occur using the cone shape
uncertainty that pertained to the exact geolocation itself, poten-    compared to ensemble lines [36].
tially including other characteristics at that location (e.g., the       Furthermore, while each of the visualizations across all tech-
impacts of a hurricane).                                              niques was categorized as univariate or multivariate when com-
                                                                      paring these groupings against each HPP factor, there does not
                                                                      appear to be any strong trends (Table II). Multivariate may
C. Impacts of Multivariate & Univariate Displays                      have faster response times overall, are possibly slightly more
   The effects of specific uncertainty visualization techniques       preferred, and may result in somewhat greater user confidence,
for each article on HPP are presented in Table S3 of the sup-         but with high variability across the included studies. Trends for
plementary material, with synthesized characteristics in Table II     decision-making performance and understanding of uncertainty
and Table S4–S10 of the supplementary material. While some            are similar between the two map types, with high variability
articles included univariate and multivariate visualizations, only    across the studies. When considering all studies regardless of the
three studies explicitly set out to examine the differences be-       categories, there were no trend directions for decision support
tween these map types. These articles used colour to encode the       or confidence, with moderate to high variability. The evaluated
uncertainty [33], [34], [35]. In the multivariate map, one used       uncertainty visualizations also trend towards faster response
colour whiteness [34], one used a colour saturation change [33],      times, supporting understanding of uncertainty and being pre-
and one used a colour transparency change [35]. The univariate        ferred, with moderate to high variability. However, some trends
maps included the colour visualization technique in a separate        emerge when looking at individual techniques (Table II) and
map.                                                                  when considering the contexts under which they were studied
   Among the three articles, Correll et al. [33] and Kubíček et      (Table S2–S10), with the caveat of synthesizing fewer studies.
al. [34] found that the multivariate map supported participants’
understanding of uncertainty more than the univariate map. Con-
                                                                      D. Impacts of Visualization Techniques
fidence was high in the multivariate maps [34], [35], response
times were quick [34], and decision-making was supported [33].           1) Colours: The use of colour (Fig. 2) as an uncertainty
However, decision-making behaviours may have been more                visualization method was applied to several contexts and in many
influenced by the display and not necessarily the multivariate        studies in this review [33], [34], [35], [39], [40], [41], [42], [43],

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
TENNANT AND RANDALL: HUMAN PERFORMANCE AND PERCEPTION OF UNCERTAINTY VISUALIZATIONS IN GEOSPATIAL APPLICATIONS                                      9393

<a id="p007-b002"></a>

<!-- p007-b002 -->
categories representing different risk thresholds in a decision to
                                                                                  take shelter from a tornado event, decisions were less accurate
                                                                                  than a textual percentage of risk, potentially due to reduced
                                                                                  understanding and trust [46]. In contrast, a spectrum-based
                                                                                  univariate visualization may support decisions to leave amidst
                                                                                  wildfire risk [42], and identify areas where aftershocks from an
                                                                                  earthquake may occur [35].
                                                                                     For multivariate uncertainty maps using colours (Fig. 2), this
                                                                                  approach had a small positive trend in supporting decision-
                                                                                  making, yet with a slight negative trend in understanding uncer-
                                                                                  tainty, with high variability among studies. There are also trends
                                                                                  in reducing response times and positive trends in supporting
                                                                                  user preferences [47], [48], [51], [52], and confidence [34], [50],
                                                                                  [54]. Most of the multivariate colour visualizations used discrete
                                                                                  colour categories and value-based colour changes to represent
Fig. 2. Example of using value-based colours with varied hues in a multivariate
display to communicate uncertainty.                                               uncertainty, where there was a positive trend across the studies
                                                                                  in user preference, confidence, and supporting decision-making
                                                                                  while reducing response times. However, there was a negative
[44], [45], [46], [47], [48], [49], [50], [51], [52], [53], including             trend in multivariate visualizations using colour value-based
land cover for urban growth [45], soil depth [34], and land                       techniques to help the understanding of uncertainty with high
porosity for well drilling [40]; weather applications including                   variability.
wind speed [39], precipitation [43], [47], [50], temperature [51],                   Overall, colour spectrum-based visualizations were primarily
tornado risks [46], [48], and earthquake aftershocks [35]; climate                used in univariate displays positioned adjacently, whereas colour
applications including global temperature changes [41], [44] and                  value-based visualizations were mostly multivariate with dis-
forecasted wind speeds over time [52]; and positioning with                       crete categories (Table S6). When comparing these colour visu-
applications including the risk of an attack based on location                    alization types, colour spectrum-based visualizations generally
[33], and object targeting [49].                                                  trended positively in supporting an understanding of uncertainty
   Among the studies that explored univariate colour represen-                    more than value-based visualizations. However, spectrum-based
tations of uncertainty (Fig. 3), the approach appears to support                  visualizations generally trended more negatively in user confi-
users’ understanding of uncertainty when designs use discrete                     dence and decision-making than colour value-based techniques.
colours [35], [41], [43], [44], [45]. However, one study that                     Colour value-based trended positively for user confidence with
used only three discrete colour categories in a tornado warning                   moderate variability between studies. There was also a small
context had a lower understanding of uncertainty and reduced                      positive trend in decision-making performance for colour value-
trust in the visualization [46]. Univariate representations with                  based visualizations with higher variability between studies.
continuous colour changes appear to have conflicting evidence,                    Both colour value- and spectrum-based uncertainty visualiza-
with some showing positive, negative, or no impacts on un-                        tions had reduced response times and positive trends for user
certainty understanding [33], [34], [39], [40], [45]. Using a                     preferences, with moderate variability between studies.
spectrum-based (e.g., red, blue, green, etc.) or value-based                         For visualizations that were categorized into the context of
(e.g., dark red, medium red, light red) colour change generally                   weather applications, there was a negative trend for colour in
appears to support understanding of uncertainty in univariate                     supporting decision-making and understanding of uncertainty
representations [35], [39], [43], [44], [45]. However, the trends                 with moderate and high variability, respectively (Table S7).
among the studies suggest that users may slightly prefer and have                 In the context of position applications, there was a positive
more confidence in value-based over spectrum-based univariate                     trend with high variability in supporting decision-making and
representations [35], [42], [45].                                                 understanding uncertainty among the few studies using this
   There is conflicting evidence for using univariate colour                      technique (Table S8). For the contexts of climate and land cover
techniques in supporting decision-making. Regardless of being                     applications (Table S9 and S10), there were positive trends in
discrete or continuous, trends for univariate displays using value-               using colour to support the understanding of uncertainty with
based or spectrum-based techniques are generally downward                         lower variability among the few studies and positive trends for
with a moderate to high degree of variability among studies.                      user preferences.
For example, when identifying drilling locations, a univariate                       2) Shapes: The use of shapes (Fig. 4) was applied to loca-
map using a continuous colour spectrum as the uncertainty                         tion positioning and weather forecasting of a geographic loca-
representation may not support users in comparing or ranking lo-                  tion [36], [37], [38], [55], [56], [57], [58], [59], [60], [61], [62],
cations well [40]. For monitoring wind speed and issuing a small                  [63], [64], [65]. Specifically, location positioning accounted for
aircraft safety advisory, univariate colour spectrum uncertainty                  the most articles using shape as a technique, where applica-
maps may or may not reduce accurate decision-making when                          tions were focused on supporting navigation uncertainty on
presenting error ranges at the expense of reduced reported con-                   a map through a mobile application [55], [56], [57], [66] or
fidence [39], with experts being less impacted. For three-colour                  supporting target tracking in a sonar [62] and air traffic targeting

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
9394                                                     IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 10, OCTOBER 2025

<a id="p008-b002"></a>

<!-- p008-b002 -->
Fig. 3.   Example of using spectrum-based colours (left) and value-based colours (right) in a univariate display to communicate uncertainty.

<a id="p008-b003"></a>

<!-- p008-b003 -->
There was a positive trend toward an uncertainty circle with a
                                                                                  centroid to indicate positional uncertainty being preferred [56],
                                                                                  [58], [59], which also reduced the number of navigational
                                                                                  mistakes a user could make in one study [59]. Providing con-
                                                                                  text about the location by including landmarks also supported
                                                                                  navigational accuracy while being a preferred way to provide
                                                                                  supplementary information to help users orient themselves on
                                                                                  the map [59]. When examining the impact of highlighting in-
                                                                                  dividual streets, the results on the preference for this method
                                                                                  are conflicting. Some users preferred this method and reported
                                                                                  reduced workloads [55], while others reported that this was
                                                                                  their least preferable method compared to a circle or “cloud”
                                                                                  representation [56]. The “cloud” shape was particularly use-
                                                                                  ful in supporting users’ understanding of higher uncertainty
                                                                                  contexts [56]. However, there may not be major differences
                                                                                  between these visual cues, like a transparent or faded circle
                                                                                  with or without a centroid, in generally understanding positional
                                                                                  uncertainty [56], [57], [59].
                                                                                     In a similar task situation, identifying targets on a map using
                                                                                  shapes to visualize location uncertainty may be supported with
                                                                                  visualizations that combine a circle with a centroid [60], [61].
                                                                                  In a sonar context, visually providing spatial uncertainty infor-
                                                                                  mation may support decision-making accuracy for a decision-
Fig. 4.   Example of using shapes to communicate uncertainty.                     making task while reducing users’ reported mental efforts, es-
                                                                                  pecially for novices [62]. However, there may not be a reduced
                                                                                  amount of time required to complete the task regardless of
context [60], [61]. Otherwise, representing uncertainty through                   expertise [62].
shapes was used in hurricane risk applications [36], [37], [38],                     Shapes used to represent hurricane risk included cone, cone-
[63], [64].                                                                       centerline, ensemble trajectory (e.g., spaghetti plots) represen-
   In the context of using shapes to navigate, the most common                    tations, and a similar technique showing pixel trajectories. All
method was using a circle of uncertainty with or without a                        included studies involved a decision-making task regarding
centroid. However, some studies proposed new shapes for repre-                    the potential damage a hurricane may cause over an area;
senting positional uncertainty on a map that included a “cloud”                   however, there was no consensus on the impact on decision-
or highlighted the specific streets a user could be located on [55],              making behaviours. One study found no change in protec-
[56], [66].                                                                       tive decision-making behaviours when users were presented

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
TENNANT AND RANDALL: HUMAN PERFORMANCE AND PERCEPTION OF UNCERTAINTY VISUALIZATIONS IN GEOSPATIAL APPLICATIONS                              9395

<a id="p009-b002"></a>

<!-- p009-b002 -->
with an uncertainty cone with or without a centreline repre-
sentation of the hurricane’s path and potential growth [63].
When users were tasked to estimate the level of damage
from a hurricane when only seeing a centreline or a shape
with a fuzzy or solid boundary (without a centreline), they
had decreased damage judgments and reduced understanding
of how the hurricane could grow [36]. Other research saw
worse decision outcomes when the visualization included a
centreline [37].
   For supporting users in understanding increased potential
damage from a hurricane, the evidence aligned more toward
ensemble visualizations, which generally resulted in users es-
timating a greater risk of damage in different geographical
areas [36], [37]. When the decision task concerns evacuations
in response to an impending hurricane, pixel trajectories were
more likely to support appropriate evacuation decisions than
cone-centerline visualizations [38], [64]. These pixel trajec-
tories (i.e., “zoomies”) more broadly supported an improved
understanding of potentially impacted areas and the storm’s
severity for novices when the pixel movement was animated
and combined with a higher severity colour (e.g., red), creating
a multivariate representation [38], [64].
   When comparing univariate and multivariate shape-based vi-
sualizations, there was a stronger positive trend towards univari-
ate representations supporting decision-making and understand-        Fig. 5.   Example of using boundary regions to display uncertainty.
ing of uncertainty, with moderate to high variability across the
studies. Multivariate techniques had a slight negative trend, with
high variability among the studies regarding decision-making          may perturb users’ attention toward specific areas of a display,
outcomes and understanding. However, when examining the               which may or may not be beneficial for decision-making [67].
types of multivariate shape visualizations, the downward trend           The different contexts also appeared to influence HPP when
is heavily influenced by the hurricane cone-type visualizations.      examining the impact of a boundary region. When choosing to
In contrast, the animated pixel trajectories contributed to a         shelter an aircraft amidst a potential tornado, a boundary region
positive trend in supporting decision-making and understanding        may not support an understanding of uncertainty or decision-
uncertainty.                                                          making outcomes [48]. In wildfire evacuation, a boundary re-
   Overall, for visualizations that were categorized into the con-    gion visualization may be insufficient to support an accurate
text of weather applications, there was a small negative trend for    decision response [42]. However, it may increase user accuracy
shapes supporting decision-making with high variability and no        in object location tasks in non-weather related contexts when
trend for understanding uncertainty with high variability (Table      discrete levels of boundary region uncertainty are provided in a
S7). In the context of position applications (Table S8), there        multivariate visualization [49].
was a positive trend with moderate variability for shapes sup-           Overall, for visualizations that were categorized into the con-
porting decision-making and understanding uncertainty. Shapes         text of weather applications, there was a strong negative trend
were not used in contexts involving climate or land cover             for boundary regions supporting decision-making with low vari-
applications.                                                         ability among two studies (Table S7). In the context of position
   3) Boundary Regions: The four studies that employed the            applications (Table S8), there was a positive trend with high
boundary region visualization technique (Fig. 5) were applied         variability for boundary regions supporting decision-making
to wildfire [42], sonar targeting [67], tornado risk [48], and        among two studies, with a strong trend in reducing response
wildlife contexts [49]. All studies included a decision-making        times with low variability. Boundary regions were not used in
task where the participants were required to respond using the        climate or land cover applications.
uncertainty visualization beyond understanding the uncertainty           4) Textures: Texture (Fig. 6) was applied in several contexts,
representation.                                                       including land cover for oil porosity [40], weather uncertainty
   For response times, there was a trend towards reduced re-          regarding wildfires and temperature changes [42], global climate
sponse times using this visualization type to represent uncer-        change with respect to precipitation [51], and location position-
tainty in specific areas of interest regarding a potential weather    ing in the context of landing a helicopter on sloped land [68].
event or object location/target identification task [42]. The small   All studies used this technique in the context of a multivariate
sample of studies provided conflicting results for decision-          map configuration except for one.
making performance, which had a negative trend with higher               Different texture techniques were evaluated: transparency of
variability across the studies. Additionally, a boundary region       texture, squares, lines, and dots. In general, across three studies,

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
9396                                                     IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 10, OCTOBER 2025

<a id="p010-b002"></a>

<!-- p010-b002 -->
Fig. 6.   Example of using textures to display uncertainty.                   Fig. 7.   Example of using symbols to display uncertainty.

<a id="p010-b003"></a>

<!-- p010-b003 -->
texture can support an understanding of uncertainty without                      5) Symbols: The use of symbols to represent uncertainty
obscuring users’ perception of the visualization in a multivariate            (Fig. 7) was used in three studies. The applications were for loca-
map [40], [51], [69]. Johannsen et al. [69] specifically looked               tion and position contexts, including choosing the best locations
at intuitive perception and confirmed that participants perceived             for placing an airport [70] or a photo trap for wild animals [71],
the increased density of a dot texture to be more certain than                and in the context of precipitation uncertainty [47]. All visu-
sparer dots, which aligns with some of the colour technique                   alizations were considered multivariate maps. Using symbols
studies with lighter or greater transparency in colouring being               supported users’ understanding of uncertainty [47], [70], [71]
intuitively more uncertain [34], [45], [51]. Retchless et al. [51]            and were especially preferred with a fuzzy border [71]. However,
also identified that a dot texture was significantly preferred to             using symbols was less likely to support decision-making tasks
squares or line textures.                                                     beyond this understanding [47]. Instead, symbols decreased
   However, using dots or stippling to indicate uncertain geospa-             performance or reduced rationality in decision-making in the
tial data in decision-making may not be ideal in other spatial                context of fuzzy symbols despite being highly preferred [70],
decision-making contexts. When used to identify a safe location               [71]. Decision-making behaviours were also perturbed with
to land a helicopter when the slope of the land is uncertain                  symbols with decreased decision-making rationality [70].
in some areas, but while trying to land close enough to res-                     Overall, for visualizations that were categorized into the con-
cue a stuck hiker, decision-making accuracy was not impacted                  text of weather applications, there was no observed trend for
compared to visualizations without uncertainty. This technique                symbols supporting decision-making with no variability among
increased decision-making time and impacted decision-making                   one study with two experimental outcomes (Table S6). There
strategies, where users chose the safest landing that was further             was a positive trend for symbols being the users’ preference, with
from the theoretical person needing rescuing [68]. However,                   moderate variability among one study with two experimental
this change in decision strategy may not directly relate to the               outcomes. In the context of position applications among two
technique used to represent uncertainty. In contrast, Cheong et               studies(Table S8), there was a strong negative trend with no
al. [42] measured improved decision outcomes using a dot-based                variability for symbols supporting decision-making. Symbols
textural uncertainty visualization, but texture was one of the                were not used in climate or land cover application contexts.
least preferred methods. There was conflicting evidence about                    6) Grid Noise: Only two studies in this review examined the
whether this was the most preferred method among users, as                    impact of noisy grid lines on HPP (Fig. 8). These studies were
another study identified a dot-based textural pattern as the pre-             conducted in the context of land cover, including vegetation
ferred method [51].                                                           change [72], and general land change [73]. Incorporating grid
   Overall, for visualizations that were categorized into the con-            noise within a multivariate visualization supported an under-
text of weather applications, there was a strong positive trend               standing of uncertainty depending on the number of levels
for textures supporting understanding of uncertainty with no                  displayed and if the uncertainty was presented more uniformly
variability among two studies with three experimental outcomes                rather than variable [72].
(Table S7). There was also a negative trend for textures, which                  7) Text: The use of written text (Fig. 9) to convey uncertainty
were users’ preferred visual encoding, with high variability.                 was applied in contexts including tornado warning forecast prob-
In the context of position applications (Table S8), there was a               ability [46], precipitation severity uncertainty [50], and weather
positive trend with moderate variability for textures supporting              uncertainty regarding wildfire and temperature changes [42].
decision-making among two studies. There was no observed                      This technique was used in univariate and multivariate map
trend in response times, with high variability. Textures were not             configurations. Cheong et al. [42] and Gulacsik et al. [46]
used in climate or land cover application contexts.                           used univariate uncertainty maps. The decision-making context

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
TENNANT AND RANDALL: HUMAN PERFORMANCE AND PERCEPTION OF UNCERTAINTY VISUALIZATIONS IN GEOSPATIAL APPLICATIONS                      9397

<a id="p011-b002"></a>

<!-- p011-b002 -->
Overall, visualizations categorized into the context of weather
                                                                      applications showed a slightly positive trend for text supporting
                                                                      decision-making and preference with moderate variability (Ta-
                                                                      ble S6). There were stronger positive trends for text supporting
                                                                      understanding and confidence in weather applications with high
                                                                      variability and a strong trend in reducing response times with
                                                                      high variability. Text was not used in the other application
                                                                      contexts.

<a id="p011-b003"></a>

<!-- p011-b003 -->
E. Performance & Perception Mismatch
                                                                         Among all the studies in this review, there was no clear indi-
                                                                      cation that preference for a visualization technique consistently
                                                                      improved decision-making performance. There were examples
Fig. 8.   Example of using grid noise to display uncertainty.         of studies in this review where, despite a higher preference for a
                                                                      visualization technique, performance decreased or remained un-
                                                                      changed [47], [48], [50], [71]. There were also examples where
                                                                      higher preference aligned with improved decision-making per-
                                                                      formance [42], [52], [74].
                                                                         For understanding uncertainty, there was also no clear indi-
                                                                      cation that preference for a visualization technique consistently
                                                                      resulted in an improved understanding of uncertainty informa-
                                                                      tion. There were examples of studies in this review where users
                                                                      had a higher preference for a visualization technique and a better
                                                                      understanding of uncertainty [44], [45], [51], [52], [65], [71].
                                                                      There were also scenarios where users had a lower preference
                                                                      for a visualization technique but still had a good understanding
                                                                      of the uncertainty information [39], [50], [51].

<a id="p011-b004"></a>

<!-- p011-b004 -->
IV. DISCUSSION
Fig. 9.   Example of using written text to display uncertainty.       A. Univariate & Multivariate Displays
                                                                         The few studies that directly compared multivariate and uni-
                                                                      variate displays suggest that this visualization type may re-
involved the participants’ safety (i.e., evacuating their homes       duce response times, improve decision-making outcomes and
due to wildfire risk or taking shelter from a tornado). The au-       confidence, and support understanding of uncertainty. Among
thors found that representing uncertainty as a written percentage     the colour-based techniques, there appear to be some stronger
increased decision outcome accuracy, where participants took a        trends in multivariate maps supporting confidence and reducing
longer time but made more protective decisions about their safety     response times, especially when using value-based and discrete
in response to a storm forecast compared to other visualization       colours. The other studies included in this review do not explic-
methods like colour encoding or written. Gulacisk et al. [46]         itly examine the differences between multivariate and univariate
also found that written percentages best supported participant        uncertainty visualizations. However, when combining all the
understanding and trust of the uncertainty, especially in their       studies in this review, there do not appear to be any major
more dynamic decision-making task where information was               differences in the trends between univariate and multivariate
updated over time.                                                    maps, suggesting that other aspects influence the HPP of un-
   In contrast, the decision-making scenario used in the study by     certainty in geospatial visualizations, such as the variability in
Clive et al. [50] involved selecting a day to take a walk outside     experimental designs and evaluation contexts. There may also
when there was no severe weather forecast using a multivariate        be trade-offs between HPP of uncertainty for the designer to
map configuration. This decision task involved lower stakes than      achieve the desired interaction experience, whether improved
the risk of potential death from the other weather events dis-        decision-making outcomes or improved abilities to accurately
cussed. The authors’ use of text written extrinsically to each area   read the uncertainty values from the display.
on the map to communicate the predictions found no difference            For example, Schneider et al. [35] highlighted the importance
in decision accuracy compared to colour value-based variations        of designing the visualization to optimize human performance
of border outlines and shapes yet was preferred and better            outcomes in the visualization’s application context, where the
supported participants’ understanding [50]. However, written          multivariate display underperformed. The visualization of the
text on outlined regions resulted in lower confidence compared        high and low likelihoods of earthquake aftershock areas in
to the other techniques [50].                                         adjacent univariate maps traded off an explicit understanding

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
9398                                             IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 10, OCTOBER 2025

<a id="p012-b002"></a>

<!-- p012-b002 -->
of uncertainty for an improved grasp of its implications, par-         possibly due to how people process visual information and how
ticularly the potential for much higher aftershock rates than          these relate to decision-making. While discrete and continuous
forecasted [35]. This visualization focused on communicating           colour visualizations may show negative trends in decision-
the extremes of the forecast outcomes rather than simply the           making outcomes, discrete methods were slightly better. Dis-
uncertainty itself, more effectively communicating potential sur-      crete colour visualizations simplify the visual field by quantizing
prises, where worst-case outcomes became more salient to users.        the data into a limited set of distinct colours with clear bound-
Focused uncertainty communication, or direction of attention           aries [76], potentially aligning better with how people naturally
in particular ways, was also observed in visualizations such           categorize information. These categorizations may lead to re-
as unique shapes (e.g., clouds), boundaries, animations, and           duced errors in perception compared to determining the precise
ensemble displays, making certain aspects of the information           value along a continuum [33]. However, the trade-off between
more salient. However, the saliency may or may not impact              exactness and clarity needed for the visualization will depend
decision-making depending on the application.                          on the specific context and the decisions a user is expected to
   Furthermore, the role of context is important when consider-        make based on the information being displayed [33].
ing univariate or multivariate visualizations, as observed when           2) Shapes: For the shape-based visualizations, there was a
using shapes to represent uncertainty in hurricane forecasts.          trend towards univariate representations that better supported
While it appears that there are greater trends toward supporting       decision-making and understanding uncertainty than multivari-
decision-making and understanding of uncertainty for univariate        ate representations. While it is important to realize the context in
shape visualizations in Table II, it is important to recognize that    which these visualizations were applied, ranging from estimat-
within these categorizations that were made, there are potentially     ing one’s geolocation to the potential risk of hurricane damage
useful techniques depending on the goal of the visualization.          in different regions, the univariate representations may be more
For example, supporting users in understanding where the cen-          effective because of their simplicity. For example, while the
tre of a hurricane may travel and making protective decisions          cone of uncertainty is intended to show the range of possible
appears to be better supported by visualizations that show the         storm paths, it is often misinterpreted as representing the size
possibilities of trajectories, regardless of whether they are static   or intensity of the storm, rather than the width of the cone
ensemble lines or animated pixel trajectories [36], [37], [38],        representing how location uncertainty changes over time [64].
[64]. Similarly, a single trajectory line of the central location      The increasing size of the cone may also be more salient to users,
or a cone shape indicating the changing uncertainty over its           biasing their attention towards certain areas [11].
width appears to lead to worse decision outcomes and lower                Conversely, univariate shapes may have less complexity.
understanding of uncertainty [36], [37], [38], [64]. Ultimately,       While univariate visualizations can similarly generate saliency
it should be recognized that these categorizations of univariate       through the use of bold outlines or including other visual cues
and multivariate do not fully predict effectiveness for HPP; the       like size and colour [11], [77], [78], these features may not be
specific design of the uncertainty visualization and its alignment     as meaningful as they are in shapes like the uncertainty cone in
with the users’ task is crucial.                                       the context of a hurricane. Indeed, the subtle differences in some
                                                                       visual cues presented for positional uncertainty (e.g., circles with
                                                                       or without a centroid) did not substantially alter users’ percep-
B. Visualization Techniques                                            tions of uncertainty. However, animating the ensemble pixels
   1) Colours: There were differences in the specific techniques       for hurricane paths, where a time variable is directly conveyed
for the colour-based visualizations, including spectrum-based vs       through visual movement, is one multivariate shape technique
value-based and discrete vs continuous colours. It appears that        that can support decision-making and understanding positional
colour spectrum-based visualizations can help users distinguish        uncertainty, de-emphasizing the potential misconceptions of size
between different categories or levels of data and read the            or growth. Additionally, this type of multivariate shape is another
uncertainty information but may not provide a clear visual hier-       example of the separation between the data (i.e., position over
archy [42], [75]. It may be more difficult for users to associate      time) and its uncertainty (i.e., the ensemble of possible routes)
the meaning of different colours with different levels of uncer-       being more pronounced compared to the uncertainty cone, as
tainty [75]. Conversely, the colour value-based visualizations         discussed in the context of the multivariate colour value-based
may make it more challenging to read the uncertainty informa-          technique.
tion between lightness, darkness, or transparency levels, which           3) Boundary Regions, Grid Noise, Symbols, Text, & Textures:
may partly occlude the data but provide a clearer hierarchy of         For the other visualization techniques, fewer studies comprehen-
meaning (e.g., darker is more certain, lighter is less certain). The   sively evaluated HPP of uncertainty compared to studies using
colour-value-based uncertainty approach may be more easily             colours and shapes. While trend directions for these techniques
separated from the underlying data visualization. Notably, this        are included in Table II, more research is needed to validate and
separation between the data and its uncertainty using different        verify some of the emerging trends within various contexts.
techniques is arguably more pronounced in the texture-based
approach, which also showed higher trends in understanding
                                                                       C. Performance & Perception Evaluation
and decision-making support (Table II).
   Discrete colour visualizations may also lead to greater con-          In this review, there was significant heterogeneity in the mea-
fidence and preference than continuous colour visualizations,          surement of HPP of uncertainty visualization techniques. The

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
TENNANT AND RANDALL: HUMAN PERFORMANCE AND PERCEPTION OF UNCERTAINTY VISUALIZATIONS IN GEOSPATIAL APPLICATIONS                       9399

<a id="p013-b002"></a>

<!-- p013-b002 -->
studies used a range of tasks, from simple map-reading exercises      depicting uncertainty is useful for decision-making. For exam-
to complex decision-making scenarios. Some tasks focused on           ple, in Scholz et al. [47], participants showed that they under-
identifying the level of uncertainty, while others concentrated       stood which symbols represented higher uncertainty, but it did
on how uncertainty affects choices or resource allocation. Many       not necessarily translate into better choices for crop placement.
studies assessed this factor for decision-making performance          Similarly, Brus et al. [71] focused on symbol intuitiveness but
through the accuracy of choices in an external task, often in         found that user understanding and preferences did not necessar-
scenarios with a correct or optimal response given the uncertain      ily lead to choosing more suitable locations for placing a wildlife
information. These tasks may have had greater negative personal       photo trap.
outcomes with poorer decision-making. For example, getting
caught in a potential wildfire event [42]. Other decision-making
tasks may not have had significantly negative personal conse-         E. Expert & Novice Users
quences, such as deciding the best place to put a photo trap for         Most of the studies in this review focused on novices, indi-
monitoring wildlife [71]. This variability in tasks makes direct      viduals who are often characterized as non-professionals, dis-
comparisons across studies challenging.                               tanced from science, or lacking certain knowledge or skills [80].
   There was also variation in the experimental context in which      However, it is essential to note that within this category, the
the visualizations were tested, from general spatial decision-        term novice was not used uniformly, including students and the
making to more specific scenarios like hazards, weather fore-         general public. The term novice can be ambiguous in its use in
casts, and military operations. These studies were conducted in       visualization evaluation studies [80]. Subsequently, it has been
different testing environments, from the laboratory to the field      noted that groupings within the novice category may not gen-
and online. These experimental context differences resulted in        eralize, especially with small sample sizes [80]. In this review,
different data collection methods, including qualitative inter-       students and the general public were considered novices relative
views, questionnaire-based approaches, quantitative experimen-        to professionals or participants with substantial experience who
tal designs, or a combination of approaches to measure response       were considered experts. It is important to recognize where
times and subjective measures like understanding, preferences,        nuance may exist and be careful with over-generalizations be-
and confidence. Additionally, the participants’ expertise varied,     tween these categories. For example, students who participated
including novices, experts, and sometimes a mixture of these          in the included studies may have a stronger grasp of probability
user populations, which was not always explicitly defined by the      theory than the general public [46], or assigned themselves to
authors. While there are some consistent metrics, like response       being a novice user or very experienced [70]. In addition, some
times, the varied tasks, contexts, and measurements introduced        members of the general public may be highly educated and report
complexities for how uncertainty visualizations are understood        a strong familiarity with the type of geospatial graphics being
and used in decision-making. There is a clear need for more           evaluated [50].
standardized and unifying approaches to better understand HPP            In a previous review by [13], the authors identified the impor-
across diverse user types and to enable more direct comparisons       tance of distinguishing between two types of expertise when per-
in more geospatially generalizable ways. This may aid in de-          forming human experiments about uncertainty visualizations, as
veloping clearer guidelines that can help inform the design of        experts may be no better than novices when extracting informa-
effective uncertainty visualizations.                                 tion from a visualization; however, an experts’ prior experiences
                                                                      may inherently support their decision-making performance. The
                                                                      authors proposed distinguishing between two levels of expertise
D. Performance & Perception Mismatch
                                                                      related to understanding the visualization and making deci-
   Simple preferences toward specific uncertainty visualization       sions under uncertainty. Unfortunately, we identified few stud-
techniques did not always equate to improved performance out-         ies directly evaluating the impacts of uncertainty visualization
comes [47], [71], [79]. The studies in this review also indicated     techniques on improving decision-making performance between
no straightforward relationship between liking a visualization        novices and experts or making these distinctions clear. The few
method and enhancing decision-making or understanding. This           studies included in this review suggest that novices and experts
insight is important because it challenges the idea that user         can understand uncertainty visualizations [45], [47], [70], [71],
preference should be a primary factor in choosing a visualization     [72], [73]. In Tables S4 and S5 of the supplementary material,
method. Instead, it suggests that other factors, perhaps cognitive    when collapsing among all visualization types in this review,
or contextual, might play a more critical role in the effectiveness   there does not appear to be any notable differences in trends for
of a visualization technique.                                         decision-making and response times or preferences and confi-
   Additionally, this review suggests a key difference between        dence between novices and experts. However, the understanding
comprehending uncertainty and effectively using it for decision-      of uncertainty by experts had a stronger positive trend than
making [4], [70]. Visualizations might successfully convey that       novices, which may be inherent because of greater knowledge
uncertainty exists and support users in understanding its level,      and experience [13]. For novices, there is limited evidence that
but not necessarily how to integrate this into the decision-          texture-based techniques may better support decision-making
making process. Indeed, MacEachren et al. [4] note that un-           and understanding of uncertainty but may not be preferred or
certainty visualization research appears to assume that visually      support confidence (Table S4).

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
9400                                             IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 10, OCTOBER 2025

<a id="p014-b002"></a>

<!-- p014-b002 -->
Future research can further inform the design of uncertainty         of data represented, the experience of the user(s) performing the
visualizations for novices and experts in the context of geospa-        task, the decision-making process within which the uncertainty
tial information. First, experiments with uncertainty visualiza-        is incorporated, time limitations, and the potential consequences
tions should explore how decision-making can be supported               of decision-making.
in different contexts, such as by factors that better support
confidence [81], or that support saliency and understanding             G. Potential Research Directions
of the information needed for optimal decision-making [35].
                                                                           Prior reviews on visualizing geospatial uncertainty emphasize
Second, as this review identified, most visualizations are on
                                                                        that visualizations should support a user’s needs and tasks [28],
static displays. Recent studies have seen positive impacts with
                                                                        [29], highlighting the critical importance of understanding the
animated and interactive displays with novice users [38], [46],
                                                                        work domain. Our review builds on Kinkeldey et al. [13] by
[50], [64], and when they have control over the threshold of
                                                                        expanding on and exploring some of the authors’ proposed
uncertain information to display for decision-making [52]. There
                                                                        evaluation categories for the included studies while recognizing
is an opportunity to explore uncertainty visualization and the
                                                                        that the objective of this review was limited in making com-
potential for adaptive interfaces to improve both understanding
                                                                        parisons between study findings. Despite including studies that
uncertainty and making decisions, depending on the task and
                                                                        explore similar techniques in similar contexts, our review helps
the user’s expertise, while being mindful of cognitive resource
                                                                        identify promising techniques while recognizing the nuances of
limitations.
                                                                        the varied contexts, users, and outcomes being evaluated.
                                                                           Based on the heterogeneity of the findings, there is a need
F. Visualization Contexts                                               for more research in the context of uncertainty visualization
                                                                        for geospatial data related to the environments explored in this
   In this review, all articles that included human participant eval-
                                                                        review. To support the integration of uncertainty visualizations
uations had two-dimensional (2D) data representations, most of
                                                                        into future display technologies, future research could explicitly
which were static visualizations. The one article that included
                                                                        explore the design and evaluation of uncertainty visualizations
a 2.5/3D visualization did not evaluate the 3D data [40]. Fu-
                                                                        from a work domain perspective that can improve the cou-
ture display technologies may incorporate mixed and virtual
                                                                        pling between the perception of uncertainty and HPP. One such
reality with 3D components in a dynamic, time-series context.
                                                                        methodology is a design process called Cognitive Work Analy-
Therefore, it is essential to determine how the current methods
                                                                        sis, which emphasizes understanding work domain constraints
for visualizing uncertainty may apply in this context or if they
                                                                        to embed skills- rules- and knowledge-based information within
need to be adapted to support the HPP of uncertainty informa-
                                                                        visualizations to support decision-making effectively [85], [86].
tion. Having an additional dimension also enables new ways
                                                                        Insights from the models produced through this analysis inform
to present uncertainty. For example, instead of using the z-axis
                                                                        an ecological interface—a design technique which has yet to be
for depth, its use in conveying uncertainty could be explored.
                                                                        explored in the use of geospatial uncertainty for decision-making
3D uncertainty visualization research exists [82], [83], yet no
                                                                        tasks—which has explicit advantages in affording users the abil-
articles were found that met the inclusion criteria for this review.
                                                                        ity to achieve a tighter perception-action response in decision-
Further research should investigate the impact of 2D uncertainty
                                                                        making [87], [88]. Developing a deep understanding of the
visualization techniques and modified or new techniques on HPP
                                                                        domain and decision-making process can inform visualization
measures in 3D displays.
                                                                        techniques that are more likely to support improved human per-
   Furthermore, only a few studies in this review explored in-
                                                                        formance by helping users understand the relationships between
teractive and animated displays [38], [46], [64]. This included
                                                                        the uncertain information and potential decision outcomes or the
an example where an interactive visualization supported HPP
                                                                        degree to which the uncertain information should be considered
factors when users were given control to change the displayed
                                                                        or highlighted in different tasks.
uncertainty thresholds [52]. Similarly, animated displays also
resulted in decision-making benefits [38], [64]. Indeed, interac-
                                                                        H. Limitations
tive geospatial displays can help users filter information, reduce
display complexity, and support users in decision-making [84].             The first author, who is an experienced researcher on two
Given the potential balance of risks and benefits to user control       prior human factors-related scoping review articles, screened
over displaying uncertainty, further exploring this factor, its         and extracted the data for this review under the guidance of
feasibility, and its potential impact in different contexts and task    the second author with greater domain expertise [89], [90]. The
scenarios is needed.                                                    authors met to discuss the articles and preliminary findings,
   Finally, in-depth studies evaluating the context of use and          where the second author also critically examined the plausibility
workflow integration of potential uncertainty visualization de-         of the review outcomes to support the rigour of the analysis.
signs were also limited in this review, which included several          The initial results were also presented at the annual research
laboratory and survey evaluations. This limitation is a significant     meeting among defence scientists working on display design
concern when considering how uncertainty visualizations may             technology for national defence strategies. Overall, this process
impact decision-making performance positively or negatively in          supported the efficiency of the review; however, the single-
the real world [73]. More research is needed that considers work-       screener methodology may have introduced bias and risk of
flow integration of uncertainty visualizations, including the type      error through missing relevant studies [89], [91]. Given the

<a id="page-015"></a>

## PDF page 15

<a id="p015-b001"></a>

<!-- p015-b001 -->
TENNANT AND RANDALL: HUMAN PERFORMANCE AND PERCEPTION OF UNCERTAINTY VISUALIZATIONS IN GEOSPATIAL APPLICATIONS                                   9401

<a id="p015-b002"></a>

<!-- p015-b002 -->
total number of articles screened and the heterogeneity of the                                     V. CONCLUSION
results, we are confident that the limitation of single-author
                                                                         This comprehensive review highlights the complexity of
screening would not significantly alter the general findings and      geospatial uncertainty visualization, revealing a fragmented re-
recommendations for future research directions.
                                                                      search landscape with diverse contexts and varying HPP out-
   This review does not extend beyond geospatial information or
                                                                      comes. While some trends emerged among the included studies,
applications beyond geographic uncertainty data. Other contexts       considerable uncertainty remains regarding the most or least
where uncertainty information visualization is being explored
                                                                      effective methods for representing uncertainty in geospatial data,
may provide similar or differing impacts than the settings in-
                                                                      where context appears to be an essential factor. Additionally,
cluded in this review. For example, a recent systematic re-           much of the existing research focuses on supporting novice-type
view has identified that information visualization can support
                                                                      users in decision-making tasks, with fewer studies examining
decision quality and response times, but depicting uncertain          how domain experts or professional users interact with these
information can reduce decision confidence [30]. Our review           visualizations.
explores uncertainty visualization techniques while highlighting
                                                                         Despite the increasing use of familiar visualizations such as
the importance of context on HPP outcomes, including the task,        colours and shapes, this review highlights variations of HPP
the visualization approach, and the user type. While insights         outcomes in different contexts. Integrating the intended human
from other domains could be transferable, this transferability
                                                                      performance and/or perception outcome(s), the context within
was outside the scope of this review. We recommend that future        which the visualization is being designed, and the emerging
research explores and critically examines potential cross-domain      trends of this review can help guide design choices to support
overlap on human performance and perception of uncertainty
                                                                      user interpretation and action on uncertainty.
visualization techniques.                                                Future research should further explore contextual factors that
   Other information included within certain visualization ap-
                                                                      influence the perception and use of different uncertainty visu-
proaches that were explored in the included articles may also
                                                                      alizations in geospatial settings informed by emerging trends,
impact HPP of uncertainty, but these details were not extracted       assess techniques within real-world workflows, and examine the
or explicitly considered in this review if they were not directly
                                                                      potential for established interface design frameworks to enhance
related to uncertainty as this was outside the scope. However, this
                                                                      practical applicability. Addressing these gaps will advance the
additional information is another contextual factor that should be    field and provide domain professionals with more effective
considered in future research studies to understand optimal de-
                                                                      decision-support tools for navigating complex geospatial un-
signs and use cases for these multivariate displays. Additionally,
                                                                      certainty data.
the categorizations used for univariate and multivariate visual-
izations, application contexts, and visualization techniques were
not perfect in creating groupings based on similarities. This was                                       REFERENCES
partly a limitation in the comprehensiveness and details provided      [1] D. L. Medin, B. H. Ross, and A. B. Markman, Cognitive Psychology.
by the included articles and the heterogeneity within the various          Hoboken, NJ, USA: Wiley, 2005.
                                                                       [2] E. Bogert, A. Schecter, and R. T. Watson, “Humans rely more on al-
applied approaches and methods. Further research can support               gorithms than social influence as a task becomes more difficult,” Sci.
future reviews through standardized reporting.                             Rep., vol. 11, no. 1, Apr. 2021, Art. no. 8028. [Online]. Available:
   Finally, while this review synthesizes trends in the effects            https://www.nature.com/articles/s41598-021-87480-9
                                                                       [3] C. D. Wickens and J. G. Hollands, Engineering Psychology and
of uncertainty visualization techniques on HPP of uncertainty,             Human Performance. Englewood Cliffs, NJ, USA: Prentice Hall,
these trends should be interpreted cautiously. The directionality          2000.
of the effects was derived from individual evaluations with            [4] A. M. MacEachren et al., “Visualizing geospatial information uncertainty:
                                                                           What we know and what we need to know,” Cartography Geographic Inf.
comparisons made between visualizations with and without                   Sci., vol. 32, no. 3, pp. 139–160, Jan. 2005. [Online]. Available: http:
encoding uncertainty, as well as between different uncertainty             //www.tandfonline.com/doi/abs/10.1559/1523040054738936
visualization techniques—some of which came from the same              [5] J. Rasmussen, “Skills, rules, and knowledge; signals, signs, and sym-
                                                                           bols, and other distinctions in human performance models,” IEEE
studies—and assigned numerical values for synthesizing. This               Trans. Syst., Man, Cybern., vol. SMC-13, no. 3, pp. 257–266,
process inherently involves a level of subjectivity in inter-              May/Jun. 1983.
pretation. Additionally, the variability in reported findings, as      [6] J. A. Effken, J. A. Verran, M. D. Logue, and Y.-C. Hsu, “Nurse managers’
                                                                           decisions: Fast and favoring remediation,” J. Nurs. Admin., vol. 40, no. 4,
reflected in the means and standard deviations, highlights that            pp. 188–195, Apr. 2010.
the observed trends are not absolute but indicative of patterns        [7] J. Rasmussen, “The human data processor as a system component. Bits and
in the reviewed literature. Given the nature of this review,               pieces of a model (Technical Report No. Risø-M-1722),” Danish Atomic
                                                                           Energy Commission Risø, Roskilde, Denmark, Tech. Rep. Risø-M-1722,
designers and researchers should consider these findings as                1974, Art. no. 51.
exploratory insights rather than prescriptive guidelines, ensuring     [8] J. Rasmussen, “Outlines of a hybrid model of the process plant operator,”
that any application of these trends aligns with the specific              in Monitoring Behavior and Supervisory Control, T. B. Sheridan and G. Jo-
                                                                           hannsen, Eds. Boston, MA, USA: Springer, 1976, pp. 371–383. [Online].
context, task, and user population. Future work should further             Available: http://link.springer.com/10.1007/978-1-4684-2523-9_31
investigate these relationships through experimentation and real-      [9] M. Kay, S. N. Patel, and J. A. Kientz, “How good is 85%?: A survey
world evaluations to refine the understanding of how uncer-                tool to connect classifier evaluation to acceptability of accuracy,” in
                                                                           Proc. 33rd Annu. ACM Conf. Hum. Factors Comput. Syst., South Korea,
tainty visualizations affect the HPP of uncertainty in geospatial          2015, pp. 347–356. [Online]. Available: https://dl.acm.org/doi/10.1145/
contexts.                                                                  2702123.2702603

<a id="page-016"></a>

## PDF page 16

<a id="p016-b001"></a>

<!-- p016-b001 -->
9402                                                        IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 10, OCTOBER 2025

<a id="p016-b002"></a>

<!-- p016-b002 -->
[10] J. Zhang and M. Goodchild, Uncertainty in Geographical Information.               [29] C. Kinkeldey, A. M. MacEachren, and J. Schiewe, “How to assess vi-
     New York, NY, USA: Taylor & Francis, 2002. [Online]. Available: https:                 sual communication of uncertainty? A systematic review of geospatial
     //books.google.ca/books?id=JpUOahXB3MsC                                                uncertainty visualisation user studies,” Cartographic J., vol. 51, no. 4,
[11] A. M. MacEachren, How Maps Work: Representation, Visualization, and                    pp. 372–386, Nov. 2014. [Online]. Available: http://www.tandfonline.
     Design. New York, NY, USA: The Guilford Press, 2004.                                   com/doi/full/10.1179/1743277414Y.0000000099
[12] A. M. MacEachren, “Visualizing uncertain information,” Carto-                     [30] K. Eberhard, “The effects of visualization on judgment and decision-
     graphic Perspectives, vol. 13, pp. 10–19, Jun. 1992. [Online]. Avail-                  making: A systematic literature review,” Manage. Rev. Quart., vol. 73,
     able: https://cartographicperspectives.org/index.php/journal/article/view/             no. 1, pp. 167–214, Feb. 2023. [Online]. Available: https://link.springer.
     cp13-maceachren                                                                        com/10.1007/s11301-021-00235-8
[13] C. Kinkeldey, A. M. MacEachren, M. Riveiro, and J. Schiewe,                       [31] C. Wohlin, “Guidelines for snowballing in systematic literature studies
     “Evaluating the effect of visually represented geodata uncertainty on                  and a replication in software engineering,” in Proc. 18th Int. Conf. Eval.
     decision-making: Systematic review, lessons learned, and recommen-                     Assessment Softw. Eng., London U.K., 2014, pp. 1–10. [Online]. Available:
     dations,” Cartography Geographic Inf. Sci., vol. 44, no. 1, pp. 1–21,                  https://dl.acm.org/doi/10.1145/2601248.2601268
     Jan. 2017. [Online]. Available: https://www.tandfonline.com/doi/full/10.          [32] H. J. Thomson and S. Thomas, “The effect direction plot: Visual display
     1080/15230406.2015.1089792                                                             of non-standardised effects across multiple outcome domains,” Res. Synth.
[14] A. D. Andre and H. A. Cutler, “Displaying uncertainty in advanced                      Methods, vol. 4, no. 1, pp. 95–101, Mar. 2013.
     navigation systems,” in Proc. Hum. Factors Ergonom. Soc. Annu. Meeting,           [33] M. Correll, D. Moritz, and J. Heer, “Value-suppressing uncertainty
     1998, pp. 31–35. [Online]. Available: https://journals.sagepub.com/doi/                palettes,” in Proc. 2018 ACM CHI Conf. Hum. Factors Comput. Syst.,
     10.1177/154193129804200108                                                             Montreal, QC, Canada, 2018, pp. 1–11. [Online]. Available: https://dl.
[15] M. Skeels, B. Lee, G. Smith, and G. G. Robertson, “Revealing uncertainty               acm.org/doi/10.1145/3173574.3174216
     for information visualization,” Inf. Vis., vol. 9, no. 1, pp. 70–81, Jan. 2010.   [34] P. Kubicek and C. Sasinka, “Thematic uncertainty visualization usability
     [Online].      Available:    https://journals.sagepub.com/doi/10.1057/ivs.             – comparison of basic methods,” Ann. GIS, vol. 17, no. 4, pp. 253–263,
     2009.1                                                                                 Dec. 2011. [Online]. Available: https://www.tandfonline.com/doi/full/10.
[16] M. F. Goodchild and S. Gopal, Eds., The Accuracy Of Spatial Databases,                 1080/19475683.2011.625978
     0th ed. Boca Raton, FL, USA: CRC Press, Dec. 1989. [Online]. Available:           [35] M. Schneider, M. McDowell, P. Guttorp, E. A. Steel, and N. Fleischhut,
     https://www.taylorfrancis.com/books/9781135477776                                      “Effective uncertainty visualization for aftershock forecast maps,” Natural
[17] D. Pfoser, N. Tryfona, and C. S. Jensen, “Indeterminacy and spatiotempo-               Hazards Earth Syst. Sci., vol. 22, no. 4, pp. 1499–1518, Apr. 2022.
     ral data: Basic definitions and case study,” GeoInformatica, vol. 9, no. 3,            [Online]. Available: https://nhess.copernicus.org/articles/22/1499/2022/
     pp. 211–236, Mar. 2005.                                                           [36] I. Ruginski et al., “Non-expert interpretations of hurricane forecast uncer-
[18] S. Werder, B. Kieler, and M. Sester, “Semi-automatic interpretation of                 tainty visualizations,” Spatial Cogn. Comput., vol. 16, no. 2, pp. 154–172,
     buildings and settlement areas in user-generated spatial data,” in Proc.               2016.
     18th SIGSPATIAL Int. Conf. Adv. Geographic Inf. Syst., New York, NY,              [37] L. M. Padilla, I. T. Ruginski, and S. H. Creem-Regehr, “Effects of ensemble
     USA, 2010, pp. 330–339. [Online]. Available: https://doi-org.proxy.lib.                and summary displays on interpretations of geospatial uncertainty data,”
     uwaterloo.ca/10.1145/1869790.1869836                                                   Cogn. Res.: Princ. Implic., vol. 2, no. 1, Dec. 2017, Art. no. 40.
[19] B. Zhang, G. Trajcevski, and L. Liu, “Towards fusing uncertain loca-              [38] J. K. Witt and B. A. Clegg, “Dynamic ensemble visualizations to support
     tion data from heterogeneous sources,” GeoInformatica, vol. 20, no. 2,                 understanding for uncertain trajectories,” J. Exp. Psychol., Appl., vol. 28,
     pp. 179–212, Apr. 2016.                                                                no. 3, pp. 451–467, Sep. 2022. [Online]. Available: http://doi.apa.org/
[20] K. T. Hjelmervik, J. K. Jensen, P. Østenstad, and A. Ommundsen, “Classi-               getdoi.cfm?doi=10.1037/xap0000370
     fication of acoustically stable areas using empirical orthogonal functions,”      [39] L. Nadav-Greenberg, S. L. Joslyn, and M. U. Taing, “The effect of
     Ocean Dyn., vol. 62, no. 2, pp. 253–264, Feb. 2012. [Online]. Available:               uncertainty visualizations on decision making in weather forecasting,” J.
     http://link.springer.com/10.1007/s10236-011-0499-z                                     Cogn. Eng. Decis. Mak., vol. 2, no. 1, pp. 24–47, Mar. 2008.
[21] M. Rixen, P. Lermusiaux, and J. Osler, “Quantifying, predicting, and              [40] T. Viard, G. Caumon, and B. Levy, “Adjacent versus coincident repre-
     exploiting uncertainties in marine environments,” Ocean Dyn., vol. 62,                 sentations of geospatial uncertainty: Which promote better decisions?,”
     no. 3, pp. 495–499, Mar. 2012. [Online]. Available: http://link.springer.              Comput. Geosciences, vol. 37, no. 4, pp. 511–520, 2011.
     com/10.1007/s10236-012-0526-8                                                     [41] N. Bearman, P. Jones, and A. Lovett, “Using sound to represent uncertainty
[22] N. R. Chapman, S. Chin-Bing, D. King, and R. B. Evans, “Benchmark-                     in UKCP09 data with Google Maps API,” Atmospheric Sci. Lett., vol. 14,
     ing geoacoustic inversion methods for range dependent waveguides,”                     no. 4, pp. 220–226, Oct. 2013.
     in Impact of Littoral Environmental Variability of Acoustic Predictions           [42] L. Cheong, S. Bleisch, A. Kealy, K. Tolhurst, T. Wilkening, and M.
     and Sonar Performance, N. G. Pace and F. B. Jensen, Eds. Dordrecht,                    Duckham, “Evaluating the impact of visualization of wildfire hazard
     Netherlands: Springer, 2002, pp. 441–448. [Online]. Available: http:                   upon decision-making under uncertainty,” Int. J. Geographical Inf. Sci.,
     //link.springer.com/10.1007/978-94-010-0626-2_55                                       vol. 30, no. 7, pp. 1377–1404, Jul. 2016. [Online]. Available: https:
[23] P. Abbot and I. Dyer, “Sonar performance predictions incorporating envi-               //www.tandfonline.com/doi/full/10.1080/13658816.2015.1131829
     ronmental variability,” in Impact of Littoral Environmental Variability of        [43] A. Diehl et al., “Albero: A visual analytics approach for probabilistic
     Acoustic Predictions and Sonar Performance, N. G. Pace and F. B. Jensen,               weather forecasting,” Comput. Graph. Forum, vol. 36, no. 7, pp. 135–144,
     Eds. Dordrecht, Netherlands: Springer, 2002, pp. 611–618. [Online].                    2017.
     Available: http://link.springer.com/10.1007/978-94-010-0626-2_76                  [44] C. Davis, H. Aldridge, R. Boyles, K. S. McNeal, L. Maudlin, and R. Atkins,
[24] J. A. Scrimger, D. J. Evans, G. A. McBean, D. M. Farmer, and B. R.                     “Visually communicating future climate in a web environment,” Weather,
     Kerman, “Underwater noise due to rain, hail, and snow,” J. Acoustical                  Climate, Soc., vol. 12, no. 4, pp. 877–896, Oct. 2020. [Online]. Available:
     Soc. America, vol. 81, no. 1, pp. 79–86, Jan. 1987. [Online]. Avail-                   https://journals.ametsoc.org/doi/10.1175/WCAS-D-19-0152.1
     able: https://pubs.aip.org/jasa/article/81/1/79/646184/Underwater-noise-          [45] J. C. J. H. Aerts, K. C. Clarke, and A. D. Keuper, “Testing popular visual-
     due-to-rain-hail-and                                                                   ization techniques for representing model uncertainty,” Cartography Geo-
[25] K. Abdelfatah, J. Bao, and G. Terejanu, “Geospatial uncertainty modeling               graphic Inf. Sci., vol. 30, no. 3, pp. 249–261, Jan. 2003. [Online]. Available:
     using stacked gaussian processes,” Environ. Modelling Softw., vol. 109,                http://www.tandfonline.com/doi/abs/10.1559/152304003100011180
     pp. 293–305, Nov. 2018. [Online]. Available: https://linkinghub.elsevier.         [46] G. Gulacsik, S. L. Joslyn, J. Robinson, and C. Qin, “Communicating
     com/retrieve/pii/S1364815218304997                                                     uncertainty information in a dynamic decision environment,” Weather,
[26] G. Dutton, “Handling positional uncertainty in spatial databases,” in                  Climate, Soc., vol. 14, no. 4, pp. 1201–1216, Oct. 2022. [Online].
     Proc. 5th Int. Symp. Spatial Data Handling, Charleston, SC, USA, 1992,                 Available: https://journals.ametsoc.org/view/journals/wcas/14/4/WCAS-
     pp. 460–469.                                                                           D-21-0186.1.xml
[27] W. Shi and W. Liu, “A stochastic process-based model for the positional           [47] R. W. Scholz and Y. Lu, “Uncertainty in geographic data on bivariate maps:
     error of line segments in GIS,” Int. J. Geographical Inf. Sci., vol. 14, no. 1,        An examination of visualization preference and decision making,” ISPRS
     pp. 51–66, Jan. 2000. [Online]. Available: http://www.tandfonline.com/                 Int. J. Geo-Inf., vol. 3, no. 4, pp. 1180–1197, Dec. 2014.
     doi/abs/10.1080/136588100240958                                                   [48] K. E. Klockow-McClain, R. A. McPherson, and R. P. Thomas, “Car-
[28] A. Bostrom, L. Anselin, and J. Farris, “Visualizing seismic risk and                   tographic design for improved decision making: Trade-offs in uncer-
     uncertainty: A review of related research,” Ann. New York Acad. Sci.,                  tainty visualization for tornado threats,” Ann. Amer. Assoc. Geographers,
     vol. 1128, no. 1, pp. 29–40, Apr. 2008. [Online]. Available: https://                  vol. 110, no. 1, pp. 314–333, Jan. 2020. [Online]. Available: https://www.
     nyaspubs.onlinelibrary.wiley.com/doi/10.1196/annals.1399.005                           tandfonline.com/doi/full/10.1080/24694452.2019.1602467

<a id="page-017"></a>

## PDF page 17

<a id="p017-b001"></a>

<!-- p017-b001 -->
TENNANT AND RANDALL: HUMAN PERFORMANCE AND PERCEPTION OF UNCERTAINTY VISUALIZATIONS IN GEOSPATIAL APPLICATIONS                                                     9403

<a id="p017-b002"></a>

<!-- p017-b002 -->
[49] S. A. Kusumastuti, K. A. Pollard, A. H. Oiknine, B. Dalangin, T. R. Raber,    [65] J. Sanyal, S. Zhang, J. Dyer, A. Mercer, P. Amburn, and R. J. Moor-
     and B. T. Files, “Practice improves performance of a 2D uncertainty inte-          head, “Noodles: A tool for visualization of numerical weather model
     gration task within and across visualizations,” IEEE Trans. Vis. Comput.           ensemble uncertainty,” IEEE Trans. Vis. Comput. Graph., vol. 16, no. 6,
     Graphics, vol. 29, no. 9, pp. 3949–3960, Sep. 2023. [Online]. Available:           pp. 1421–1430, Nov./Dec. 2010.
     https://ieeexplore.ieee.org/document/9772276/                                 [66] C. Ranasinghe, J. Krukar, and C. Kray, “Visualizing location uncer-
[50] M. A. T. Clive, E. E. H. Doyle, S. H. Potter, C. Noble, and D. M.                  tainty on mobile devices: Cross-cultural differences in perceptions and
     Johnston, “How visual design of severe weather outlooks can affect com-            preferences,” in Proc. ACM Interactive, Mobile, Wearable Ubiquitous
     munication and decision-making,” Weather, Climate, Soc., vol. 15, no. 4,           Technol., vol. 2, no. 1, pp. 1–22, Mar. 2018. [Online]. Available: https:
     pp. 979–997, Oct. 2023. [Online]. Available: https://journals.ametsoc.org/         //dl.acm.org/doi/10.1145/3191762
     view/journals/wcas/15/4/WCAS-D-23-0010.1.xml                                  [67] K. I. Fletcher, M. L. Bartlett, S. J. Cockshell, and J. S. McCar-
[51] D. P. Retchless and C. A. Brewer, “Guidance for representing uncertainty           ley, “Visualizing probability of detection to aid sonar operator perfor-
     on global temperature change maps,” Int. J. Climatol., vol. 36, no. 3,             mance,” in Proc. Hum. Factors Ergonom. Soc. Annu. Meeting, 2017,
     pp. 1143–1159, Mar. 2016.                                                          pp. 302–306.
[52] L. Calvo, I. Christel, M. Terrado, F. Cucchietti, and M. Pérez-Montoro,       [68] M. Korporaal, I. T. Ruginski, and S. I. Fabrikant, “Effects of uncertainty
     “Users’ cognitive load: A key aspect to successfully communicate visual            visualization on map-based decision making under time pressure,” Front.
     climate information,” Bull. Amer. MeteoroLog. Soc., vol. 103, no. 1,               Comput. Sci., vol. 2, Aug. 2020, Art. no. 32. [Online]. Available: https:
     pp. E1–E16, Jan. 2022. [Online]. Available: https://journals.ametsoc.org/          //www.frontiersin.org/article/10.3389/fcomp.2020.00032/full
     view/journals/bams/103/1/BAMS-D-20-0166.1.xml                                 [69] I. M. Johannsen, S. I. Fabrikant, and M. Evers, “How do tex-
[53] H. Zhang, D. Qu, Q. Liu, Q. Shang, Y. Hou, and H. Shen, “Uncertainty               ture and color communicate uncertainty in climate change map dis-
     visualization for variable associations analysis,” Vis. Comput., vol. 34,          plays? (Short paper),” in Proc. Int. Conf. Geographic Inf. Sci., 2018,
     no. 4, pp. 531–549, 2018.                                                          pp. 37:1–37:6. [Online]. Available: https://drops.dagstuhl.de/entities/
[54] H. Schneider, J. Wayrauther, M. Hassib, and A. Butz, “Communicating                document/10.4230/LIPIcs.GISCIENCE.2018.37
     uncertainty in fertility prognosis,” in Proc. 2019 ACM CHI Conf. Hum.         [70] S. Hope and G. J. Hunter, “Testing the effects of thematic uncertainty on
     Factors Comput. Syst., New York, NY, USA, 2019, pp. 1–11. [Online].                spatial decision-making,” Cartography Geographic Inf. Sci., vol. 34, no. 3,
     Available:        https://doi-org.proxy.lib.uwaterloo.ca/10.1145/3290605.          pp. 199–214, Jan. 2007. [Online]. Available: http://www.tandfonline.com/
     3300391                                                                            doi/abs/10.1559/152304007781697884
[55] S. Burigat and L. Chittaro, “Pedestrian navigation with degraded GPS          [71] J. Brus, M. Kučera, and S. Popelka, “Intuitiveness of geospatial uncertainty
     signal: Investigating the effects of visualizing position uncertainty,” in         visualizations: A user study on point symbols,” Geografie, vol. 124,
     Proc. 13th ACM Int. Conf. Hum. Comput. Interact. Mobile Devices Serv.,             no. 2, pp. 163–185, 2019. [Online]. Available: https://geografie.cz/124/2/
     Stockholm Sweden, 2011, pp. 221–230. [Online]. Available: https://dl.              0163/
     acm.org/doi/10.1145/2037373.2037407                                           [72] C. Kinkeldey, J. Mason, A. Klippel, and J. Schiewe, “Evaluation of
[56] C. M. Ranasinghe and C. Kray, “Visualizing location uncertainty on mo-             noise annotation lines: Using noise to represent thematic uncertainty in
     bile devices: Assessing users perception and preferences,” in Geospatial           maps,” Cartography Geographic Inf. Sci., vol. 41, no. 5, pp. 430–439,
     Data in a Changing World, T. Sarjakoski, M. Y. Santos, and L. T. Sar-              Oct. 2014. [Online]. Available: http://www.tandfonline.com/doi/abs/10.
     jakoski, Eds. Cham, Switzerland: Springer International Publishing, 2016,          1080/15230406.2014.949868
     pp. 315–333. [Online]. Available: http://link.springer.com/10.1007/978-       [73] C. Kinkeldey et al., “Evaluating the use of uncertainty visualization for
     3-319-33783-8_18                                                                   exploratory analysis of land cover change: A qualitative expert user study,”
[57] G. McKenzie, M. Hegarty, T. Barrett, and M. Goodchild, “Assessing                  Comput. Geosci., vol. 84, pp. 46–53, Nov. 2015. [Online]. Available: https:
     the effectiveness of different visualizations for judgments of positional          //linkinghub.elsevier.com/retrieve/pii/S0098300415300315
     uncertainty,” Int. J. Geographical Inf. Sci., vol. 30, no. 2, pp. 221–239,    [74] C. Ranasinghe, M. Pfeiffer, S. Heitmann, and C. Kray, “Evaluating user
     Feb. 2016.                                                                         experience under location quality variations: A framework for in-the-wild
[58] C. Ranasinghe, S. Heitmann, A. Hamzin, M. Pfeiffer, and C. Kray, “Pedes-           studies,” in Proc. 21st ACM Int. Conf. Hum.-Comput. Interact. Mobile
     trian navigation and GPS deteriorations: User behavior and adaptation              Devices Serv., New York, NY, USA, 2019, pp. 1–6. [Online]. Available:
     strategies,” in Proc. 30th ACM Australian Conf. Comput.-Hum. Inter-                https://doi-org.proxy.lib.uwaterloo.ca/10.1145/3338286.3344392
     action, New York, NY, USA, 2018, pp. 266–277. [Online]. Available:            [75] A. Light and P. J. Bartlein, “The end of the rainbow? Color schemes for
     https://doi-org.proxy.lib.uwaterloo.ca/10.1145/3292147.3292154                     improved data graphics,” Eos, Trans. Amer. GeoPhys. Union, vol. 85,
[59] C. Ranasinghe, N. Schiestel, and C. Kray, “Visualising location uncertainty        no. 40, pp. 385–391, Oct. 2004. [Online]. Available: https://agupubs.
     to support navigation under degraded GPS signals: A comparison study,”             onlinelibrary.wiley.com/doi/10.1029/2004EO400002
     in Proc. 21st ACM Int. Conf. Hum.-Comput. Interaction Mobile Devices          [76] L. Padilla, P. S. Quinan, M. Meyer, and S. H. Creem-Regehr, “Evaluat-
     Serv., Taipei Taiwan, 2019, pp. 1–11. [Online]. Available: https://dl.acm.         ing the impact of binning 2D scalar fields,” IEEE Trans. Vis. Comput.
     org/doi/10.1145/3338286.3340128                                                    Graphics, vol. 23, no. 1, pp. 431–440, Jan. 2017. [Online]. Available:
[60] M. Riveiro, “Visually supported reasoning under uncertain conditions:              https://ieeexplore.ieee.org/document/7539585/
     Effects of domain expertise on air traffic risk assessment,” Spatial          [77] M. Hegarty, “The cognitive science of visual–spatial displays: Implica-
     Cogn. Comput., vol. 16, no. 2, pp. 133–153, Apr. 2016. [Online].                   tions for design,” Top. Cogn. Sci., vol. 3, no. 3, pp. 446–474, Jul. 2011.
     Available: http://www.tandfonline.com/doi/full/10.1080/13875868.2015.              [Online]. Available: https://onlinelibrary.wiley.com/doi/10.1111/j.1756-
     1137576                                                                            8765.2011.01150.x
[61] M. Riveiro, T. Helldin, G. Falkman, and M. Lebram, “Effects of visualiz-      [78] L. M. Padilla, S. H. Creem-Regehr, M. Hegarty, and J. K. Stefanucci,
     ing uncertainty on decision-making in a target identification scenario,”           “Decision making with visualizations: A cognitive framework across
     Comput. Graph., vol. 41, pp. 84–98, Jun. 2014. [Online]. Available:                disciplines,” Cogn. Res., Princ. Implic., vol. 3, no. 1, Dec. 2018, Art. no. 29.
     https://linkinghub.elsevier.com/retrieve/pii/S0097849314000302                     [Online]. Available: https://cognitiveresearchjournal.springeropen.com/
[62] S. S. Kirschenbaum, J. G. Trafton, C. D. Schunn, and S. B. Trickett, “Visu-        articles/10.1186/s41235--018-0120-9
     alizing uncertainty: The impact on performance,” Hum. Factors, J. Hum.        [79] R. W. Bailey, “Performance versus preference,” in Proc. Hum. Factors
     Factors Ergonom. Soc., vol. 56, no. 3, pp. 509–520, May 2014. [Online].            Ergonom. Soc. Annu. Meeting, 1993, pp. 282–286.
     Available: http://journals.sagepub.com/doi/10.1177/0018720813498093           [80] A. Burns, C. Lee, R. Chawla, E. Peck, and N. Mahyar, “Who do we mean
[63] R. E. Morss, J. L. Demuth, J. K. Lazo, K. Dickinson, H. Lazrus, and                when we talk about visualization novices?,” in Proc. 2023 ACM CHI Conf.
     B. H. Morrow, “Understanding public hurricane evacuation decisions                 Hum. Factors Comput. Syst., Hamburg Germany, 2023, pp. 1–16. [Online].
     and responses to forecast and warning messages*,” Weather Forecast-                Available: https://dl.acm.org/doi/10.1145/3544548.3581524
     ing, vol. 31, no. 2, pp. 395–417, Apr. 2016. [Online]. Available: https:      [81] A. Insabato, M. Pannunzi, E. T. Rolls, and G. Deco, “Confidence-
     //journals.ametsoc.org/doi/10.1175/WAF-D-15-0066.1                                 related decision making,” J. Neurophysiol., vol. 104, no. 1, pp. 539–547,
[64] J. K. Witt, Z. M. Labe, A. C. Warden, and B. A. Clegg, “Visualiz-                  Jul. 2010. [Online]. Available: https://www.physiology.org/doi/10.1152/
     ing uncertainty in hurricane forecasts with animated risk trajectories,”           jn.01068.2009
     Weather, Climate, Soc., vol. 15, no. 2, pp. 407–424, Apr. 2023. [Online].     [82] H. Griethe and H. Schumann, “The visualization of uncertain data: Meth-
     Available: https://journals.ametsoc.org/view/journals/wcas/15/2/WCAS-              ods and problems,” in Proc. Simul. Vis., SCS Publishing House, 2006,
     D-21-0173.1.xml                                                                    pp. 143–156.

<a id="page-018"></a>

## PDF page 18

<a id="p018-b001"></a>

<!-- p018-b001 -->
9404                                                     IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 10, OCTOBER 2025

<a id="p018-b002"></a>

<!-- p018-b002 -->
[83] G. Schmidt, S.-L. Chen, A. Bryden, M. Livingston, L. Rosenblum, and B.        [91] G. Gartlehner et al., “Single-reviewer abstract screening missed 13 percent
     Osborn, “Multidimensional visual representations for underwater environ-           of relevant studies: A crowd-based, randomized controlled trial,” J. Clin.
     mental uncertainty,” IEEE Comput. Graph. Appl., vol. 24, no. 5, pp. 56–65,         Epidemiol., vol. 121, pp. 20–28, May 2020. [Online]. Available: https:
     Sep./Oct. 2004. [Online]. Available: https://ieeexplore.ieee.org/document/         //linkinghub.elsevier.com/retrieve/pii/S0895435619309825
     1333628/
[84] J. D. Walker, B. H. Letcher, K. D. Rodgers, C. C. Muhlfeld, and V. S.
     D’Angelo, “An interactive data visualization framework for exploring
     geospatial environmental datasets and model predictions,” Water, vol. 12,                               Ryan Tennant received the BASc degree in biomed-
     no. 10, Oct. 2020, Art. no. 2928. [Online]. Available: https://www.mdpi.                                ical engineering and the MASc degree in systems
     com/2073-4441/12/10/2928                                                                                design engineering from the University of Waterloo,
[85] N. Naikar, A. Moylan, and B. Pearce, “Analysing activity in complex                                     Waterloo, Ontario, in 2019 and 2021, respectively.
     systems with cognitive work analysis: Concepts, guidelines and case study                               He is currently a research affiliate program student
     for control task analysis,” Theor. Issues Ergonom. Sci., vol. 7, no. 4,                                 with Defence Research and Development Canada’s
     pp. 371–394, Jul. 2006. [Online]. Available: http://www.tandfonline.com/                                Atlantic Research Centre. He is also working toward
     doi/abs/10.1080/14639220500098821                                                                       the PhD degree in systems design engineering with
[86] K. J. Vicente, “Ecological interface design: Supporting operator adapta-                                the University of Waterloo. His research interests in-
     tion, continuous learning, distributed, collaborative work,” in Proc. Hum.                              clude uncertainty-aware interface design and human-
     Centered Processes Conf., 1999, pp. 93–97.                                                              AI interaction in safety-critical contexts.
[87] K. J. Vicente, “Improving dynamic decision making in complex systems
     through ecological interface design: A research overview,” Syst. Dyn. Rev.,
     J. Syst. Dyn. Soc., vol. 12, no. 4, pp. 251–279, 1996.
[88] K. J. Vicente and J. Rasmussen, “Ecological interface design: Theoretical
     foundations,” IEEE Trans. Syst. Man Cybern., vol. 22, no. 4, pp. 589–606,                               Tania Randall received the BSc degree in mathemat-
     Jul./Aug. 1992.                                                                                         ics from Acadia University, Wolfville, Nova Scotia,
[89] S. Waffenschmidt, M. Knelangen, W. Sieben, S. Bühn, and D. Pieper,                                      in 1997, and the MSc degree in mathematics from
     “Single screening versus conventional double screening for study selection                              Dalhousie University, Halifax, Nova Scotia, in 1999.
     in systematic reviews: A methodological systematic review,” BMC Med.                                    She is also a certified usability analyst through Hu-
     Res. Methodol., vol. 19, no. 1, Dec. 2019, Art. no. 132. [Online].                                      man Factors International (2018). She is currently a
     Available: https://bmcmedresmethodol.biomedcentral.com/articles/10.                                     defence scientist with Defence Research and Devel-
     1186/s12874--019-0782-0                                                                                 opment Canada’s Atlantic Research Centre, where
[90] M. J. Page et al., “PRISMA 2020 explanation and elaboration: Updated                                    she focuses on human factors science. Her work helps
     guidance and exemplars for reporting systematic reviews,” BMJ, vol. 372,                                naval command teams address operational challenges
     Mar. 2021, Art. no. n160. [Online]. Available: https://www.bmj.com/                                     by developing and testing new software and team
     lookup/doi/10.1136/bmj.n160                                                                             processes.
