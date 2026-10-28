---
id: "maceachren1992visualizing"
title: "Visualizing Uncertain Information"
source_file: "The Art of Uncertain Topoplots/papers/maceachren1992visualizing.pdf"
source_sha256: "b937baf4fdae639d45ca6d848d49c3cd61d2d90a52dda7645285a53d5c3d95b7"
extraction_format: 1
---

# Visualizing Uncertain Information — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
10                                       cartographic perspectives                                                    Number 13, fall 1992

<a id="p001-b002"></a>

<!-- p001-b002 -->
Visualizing Uncertain Information

<a id="p001-b003"></a>

<!-- p001-b003 -->
When a GIS is used to drive map-based visualization, exploration of
                                          potential relationships takes precedence over presentation of facts. In
        Alan M. MacEachren                these early stages of scientific analysis or policy formulation, providing
                                          a way for analysts to assess uncertainty in the data they are exploring is
            A/1111 M. MacEachre11 is a    critical to the perspectives they form and the approaches they decide to
       Professor i11 the Deparfme11f of   pursue. As a basis from which to develop methods for visualizing
Geography, 302 Walka B11ildi11g, The      uncertain information, this paper addresses the difference between data
      Pe1111sylm11ia State U11hwsity,     quality and uncertainty, the application of Bertin's graphic variables to
         U111,•crsift1 Park, PA 16802.    the representation of uncertainty, conceptual models of spatial uncer-
  e-mail: \J) B!i'PSUVM.PSU.EDU           tainty as they relate to kinds of cartographic symbolization, and catego-
                                          ries of user interfaces suited to presenting data and uncertainty about
                                          that data. Also touched on is the issue of how we might evaluate our
                                          attempts to depict uncertain information on maps.

<a id="p001-b004"></a>

<!-- p001-b004 -->
U     ncertainty i'> a critical issue in geographic visualizat10n due to the
                                                tendency of most people to treat both maps and computer'> as
                                          somehow less fallible than the humans who make decisions based on
                                          them. When a GIS is used to compile, analf/e, and display information,
                                          the chance for unacceptable or variable data quality is high due to the
                                          merging of multiple data layers. Together with these data quality issues,
                                          the flexibility of data manipulation that makes GIS so powerful can lead to
When n GJS is used to compile,            considerable uncertainty in map displays produced at various stages of
 n11nlyze, and display i11formn-          GIS analysis. This paper addresses a variety of conceptual issues underly-
  tio11, tlze clza11ce for 111wccept-     ing development of \'isualization tools that a llow analysts to taJ...e this
 able or variable data quality is         uncertainty into account in their research and policy formulation activi-
                                          ties.
      high due to the merging of
                                             There b a '>trong tradition in cartography of attention to data quality.
              multiple data layers.       Onl} rudimentary steps, however, have been made thu'> far to deal \·\'ith
                                          the complex issues of visualizing data quality for multidimensional data
                                          displays used in image analysis and GIS applications. The importance of
                                          this topic is evidenced by the decision of the National Center for Geo-
                                          graphic Information and Analysis ().JCGIA) to make vbualization of data
                                          quality the first visualization initiative undertaken by the center.
                                             Kate Beard and Barbara Buttenfield (1991 ), presenting the CGlA
                                          position, indicate that quality of spatial information "relates to accuracy,
                                          error, consistency, and reliability." These aspects of quality are meant to
                                          appl} to more than locational verity. It is usefu l to begin con'>idera tion of
                                          qua lit\ issues with the framework of the Proposed Digital Cartographic
                                          Data Standard (\lloellering, et. al., 1988), incorporating locational accu-

<a id="p001-b005"></a>

<!-- p001-b005 -->
1The idea" pre,,cntl'<.i here were -.hmulalL'd by an imitation to p.lrtkip.ltl' in the \.ahonal
                                            Centt•r for Gl'<.lgraphk lnfomlation and AnaJy,,b Spt.>ei.11i-.t"• \kt•tin~ on V1 .. ualin1tion of
                                            Data Qu,,lity, lniti.ltiw 7. The p.1pcr bcg.m ,1., a ttworkin~ p.1pcr" (\'i,,u.lli.t.1lton of Data
                                            Un.:crt.1inty: Rl'pre-.t•ntational I-...m·~) th,lt wa., cir.:ul.llt'<l onl\' lo the 25 particip.mts of the
                                            ml'l'ling . Tht• p.lp<.' r prt-.t'nll'd ht•rt' j, a r...-,·i.,ion ,md 1..''\p,m-.ion of that \\'llrking p.1pcr
                                            tha t benclited from rt•.Ktion of other participant" to the initial ide.1-. "' well ,,s from
                                            di.,cus.. ion on rt•l,l!t•d i s~uL>s r,,1,,cd during the ml-cling. I gr.1 tdully .Kknowkdge the
                                            invit.1tion and tra\ cl support provided by the 1'.CGIA through their 1\ational Scie nce
                                            Foundation Gr.int II SF$-88·1U9l7.

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
Number 13, Fall 1992                    cartographic perspectives                                        11

<a id="p002-b002"></a>

<!-- p002-b002 -->
racy, attribute accuracy, logical consistency (i.e., a data structure whose
topology makes sense), completeness (comprehensi\'e data and systematic
ways of dealing with missing values) and finally lineage.
   The above quality categories are important, but to use a GIS effectively
for either scientific inquiry or policy formulation, the scope must be
broadened. In risk assessment circles, the term uncertainhJ has gained
some acceptance and I '>uggest that we might be better off if we follow
their lead (Morgan and Henrion, 1990; Rejeski and Kapuscinski, 1990).
Analysts never know the precise amount of error in any particular data
object      otherwise they ·would correct the error. They are more or less
uncertain about the available characterization of particular data objects.
From this perspective alone, the term uncertainty might be a better
description of what the NCGIA (and many past cartographers) have been
calling quality. In addition, however, uncertainty includes something of
importance beyond the narrow definition of quality that the NCGIA               We can only be certain that a
initiati\'c seems to be directed toward . A brief example will illustrate the
                                                                                partirnlar Location - a partirn-
difference between a focus on quality and on uncertainty and why it is the
latter that should guide our efforts.                                           lnr data object-fits some-
   Imagine a single census block in a city. You have sent an enumerator         where within the attribute
out to take the census. In this particular case, the response rate is 90%. In   bo!lnds of the categories and the
data quality terms, \\ e might say that our population and income informa-      spatial bou11ds of the e11w11era-
tion for this block is of less than perfect quality because of the lack of      tio11 1111it to ·which it is aggre-
"completeness" in the data. Further, there may be "attribute inaccuracy"
in the data collected due to misunderstanding of the survey questions or
                                                                                gated .
deliberate misinformation about items such as income or education, or
"spatial inaccuracy" due to address coding errors by the census enumera-
tor. If, in the adjacent census block we somehow achieved 100o/r participa-
tion in the census, e\'eryone understood the questions and gave truthful
responses, and the enumerator made no mistakes, a data quality assess-
ment would label that unit's data as perfecl. What we will be leaving out
of this assessment is the issue of variability (over both space and time and
within categories). This latter point is made quite forcefully by Langford
and Unwin (1991) who argue that, for the mapping of most socio-eco-
nomic phenomena, a choropleth map of aggregated data for enumeration
units is "a poor choice" due to extreme within-unit variability that is the
rule rather than the exception.
   Jn addition to \·ariability due to spatial aggregation, attribute aggrega-
tion adds additional variability, and therefore, uncertainty. All data are
categori?ed. Even when individual measurements are retained in the
database, categories will be implicitly defined by the mathematical
precision of individual measurements. For example, temperatures might
be measured to the nearest degree. Most data in a GlS, however, will be
grouped into much broader categories (e.g., soil classifications, income
brackets, whether a house has indoor plumbing or not, etc.). In all of these
cases, the categorization introduces uncertainty even when the data are of
high quality.
   We can only be certain that a particular location - a particular data
object - fits somewhere within the attribute bounds of the categories and
the spatial bounds of the enumeration unit to which it is aggregated. The
aggregate totals for our census blocks disguise the variability within those
cen~us blocks. Our level of uncertainty about map locations will be a
function not only of the quality of values (as defined above), but of
variance around the mean values we typically use to represent the unit,
and of '>patial variability across the unit.
   In addition to spatial and attribute data quality and variability, a final
uncertainty to be dealt with is temporal. The data, even if accurate and

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
12                                                      cartographic perspectives                            Number 13, Fall 1992

<a id="p003-b002"></a>

<!-- p003-b002 -->
homogeneous, represent a snapshot at one point in time. Our uncertainty
                                                             about their veracity will increase due to uncertainty about temporal
                                                             information, resolution with which that temporal information is specified,
                                                             and the difference in time between data collection and data use. The
          Accuracy                Precision                  temporally induced uncertainty will \'ary with the kind of phenomena
                                                             being represented.
         position of
         vegetation              state birth                    When we use a GIS, the important issue is the quality of the decisions
         boundaries                 rate                     we make - about a research course to follow, an urban development
                                                             policy to impose, or an environmental regulation to enforce. Whether we
          total HIV                                          use the term data quality or data uncertainty matters less than whether the
           positive               soil order                 tool we give the GJS user is adequate for deciding how much faith to put
        cases/county                                         in any particular piece of information extracted from the database.
                                                                We can have highly accurate data while still having imprecise data. This
  CJ
          date of the               mean                     lack of precision is at least as important an issue as a lack of accuracy.
  E       last glacier             monthly
 i-=                               rainfall                  Precision here refers, not only to the specificity of data values in terms of
                                                             significant digits, but in a more general sense to "the degree of refinement
                                                             with which an operation is performed or a measurement taken" (Wi>llster's
Fg11re 1: Example~ llf ti•1•ic- Jiir il'lticlt               Neu• Collegiate Dictio11ary, 1974). In this sense it is an assessment of the
/ocati011n/, 11ttr1/>11l1'. and f1·1111'<>ml accumcv a11d    resolution of categories by which a phenomenon is represented (i.e.,
categoric11/ pn•ci,11>11Cll11fr1/1111t•1,1 1111ccrtai11ty.
                                                             categorical precision). Although, mathematically, a population density of
                                                             165.34 persons/sq. mi. would be considered precise, spatially it is not if
                                                             that county is 1000 sq. mi. in size. Abo, the map representation of the
                                                             attribute (population density) becomes categorically imprecise when the
                                                             data are aggregated into an attribute category ranging from 50-500 per-
                                                             sons/sq. mi. Figure 1 provides examples of topics for which map uncer-
                                                             tainty is due primarily to accuracy or categorical precision.

<a id="p003-b003"></a>

<!-- p003-b003 -->
REPRESE T ATIO AL ISSUES                              As has been pointed out elsewhere, the term z•is11nli:ntio11 has a number of
                                                             definitions (MacEachrcn and Ganter, 1990; 'vfacEachren, ct. al., 1992).
                                                             Here it will be considered a human ability to de\'elop mental images
                                                             (often of relationships that have no visible form) together ·with the use of
                                                             tools that can facilitate and augment this ability. Successful visualization
                                                             tools allo ...v our visual and cognitive processes to almost automatically
                                                             focus on the patterns depicted rather than on mentally generating those
                                                             patterns.
                                                                Following from the above conception of visualization, a research
                                                             agenda to address visualizing uncertain information should include
                                                             attention to the cognitive issues of what it means to understand attribute,
                                                             spatial, and temporal uncertainty and the implications of this understand-
                                                             ing for decision making and for symbolizing and categorizing uncertainty.
                                                             At the most basic le\·el, uncertainty can be divided into t\.\'O components
                                                             that might require different visualization strategies: \'isualizing accuracy
                                                             and visualizing precision. In addition, attention should be directed toward
                                                             the methodological, technical, and ergonomic issues of generating dis-
                                                             plays and creating interfaces that vvork. It is, of course, also essential to
                                                             develop methods for assessing and measuring uncertainty before we can
                                                             represent it. This latter topic, howe\'er, will not be addressed here.

<a id="p003-b004"></a>

<!-- p003-b004 -->
Varied goals and needs - categories of interaction with data
                                                             If we continue to attack cartographic questions with our communication
                                                             model visors on, \.Ve will fail to take advantage of the power that GIS and
                                                             visualization tools provide. The search for the "optimal" data quality
                                                             visualization tool might prove as fruitless as the search for the optimal
                                                             graduated circle map. It is critical to recognize that GIS and visualization
                                                             tools attached to them are used for a range of problem types that may
                                                             have quite different visualization needs in general, and visualization

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
Number 13, Fall 1992                     cartographic perspectives                                                 13

<a id="p004-b002"></a>

<!-- p004-b002 -->
quality needs specifically. David
DiBiasc (1990) recently developed
a graphic model of the range of
uses to which graphics might be
put in scientific research (fig. 2). J
believe that his basic model is                                                      VISUAL
relevant, not only to science, but to                                             COMMUNICATION
applied spa tial decision making
with a GIS.
   As we begin to consider the
visualization of w1certainty, we
need to be cognizant of this range
of visualization goals and environ-
ments and the varying information                                                   Synthesis
requirements it implies. The kind
of uncertainty and the tools used
to visualize it are likely to vary
across this range, from the use of
GIS by an EPA scientist exploring
the spatial distribution of a pollut-
ant to the use of GIS driven map
displays by policy makers trying to
decide which industries to add to                                                        PUBLIC REALM
the list of those regulated for toxic
waste emission.

<a id="p004-b003"></a>

<!-- p004-b003 -->
Graphics variables                                                               Figure 2: Tl1e range of.f11nctio11s for
 Because few GIS users are trained in cartographic symbolization and              maps i11 spatial a11alysis (from D1Biase,
 design, it will be necessary to create expert systems that logically translate   1990. re1•r(idt1c(•d by flt?rmissiou of Earth
                                                                                  and M111era/ Scie11ces).
 information into graphic displays. Jacques Bertin, the French cartogra-
 pher I graphic theorist, has had a tremendous impact on our approach to
 this problem. The Robinson et. al., text (1984) that is used by 50% of
introductory cartography courses in the country (Fryman, 1990) cites
 Bertin's basic system of graphic variables (location, size, value, texture,
color, orientation, and shape) as the fundamental units we can use to build
a map image. Monmonier and Johnson's (1990) recent guide to map
design for environmental GIS also presents Bertin's system as an impor-
 tant organizing concept for well-designed maps. Weibel and Buttenfield
(1988), in a paper on map design for GIS, and Muller and Zeshen (1990), in
a paper on expert systems for map design, accept this system as a base to
build from in designing expert systems for map symbolization.
   An important representation issue for visualization of uncertainty,
therefore, is how Bertin's graphic variables (with possible additions or
modifications) might be logically matched with different kinds of data
uncertainty. A critical distinction, of course, is that between ordered and
differential graphic variables which can be logically associated with
ordered/numerical and nominal/categorical differences among phenom-
ena. Of Bertin's original graphic variables, size and value are most appro-
priate for depicting uncertainty in numerical information, while color
(hue), shape, and perhaps orientation can be used for uncertainty in
nominal information. Texture, although it has an order, might work best
in a binary classification of "certain enough" and "not certain enough"
that cou ld be used for either nominal or numerical data.
   Although Bertin ignored it, the graphic variable that is arguably the
most logical one to use for depicting uncertainty is color saturation.
Saturation, added to the list of variables by Morrison (1974), is sometimes

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
14                                              cartographic perspectives                                      Number 13, Fall 1992

<a id="p005-b002"></a>

<!-- p005-b002 -->
referred to as color purity. Saturation could be varied from pure hues for
                                               very certain information to unsaturated (grey) hues for uncertain informa-
                                               tion. Another variable, beyond Bertin's original seven, that seems quite
                                               promising as an uncertainty visualization tool is "focus."2 Presenting data
                                               "out of focus" (as you would see it with an out-of-focus camera), or
                                               simply at lower spatial resolution, might be an ideal way to depict uncer-
                                               tainty.
                                                  Symbol focus can be manipulated in at least four '"'ays:
                                                  Contour crispness- The most obvious way to apply focus is to vary
                                               the "crispness" or "fuzzyness" of symbol contours (edges). A certain
                                               boundary (e.g., the U.S. - Canada border) might be depicted with a
                                               sharp, narrow line, while an uncertain boundary (e.g., that between
                                               KU\vait and Iraq) might be portrayed with a broad fuzzy line that fades
                                               from the center toward the background (fig. 3). Similar "out-of-focus"
                                               symbols could be used to represent certain or uncertain location of point
                                               features, and an area may be depicted as not bounded at all, but as
                                               fading in a continuous fashion from core to periphery (fig. 4).
                                                 Fill clarity- While contour crispness intuitively suggests uncertainty in
                                               position, the crispness of elements making up interior fills for an other-
                                               wise precisely delineated area can be logically associated with attribute
                                               uncertainty. A sharp, distinct pattern, for example, might be used to
                                               indicate certainty while a Jess defined pattern might indicate uncertainty
                                               (fig. 5).
                                                 Fog- The transparency of the "atmosphere" that an analyst views a
                                               map through can be controlled on some computer display devices. lt is
                                               possible to create what, in effect, looks like a fog passing between the
Figure 3: A certni11 (U.S. - Cnnndn) and
                                               analyst and the map - the thicker the fog, the more uncertain that part of
n11 u11certnin (Iraq - Kuwait) border.         the map (fig. 6).3
                                                 Resolution-Often maps are produced in which attribute data, geo-
                                               graphic position, and temporal position are depicted with very different
                                               resolutions. One method of communicating uncertainty would be to
                                               adjust the resolution of geographic detail so that it corresponds to that of
                                               attributes or time (e.g., adjust resolution with which coastlines are de-
                                               picted on a world map to correspond to the resolution of thematic infor-
                                               mation depicted) (fig. 7).

<a id="p005-b003"></a>

<!-- p005-b003 -->
Linking visualization tools to models of uncertainty
                                               Different uncertainty visualization issues will arise when dealing with
                                               different kinds of data (e.g., qualitative data on land use/land cover
                                               versus quantitative data from the census). When data are quantities
                                               aggregated to units such as counties, we should consider the spatial
                                               characteristics of the phenomena represented by these quantities as we
                                               select symbolization methods to depict the uncertainty about them. One
                                               continuum of spatial characteristics that can be identified is that from
                                               discrete (spatially fragmented) to continuous (spatially comprehensive)
                                               phenomena (Hsu, 1979). A second continuum relates to the character of
                                               variation in the phenomenon across space. Some phenomena (e.g., tax
                                               rates) can vary quite abruptly as political boundaries are crossed, while
                                               others (e.g., gallons of ground water pumped for irrigation per county)
                                               can exhibit a relatively smooth variation quite independent of the units to
                                               which data are aggregated. MacEachren and DiBiase (1991) recently
 Figure 4: Depiction of a risk :::one around
                                                 ' This variable appears to have been originally ~uggested bv Dadd Woodward in a
 n nuclear power pln11/ as certain versus
                                                 seminar at Wisconsin (0. Di Biase and j . Krygier, personal commumcation).
 11ncertai11.
                                                 ' TI1is idea was offered by Michael Goodchild during the '\JCGIA Visualization of Data
                                                 Quality Specialist Meeting.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
Number 13, Fall 1992                                  cartographic perspectives                                                                            15

<a id="p006-b002"></a>

<!-- p006-b002 -->
proposed a series of graphic data
models that represent locations in
this continuity-abruptness phe-
nomena space (fig. 8). These
graphil. dalcl modeb correspond to
a range of two dimensional
symbolization methods, which
include standard forms such as
dot, choropleth, isopleth, and
graduated symbol, along with
some hybrid techniques designed
to deal with lhe midpoints on the
phenomena space axes (fig. 9).
   Three research questions suggest
themsch·es here: Is it safe to
assume that the spatial characteris-
tics of uncertainty \vill mimic those                   f\~uri• 5: Catai111111d 111icala111 depictio11 of land c<>Pa ty1..:.
of the phenomena that uncertainty
is being estimated for? Do specific
symbolization methods actually
communicate the particular spatial
characteristics that we as cartogra-
phers associate them with (e.g., is a
layer tinted isa rithmic map
depicting uncertainty in air
pollution estimates interpreted as a
smooth continuous surface or as
discrete uncertainty regions)?
What approach should be followed
when a data set has multiple kinds
of uncertainty associated with it
and the spatial characteristics of
that uncertainty vary?
                                                            Figuri• b: Map 11[ the ecological risk due to 0:011e. 011 tlie ldt.1,;o/111r.; depict a cc1111po.;i/e risk
User interfaces - How to merge data          imkl and clll lile right, Ille 1111ccrtai11t11111 //1111 i11dex is 11Pa/ayl'd a.; a "'f•'X" of rnrymg t/1ick11e~s
and uncertainty representations              correspo111fi11g to rnn;i11g dl.'grces of 1111certai11ty.
Beyond the basic issue of how to
represent uncertainty is the ques tion of how and when to present the
representation. This is complicated by the likelihood that GIS representa-
tions arc often products of a combination of measured and model-derived
multivariate data. There seem to be three choices that could be used
separntely or in combination:
   mnp pairs in which a data map is depicted side-by-side with a map of
uncertainty about that data (fig. 10);
   seq11e11tinl presentation in which a user might be warned about uncer-
tainty with an initial map which is followed by a map of the data (fig. 11 ),
(or interactive tools that allmv toggling between the data and the uncer-
tainty representations);
   bi-vnrinte mnps in w hich both the data of interest and the uncertainty
estimate are incorporated in the same map (fig. 12).

<a id="p006-b003"></a>

<!-- p006-b003 -->
Most attempts thus far to graphica lly depict uncertainty of spatial data
have used the map pair s trategy (e.g., Borrough, 1986; MacEachren, 1985;                                          Fisurt• 7: D<•gr11di11,11 of m 1stnl re:;o/11tio11 (from
                                                                                                                   lop to liot/<1111) as 1111 111d1ca/w11 of the 1111n•r-
Macfachren and Davidson, 1987). Cartographers have spent relatively                                                t11111ty i11111odcl 1m>d11ad 111ut-crc?fa/t',ms ocea11
little time investigating the impact of sequential information presentation.                                       fltntts.
Possibilities of interactive mapping and GIS, as well as animation, have

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
16                                                    cartograplzic perspectives                   Number 13, Fall 1992

<a id="p007-b002"></a>

<!-- p007-b002 -->
begun to bring attention to this issue
                                                                                                 (Taylor, 1982; Slocum, 1988). One
                                                                                                 clear avenue to explore here is the
                   abrupt                                                   smooth               potential of hypertext to allow users
                                                                                                 to navigate through the maze of
                                                                                                 data and uncertainty representa-
                                                                                                 tions that we might be able to
                                                                                                 provide (e.g., use of graphic scripts
                                                                                                 to guide this process (\1onmonier,
                                                                                                 1992)).
                                                                                                    In relation to the third possibility,
                                                                                                 bivariate maps, the l.J.S. Census
                                                                                                 Bureau's bi-variate choropleth maps
 t.ll                                                                                            from the 1970 census are perhaps
 ::J                                                                                             the best known attempt to relate
 0                                                                                               two variable!> on one map. Experi-
 ::J
 c                                                                                               mentation with those maps by
......,                                                                                          several researchers indicates that
 c                                                                                               untrained readers ha\ e considerable
 0
 u                                                                                               trouble reading bi-variate maps
                                                                                                 (e.g., Olson, 1981 ). There are,
                                                                                                 howe\'er, a number of bi-variate
                                                                                                 mapping possibilities that have not
          F('\lirt' S; D11/1111w1fds rcprc'1.'lllmg point,; m                                    yet been investigated and previous
          /lie ccm/111uity-11brupl11t•ss p/Jmo11u·11n space.
                                                                                                 attempts to use bivariate maps dea lt
                                                                                                 'vith two different variables rather
                                                                                                 than with a single variable related to
                                                                                                 its uncertainty. Color saturation (or
                     abrupt                                                 smooth               intensity), for example, might be
                                                                                                 used as a graphic variable for
                                                                                                 depicting uncertainty on maps in
                                                "<;P.             ·.<o·.:                        which different hues arc used to
     Q)                                         ,·::• "   .· .·
    .,....,                                                                                      represent the data \'alues of interest
     Q)
     ......                                                                                      (e.g., on a land co\'er map). For
     u                                                                                           printed maps in black and white, a
     t.ll
                                                                                                 combination of texture and value
                                                                                                 may be effecti\·e (see fig. 12). The
                                                                                                 variable of focus might be used in
                                                                                                 similar ways.
     t.ll                                                                                           In a dynamic visualization
     ::J
                                                                                                 environment, it would be possible
     0
     ::J                                                                                         to combine sequencing and bi-
     c                                                                                           variate techniques and allow a fade
    ......,                                                                                      from a data map, through a data /
     c
     0                                                                                           uncertainty map, back to the data
     u                                                                                           map. For qualitative areal data (e.g.,
                                                                                                 soils) Fisher (1991) has suggested an
                                                                                                 animated technique to communicate
                                                                                                 the certainty (or uncertainty) of soil
                                                                                                 classifications for particular loca-
                                                                                                 tions. Jn his visualization system,
                                                                                                 duration with which pixels are
                                                                                                 displayed in a particular color is
                                                                                                 matched to the probability of that
                                                                                                 pixel being in a particular soil

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
Number 13, Fall 1992                    cartograpl1ic perspectives                                                        17

<a id="p008-b002"></a>

<!-- p008-b002 -->
classifirntion. Certain sections of the map remain static and uncertain
sections exhibit continual blinking between (or among) the potential soils
for that place.

<a id="p008-b003"></a>

<!-- p008-b003 -->
Evaluation of the utility or affect of providing uncertainty information
 IL is relatI\ ely easy to think up techniques by which uncertainty might be
 represented. Before we try to put these techniques into practice (particu-
 larly in a public policv context), we should e\'aluate their potential impact.
The representation of uncertaint; about information in a GIS provides a
 unique opportunity to determine whether our efforts at map symboliza-            Fig11re 10: A rasta map dl'picti11g a composite
                                                                                  Iicall/1 rr;;k 111de.\ due tc• r1ir .md miter ptill11ta111'
 tion and design research over the past 40 years have provided the tools          fon Jett Janda dq•ictitm <lf 1111cata111ty 11f tfw,1•
               required to develop a representation system. If past perceptual    i11tkxm/11t':<.
                              and cognitive research along with the conceptual
                                            models of symbol-referent relation-
                                                       ships based on
l'is11rc 11:                                             semiotics are really
Si11111Intitm 11/1111
i11taactil'c "<''/llt'llC111g system tlrat
11/t,·mat,., l'rc;;mtatio11 of flu· n.;K
index mid tire 1111certa111t11111 it

<a id="p008-b004"></a>

<!-- p008-b004 -->
useful, we should be able to use them
to formulate hypothese~ and design appropriate
e'periments in our que'>t for ans.,,,·ers about
visualizing uncertainty.
   This possibility may tempt some of us to go back to our roots
in the communication model approach to cartography. Communication of
data quality or uncertainty seems to be the ideal case for which the
communication model was developed. Lmcertainty can be treated as a
precisely defined piece of information that we want a GIS user to obtain.
am afraid, however, that if we follow this narrow information theory
approach we .,,, ill hit the same dead ends that we did a decade or so ago.
   This time around we need to be aware of the range of human-user
interactions with graphics that occur from initial data exploration to
presentation. For exploratory applications, where there is no predeter-
mined message to communicate, we cannot judge uncertainty depictions
using communication effectiveness standards. We can only evaluate these
depictions in terms of how they alter decision making, pattern recogni-
tion, hypothesis genera tion, or policy decisions. We also must be aware of
the fact that our (possibly) precise uncertainty information is conditioned
by the social-cultural context in which decisions about what to represent
are made (e.g., a \'ariety of estimates exist about the reliability of the U.S.
Census Bureau's enumeration of homeless persons), and by the limited
ability of cartographers to determine the relative importance of various
kinds of quality or uncertainty information in a particular context.
    In addition to the question of visualizing uncertainty, there is also a
question of q uality of visualizations to consider. One way to evaluate
\ isualization of uncertainty tools, therefore, is to calibrate those tools in
terms of their tendency toward type I and type II visualization errors
(MacEachren and Ganter, 1990). Does providing uncertainty information
(or providmg it in a particular \\ay) lead to a failure to no tice patterns and   Fig11r 12: Ri,;k ·111d 1111ccrtai11ty 111aged 1111,1 a
relationships (type II), or to a tend ency to see patterns that do not exist      /lh~mnlc map witlr 111crt'a•i111: risk l'l'J'l'l'sentcd
(type!)? "v1.aps are re-presentations and as such are ahvays one choice           l1y dl'crcasi11s 1y1/11e !darker >lradesJ a11d
                                                                                  i11crea,iJ1g 1111artai11ty n•11n•,e11t1·d by
among many about hO\\ to re-present. There is always uncertainty in the
                                                                                  i11cr,~i-111sly nh1r.;,• kxturc, ,
choice of representation method , therefore, representing the uncertainty in
our representations is an uncertain endeavor at best.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
18                            cartographic perspectives                            Number 13, Fall 1992

<a id="p009-b002"></a>

<!-- p009-b002 -->
ACK.'\JOWLEDGEM ENTS   I would like to thank David DiBiasc and Tony Williams for suggestions on
                            an earlier draft of this paper, Alan Brenner for sharing ideas on bi-\'ariate
                            maps of uncertainty, and Catherine Reeves in the Deasy GeoGraphics
                            Laboratory for the production of most of the illustrations.

<a id="p009-b003"></a>

<!-- p009-b003 -->
REFERE CES    Buttenfield, B. P., and Beard, M. K. 1991. Visualizing the quality of
                            spatial information. In Teclinical Papers 1991. ACSM-ASPRS Annual
                            Convention. V. 6, Auto-Carta JO: 423-427.

<a id="p009-b004"></a>

<!-- p009-b004 -->
DiBiase, D. W. 1990. Scientific visualization in the earth sciences. Earth
                            mid Mi11ernl Sciences (Bulletin of the College of Earth and Mineral Sci-
                            ences). The Pennsyl\'ania State Lniversity ::;9(2): 13-18.

<a id="p009-b005"></a>

<!-- p009-b005 -->
Fisher, P. 1991. Modeling and visualizing uncertainty in geographic data.
                            Position paper for the Visuali£ation of Data Quality Specialist's :vteeting,
                            \.CGIA Initiative 7, 8-12 June, Castine, \1E.

<a id="p009-b006"></a>

<!-- p009-b006 -->
Fryman, J. F., and Sines, B. R. 1991. Anatomy of the introductory cartog-
                            raphy course. Cartogrnp'1ic Perspccf1Pes. 8: 4-10.

<a id="p009-b007"></a>

<!-- p009-b007 -->
Jenks, G. F. 1967. The data model concept m statistical mappmg. lntema-
                            tio11al Year/look of Cartography. 7:186-190.

<a id="p009-b008"></a>

<!-- p009-b008 -->
Langford, M., and Unwin, 0. J. (in press). Generating and mapping
                            population density surfaces within a geogrnphical information system.
                            Cartogrnpliic journal.

<a id="p009-b009"></a>

<!-- p009-b009 -->
MacEachren, Alan M. 1985. Accuracy of thematic maps: Implications of
                            Choropleth Symboli£ation. Cartogrnphica. 22(1):38-"i8.

<a id="p009-b010"></a>

<!-- p009-b010 -->
MacEachren, A., Buttenfield, B., Campbell, J., DiBiase, 0., and
                            Monmonier, M. (in press).\ isualization. In Geogrnpliy's ln11er Worlds, ed.
                            R. Abler, \11. \..farcu..,, and J. OJ...on.

<a id="p009-b011"></a>

<!-- p009-b011 -->
MacEachren, A. M., and Davidson, J. H. 1987. Continuous geographic
                            surfaces: Sample resolution, mtermediate \'alue estimation accuracy, and
                            isometric mapping. Tlie American Cnrtogrnplicr. 14(4): 299-320.

<a id="p009-b012"></a>

<!-- p009-b012 -->
MacEachren, A. M., and DiBiase, 0. W. (in press). Animated maps of
                            aggregated data: Conceptual and practical problems. Cartogrnpl1y and
                            Geographic l11formntio11 Syste111s.

<a id="p009-b013"></a>

<!-- p009-b013 -->
MacEachren, A. M., and Ganter, J. H. 1990. A pattern identification
                            approach to cartographic \'isualization. Cartogrnpliica. 27(2): 64-81.

<a id="p009-b014"></a>

<!-- p009-b014 -->
Webster's New Collegiate Dictionary. 1974. Springfield, MA: G. & C.
                            Merriam Company.

<a id="p009-b015"></a>

<!-- p009-b015 -->
Moellering, H.; Fritz, L.; Nyerges, T.; Liles, B.; Chrisman, N.;
                            Poeppelmeier, C.; Schmidt, W.; and Rugg, R. (executive committee)
                            1988. The proposed national standard for digital cartographk data. Tlie
                            A111ericn11 Cartographer. 15(1): 9-142.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
Number 13, Fall 1992                      cartograpllic perspectives                        19

<a id="p010-b002"></a>

<!-- p010-b002 -->
Monmonier, M. (in press). Authoring graphic scripts: Experiences and
principles. Cartography and Geogrnpllic illfor111atio11 Systems.

<a id="p010-b003"></a>

<!-- p010-b003 -->
Monmonier, M., and Johnson, B. B. 1990. De~ig11 guide for e11vironme11tal
nwps. Trenton, J: ew Jersey Department of Environmental Protection,
Division of Science and Research.

<a id="p010-b004"></a>

<!-- p010-b004 -->
Morgan, M. G., and Heruion, M. 1990. Uncertainty: A guide to dealing with
11ncertni11ty 111 q111111t1tntive rrsk and polity analysis. Cambridge: Cambridge
University Press.

<a id="p010-b005"></a>

<!-- p010-b005 -->
Muller, J.C., and Zeshen, W. 1990. A knowledge based system for
cartographic symbol design. The Cartographic /011mal. 27(1): 24-30.

<a id="p010-b006"></a>

<!-- p010-b006 -->
Olson, ] . M. 1981. Spectrally encoded two-variable maps. A111wls of the
Association of American Geographers. 71(2): 259-276.

<a id="p010-b007"></a>

<!-- p010-b007 -->
Slocum, Terry A. 1988. De\'eloping an information system for choropleth
maps. In Prou.'edi11gs of tire Third Intemntional Symposiu1n 011 Spatial Data
Handli11g, August 17-19, 1988, Sidney, Australia, 293-305.

<a id="p010-b008"></a>

<!-- p010-b008 -->
Rejeski, D. and Kapuscinski, J. l 990. Risk 111odeli11g witlr geographic
i11for111ntio11 systems: Approaches a11d issues. Report of the U.S. Environmental
Protection Agency, Office of Information Resources Management.

<a id="p010-b009"></a>

<!-- p010-b009 -->
Robinson, A.H.; Sale, R. D .; Morrison, J. L.; and Muehrcke, P. C. 1984.
Elements of Cartography. (Sc) . • ew York: John Wiley & Sons.

<a id="p010-b010"></a>

<!-- p010-b010 -->
Taylor, D.R. F. 1982. The cartographic potential of Telidon. Cartographicn.
19(3&4):18-30.

<a id="p010-b011"></a>

<!-- p010-b011 -->
Weibel, R., and Buttenfield, B. P. 1988. Map design for geographic
information systems. In GTS/LJS'BB Proceedi11gs: Assessi11g tht• World V. I,
San Antonio: ACSM, ASPRS, AAG, Li RISA:350-359.

<a id="p010-b012"></a>

<!-- p010-b012 -->
Cuando se usan ma pas coma instrumentos de \'isualizaci6n, la exploraci6n           RESUME\i
de relaciones potenciales precede a la presentaci6n de datos. En estas primeras
etapas de analisis cientffico o formulaci6n de normas, el pro\'eer un modo
para que losanalistas estimen la inexactitud en losdatos queestan explorando
es crHico para las perspectivas que fo rmen y los enfoques que decidan seguir.
Estc artfculo sirve de base para desarrollar rnetodos para la visualizaci6n de
informaci6n inexacta. El artfculo habla de la diferencia entre la calidad de las
datos y la inexactitud, la aplicaci6n de las variables graficas de Bertin para la
representaci6n de la inexactitud, los modelos conceptuales de inexactitud
espacial en cuanto a su relaci6n con clases desimbolizaci6n cartografica, y las
categorfas de interacci6n de! usuario ad ecuadas para la presentaci6n de
datos e inexactitud de los mismos. Tambien tratado es el tema de coma
podrfamos evaluar nuestros intentos de describir la informaci6n inexacta en
los mapas.
