---
id: "teuling2011bivariate"
title: "Bivariate Colour Maps for Visualizing Climate Data"
source_file: "The Art of Uncertain Topoplots/papers/teuling2011bivariate.pdf"
source_sha256: "309baa956f38ee87ab006d0635efaefa0ede726c6931c019b80756feadbde9be"
extraction_format: 1
---

# Bivariate Colour Maps for Visualizing Climate Data — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
INTERNATIONAL JOURNAL OF CLIMATOLOGY
Int. J. Climatol. 31: 1408–1412 (2011)
Published online 30 April 2010 in Wiley Online Library
(wileyonlinelibrary.com) DOI: 10.1002/joc.2153

<a id="p001-b002"></a>

<!-- p001-b002 -->
Short Communication
             Bivariate colour maps for visualizing climate data
                                 A. J. Teuling,a,b * R. Stöcklic and S. I. Seneviratnea
                               a Institute for Atmospheric and Climate Science, ETH Zurich, Zurich, Switzerland
                 b Hydrology and Quantitative Water Management Group, Wageningen University, Wageningen, The Netherlands
                                                      c MeteoSwiss, Zurich, Switzerland

<a id="p001-b003"></a>

<!-- p001-b003 -->
ABSTRACT: The increasing availability of gridded, high-resolution, multivariate climatological data sets calls for
     innovative approaches to visualize inter-variable relations. In this study, we present a methodology, based on properties
     of common colour schemes, to plot two variables in a single colour map by using a two-dimensional colour legend for
     both sequential and diverging data. This is especially suited for climate data as the spatial distribution of the relation
     between different variables is often as important as the distribution of variables individually. Two example applications are
     given to illustrate the use of the method: one that shows the global distribution of climate based on observed temperature
     and relative humidity, and the other showing the distribution of recent changes in observed temperature and precipitation
     over Europe. A flexible and easy-to-implement method is provided to construct different colour legends for sequential and
     diverging data. Copyright  2010 Royal Meteorological Society

<a id="p001-b004"></a>

<!-- p001-b004 -->
KEY WORDS    mapping; climate zones; climate change
     Received 11 August 2009; Revised 27 November 2009; Accepted 19 March 2010

<a id="p001-b005"></a>

<!-- p001-b005 -->
1.    Introduction                                                      of variables rather than a single variable. For three
The increasing availability of gridded, multivariate, cli-              degrees of freedom, this requires some way of displaying
matological data sets calls for new methodologies to                    the legend in more than two dimensions. Triangular
visualize and explore the relationships between different               colour maps were used previously by Nemani et al.
                                                                        (2003, Figure 1A) and Albani et al. (2006, Figure 6).
variables. These relationships are often difficult to detect
                                                                        The triangular legend, however, has two rather than three
when the variables are plotted separately. One particular
                                                                        degrees of freedom (i.e. the position along two axis
solution to reduce the dimensionality of the visualization
                                                                        of the triangle determines the third), which limits its
was proposed by Taylor (2001), who showed that all com-
                                                                        applicability to variables that always sum up to same
ponents of the spatial covariance between two variables
                                                                        number.
(i.e. their variances and correlation) can be summarized
                                                                           In this study, we propose a method that uses a purely
in a single radial diagram. This type of diagram is espe-
                                                                        two-dimensional (2-D) colour mapping. Its main advan-
cially suited when a suite of different models is evaluated
                                                                        tage over other visualization methods is that the distribu-
against observations. The spatial structure of the under-
                                                                        tion of any two variables, along with their covariance, can
lying data, however, is not considered. Other solutions
                                                                        be condensed in a single map without loss of informa-
for visualization can be found by making use of some of
                                                                        tion and in a way that is easy to interpret (Olsen, 1981).
the properties of common colour schemes.
                                                                        This is illustrated in Figure 1. This method is especially
   A colour model is a mathematical description of how
                                                                        suited to map two variables that are physically linked, but
a colour is constructed from its components. Most colour
                                                                        for which their correlation varies regionally. To our best
models have two or more components (or degrees of
                                                                        knowledge, such a plot was first used for climate analy-
freedom), for instance, the amount of red, green and
                                                                        sis by Teuling et al. (2009, Figure 1). In this study, we
blue (RGB model) or the hue, saturation and brightness
                                                                        present more objective and general methods to construct
value (HSV model). Changing any of the components
                                                                        the colour legend than that used by Teuling et al. (2009)
(with some exceptions) results in a different and unique
                                                                        and provide extended examples for both sequential and
colour. In theory, these degrees of freedom can be utilized
                                                                        diverging data.
to map an equal number of variables to colour, so that
all colours on the map correspond to a combination
                                                                        2.   1-D and 2-D colour legends
* Correspondence to: A. J. Teuling, Institute for Atmospheric and
Climate Science, CHN N 16.2, Universitätstrasse 16, 8092 Zürich,      Three main classes of colour legends for thematic maps
Switzerland. E-mail: ryan.teuling@wur.nl                                can be distinguished: sequential, diverging and qualitative

<a id="p001-b006"></a>

<!-- p001-b006 -->
Copyright  2010 Royal Meteorological Society

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
BIVARIATE COLOUR MAPS                                                      1409

<a id="p002-b002"></a>

<!-- p002-b002 -->
X2                                    colour legend. It changes the origin colour to white,
                       1                          n                       while keeping the original colours in the corners. The
                                                                          method preserves uniqueness in colours and allows (for
                                                               1
                                                                          sequential data) for an increase in luminance gradient to
          1                                                    n          capture information about form (spatial distribution) and
                                                                          value as effectively as possible (Ware, 1988). A draw-
                 Z = f(X1,X2)
                                                                          back is that at maximum, only one primary colour (i.e.
                                                           Z              red, green or blue) can be produced due to additional
     X1                             X2
                                                                          mixing of non-zero components (a result from the con-
                       1 n+1
                                                                          straint of linear surfaces). Also, although our maps can be
                       2   ↓
                       ↓
                                                                          used safely on most media, more sophisticated methods
          n
                                Z                                         would be needed to preserve contrasts and uniqueness
                  X1                                                      of colour across all platforms and media (Robertson and
                                                                          O’Callaghan, 1986).
                                                                             For compatibility with common plotting routines, a
                                                               n2
                                                  ↓                       1-D colour legend can be constructed that links a single
                       n                         n2                       plotting variable Z = 1, 2, 3, . . . , n × n (where n is the
                                                                          number of rows or columns in the 2-D colour legend) to
Figure 1. The principle of bivariate colour legends. Two regular          the two physical variables X1 and X2 . This is illustrated
variables X1 and X2 , which are normally plotted separately using two
separate colour legends with resolution n, are combined into a single
                                                                          in Figure 1. Note that the spatial field of the plotting
plotting variable Z to display both variables simultaneously using a      variable Z itself is non-continuous, and that continuity is
single 2-D colour legend. In addition, the colours on the map reflect     apparent only in the colour distribution. As a result, no
the covariance structure between X1 and X2 (illustrated by grey lines     contouring algorithms can be used on Z, but only on X1
for hypothetical data) and not just their marginal distributions. For     and/or X2 .
compatibility with regular plotting routines, a new 1-D colour legend
of size n2 can be distilled for the plotting variable Z. This figure is
    available in colour online at wileyonlinelibrary.com/journal/joc
                                                                          3.   Example applications
(Brewer et al., 2003). In this study, we focus on the first               3.1. Global climate distribution
two classes. Sequential data differs from diverging data                  An example of a sequential bivariate colour map is given
in that it is insensitive to any offset (e.g. temperature). In            in Figure 2, where the concurrent global distribution of
contrast, diverging data diverges from a reference level                  temperature (T ) and relative humidity (RH) is shown.
(often zero), e.g. anomalies, trends, errors or correlations.             The data are gridded observations (10 spatial resolu-
Sequential data are best plotted using a limited number                   tion) for the period 1961–1990 compiled by the Climate
of hues and/or a constant gradient in luminance, whereas                  Research Unit (New et al., 2002, Mitchell and Jones,
diverging data are best plotted with contrasting hues                     2005). Temperature and relative humidity are appropri-
and decreasing luminance on both sides of the origin.                     ate variables for bivariate mapping, as they have a clear
Here, luminance refers to ‘whiteness’ that results from a                 physical link and their correlation changes regionally (i.e.
particular combination of RGB components.                                 on a global scale both hot and dry, and hot and humid
   We considered several aspects in the construction of                   regions occur). Note that whereas traditionally tempera-
the 2-D colour legends. Firstly, the method should create                 ture and precipitation are used for the primary delineating
uniform gradients in both hue and luminance to avoid                      climate zones (as in the Köppen–Geiger classification;
the suggestion of non-physical gradients in the data.                     Peel et al., 2007), the distribution of relative humidity
Secondly, the legend should contain multiple contrasting                  will generally follow that of precipitation.
hues to make optimum use of the available colour                             Figure 2 illustrates well the strong variations in the
space. Thirdly, the method should be independent of                       relationship between temperature and humidity. Firstly,
the resolution of the legend for maximum flexibility.                     (dark) magenta regions indicate hot and humid regions.
In general, colour legends with high dimensionality are                   These occur in Amazonia, Central Africa and Southeast
more suited for qualitative representation, whereas maps                  Asia. Orange regions are characterized by high aver-
with a limited dimension of the colour table are more                     age temperatures but low humidity. This combination
easily interpreted quantitatively (Brewer et al., 2003). In               is typical for subtropical deserts and occurs in the cen-
Section 3, we will provide examples of both. Finally, a                   tral Sahara, the Northern Arabian Peninsula, Australia,
similar procedure for the diverging and sequential legends                the Kalahari and the Sonoran Desert in North America.
would ease both implementation and interpretation.                        Blue colours indicate humid and cooler climate zones,
   Our method represents the individual components of                     whereas darker colours (e.g. Central Europe) indicate
the RGB model by linear surfaces in the considered                        higher temperatures than that indicated by light blue (e.g.
domain of the bivariate space (see Appendix A). A                         Greenland). Finally, the combination of cool temperatures
‘whitening kernel” (illustrated in Figure 4(c)) as a func-                and moderate to low humidity is rare, and occurs only
tion of distance to the origin is applied to the sequential               in and around the main mountain ranges (e.g. Tibetan

<a id="p002-b003"></a>

<!-- p002-b003 -->
Copyright  2010 Royal Meteorological Society                                                       Int. J. Climatol. 31: 1408–1412 (2011)

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
1410                                                          A. J. TEULING et al.

<a id="p003-b002"></a>

<!-- p003-b002 -->
Figure 2. Distribution of the world’s climate zones based on observed average near-surface temperature (T ) and relative humidity (RH) for the
period 1961–1990. The map was plotted using the equal-area Briesemeister projection to minimize distortion both around the North Pole and the
Equator (note that no data is available for Antarctica). The inset shows the bivariate frequency distribution and limits of the colour legend. The
distribution is based on the original data set and is not corrected for area. Parameters used for plotting are n = 16 and a = 0.72. Source: Climate
 Research Unit (CRU) high-resolution climate data (version 2.1). This figure is available in colour online at wileyonlinelibrary.com/journal/joc

<a id="p003-b003"></a>

<!-- p003-b003 -->
Plateau and Andes). Note that because humidity and tem-                    (Seneviratne et al., 2006). This behaviour makes temper-
perature are the two main determinants of climate, the                     ature and precipitation trends suitable for plotting on a
resulting continuous bivariate map matches the distribu-                   bivariate colour map.
tion of discrete climate zones derived from more complex                      In Figure 3, white indicates areas where no change
classifications (Peel et al., 2007).                                       in either precipitation or temperature has been observed.
   The distribution of climate zones is non-uniform (see                   Magenta indicates regions where both precipitation and
bivariate frequency distribution, inset Figure 2) and has                  temperature show an increasing trend, and orange indi-
distinct peaks at extreme combinations of T and RH. The                    cates regions where an increase in temperature is accom-
bivariate distribution is also a practical tool to determine               panied by a decrease in precipitation. Yellow and red
the appropriate plotting limits. Choosing too wide limits                  regions are dominated by a decrease in precipitation
reduces the colour contrast in the map, whereas too                        and an increase in temperature, respectively. In winter
narrow limits remove the contrast in the extreme regions.                  (December–February), there is a strong north–south gra-
In this study, the limits were chosen such that most                       dient in the climate trends (Figure 3(a)). Large positive
colours occur in the map, while at the same time the                       winter temperature trends in Scandinavia are accompa-
size of the regions without contrast (i.e. Sahara and                      nied by large positive trends in precipitation, while at the
Amazonia) is limited.                                                      same time the Mediterranean shows little warming but a
                                                                           large decrease in precipitation. The Baltic area shows a
3.2.   Recent climate change in Europe                                     strong winter warming but a decrease in precipitation.
An illustration of the use of a bivariate diverging colour                    In spring (March–May; Figure 3(b)), an east–west
scheme is given in Figure 3. Here, we show the observed                    gradient in the trends exists. West Europe experienced
trends in near-surface climate for Europe over the past                    a warming, with increasing drying towards the Mediter-
30 years (1979–2008) based on data from the European                       ranean, whereas most change in Eastern Europe is
Climate Assessment & Dataset (Haylock et al., 2008).                       in precipitation rather than in temperature. In sum-
When trends in temperature (T ) and precipitation (P )                     mer (June–August; Figure 3(c)), most of Europe has
are considered on an annual timescale, the distribution                    warmed considerably. A similar strong drying trend as
across Europe is fairly homogeneous (not shown). How-                      that observed for spring is found along the Mediter-
ever, when the trends are considered for each season                       ranean, whereas in Central Europe summer precipita-
separately, considerable regional variability in the dis-                  tion has slightly increased. The warming and drying are
tribution and even in the sign of the trends becomes                       less pronounced during autumn (September–November;
apparent. Temperature and precipitation trends can be                      Figure 3(d)), when temperature trends around the
linked through different processes, i.e. they might both                   Mediterranean are small and precipitation shows an
be caused by changes in circulation or SST, or decreas-                    increase in parts of the Iberian Peninsula and the Balkan
ing precipitation might induce higher temperatures due                     region. Only Scandinavia shows a warming trend in
to reduced evaporation in water-limited environments                       autumn.

<a id="p003-b004"></a>

<!-- p003-b004 -->
Copyright  2010 Royal Meteorological Society                                                             Int. J. Climatol. 31: 1408–1412 (2011)

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
BIVARIATE COLOUR MAPS                                                                   1411

<a id="p004-b002"></a>

<!-- p004-b002 -->
(a) DJF                                                                                                                            (b) MAM
                                                                       +1.25

<a id="p004-b003"></a>

<!-- p004-b003 -->
−1.25
                                                                               −15      +15

<a id="p004-b004"></a>

<!-- p004-b004 -->
∆T [°C dec−1]
                                                                       +0.75
                                                                       +0.25
                                                                       −0.25
     (c) JJA                                                           −0.75                                                            (d) SON
                                                                               −9 −3 +3 +9
                                                                               ∆P [% dec−1]

<a id="p004-b005"></a>

<!-- p004-b005 -->
Figure 3. Recent trends in Europe’s climate as diagnosed by observed temperature (T ) and precipitation (P ) over the 30-year period 1979–2008.
Trends are determined for each season separately using linear regression of season mean values. Inset shows the seasonal trends for two points

<a id="p004-b006"></a>

<!-- p004-b006 -->
°
in Scandinavia ( ) and on the Iberian Peninsula ( ). Colours along the southern and eastern boundaries might be affected by interpolation.
Parameters used for plotting are n = 5 and a = 0.37. Source: E-OBS data set from the ENSEMBLES project provided by the European Climate
              Assessment & Dataset (version 2.0). This figure is available in colour online at wileyonlinelibrary.com/journal/joc

<a id="p004-b007"></a>

<!-- p004-b007 -->
4.   Discussion                                                                       Appendix A

<a id="p004-b008"></a>

<!-- p004-b008 -->
The method presented in this study allows for plotting of                             A1.     Construction of 2-D color legend
two variables on one map without loss of information.                                 We construct sequential colour legends by linear interpo-
Its main advantage is that it condenses data of several                               lation of the individual components of the RGB colour
plots into one by using colour, thus allowing for direct                              model (Figure 4). The surfaces are chosen such that in
and intuitive evaluation of relationships between vari-                               three of the corners, each of the colour components has
ables in relation to their geographical distribution. The                             its maximum intensity (1), whereas in the opposite cor-
method works both for sequential and diverging map                                    ner the intensity is zero (Figure 4(a) and (b)). As a result,
data.                                                                                 the colour in the centre of the colour legend is always
   Inevitably, bivariate maps are more difficult to interpret                         medium grey (50% intensity). Also, luminance changes
than the univariate counterparts. Therefore, more atten-                              along one parallel, but not along the other. For diverging
tion should be paid to their production. Although our                                 colour legends, we adjust the colours resulting from the
method is easy to implement and produces fair results                                 linear interpolation by adding a ‘whitening kernel’ to each
on most media, it has two major drawbacks. Firstly, by                                component (Figure 4(c)). This changes the grey at the
making use of the RGB model, the colour legends are                                   origin to white (for a = 0.5), whereas in the corners the
not device independent. Secondly, our method does not                                 colours remain unchanged. This method produces con-
yet consider colour perception. This can lead to sub-                                 stant colour gradients in two dimensions, but the possible
jective interpretation of maps with diverging legends in                              colour combinations are limited to three because ‘oppo-
particular. Therefore, we encourage further development                               site’ to any colour component can only be the two other
towards bivariate colour legend definitions that are both                             components or a mixture of them (Figures 1 and 2 give
device independent and produce large yet perceptually                                 two of the three possibilities).
constant gradients in hue and luminance.                                                 Some flexibility is added by introducing a parameter
   All figures in this study were produced using the same                             (a) that controls the slope of the two off-diagonal surfaces
script that includes some additional options. This script                             (red and blue in Figure 4). The parameter a controls the
(programmed in MATLAB) is available from the authors                                  luminance gradient along the main diagonal of the colour
upon request.                                                                         scheme. When a = 1, the lower and upper diagonal

<a id="p004-b009"></a>

<!-- p004-b009 -->
Copyright  2010 Royal Meteorological Society                                                                   Int. J. Climatol. 31: 1408–1412 (2011)

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
1412                                                            A. J. TEULING et al.

<a id="p005-b002"></a>

<!-- p005-b002 -->
(a)                                (c)                                   (http://eca.knmi.nl). A. J. T. acknowledges partial finan-
     1                                  1                                   cial support from the Netherlands Organisation for Sci-
                                                                            entific Research (NWO) through a Rubicon grant.
   0.5                                0.5

<a id="p005-b003"></a>

<!-- p005-b003 -->
0                                  0                                   References
                                                                            Albani M, Medvigy D, Hurtt GC, Moorcroft PR. 2006. The contribu-
                                            0                                 tions of land-use change, CO2 fertilization, and climate variability
         a=0.2                                    a=0.32                      to the Eastern US carbon sink. Global Change Biology 12(12):
                                                            0
                                                                              2370–2390.
                                        1 0
                                                                            Brewer CA, Hatchard GW, Harrower MA. 2003. ColorBrewer in print:
                                                            0                 a catalog of color schemes for maps. Cartography and Geographic
   (b)                                0.5              +                      Information Science 30(1): 5–32.
     1                                                                      Haylock MR, Hofstra N, Klein Tank AMG, Klok EJ, Jones PD,
                                        0                                     New M. 2008. A European daily high resolution gridded data set
   0.5                                                                        of surface temperature and precipitation for 1950–2006. Journal of
                                                                              Geophysical Research 113: D20119, DOI:10.1029/2008JD010201.
                                            0
                                                                            Mitchell TD, Jones PD. 2005. An improved method of constructing
     0                                                     0                  a database of monthly climate observations and associated high-
                                                                              resolution grids. International Journal of Climatology 25: 693–712,
                 a=0.72                                                       DOI:10.1002/joc.1181.
                                                                            Nemani RR, Keeling CD, Hashimoto H, Jolly WM, Piper SC,
                                            0                                 Tucker CJ, Myneni RB, Running SW. 2003. Climate-driven in-
                                                                              creases in global terrestrial net primary production from 1982 to
                                                            0                 1999. Science 300: 1560–1563, DOI:10.1126/science.1082750.
                                                                            New M, Lister D, Hulme M, Makin I. 2002. A high resolution data
Figure 4. Construction of bivariate colour legends. (a and b) Examples        set of surface climate over global land areas. Climate Research 21:
for sequential colour legends. (b) is used in Figure 2. (c) Two-step          1–25.
construction of the diverging legend used in Figure 3. The parameter a      Olsen JM. 1981. Spectrally encoded two-variable maps. Annals of the
                                                                              Association of American Geographers 71(2): 259–276.
controls the luminance gradient along the diagonal. Note that a = 0.25
                                                                            Peel MC, Finlayson BL, McMahon TA. 2007. Updated world map
results in equal luminance in all corners, but that at the same time          of the Köppen-Geiger climate classification. Hydrology and Earth
a = 0.5 limits the effectiveness of the whitening kernel. This figure is     System Sciences 11: 1633–1644.
    available in colour online at wileyonlinelibrary.com/journal/joc        Robertson PK, O’Callaghan JF. 1986. The generation of color se-
                                                                              quences for univariate and bivariate mapping. IEEE Computer
                                                                              Graphics 6(2): 24–32.
corners become white and black, respectively. When a =                      Seneviratne SI, Lüthi D, Litschi M, Schär C. 2006. Land-atmosphere
0.5, the diagonal corners have the most contrast in hue.                      coupling and climate change in Europe. Nature 443(7108): 205–209,
When a = 0.25, all corners have the same luminance.                           DOI:10.1038/nature05095.
                                                                            Taylor KE. 2001. Summarizing multiple aspects of model performance
When a = 0, one of the primary colours results in the                         in a single diagram. Journal of Geophysical Research 106(D7):
lower-left corner (red in case of Figure 4(a)).                               7183–7192, DOI: 10.1029/2000JD900719.
                                                                            Teuling AJ, Hirschi M, Ohmura A, Wild M, Reichstein M, Ciais P,
                                                                              Buchmann N, Ammann C,             Montagnani L, Richardson AD,
Acknowledgements                                                              Wohlfahrt G, Seneviratne SI. 2009. A regional perspective on
                                                                              trends in continental evaporation. Geophysical Research Letters 36:
We acknowledge the E-OBS data set from the EU-FP6                             L02404, DOI:10.1029/2008GL036584.
                                                                            Ware C. 1988. Color sequences for univariate maps: Theory,
project ENSEMBLES (http://www.ensembles-eu.org)                               experiments and principles. IEEE Computer Graphics 8(5):
and the data providers in the ECA&D project                                   41–49.

<a id="p005-b004"></a>

<!-- p005-b004 -->
Copyright  2010 Royal Meteorological Society                                                             Int. J. Climatol. 31: 1408–1412 (2011)
