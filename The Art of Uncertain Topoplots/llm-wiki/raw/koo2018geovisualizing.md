---
id: "koo2018geovisualizing"
title: "Geovisualizing Attribute Uncertainty of Interval and Ratio Variables: A Framework and an Implementation for Vector Data"
source_file: "The Art of Uncertain Topoplots/papers/koo2018geovisualizing.pdf"
source_sha256: "b1199064405d3a331b60219053659033033977ab1e0267737828de90a40d78c4"
extraction_format: 1
---

# Geovisualizing Attribute Uncertainty of Interval and Ratio Variables: A Framework and an Implementation for Vector Data — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
Journal of Visual Languages and Computing 44 (2018) 89–96

<a id="p001-b002"></a>

<!-- p001-b002 -->
Contents lists available at ScienceDirect

<a id="p001-b003"></a>

<!-- p001-b003 -->
Journal of Visual Languages and Computing
                                                           journal homepage: www.elsevier.com/locate/jvlc

<a id="p001-b004"></a>

<!-- p001-b004 -->
View Points

<a id="p001-b005"></a>

<!-- p001-b005 -->
Geovisualizing attribute uncertainty of interval and ratio variables: A
framework and an implementation for vector data
Hyeongmo Koo a, Yongwan Chun a,∗, Daniel A. Griﬃth b
a
 School of Economic, Political and Policy Sciences, The University of Texas at Dallas, 800 West Campbell Road, Richardson, Texas 75080-3021, USA
b
 Ashbel Smith Professor, School of Economic, Political and Policy Sciences, The University of Texas at Dallas, 800 West Campbell Road, Richardson, Texas
75080-3021, USA

<a id="p001-b006"></a>

<!-- p001-b006 -->
a r t i c l e         i n f o                           a b s t r a c t

<a id="p001-b007"></a>

<!-- p001-b007 -->
Article history:                                        Geovisualization of attribute uncertainty helps users to recognize underlying processes of spatial data.
Received 31 August 2015                                 However, it still lacks an availability of uncertainty visualization tools in a standard GIS environment. This
Revised 20 January 2016
                                                        paper proposes a framework for attribute uncertainty visualization by extending bivariate mapping tech-
Accepted 29 November 2017
                                                        niques. Speciﬁcally, this framework utilizes two cartographic techniques, choropleth mapping and propor-
Available online 5 December 2017
                                                        tional symbol mapping based on the types of attributes. This framework is implemented as an extension
Keywords:                                               of ArcGIS in which three types of visualization tools are available: overlaid symbols on a choropleth map,
Uncertainty                                             coloring properties to a proportional symbol map, and composite symbols.
Geovisualization                                                                                                               © 2017 Elsevier Ltd. All rights reserved.
Bivariate mapping
GIS

<a id="p001-b008"></a>

<!-- p001-b008 -->
1. Introduction                                                                              [3]. For example, when a sample point is assigned to an incorrect
                                                                                             areal unit due to its locational error in an aggregation process [4],
   Spatial data inevitably contain uncertainty in representations of                         the location errors further contribute to the attribute uncertainty
their locations and attributes. The representation and measuring                             for an aggregated spatial unit.
of the world by a data model should have a discrepancy with the                                  Understanding data uncertainty is important and often neces-
real world because the processes of abstracting and generalizing                             sary in various research and practical activities [5]. Researchers
are inevitable attempts to express the real world in a discrete and                          consider uncertainty that affects data or a modeling process, such
ﬁnite data model [1]. The U.S. Federal Geographic Data Commit-                               as differences between measured or predicted values and actual
tee (FGDC) lists the following ﬁve fundamental components of data                            or true values. Decision makers usually contend with uncertainty
quality by adhering to recommendations of the Spatial Data Trans-                            based on how current conditions or policies affect the future re-
fer Standard (SDTS): lineage, positional accuracy, attribute accu-                           sults in their decision processes [6]. Visualization can provide
racy, logical consistency, and completeness [2]. Among these com-                            leverage for a data source to meet social and scientiﬁc needs [7].
ponents, location uncertainty, which refers to inaccurate locations                          But, a comprehensive visualization of uncertainty is diﬃcult, be-
of geographic features, often results from global positioning sys-                           cause it often requires multiple representations of data from dif-
tem (GPS) and geocoding errors. Because attributes describing non-                           ferent perspectives. Especially, uncertainty visualization commonly
locational characteristics of geographic features usually are esti-                          requires a simultaneous representation of data in terms of their
mated with samples, attribute uncertainty is caused by sampling                              corresponding attributes on a map. Furthermore, uncertainty visu-
errors as well as measurement errors. Furthermore, uncertainty in                            alization can become more complex and more diﬃcult to read and
spatial data can propagate through an aggregation of spatial units,                          interpret for map readers [8].
which frequently is necessary due to conﬁdentiality issues, data                                 Previous research has investigated visualization methods to ef-
management issues, computational issues, and representation con-                             fectively and eﬃciently represent spatial data uncertainty (e.g.,
cerns. Especially, when location and attribute uncertainties simul-                          [9–11]). However, uncertainty visualization is still not popular in
taneously occur for individual observations, this spatial aggregation                        a geographic information system (GIS) environment. One reason
process can further increase the level of uncertainty in spatial data                        is the unavailability of uncertainty information for attributes (e.g.,
                                                                                             decennial census), and, hence, the demand for uncertainty visual-
                                                                                             ization in common GIS software is not high, with several excep-
    ∗
     Corresponding author.                                                                   tions, such as [12,13]. The purpose of this paper is to propose a
     E-mail addresses: Hyeongmo.Koo@utdallas.edu (H. Koo), ywchun@utdallas.edu
                                                                                             framework for uncertainty visualization methods for vector data,
(Y. Chun), dagriﬃth@utdallas.edu (D.A. Griﬃth).

<a id="p001-b009"></a>

<!-- p001-b009 -->
https://doi.org/10.1016/j.jvlc.2017.11.007
1045-926X/© 2017 Elsevier Ltd. All rights reserved.

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
90                                                   H. Koo et al. / Journal of Visual Languages and Computing 44 (2018) 89–96

<a id="p002-b002"></a>

<!-- p002-b002 -->
Table 1                                                                                     with saturation to depict attribute and uncertainty using a bivari-
Investigations of visual variables for attribute uncertainty visualization.
                                                                                            ate mapping technique.
  Studies                                       Visual variables                                Transparency and fog also are viable candidates for representing
  MacEachren [3]                                Color saturation, crispness,                uncertainty information. The metaphor of fog has been proposed
                                                  transparency, and resolution              by Beard et al. [25], and an initial application of uncertainty visual-
  Goodchild et al. [16]                         Fog and Texture                             ization using transparency by MacEachren [3] was developed based
  Jiang et al. [17]                             Lightness, and saturation                   on the metaphor of fog. In this perspective, foggy elements, which
  Davis and Keller [18]                         Hue, color value, and texture
                                                                                            make identifying the level of attribute diﬃcult, indicate high un-
  Dreki [15]                                    Opacity
  Hengl [19]                                    Saturation and Lightness                    certainty [10]. Transparency, which also is called opacity, was pro-
  Xiao et al. [20]                              Textures                                    posed for integral symbolization. Drecki [15] asserts that elements
  Sun and Wong [11], Wong and                   Textures                                    with higher transparency (i.e., more opaque objects) are logically
     Sun [21]
                                                                                            considered as more certain things. MacEachren et al. [26] conﬁrm
  Kubíček and Šašinka [22]                     Lightness and saturation
  Slingsby et al. [23]                          Hue and lightness
                                                                                            through empirical tests that transparency is one of the feasible vi-
  Kaye et al. [24]                              Saturation                                  sual variables for uncertainty representation.
  Deitrick and Wentz [5]                        Saturation and size                             Texture has been popularly utilized when attribute uncertain-
                                                                                            ties are represented with classiﬁcations. Texture is useful for a bi-
                                                                                            nary classiﬁcation, but also can be used for ordered or numerical
and to prototype implementation of these methods in a standard                              data with spacing between hatching in texture symbols [3]. Good-
GIS environment. It focuses on attribute uncertainty visualization                          child et al. [16] also discuss that texture is a proper visual variable
of interval and ratio data. Speciﬁcally, the coloring properties for                        for uncertainty visualization, and can introduce visual noise as a
proportional symbols (CPPS) and composite symbol (CS) strategies                            metaphor for noisy data. MacEachren et al. [9] found that texture
can represent polygon, point, and line features, while the overlaid                         overlay symbols effectively represent the reliability of death rates,
symbols on a choropleth map (OSCM) strategy is restricted to only                           and Xiao et al. [20] illustrate the effect of attribute uncertainty on
polygon features. In this study, the proposed methods are illus-                            map classiﬁcation using texture. Recently, Sun and Wong [11] and
trated with census block group level variables for the city of Plano,                       Wong and Sun [21] also utilized texture overlay symbols to visual-
Texas using only polygon features.                                                          ize the quality of American Community Survey (ACS) data.
                                                                                                Statistical maps for uncertainty visualization are constructed in
                                                                                            a form of either adjacent display or bivariate mapping [3]. In ad-
2. Related work                                                                             jacent display, which also is called a map pair strategy, attribute
                                                                                            uncertainty is represented with an additional map accompanying
    Uncertainty visualization can be considered the same as the                             the corresponding attribute map (e.g., [8,27,28]). The bivariate ap-
display of any other information in conventional cartography [14].                          proach also has been popularly used for uncertainty visualization,
However, it often requires further attention because it needs to be                         because an attribute and its associated uncertainty information
used for a supplementary purpose to better understand its corre-                            may be considered to be a pair of variables. Previous studies con-
sponding attribute [3]. For example, uncertainty information com-                           clude that the bivariate approach is more effective than adjacent
monly is required to be presented with attribute information in                             display in terms of cluster detection [9,22,29]. A major advantage
uncertainty visualization. Technically, attribute uncertainty is de-                        of this approach is that readers do not need to switch their focus
picted with visual variables in cartographic representations. Hence                         back and forth between two maps to build connections between
investigations in the literature address how Bertin’s [7] graphic                           the estimates and their uncertainties [11].
variables can be logically matched to, and practically utilized for,
different uncertainty types. For example, empirical studies (e.g.,
[9,15]) investigate the effectiveness of speciﬁc visual variables, such                     3. A framework for uncertainty visualization based on
as color value, saturation, and opacity. MacEachren [3] discusses                           bivariate mapping
how size, color value, and grain (texture) are useful for depicting
uncertainty in numerical information, and how color hue, shape,                                 An attribute and its associated uncertainty generally are vi-
and orientation can be used for depicting uncertainty in nominal                            sualized using either an adjacent display or a bivariate mapping
information within the context of Bertin’s original graphic vari-                           method [3]. Adjacent display refers to uncertainty being visual-
ables. Table 1 summarizes previous studies with visual variables                            ized separately from its corresponding attribute, whereas bivari-
investigated for attribute uncertainty visualization.                                       ate mapping represents both data and uncertainty in a single map.
    Color components, including hue, color value (or lightness), and                        McGranaghan [14] argues that the complexity of symbols in a bi-
saturation, have been widely used to represent attribute uncertain-                         variate mapping is beyond a threshold indicting the amount of
ties among these visual variables. Goodchild et al. [16] and Davis                          information decoded at one time. However, uncertainty visualiza-
and Keller [18] suggest that hue, color value, and/or texture can be                        tion without interfering with the decoding ability of users has
used for depicting uncertainty. Also, MacEachren [3] argues that                            been investigated (e.g., [32,33]). Furthermore, studies [9,33] show
low uncertainty should be represented by pure hues, while high                              with empirical assessments that bivariate mapping also is more
attribute uncertainty should use a less saturated color (i.e., gray-                        effective than adjacent display. With such support, bivariate map-
ing out uncertainty features). Jiang et al. [17] suggest visualization                      ping for uncertainty visualization primarily has been discussed
techniques for fuzzy spatial analysis, where lightness and satura-                          and implemented as a visual tool in GIS. Implementation of bi-
tion are used to represent uncertainties. Hengl [19] uses a simi-                           variate mapping for uncertainty visualization can be supported by
lar method based on the hue, saturation, and intensity (HSV) color                          a framework for attribute uncertainty visualization. While previ-
model to depict uncertainty. These two methods rely on both sat-                            ous research, including [25,30,31], attempted to provide a com-
uration and value to increase whiteness based on the degree of                              prehensive framework for uncertainty visualization with consider-
uncertainty. Kubíček and Šašinka [22] conducted an intuitiveness                           ations of location and attribute uncertainty, research summarized
testing for Hengl’s method, and their empirical test conﬁrmed high                          in this paper focuses solely on attribute uncertainty visualization,
uncertainty should be visualized with higher whiteness. More re-                            and suggests a framework for geovisualization of attribute uncer-
cently, Deitrick and Wentz [5] merged a visual variable color value                         tainty based on the types of attribute and visual variables.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
H. Koo et al. / Journal of Visual Languages and Computing 44 (2018) 89–96                                  91

<a id="p003-b002"></a>

<!-- p003-b002 -->
Table 2                                                                                 symbols are the best in a binary classiﬁcation [3], but also can be
A framework for attribute uncertainty visualization based upon bivariate mapping.
                                                                                        employed for numerical variables using spacing between hatching
 Type of Attribute     Thematic mapping            Additional visual variable for       [11]. Symbol sizes also can be utilized for depicting uncertainty
                       techniques                  uncertainty representation           (e.g., [5]), although they can be confusing when appearing with
 Standardized data   Choropleth mapping             Spacing, sizes, height              attribute values [34]. Table 3 illustrates uncertainty mapping with
 Unstandardized data Proportional symbol maps       Saturation, color value, size       these three overlaid symbol maps.
                                                                                            Second, CPPS is implemented to represent uncertainty in a GIS
                                                                                        environment. A proportional symbol map is more appropriate to
    When uncertainty visualization based on bivariate mapping is                        represent raw counts or frequencies [34]. The graphical sizes of
implemented, two issues need to be cautiously decided. First, an                        symbols can be deﬁned by a mathematical scaling based on the
appropriate thematic mapping technique needs to be selected to                          minimum and maximum values of attributes. Attribute uncertainty
visualize a corresponding attribute considering both the nature of                      can be represented with color saturation and color value in the
the underlying phenomenon and the purpose of maps [34]. Choro-                          HSV color model of proportional symbols. Table 4 graphically il-
pleth and proportional symbol maps commonly are used to display                         lustrates this approach. The saturation and color value linearly de-
data collected for areal units, such as census tracts and counties.                     crease from those of an original color to its minimum value (for
A choropleth map is appropriate to display numerical values that                        which zero or a predeﬁned quantity can be used). Thus, in terms
are summarized based on polygon boundaries [35], and to focus on                        of saturation, an attribute value with a high level of certainty is
typical values for each individual unit [34]. Importantly, data stan-                   represented with pure hues, whereas those with low levels of cer-
dardization (e.g., population density) often is necessary in choro-                     tainty are visualized with less saturated colors (i.e., graying out un-
pleth mapping to adjust for varying sizes of areal units. In con-                       certainty features) [3]. With regard to color value, highly certain
trast to the choropleth map, a proportional symbol map is used                          attribute values are represented with pure hues, and, in contrast,
to represent raw counts or totals (e.g., number of people). A pro-                      highly uncertain attribute values are represented with low color
portional symbol map also can be complementary to a choropleth                          values (e.g., black) [17,18].
map. Hence, when attributes are visualized in a thematic map                                Standard errors, which measure a certain type of attribute
with uncertainty, different thematic mapping techniques should be                       uncertainty, enable visualizing a range of attribute values with
used, depending on the types of attributes.                                             a given degree of conﬁdence, based upon a speciﬁc probability
    Second, uncertainty visualization with a bivariate mapping ap-                      model. This conﬁdence interval can be depicted with an individ-
proach can be categorized into either a visually integral method                        ual symbol. Table 5 illustrates composite symbols in which both
or a visually separable method [9]. The visually integral method                        attribute values and such corresponding uncertainties are visual-
modiﬁes one visual variable to represent both attribute and uncer-                      ized. Conceptually, these composite symbols are constructed with
tainty. For example, color can be modiﬁed with hue and satura-                          three different proportional symbols overlaid for each individual
tion; hue usually represents an attribute, and saturation is suitable                   location. Two of these three proportional symbols represent un-
to represent uncertainty. The visually separable method adds an-                        certainty by visualizing the upper and lower limits of attribute
other visual variable to represent uncertainty. For instance, usually                   values at a given conﬁdence level. Accordingly, this range, which
hue and lightness of color are used to represent an attribute, and                      is represented by the thickness of the circle symbols in Table 5,
an additional visual variable, such as spacing between hatching in                      portrays a possible range of an attribute value. Corresponding at-
overlaid texture symbols, is combined to describe uncertainty. Re-                      tribute values appear in the range constructed by the upper and
searchers [9,36] comment that the visually separable method is                          lower bound lines (e.g., the center line in the circle symbols in
better than the visually integral method in terms of extracting in-                     Table 5). The sizes of three symbols can be proportionally deﬁned
formation. Thus, uncertainty should be represented by other visual                      with corresponding values. With bar chart symbols, ﬁrst and sec-
variables or symbols when bivariate mapping is employed for un-                         ond items on the top of the symbol represent the lower and up-
certainty visualization.                                                                per conﬁdence limits of an attribute value. The common boundary
    Table 2 presents a framework for uncertainty visualization us-                      of lower and upper conﬁdence areas represents an attribute value.
ing a bivariate mapping technique that is proposed based upon the                       These two approaches using a composite symbol allow users to di-
two preceding considerations. In this framework, standardized at-                       rectly compare uncertainties with corresponding attribute values
tributes are visualized with choropleth mapping, and their uncer-                       and their conﬁdence intervals. Moreover, with the circle composite
tainty is represented with overlaid symbols, such as texture and                        symbols, a thicker bound around the center line indicates a wider
bars. Because hue and lightness typically are utilized for portraying                   conﬁdence bound; in other words, a thick symbol indicates that
an attribute in a choropleth map, other variables, including spac-                      its standard error or attribute uncertainty is large. For a bar chart
ing, height, and size, can serve to effectively represent uncertainty.                  composite symbol, the level of uncertainty is represented by the
When a proportional symbol map is used for an unstandardized                            combined heights of the ﬁrst and second items.
attribute, visually separable variables (e.g., color value, saturation,                     The proposed methods have been developed as an extension
and size) can be used to display attribute uncertainty.                                 in ArcGIS 10.5 using C# on the Microsoft .NET Framework 4.5.1
                                                                                        This geovisualization extension of attribute uncertainty provides
4. An implementation of uncertainty visualization                                       three visualization functions: OSCM, coloring properties to a pro-
                                                                                        portional symbol map, and composite symbols. Fig. 1 portrays the
    Attribute uncertainty visualization based on bivariate mapping                      menu interface of the extension. Each function has its own graphic
is implemented in ArcGIS in accordance with the preceding frame-                        user interface (GUI), and the functions allow users to select ﬁelds
work. First, an OSCM method is implemented to visualize attribute                       for an attribute and its uncertainties with proper visual variables.
uncertainty. A choropleth map is suitable to represent attributes                       The GUIs are presented in the Appendix.
at the ratio scale, and the colors of the symbols (usually hue and
lightness) in the choropleth map are used to represent uncertainty
values. Additional overlaid symbols to visualize attribute uncer-
tainty include textures (spacing), circles (size), and bars (size). A
texture symbol is one of the most widely used visual variables to
represent uncertainty in previous results (e.g., [16,20,21]). Texture                     1
                                                                                              https://hdl.handle.net/10735.1/5609

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
92                                                   H. Koo et al. / Journal of Visual Languages and Computing 44 (2018) 89–96

<a id="p004-b002"></a>

<!-- p004-b002 -->
Table 3
                    Overlaid symbols for uncertainty for a choropleth map.

<a id="p004-b003"></a>

<!-- p004-b003 -->
Uncertainty (Low ↔ High)
                      Attribute
                                                Spacing                                    Size

<a id="p004-b004"></a>

<!-- p004-b004 -->
Choropleth map

<a id="p004-b005"></a>

<!-- p004-b005 -->
Table 4
                   Coloring properties for uncertainty on a proportional symbol map.

<a id="p004-b006"></a>

<!-- p004-b006 -->
Uncertainty (Low ↔ High)
                     Attribute
                                                     Saturation                                            Color value

<a id="p004-b007"></a>

<!-- p004-b007 -->
Size (proportional symbols)

<a id="p004-b008"></a>

<!-- p004-b008 -->
Table 5
                     Composite symbols for uncertainty visualization.

<a id="p004-b009"></a>

<!-- p004-b009 -->
Uncertainty (Low ↔ High)
                       Attribute
                                                              Size of circles                             Height of charts

<a id="p004-b010"></a>

<!-- p004-b010 -->
Size (proportional symbol or chart)

<a id="p004-b011"></a>

<!-- p004-b011 -->
Fig. 1. Menu interface of the attribute uncertainty geovisualization extension.

<a id="p004-b012"></a>

<!-- p004-b012 -->
5. An application

<a id="p004-b013"></a>

<!-- p004-b013 -->
The application presented in this section illustrates the im-
plemented methods in ArcGIS using the 5-year ACS data (2009–
2013). For the interval/ratio measurement scale, by deﬁnition the
standard error is the standard deviation based upon sampling er-
ror. This quantiﬁes the attribute uncertainty due to sampling [11].
These data include a margin of error (MOE) that is based upon
the standard error of the sampling distribution for an attribute
variable, as well as survey estimates. Because MOEs represent the
                                                                                                                             Fig. 2. Study area.
lower and upper bounds for a 90% conﬁdence level, the stan-
dard error of an estimate can be calculated directly from its MOE:
that is, MOE = 1.645 × standard error [37]. However, some studies
[11,38] discuss that a visual representation of absolute error mea-                         proportional or ratio values (e.g., percentage of Asians), which are
sures (e.g., the standard error of an estimate) may lead to an inap-                        bounded by a speciﬁc value range: i.e., between 0 and 1 for pro-
propriate conclusion and interpretation because large attribute val-                        portional values, and between 0 and 100 for percentages [29].
ues tend to have large standard errors. Furthermore, Francis et al.                            Two variables with their corresponding MOEs were obtained
[29] discuss the appropriateness of using relative measures of er-                          from the 5-year ACS data (2009–2013) at the census block group
rors, such as the coeﬃcient of variation (CV), for counts (e.g., the                        level for the city of Plano, Texas, which is located in the northeast-
total number of households and of occupied houses) and median                               ern part of the Dallas-Fort Worth metropolitan area (Fig. 2). Me-
or mean values (e.g., median age and mean household income).                                dian age was chosen to illustrate a choropleth map with overlaid
Nevertheless, an absolute measure of error is still appropriate for                         symbols, and ‘the number of housing units’ was chosen to illus-

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
H. Koo et al. / Journal of Visual Languages and Computing 44 (2018) 89–96                                              93

<a id="p005-b002"></a>

<!-- p005-b002 -->
Fig. 3. OSCM for 2013 median age and its coeﬃcient of variation by census block group in Plano, TX. (For interpretation of the references to color in this ﬁgure legend, the
reader is referred to the web version of this article.)

<a id="p005-b003"></a>

<!-- p005-b003 -->
trate proportional symbols with coloring properties and composite                        areal units have only a small number of lines because of large line
symbols. A relative measure of errors, the CV, is used to represent                      spacing separations. There is no general guide to determine the
attribute uncertainty for both variables.                                                largest spacing value, but each areal unit should be displayed with
                                                                                         at least two lines to utilize spacing for a texture symbol. Hence,
                                                                                         the largest spacing value should be judiciously chosen according
5.1. Overlaid symbols on a choropleth map (OSCM)
                                                                                         to sizes of areal units and their corresponding attribute uncertainty
                                                                                         levels. Second, the large size of overlaid circles or the tall height of
    Fig. 3 portrays visual representations of 2013 median age with
                                                                                         overlaid bars can partially cover color on a choropleth map, and
its CV at the census block group level for the city of Plano using
                                                                                         can cause problems in interpreting the distribution of estimates.
the OSCM method. Color symbols (speciﬁcally, hue and brightness)
                                                                                         The sizes of overlaid symbols may need to be restricted so that
of the choropleth map represent the estimated median ages. The
                                                                                         the underlying geographic distribution of estimates can be effec-
estimates are classiﬁed with four categories and the natural break
                                                                                         tively displayed. In most cases, attributes are still more important
algorithm. Attribute uncertainties are visualized with three differ-
                                                                                         than their accompanying uncertainties.
ent types of overlaid symbols; textures, bars, and circles. Spacing
between hatching in the texture overlay, heights of the bar sym-
bols, and circle sizes furnish a way to represent the degrees of                         5.2. Coloring properties on a proportional symbol map (CPPS)
the CV of median age estimates; thus small spacing in texture, tall
bars, and large circles describe a high level of uncertainty in esti-                        Fig. 4 visualizes the estimated numbers of housing units and
mated median age values. Because median age estimates and their                          their uncertainty at the census block group level in the city of
uncertainties are integrated into one display frame, map readers                         Plano. The sizes of the circle symbols represent the numbers of
need to concentrate on only one frame. Thus, users can easily                            housing unit estimates, and their uncertainties are portrayed with
build connections between the estimates and their corresponding                          saturation and color value in terms of the HSV color model. The
CV levels. In the median age estimate maps, census block groups                          census block groups with low saturation and color values repre-
in the southern part of the city have relatively higher median age                       sent high uncertainty for the number of housing unit estimates.
estimates. However, mapping only the estimates may not provide                           With a visually separable bivariate mapping technique adopted for
suﬃcient information with which map readers can easily recognize                         this visualization tool, the additional visual variables (saturation
the credibility of the differences across census block groups. Cen-                      and color value) are combined into proportional symbols. Hence,
sus block groups with relatively higher CV levels also are observed                      this map should help map readers to easily build linkages be-
in the southern part of the city, which indicates that the census                        tween estimates and their corresponding CVs, as MacEachren et al.
block groups in this region contain a higher level of uncertainty in                     [9] claim.
terms of their CV levels.                                                                    This map also has some disadvantages that stem from common
    However, these maps show some potential disadvantages of                             problems of proportional mapping. When the difference between
this visualization method. First, determining corresponding classes                      the maximum and minimum values is extremely large, the map
from texture overlay symbols is diﬃcult, especially when small                           pattern can be diﬃcult to read due to massive overlaps of sym-

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
94                                              H. Koo et al. / Journal of Visual Languages and Computing 44 (2018) 89–96

<a id="p006-b002"></a>

<!-- p006-b002 -->
Fig. 4. Coloring properties on proportional symbol maps for the 2013 number of housing units and its coeﬃcient of variation by census block group in Plano, TX. (For
interpretation of the references to color in this ﬁgure legend, the reader is referred to the web version of this article.)

<a id="p006-b003"></a>

<!-- p006-b003 -->
Fig. 5. Composite symbol maps for the 2013 number of housing units with 99 percent conﬁdence intervals by census block group in Plano, TX. (For interpretation of the
references to color in this ﬁgure legend, the reader is referred to the web version of this article.)

<a id="p006-b004"></a>

<!-- p006-b004 -->
bols [34]. Although the drawing order of the symbols is controlled                     in Figure 6 is identical to the one in the map displayed with CPPS
with regard to the symbol size range (i.e., the largest symbol to                      in Fig. 5. Although a relative comparison is only possible in the
the smallest symbol) in order to prevent small symbols from being                      map using CPPS, this composite symbol map allows map readers
concealed by larger symbols, the minimum symbol size needs to                          to compare actual differences of estimates for a given conﬁdence
be selected carefully in order to achieve communicative and visual                     level, based on the sizes of the symbols.
effectiveness of a map. In addition, the legend for such maps may                          Composite symbol maps are particularly useful for simultane-
become complicated. Such a legend has two legend groups. Each                          ously identifying uncertainty information in speciﬁc locations and
of them shows, respectively, the distribution of estimates and un-                     general spatial patterns of an attribute. When a spatial pattern of
certainties (CVs) with their own minimum and maximum values.                           an attribute is emphasized, an increase in symbol sizes can en-
But, because the CVs show only relative uncertainty for estimates,                     hance the spatial pattern. When a user focuses on local data explo-
the legend does not necessarily clarify actual differences between                     ration, symbols can be adjusted accordingly. The implemented tool
estimates.                                                                             furnishes an easy way to change symbols as well as exploration
                                                                                       functions, including zoom in/out. However, a composite symbol
5.3. Composite symbols (CS)                                                            map has several potential issues that originate with proportional
                                                                                       symbol mapping. These include an excessive number of overlaps
   Fig. 5 portrays composite symbol maps for the number of hous-                       and legibility of small size symbols [34]. Distinguishing the border
ing unit estimates with 99 percent conﬁdence intervals based on a                      between the estimate and conﬁdence bounds is diﬃcult especially
normal distribution assumption. In the top map, the center lines in                    when symbol size is small and/or uncertainty is relatively small
the proportional symbols represent the estimates, and the bounds                       for a corresponding estimate. Also the level of legibility can vary
around the center lines portray corresponding conﬁdence intervals.                     depending on a user’s familiarity with symbols used.
A thick bound indicates high uncertainty of an attribute value. For
the bar chart symbol map, the two areas on the top of stacked bars                     6. Summary and conclusions
respectively represent the upper and lower bounds of the attribute
values. The common boundary between the ﬁrst and second items                             Geovisualization of spatial data can be enhanced by providing a
on the top of a symbol in the symbols represents attribute val-                        visual representation of their attribute uncertainty, which in turn
ues. That is, the number of housing unit estimates is represented                      can assist users to more easily recognize an underlying pattern
by the combined height of the second and third items. The level of                     of data. However, it still lacks such tools in a GIS environment,
uncertainty is represented by the combined heights of the ﬁrst and                     and a general framework for uncertainty visualization. This pa-
second items. The variable used in the composite symbols method                        per proposes a framework for attribute uncertainty visualization

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
H. Koo et al. / Journal of Visual Languages and Computing 44 (2018) 89–96                                                  95

<a id="p007-b002"></a>

<!-- p007-b002 -->
based on bivariate mapping techniques, and provides such tools                    visualization. Symbol sizes are determined with mathematical scal-
implemented in the ArcGIS environment. This framework princi-                     ing based on a minimum symbol size, which a user should provide.
pally utilizes choropleth maps and proportional symbol maps for                   Uncertainty is symbolized with two different visual variables, color
thematic mapping of attributes based on the following types of                    saturation and color value in the hue-saturation-value (HSV) color
variables: count and ratio estimates. This implementation contains                model, which are listed in a combo box. The saturation or color
three types of visualization functionalities: overlaid symbols on                 value is linearly calculated from that of a selected color to a cho-
a choropleth map, coloring properties for a proportional symbol                   sen minimum level.
map, and composite symbols. Many of the visual variables that
have been investigated in the literature are available to provide
ﬂexibility to enhance communication and visualization effective-
ness.
    In this paper, the visualization tools were examined with a sin-
gle dataset comprising 84 areal units. In addition, these visualiza-
tion methods may need to be ﬁne-tuned for speciﬁc datasets. For
example, when a proportional symbol map is used, a large propor-
tion of symbols can overlap with each other, and, for another ex-
ample, texture symbols with hatchings in a choropleth map may
not be easily recognized for small areal units. In these circum-
stances, minimum and/or maximum symbol sizes need to be care-
fully set. Similarly, the maximum spacing between hatch lines also
needs to be wisely set. Although a composite symbol map allow
map readers to directly compare differences between estimates
and their uncertainties, small differences still are diﬃcult to iden-
tify. Furthermore, a focused group survey conducted as future re-
search would be useful to evaluate the effectiveness of the imple-
mented tools with various geographical scales and resolutions.                    A3. GUI for composite symbols (CS)

<a id="p007-b003"></a>

<!-- p007-b003 -->
Acknowledgement                                                                      The ﬁrst section is the same as the one for the other GUIs. An
                                                                                  uncertainty ﬁeld needs to contain standard errors. With the sec-
   This research was supported by the National Institutes of                      ond section, different composite symbols can be chosen with tab
Health, grant 1R01HD076020-01A1; any opinions, ﬁndings, and                       pages; i.e., a circle or a bar. A conﬁdence level should be speciﬁed
conclusions or recommendations expressed in this material are                     to determine a symbol’s size of conﬁdence interval.
those of the authors, and do not necessarily reﬂect the views of
the National Institutes of Health.

<a id="p007-b004"></a>

<!-- p007-b004 -->
Appendix

<a id="p007-b005"></a>

<!-- p007-b005 -->
A1. GUI for overlaid symbols on a choropleth map (OSCM)

<a id="p007-b006"></a>

<!-- p007-b006 -->
The graphical user interface (GUI) has three major sections. The
ﬁrst section is to specify a target layer, an attribute ﬁeld, and a cor-
responding uncertainty ﬁeld in the target layer. This part is identi-
cal in the GUIs for CPPS and CS. The second section is to conﬁgure
an output choropleth map: that is, the number of classes and sym-
bols. Note that the color ramp is automatically created with a start
and an end color. In the third section, a user can choose a type of
overlaid symbol with corresponding tab pages, each of which has
its own options for uncertainty symbolization.
                                                                                  References

<a id="p007-b007"></a>

<!-- p007-b007 -->
[1] N.R. Chrisman, The error component in spatial data, in: D.J. Maguire,
                                                                                       M.F. Goodchild, D.W. Rhind (Eds.), Geographical Information Systems: Prin-
                                                                                       ciples and Applications, 1, Longman Scientiﬁc and Technical, Harlow, 1991,
                                                                                       pp. 165–174.
                                                                                   [2] American National Standards Institute (ANSI). Spatial Data Transfer Standard
                                                                                       (SDTS)—Part 1: Logical Speciﬁcations. ANSI; Washington, DC.
                                                                                   [3] A.M. MacEachren, Visualizing uncertain information, Cartogr. Perspect. 13
                                                                                       (1992) 10–19.
                                                                                   [4] G. Hay, K. Kypri, P. Whigham, J. Langley, Potential biases due to geocoding er-
                                                                                       ror in spatial analyses of oﬃcial data, Health Place 15 (2009) 562–567.
                                                                                   [5] S. Deitrick, E.A. Wentz, Developing implicit uncertainty visualization methods
                                                                                       motivated by theories in decision science, Ann. Assoc. Am. Geogr. 105 (2015)
                                                                                       531–551.
                                                                                   [6] R.H. Erskine, T.R. Green, J.A. Ramirez, L.H. MacDonald, Comparison of
                                                                                       grid-based algorithms for computing upslope contributing area, Water Resour.
                                                                                       Res. 42 (2006) 1–9.
                                                                                   [7] J. Bertin, Semiology of Graphics: Diagrams, Networks, Maps, University of Wis-
A2. GUI for coloring properties to proportional symbols (CPPS)                         consin press, Madison, 1983.
                                                                                   [8] M. Leitner, B.P. Buttenﬁeld, Guidelines for the display of attribute certainty,
                                                                                       Cartogr. Geog. Inf. Sci. 27 (20 0 0) 3–14.
   The ﬁrst section is the same as the one in the GUI for OSCM.                    [9] A.M. MacEachren, C.A. Brewer, L.W. Pickle, Visualizing georeferenced data: rep-
The second section is to specify attributes and their uncertainty                      resenting reliability of health statistics, Environ. Plann. A 30 (1998) 1547–1561.

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
96                                                   H. Koo et al. / Journal of Visual Languages and Computing 44 (2018) 89–96

<a id="p008-b002"></a>

<!-- p008-b002 -->
[10] A.M. MacEachren, A. Robinson, S. Hopper, S. Gardner, R. Murray, M. Gahegan,            [25] M.K. Beard, I. Leader, B.P. Buttenﬁeld, S.B. Clapham, NCGIA Research Initiative
     E. Hetzler, Visualizing geospatial information uncertainty: what we know and                7: Visualization of Spatial Data Quality, National Center for Geographic Infor-
     what we need to know, Cartogr. Geog. Inf. Sci. 32 (2005) 139–160.                           mation and Analysis, Santa Barbara, CA, 1991 Technical Report 91-26.
[11] M. Sun, D.W.S. Wong, Incorporating data quality information in mapping                 [26] A.M. MacEachren, R.E. Roth, J. O’Brien, B. Li, D. Swingley, M. Gahegan, Visual
     American Community Survey data, Cartogr. Geog. Inf. Sci. 37 (2010) 285–299.                 semiotics & uncertainty visualization: an empirical study, IEEE Trans. Visual-
[12] G.B.M. Heuvelink, J.D. Brown, E.E. van Loon, A probabilistic framework for rep-             ization Comput. Graphics 18 (2012) 2496–2505.
     resenting and simulating uncertain environmental variables, Int. J. Geog. Inf.         [27] A.M. MacEachren, Accuracy of thematic maps/implications of choropleth sym-
     Sci. 21 (2007) 497–513.                                                                     bolization, Cartogr. 22 (1985) 38–58.
[13] E.J. Pebesma, K. de Jong, D. Briggs, Interactive visualization of uncertain spatial    [28] J.C.J.H. Aerts, K.C. Clarke, A.D. Keuper, Testing popular visualization techniques
     and spatio-temporal data under different scenarios: an air quality example, Int.            for representing model uncertainty, Cartogr. Geogr. Inf. Sci. 30 (2003) 249–261.
     J. Geog. Inf. Sci. 21 (2007) 515–527.                                                  [29] J. Francis, N. Tontisirin, S. Anantsuksomsri, J. Vink, V. Zhong, Alternative strate-
[14] M. McGranaghan, A cartographic view of spatial data quality, Cartographica 30               gies for mapping ACS estimates and error of estimation, in: M.N. Hoque,
     (1993) 8–19.                                                                                L.B. Potter (Eds.), Emerging Techniques in Applied Demography, Springer
[15] I. Drecki, Visualisation of uncertainty in geographical data, in: W. Shi, P. Fisher,        Netherlands, 2015, pp. 247–273.
     M. Goodchild (Eds.), Spatial Data Quality, Taylor & Francis, London, 2002,             [30] M. Gahegan, M. Ehlers, A framework for the modelling of uncertainty between
     pp. 140–159.                                                                                remote sensing and geographic information systems, ISPRS J. Photogramm. Re-
[16] M.F. Goodchild, B.P. Buttenﬁeld, J. Wood, Introduction to visualizing data valid-           mote Sens. 55 (20 0 0) 176–188.
     ity, in: H.M. Hearnshaw, D.J. Unwin (Eds.), Visualization in Geographical Infor-       [31] J. Thomson, B. Hetzler, A. Maceachren, M. Gahegan, M. Pavel, Typology for vi-
     mation Systems, John Wiley & Sons, New York, 1994, pp. 141–149.                             sualizing uncertainty, in: Proceedings of Conference on Visualization and Data
[17] B. Jiang, F. Ormeling, W. Kainz, Visualization support for fuzzy spatial anal-              Analysis 2005 (part of the IS&T/SPIE Symposium on Electronic Imaging 2005),
     ysis, in: ACSM/ASPRS Annual Convention and Exposition Technical Papers,                     San Jose, California, 2005.
     ACSM&ASPRS, Bethesda, MD, 1995, pp. 291–300.                                           [32] A.M. MacEachren, How Maps Work: Representation, Visualization, and Design,
[18] T.J. Davis, C.P. Keller, Modelling and visualizing multiple spatial uncertainties,          Guilford Press, New York, 1995.
     Comput. Geosci. 23 (1997) 397–408.                                                     [33] L. Edwards, E. Nelson, Visualizing data certainty: a case study using graduated
[19] T. Hengl, Visualisation of uncertainty using the HSI colour model : computa-                circle maps, Cartographic Perspectives 38 (2001) 19–36.
     tions with colours, in: Proceedings of the 7th International Conference on Geo-        [34] T.A. Slocum, R.B. McMaster, F.C. Kessler, H.H. Howard, Thematic Cartography
     Computation, Southampton, United Kingdom, 2003.                                             and Geovisualization, third ed., Prentice Hall, Upper Saddle River, New Jersey,
[20] N. Xiao, C.A. Calder, M.P. Armstrong, Assessing the effect of attribute uncer-              2009.
     tainty on the robustness of choropleth map classiﬁcation, Int. J. Geog. Inf. Sci.      [35] A.M. MacEachren, D. DiBiase, Animated maps of aggregate data: conceptual
     21 (2007) 121–144.                                                                          and practical problems, Cartogr. Geogr. Inf. Syst. 18 (1991) 221–229.
[21] D.W. Wong, M. Sun, Handling data quality information of survey data in GIS: a          [36] T.A. Slocum, D.C. Cliburn, J.J. Feddema, J.R. Miller, Evaluating the usability of a
     case of using the American community survey data, Spatial Demogr. 1 (2013)                  tool for visualizing the uncertainty of the future global water balance, Cartogr.
     3–16..                                                                                      Geogr. Inf. Sci. 30 (2003) 299–317.
[22] P. Kubíček, C. Šašinka, Thematic uncertainty visualization usability - compari-       [37] U.S. Census Bureau, A Compass for Understanding and Using American Com-
     son of basic methods, Ann. GIS 17 (2011) 253–263.                                           munity Survey Data: What Researchers Need to Know, U.S. Goverment Printing
[23] A. Slingsby, J. Dykes, J. Wood, Exploring geodemographics with interactive                  Oﬃce, Washington, DC, 2009.
     graphics, IEEE Trans. Visualization Comput. Graphics 17 (2011) 2545–2554.              [38] X.R. Li, Z. Zhao, Relative error measures for evaluation of estimation algo-
[24] N.R. Kaye, A. Hartley, D. Hemming, Mapping the climate: guidance on ap-                     rithms, in: 2005 7th International Conference on Information Fusion, FUSION,
     propriate techniques to map climate variables and their uncertainty, Geosci.                1, 2005, pp. 211–218.
     Model Dev. 5 (2012) 245–256.
