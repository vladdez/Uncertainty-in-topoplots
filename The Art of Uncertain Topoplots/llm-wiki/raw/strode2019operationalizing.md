---
id: "strode2019operationalizing"
title: "Operationalizing Trumbo's Principles of Bivariate Choropleth Map Design"
source_file: "The Art of Uncertain Topoplots/papers/strode2019operationalizing.pdf"
source_sha256: "e4bc0ec749b616e104c78b3c86927dd783cb7b4ae5ff270a1fd39dbdce662d4e"
extraction_format: 1
---

# Operationalizing Trumbo's Principles of Bivariate Choropleth Map Design — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
DOI: 10.14714/CP94.1538                                                                                      PEER- REVIEWED ARTICLE

<a id="p001-b002"></a>

<!-- p001-b002 -->
Operationalizing Trumbo’s Principles of Bivariate
                                                       Choropleth Map Design
            Georgianna Strode                       John Derek Morgan                                    Benjamin Thornton                                      Victor Mesev
         Florida State University             University of West Florida                            Florida State University                          Florida State University
                gstrode@fsu.edu                     jmorgan3@uwf.edu                                   bwt13b@my.fsu.edu                                     vmesev@fsu.edu

<a id="p001-b003"></a>

<!-- p001-b003 -->
Evan Rau                                                 Sean Shortes                                                Nathan Johnson
                      Florida State University                                     Florida State University                                       Florida State University
                         evanrau@gmail.com                                        seanshortes@gmail.com                                      mrchocoborider@gmail.com

<a id="p001-b004"></a>

<!-- p001-b004 -->
Trumbo’s (1981) ideas on bivariate choropleth design have been underexplored and underutilized. He noted that effective
           map design (including color selection) is directly informed by the intended goal or use of the map (i.e., what questions
           might the map answer), and he identified three common spatial relationships that can be displayed by a bivariate choro-
           pleth map: inverse relationships, a range of one variable within another, and direct relationships. Each is best suited to
           answering different map readers’ questions. Trumbo also suggested sample color palettes to focus the map reader’s atten-
           tion on pertinent data. In consultation with Trumbo, we extended his ideas, first by creating focal models that illustrate
           his three spatial relationships. We then constructed sample maps to examine each of the focal models, and finally compared
           each model by mapping the same two data sets (of obesity and inactivity). We investigated the visual differences in each
           of the resulting maps, and asked spatial questions regarding the relationships between obesity and inactivity. Our work
           validates Trumbo’s ideas on bivariate choropleth map design, and we hope our focal models guide cartographers towards
           making color choices by linking their map purpose to the appropriate focal model.

<a id="p001-b005"></a>

<!-- p001-b005 -->
K E Y W O R D S : Bivariate choropleth map; sequential color scheme; diverging color scheme; color selection

<a id="p001-b006"></a>

<!-- p001-b006 -->
“Confusion and clutter are failures of design, not attributes of information. And so the point is to find design
           strategies that reveal detail and complexity — rather than to fault the data for an excess of complication. Or,
           worse, to fault viewers for a lack of understanding.”
                                                                             Edward Tufte, Envisioning Information, 1990

<a id="p001-b007"></a>

<!-- p001-b007 -->
B I VA R I A T E C H O R O P L E T H M A P P I N G
    While univariate maps, which represent one themat-                                         employed to examine the relationships between socioeco-
    ic variable at a time, are both standard and widespread (Jin                               nomic variables, such as elderly populations and ethnic
    and Guo 2009; Brewer 1994), bivariate maps have the po-                                    minorities, or levels of educational attainment and house-
    tential to reveal spatial relationships and patterns between                               hold income. A well-constructed bivariate map displays
    two variables on a single map more effectively than by                                     both the distributions of its individual datasets and their
    using two side-by-side univariate maps (Carstensen 1986).                                  degree of interaction, and—at least for some visual vari-
    Bivariate maps can make use of a variety of symbol strat-                                  able combinations— variation in one thematic variable
    egies, such as color combinations (as we explore in this                                   does not impair the ability to read the other (Ware 2009).
    paper), shaded proportional symbols, shaded cartograms,
    split symbols, shaded isolines, or star plots (Friendly 2008;                              The alternative to bivariate mapping is to compare two
    Kimball and Kostelnick 2017). Though they can repre-                                       univariate maps side-by-side; often inconvenient and in-
    sent any pairing of thematic variables, they are typically                                 efficient (Leonowicz 2006; Wainer and Francolini 1980;

<a id="p001-b008"></a>

<!-- p001-b008 -->
© by the author(s). This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives
                                             4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0.

<a id="p001-b009"></a>

<!-- p001-b009 -->
Cartographic Perspectives, Number 94, 2019                                        Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 5

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
Bernard et al. 2015). In order to keep information cost to a       of bivariate choropleth mapping note that the overlapping
    minimum, the type of data classification, symbol choices,          color schemes can become muddied and indistinct, espe-
    and scale must be comparable across all maps in the series         cially the farther they are from the legend’s x- and y-ax-
    (Wickens, Gordon, and Liu 2004). Yet even when map-                es. The information cost for a map can be unnecessarily
    makers use consistent visual communication techniques,             high when a less-than-ideal bivariate choropleth mapping
    human judgment can be shaped by the user’s experience in           method, such as the overlay, is utilized. This can force map
    map reading, familiarity with the subject matter, and the          readers to refer to the legend more often than necessary.
    limitations of human visual perception. We adhere to the
    hypothesis that given the difficulties of creating compara-        In the mid 1970s, the Census Bureau developed an au-
    ble univariate maps, pursuing methods to visualize multi-          tomated mapping system and began creating a series of
    ple phenomena on a single map is worthwhile (Leonowicz             bivariate maps for mass distribution. The overlay scheme
    2006).                                                             was used to merge yellow-to-red on the x-axis and yellow-
                                                                       to-blue on the y-axis. The resulting color scheme was a
    Frequently, bivariate maps produce ambiguous represen-             confusing mixture of colors. “Considerable practice” was
    tations that convey information poorly (Dunn 1989). A              required to discriminate among the colors in the legend
    common method for creating bivariate maps is to super-             and to organize data relationships (Fienberg 1979, 176). A
    impose two choropleth maps. This technique, called the             study by Wainer and Franconi (1980) found difficulties in
    overlay, crisscross, merge, or crossing, combines two maps         map comprehension, and they concluded that the Census
    along with their color schemes to produce a new map with           maps did not meet Bertin’s (1973) elementary level of in-
    a new set of colors (Monmonier 1989). An early example             quiry as it was difficult to answer a question such as, “what
    of overlays is the US Census Bureau’s 1970s Urban Atlas            is the median family income at this spot?”. Tufte (2001)
    map series, which contained sixteen-color, mass-pro-               termed the maps “puzzle graphics,” because users had to
    duced maps showing various pairings of data variables.             run phrases through their minds to aid comprehension.
    Although the maps were aesthetically pleasing, they                Olson’s (1981) study on users of the bivariate maps con-
    were strongly criticized as difficult to interpret (Fienberg       cluded that participants could recognize order, but judging
    1979; Wainer and Francolini 1980; Dunn 1989), as car-              correlation between two variables was more difficult than
    tographers had no literature to guide their interpretations        using two side-by-side univariate maps.
    and relied on their own judgment and that of colleagues
    (Halliday 1987). More recently, techniques for drawing             Figure 1 offers an example of the difficulties of the over-
    bivariate choropleth overlays have improved, and studies           lay method. It shows the percentages of education and
    have demonstrated that effective color schemes can great-          income. Unfortunately, this scheme produces ambiguous
    ly enhance their readability (Eyton 1984; Robertson and            mixtures across the blue-to-violet range that are difficult
    O’Callaghan 1986; MacEachren et al. 1999; Rheingans                to distinguish visually and could require users to view the
    1997; Leonowicz 2006). Nevertheless, they still lack so-           legend too often.
    phistication for the interrogation of data relationships.

<a id="p002-b002"></a>

<!-- p002-b002 -->
Bivariate choropleth mapping is a relatively recent car-
    tographic method, dating to 1974, when the US Census
    Bureau saw value in combining two data sets into one
    map. A suggestion was made for “two choropleth maps
    of different variables to be ‘crossed’” or overlaid (Meyer,
    Broome, and Schweitzer 1975, 102). This melding became
    colloquially known as the overlay. The overlay is construct-
    ed by combining two univariate choropleth maps and their
    color schemes through transparency, by overprinting, or
    by manual color adjustments (Stevens 2015). The over-
    lay scheme is considered a method of convenience and is
    not necessarily the best choice (Trumbo 1981). Although            Figure 1. Bivariate map from the 1970s Urban Atlas from the US
    the overlay scheme works well in some instances, critics           Census Bureau.

<a id="p002-b003"></a>

<!-- p002-b003 -->
Cartographic Perspectives, Number 94, 2019                   Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 6

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
T R U M B O ’S T H R E E R E L AT I O N S H I P S
    Both univariate and bivariate choropleth maps                                  several color schemes appropriate for different map pur-
    can answer a variety of questions. For example, assume                         poses. Our paper focuses on map purposes, or types of
    a thematic variable pair of income and education level.                        questions that a bivariate choropleth map can answer, as
    Univariate maps are limited to proximity queries about a                       identified by Trumbo, rather than upon his specific color
    single data variable, and restrict interrogation to questions                  scheme suggestions.
    such as: Do low income tracts occur mainly in the center
    of the city? Are tracts with highly educated populations                      Trumbo identified three common data relationships that
    mainly in the suburban areas with an especially heavy con-                    together cover many of the questions that a reader might
    centration in the northern suburbs? (Trumbo 1981, 223).                       ask of a map. These are seen in Table 1: inverse relation-
    In contrast, bivariate choropleth maps answer more com-                       ships, a range of one variable within another, and direct
    plex questions involving thematic variable pairs: Are all of                  relationships. Each corresponds to a different map purpose
    the districts with both low income and low education near                     and facilitates its own range of questions. Trumbo also
    the center of the city? Are there tracts with high education                  suggested sample color palettes to focus the attention of
    and low incomes? What is the range of educational attain-                     the user on data pertinent to the map’s purpose (Trumbo
    ment among high earners? Is there a positive association                      1981). Each question uses a statistical emphasis to place
    between the two variables? Or what spatial patterns are                       focus on specific types of interactions between variables.
    formed by exceptional cases? (Trumbo 1981, 223).                              One method, the inverse relationship, explores the highs
                                                                                  and lows of the two variables. A sample question is “where
    For Bruce Trumbo, effective design (including color selec-                    are high foreclosures within low-income areas?” The cor-
    tion) is directly related to the map’s purpose, as expressed                  responding bivariate choropleth map design should high-
    in these sorts of questions (Trumbo 1981). “My person-                        light the areas with high and low values for both inputs
    al motivation . . . was to improve on the bivariate color                     while de-emphasizing the areas where values are normal
    scheme adopted by the U.S. Bureau of Census. In my view,                      or average. A second method focuses on a range of val-
    there are many ways to do that, including ones I suggest-                     ues within a specific category. A sample question is “what
    ed” (personal communication, July 2, 2019). However, a                        is the range of foreclosures within areas of high income?”
    review of the literature suggests that the creation of bivar-                 The corresponding bivariate choropleth map would first
    iate maps does not necessarily begin with a conscious ar-                     identify the various categories, and second, show the pro-
    ticulation of each map’s purpose (Nyerges 1991; Caquard                       gression of values within each category. A third method
    2015). Trumbo’s 1981 paper identified principles to facil-                    shows the relationship between the two variables. A sam-
    itate the comprehension of statistical maps and identified                    ple question is “what is the relationship between income
                                                                                                               and foreclosures?” The corre-
                                                                                                               sponding bivariate choropleth
       Type of Question                      Inquiry Formula                    Sample Questions
                                                                                                               map displays the correlation
                                                                                                               between the variables.
                                                                                Where are high elderly
                                             low/high of __ and/or
       Inverse relationship                                                     populations with low
                                             low/high of __
                                                                                income?
                                                                                                                        TRUM BO ’S FO U R
                                                                                What is the range of
       Range of one variable within a        range of __ within low/
                                                                                education among high
                                                                                                                        PRINCIPLES
       category of another variable          high of __
                                                                                earners?                                Each of these three
                                                                                                                        types of questions places em-
                                                                                What is the relationship                phasis on different interac-
       Direct relationship                   relationship of __ and __          between income and                      tions between data variables,
                                                                                education?
                                                                                                                        and each can be supported by
                                                                                                                        the thoughtful use of color.
                                                                                                                        To that end, Trumbo articu-
    Table 1. Three types of questions a bivariate choropleth map can answer based on Trumbo’s data
                                                                                                                        lated four principles of color
    relationships.

<a id="p003-b002"></a>

<!-- p003-b002 -->
Cartographic Perspectives, Number 94, 2019                               Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 7

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
usage to distinguish similarity and dissimilarity. Principle            relationships using bivariate choropleth maps. The first
    I is order: for data ordered quantitatively, the colors should          two principles involving color sequences have been suc-
    preserve the order, i.e., they should show a progression of             cessfully applied within GIS largely due to efforts of
    hue, saturation, and/or lightness (whether individually or              Brewer (1994; 2005) and Brewer et al. (2015). The gra-
    in combination) that can be detected by the human eye.                  dient formation of Principle I is represented by Brewer’s
    Principle II is separation, in which important differenc-               sequential color scheme, and the mutually distinguishable
    es in values are represented by colors that are equally dif-            colors of Principle II are represented by the diverging color
    ferent. Colors are spaced comfortably apart, or separated,              scheme (Brewer 2005). Principles III and IV combine
    from others. Principle III refers to rows and columns: in a             multiple color schemes in various ways to direct focus to
    bivariate legend, each row or column represents a univari-              specific portions of the data to address the map’s origi-
    ate dataset and should be in a visual sequence, with colors             nal question. Principles III and IV have not been widely
    that are distinct enough that the corners of the bivariate              transferred to GIS color schemes. Univariate map makers
    legend stand out. Lastly, Principle IV relates to the legend            often start with a clear purpose for a map and correspond-
    diagonal. If the interaction between variables is critical,             ingly design their maps to communicate a specific idea or
    then the principal diagonal is the focal point and it should            theme. In this sense univariate maps may be seen as more
    be visually separated from colors on either side. Both uni-             often confirmatory in purpose and for public consumption
    variate maps and bivariate choropleth maps use Principles               (MacEachren 1995; Tukey 1980). However, bivariate map
    I and II, but Principles III and IV are formulated specifi-             makers construct more complex maps (multiple variables),
    cally for the latter.                                                   which are often exploratory in purpose and not necessarily
                                                                            for the public consumption (Tyner 2010).
    Trumbo’s four principles provide theoretical insights
    into how color can communicate data changes and

<a id="p004-b002"></a>

<!-- p004-b002 -->
THE ROLE OF DESIGN IN FOCAL MODELS
    Focal models are illustrations that show how to                         descriptions such as “average,” “common,” “normal,” “reg-
    translate Trumbo’s three spatial relationships into spe-                ular”, “expected,” and “unchanged” while emphasizing
    cific color choices that adhere to his four principles of               high and low values, changes, distinct values, differences,
    color usage. Figure 2, for example, illustrates three color             and standard deviations. In effect, diverging schemes are
    schemes and how they highlight specific data. The sequen-               two complementary sequential color schemes joined at the
    tial and diverging color schemes from Brewer (1994) align               center, designed to highlight the extremes and minimize
    with Trumbo’s Principles I (order) and II (separation).                 the expected values. Qualitative schemes represent differ-
    Sequential schemes order sequences from low to high                     ences in data categories and do not use ordered colors be-
    to illustrate linear progressions of values (Brewer 2005;               cause mathematical operations are meaningless on nomi-
    Slocum et al. 2005). Sequential schemes are characterized               nal data (Brewer 1994).
    by words such as “range,” “progression,” and “gradient.”
    They minimize low values while emphasizing high values.                 Trumbo’s original color scheme examples were designed
    Diverging color schemes show separation by emphasiz-                    for the Ostwald and Hickethier solid cube color models
    ing the extremes with complementary colors and de-em-                   that are no longer used today. Both color models are “uni-
    phasizing the central areas. They minimize statistical                  form color spaces” as they are known within the field of

<a id="p004-b003"></a>

<!-- p004-b003 -->
Figure 2. Sequential, diverging, and qualitative color schemes (Brewer 1994).

<a id="p004-b004"></a>

<!-- p004-b004 -->
Cartographic Perspectives, Number 94, 2019                        Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 8

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
color science (Wyszecki and Stiles 1967). Uniform color             adjust the hue, saturation, and lightness—a process known
    spaces are based upon a geometric shape such as a square or         as “device modeling” (Robertson & O’Callaghan 1986).
    cone and use a consistent, measurable metric, making per-           For example, Ware (2009) notes differences between types
    ceptive color differences more intuitive. Validation of color       of monitors where some colors have more luminescence
    similarity and difference can be achieved through exam-             than others, which can alter the visual output. As Trumbo
    ination of the color metrics (Robertson and O’Callaghan             writes,
    1986; Bujack et al. 2017). Robertson and O’Callaghan
    demonstrated that Trumbo’s principles are achieved                         there are more diff iculties rendering these
    through uniform color models. Principles I (order) and II                  schemes on screen and in color printing than
    (separation), used for both univariate and bivariate maps,                 I had supposed. Color settings on a monitor
    are easily achieved through the consistent measurable                      have to be just right in order to show strong as-
    metrics of the model. For bivariate maps, Principles III                   sociation to best effect (with my schemes), and
    (rows and columns) and IV (diagonal) can also be satis-                    the usual precision of color printing in popular
    fied through differing schemes. The diagonal is achieved                   magazines is not sufficient to represent some
    through a square model that highlights the diagonal, and                   color schemes to good effect. (personal commu-
    rows and columns are successful using a conical model                      nication, July 2, 2019)
    that preserves linearity within a group (Robertson and
    O’Callaghan 1986).                                                  Color settings on monitors have advanced significantly,
                                                                        allowing for a greater and broader use of color in cartog-
    Trumbo (1981) proposed his principles for bivariate choro-          raphy (Monmonier 2006). Modern computer graphics use
    pleth mapping prior to mapmaking software being gen-                one of several RGB color spaces defined by the primary
    erally available outside of governmental agencies and labs          colors of red, green, and blue in the X, Y, and Z axes.
    (Waters 2018). He had limited opportunities to test his             Color scheme parameters such as color separation, the
    theories before publication (Trumbo, personal communi-              logical arrangement of colors, and a zero-saturation diag-
    cation, July 2, 2019). Uniform color models are indepen-            onal can be automated by symbology tools available today
    dent of any particular display device, and for reproduc-            in most GIS software.
    ibility on different display devices, it may be necessary to

<a id="p005-b002"></a>

<!-- p005-b002 -->
BERTI N ’S I N FLU EN CE
    Bertin’s (1973) Semiologie Graphique introduced an                    • Superior level: The entire structure of one variable is
    ambitious and comprehensive theory to formalize graphic                 compared with that of the other. For example, “how
    language. His concept of visual variables (e.g., size, shape,           does the geographic distribution of median family
    value, orientation, color, texture) serves as a guide for map           income relate to that of the percentage of college
    symbology in cartography textbooks. In addition to his                  graduates?”
    contribution of visual variables, Bertin described three
    levels of reading possible in map comprehension:                    Robertson and O’Callaghan (1986) concluded through
                                                                        their color evaluations that Trumbo’s principles and sug-
      • Elementary level: Direct translation from the                   gested color schemes supported Bertin’s vision of the levels
        perceived graphic variable to a quantitative compo-             of comprehension that maps should support. The defini-
        nent. For example, “what is the median age at this              tions of the intermediate and superior levels require mul-
        location?”                                                      tiple thematic variables, thus suggesting that Bertin may
                                                                        have envisioned bivariate and multivariate maps as read-
      • Intermediate level: Trends between two variables                ily achievable. The focal model that supports seeing the
        are related and understood. For example, “what is the           range of one variable within a category of another variable
        relationship between median education and distance              successfully addresses the elementary level because a per-
        from the inner city?”                                           ceived variable can be translated into a quantitative value.
                                                                        The model focusing on direct relationships can support

<a id="p005-b003"></a>

<!-- p005-b003 -->
Cartographic Perspectives, Number 94, 2019                    Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 9

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
Selective
        Attention               Configural                Asymmetrical                          Integral                         Separable
        Concept

<a id="p006-b002"></a>

<!-- p006-b002 -->
Addresses the original
                                                       Addresses unique or            Addresses an emerging
                         Addresses an emergent                                                                            variables with minimal
                                                      conditional interactions        dimension, but inhibits
        Definition      dimension when variables                                                                          perceptual interference
                                                        between two visual            reading of the original
                           are “in agreement.”                                                                               from other visual
                                                             variables.                     variables.
                                                                                                                                variables.

<a id="p006-b003"></a>

<!-- p006-b003 -->
Bar Chart               Value by Alpha                    Rectangle Map                    Shaded Cartogram

<a id="p006-b004"></a>

<!-- p006-b004 -->
Examples
                                                                                                                             Choropleth w/
                               Spoke Glyph               Shaded Texture                 Bivariate Choropleth
                                                                                                                           Graduated Symbols

<a id="p006-b005"></a>

<!-- p006-b005 -->
Corners                     Range                            Diagonal

<a id="p006-b006"></a>

<!-- p006-b006 -->
Trumbo’s                                                                                                             Not addressed in
       Equivalent                                                                                                            Trumbo’s original
        Concepts                                                                                                             color scheme but
          using                                                                                                             can be achieved by
          Color                                                                                                          incorporating size and/
          (Focal                                                                                                         or shape symbology (see
         Models)                                                                                                                 Figure 3).

<a id="p006-b007"></a>

<!-- p006-b007 -->
Table 2. Relationships between Elmer’s (2013) discussion of selective attention for bivariate maps and Trumbo’s color concepts. Charts
    adapted from Elmer (2013).

<a id="p006-b008"></a>

<!-- p006-b008 -->
Cartographic Perspectives, Number 94, 2019                        Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 10

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
the intermediate (local distribution) and superior levels
    (global distribution) of map comprehension by revealing
    the relationships between two variables (Robertson and
    O’Callaghan 1986).

<a id="p007-b002"></a>

<!-- p007-b002 -->
Bertin also introduced the concept of “selectivity” of
    graphic variables, which is related to the idea of selective
    attention (MacEachren 1995; 36): the ability of a map
    reader to focus on one visual variable while simultane-
    ously ignoring others. The concept of selective attention
    was first developed in the field of psychology, and has
    since been applied by cartographers to further the under-
    standing of thematic maps (Carswell and Wickens 1990;
    Nelson 2000; Elmer 2013). Selective attention concepts
    of configurality, asymmetry, integrality, and separability
    describe the perceptual aspects of the combination of two
    visual variables.

<a id="p007-b003"></a>

<!-- p007-b003 -->
Table 2 shows the relationships between selective atten-
    tion concepts, using combinations of visual variables iden-
    tified by Elmer (2013) and Trumbo’s equivalent concepts
    using color. The focal models are based on Trumbo’s color
    concepts, and will be addressed in detail in the next sec-
    tion. This chart serves to situate Trumbo’s ideas on color
    within the cartographic literature regarding selective at-          Figure 3. Bivariate map showing population using public and
    tention concepts. Configural relationships show highs and           private water infrastructures for drinking and wastewater in
    lows of data values as does Trumbo’s corners method. The            Orlando, USA. Water infrastructure data from the Florida
                                                                        Department of Health, 2016. Data were gridded to 1km cells,
    asymmetrical concept and the range method reveal rang-
                                                                        with larger squares representing higher population and smaller
    es of data values within categories with unique interaction
                                                                        grids showing lower population.
    effects. The integral and diagonal methods both show the
    emerging dimension where two variables interact while               in each area meets their wastewater and drinking water
    inhibiting reading individual variables.                            needs using private infrastructure, public infrastructure,
                                                                        or a combination of the two. By aggregating water infra-
    Trumbo’s original color scheme does not address the selec-          structure and population data at the property parcel scale
    tive attention concept of separability, in which a reader can       to a 1km grid, we can use a graduated symbology, where
    attend to one visual variable with minimal interference             population data are clearly separable from water infra-
    from others. However, this can be achieved by combin-               structure information. Applications of this map include
    ing color with other visual variables, such as the example          planning new sewer lines or identifying areas without
    in Figure 3, which combines color with symbol size. The             electricity to operate private wells for planning for disaster
    corners method uses color to show how the population                management.

<a id="p007-b004"></a>

<!-- p007-b004 -->
METHOD OLO GY
    The reprisal of Trumbo’s work that we present here                  to his four principles of color usage. We then constructed
    began by consulting with Trumbo, and both extends and               three sample maps to illustrate each of the focal models.
    demonstrates his 1981 ideas. We created focal models that           Most sample maps are standard choropleth maps, but two
    illustrate how Trumbo’s three spatial relationships above           used 1km grids. Finally, we created three maps using the
    can be translated into bivariate color schemes that adhere          same socioeconomic data variables (obesity and inactivity)

<a id="p007-b005"></a>

<!-- p007-b005 -->
Cartographic Perspectives, Number 94, 2019                   Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 11

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
Figure 4. Relationship between Trumbo’s four principles and the three focal models for bivariate choropleth maps.

<a id="p008-b002"></a>

<!-- p008-b002 -->
Cartographic Perspectives, Number 94, 2019                       Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 12

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
for each of the models to determine if the final maps were                To clarify the relationships between the four principles
    visibly different and if each can be used to successfully an-             suggested by Trumbo and the three types of questions,
    swer questions about relationships between obesity and in-                Figure 4 presents an overview of our ideas. The diagram
    activity. In doing so we explored the following questions:                shows Trumbo’s four principles of order, separation, rows
    Do the focal models produce different maps using the                      and columns, and diagonal as foundational knowledge.
                                                                              The principles are shown in relation to our three focal
    same data? Is there a noticeable relationship between the
                                                                              models, each of which derives from one of the three types
    stated map purpose and the resulting emphasized data?
                                                                              of questions that the cartographer is trying to answer. This
    Can the focal models guide color choices by associating                   diagram can also be used as a decision-making flow chart
    their map purpose with the appropriate color scheme? Can                  for cartographers. Each focal model draws attention to the
    the focal models be converted into reproducible symbol-                   data that appropriately address the purpose of the map
    ization guidelines suitable for a GIS?                                    (Table 3).

<a id="p009-b002"></a>

<!-- p009-b002 -->
Relationship Type             Inquiry Formula           Model Name           Visual Focus                  Visual Focus Diagram

<a id="p009-b003"></a>

<!-- p009-b003 -->
low/high of x and/or
       Inverse relationship                                    Corners              Corners
                                     low/high of y

<a id="p009-b004"></a>

<!-- p009-b004 -->
Range of one variable
                                     range of y within low/                         Distinct x and
       within a category of                                    Range
                                     high of x                                      sequential y
       another

<a id="p009-b005"></a>

<!-- p009-b005 -->
3 distinct categories:
                                                                                    on or near diagonal,
       Direct relationship           relationship of x and y   Diagonal
                                                                                    on one side, or the
                                                                                    other

<a id="p009-b006"></a>

<!-- p009-b006 -->
Table 3. Overview of the three focal models and their attributes.

<a id="p009-b007"></a>

<!-- p009-b007 -->
Cartographic Perspectives, Number 94, 2019                         Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 13

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
Below, we’ll examine each focal model by constructing a                 Where are the areas of low population density and high
    diagram of a bivariate choropleth map legend, and we’ll                 crime? Where are the areas of high public transportation
    illustrate how its design conforms to Trumbo’s four princi-             and high food deserts? Perdue (2013) successfully used the
    ples of effective color choice for bivariate choropleth maps.           corners model to highlight differences between population
    These diagrams illustrate the areas where the reader’s focus            density and crowding in urban environments.
    is directed, and the combination of sequential, diverging
    and qualitative schemes that produced the data emphasis.                The map and legend in Figure 6 offers an example of the
    For each model, we’ll also look at an example map and                   corners model, highlighting areas where the rates of home
    legend.                                                                 ownership or of education are either high or low. The
                                                                            legend uses multiple diverging color schemes around the

<a id="p010-b002"></a>

<!-- p010-b002 -->
TH E CO RN ERS M O D EL
    The corners model, shown in Figure 5, deals with the ex-
    ploratory questions of low/high of x and low/high of y.
    It uses multiple complementary diverging color schemes
    designed to highlight the distinct corners while minimiz-
    ing the interior. The corners model succeeds because the
    complementary diverging color schemes draw attention to
    the extreme areas. It is meant to address questions such as:
    Where are the areas of high income and low education?                   Figure 5. The corners model.

<a id="p010-b003"></a>

<!-- p010-b003 -->
Figure 6. Corners model highlighting areas of either high or low rates of education and home ownership for Leon County, Florida. Data
    from 2010 US Census.

<a id="p010-b004"></a>

<!-- p010-b004 -->
Cartographic Perspectives, Number 94, 2019                       Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 14

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
exterior walls to emphasize the contrast between the four               Further, an anonymous reviewer of this article aptly noted
    corners and minimize the interior areas. The effect is to               that the 3×3 grid colors can be adjusted to achieve differ-
    draw attention to geographic areas where extreme percent-               ent purposes. For example, if it is important to emphasize
    ages of those with advanced education and home owner-                   high and low values, the interior five colors could be light-
    ship are very similar or very dissimilar. The geographic                ened so that the corner colors are more prominent. If it is
    areas with less extreme values of the two population cate-              important to emphasize certain highs and lows (e.g. em-
    gories are minimized through representation with lighter                phasis on low/high, low/low, high/high, or high/low), the
    colors. The goal of this map and legend is to allow quick               two corners representing these values can be left saturated
    and easy identification of areas with very low or very high             and the other two corners can be muted slightly to call less
    values of either variable without distraction from areas                attention.
    with intermediate values.
                                                                            There are limitations to the corners model. It may re-
    Trumbo (1981) called for a 4×4 grid, but we demon-                      quire map readers to consult the legend more often than
    strate a 3×3 grid in Figure 6. In critiquing this palette,              other models due to the lack of color gradation that re-
    Trumbo asked about the 4×4, as it offers more gradation                 minds readers of data values. Additionally, it is import-
    (personal communication, August 2016). Trumbo’s sam-                    ant to select colors that are appropriate to the data type to
    ple color palettes used the Ostwald and Hickethier uni-                 avoid misrepresentation (e.g., qualitative vs. quantitative)
    form color models that could achieve his goals (Robertson               interpretation. Finally, it is worth noting Eyton’s (1984)
    and O’Callaghan 1986). In constructing a sample corner                  and Dunn’s (1989) designs for highlighting high and low
    palette for our demonstrations, we were unable to blend                 data values as shown by Figure 7. Both of these models
    16 colors with sufficient distinctness and order. We are                are alternatives to Trumbo’s corner and diagonal meth-
    unsure if the problem is a change in color model or our                 ods. These models perform the tasks of a corner model by
    limited color blending skills. Thus, we have chosen to use              highlighting high and low data values by the use of pure
    colors similar to Brewer’s (1994) “diverging/diverging”                 colors in the upper-left and lower-right cells with easily
    3×3 scheme to overcome issues with color distinctiveness.               distinguishable colors in the other two corner cells. These

<a id="p011-b002"></a>

<!-- p011-b002 -->
Figure 7. (a) Adapted from Eyton (1984) and (b) Dunn (1989). Both diagrams are alternatives to the corners and the diagonal focal
    models.

<a id="p011-b003"></a>

<!-- p011-b003 -->
Cartographic Perspectives, Number 94, 2019                       Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 15

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
models perform the task of Trumbo’s diagonal model (dis-                 Obama support? What are the income levels in areas of
    cussed later) with the lower-left and upper-right cells using            high foreclosures? The map and legend in Figure 9 show
    a progression of light-to-dark shades of the same color hue              both the degree of support for political candidates as well
    to show the data relationships along the diagonal. Eyton                 as a general idea of the number of votes cast. For example,
    (1984) demonstrates eight classes of data and Dunn (1989)                populated areas with strong Obama support are shaded
    uses five. Data along the diagonal can be represented using              dark blue and rural areas with strong Romney support are
    a single color or multiple colors to show gradation. Both                shaded light pink. Rural areas with relatively equal vot-
    models can represent correlated data as well as outliers.                ing for each candidate are shaded light purple. Instead of
                                                                             choropleth enumeration units, the map uses a 1km grid
                                                                             system. The colors along the x-axis create categories show-
    TH E RAN G E M O D EL                                                    ing the percentage of support for each candidate. Within
    The range model, shown in Figure 8, illustrates the range                each category, a sequential scheme along the y-axis indi-
    of y within the low/high of x. The primary focal axis con-               cates the number of votes within each region.
    sists of a qualitative color scheme that provides an orga-
    nizing structure to separate data into visually distinct                 Trumbo (1981) used specific color codes to achieve color
    categories, resembling ribbons. The secondary axes are                   gradations. However, we were unable to successfully select
    sequential interior schemes that show the progression of                 colors that achieved both order and separation in a visually
    values from low to high within each category. Users can                  appealing manner. Instead, we found that the value-by-al-
    select a category of interest along the x-axis, and then see             pha symbolization of Roth, Woodruff, and Johnson (2010)
    the range of values distributed throughout. Our diverging                worked very well.
    color schemes vary somewhat from Brewer’s (1994). While
    she describes hers as having steps of lightness, our involve             It is worth noting that the range model is the only focal
    colors that fall along gradients that diverge from a quan-               model that can map qualitative data. Categorical colors
    titative midpoint, but do not necessarily require a change               can represent the different types of data in the x-direction
    in lightness.

<a id="p012-b002"></a>

<!-- p012-b002 -->
The range model addresses questions such as: What are
    the ranges of education among those with high incomes?
    About how many votes were cast in areas with strong

<a id="p012-b003"></a>

<!-- p012-b003 -->
Diverging X-Axis/Sequential Y-Axis

<a id="p012-b004"></a>

<!-- p012-b004 -->
Qualitative X-Axis/Sequential Y-Axis

<a id="p012-b005"></a>

<!-- p012-b005 -->
Figure 9. An example of the range model, showing the number of
                                                                             votes cast in areas with a given level of support for a candidate.
                                                                             Data are 2012 precinct-level election results reported to the
                                                                             Florida Division of Elections, disaggregated to census blocks
    Figure 8. Two versions of the range model, with either diverging         (spatial interpolation weighted for population 18 years and
    or qualitative colors along the x-axis.                                  older), then disaggregated to a 1km grid.

<a id="p012-b006"></a>

<!-- p012-b006 -->
Cartographic Perspectives, Number 94, 2019                        Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 16

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
while quantitative values are mapped in the y-direction.
    An example of a qualitative map could be one of predom-
    inant agricultural production by county. For each coun-
    ty, the main agricultural product (e.g., corn, wheat, soy)
    could be represented along the x-axis through columns,
    while the total amount harvested (quantitative) could be
    represented along the y-axis using a transparency gradient.
                                                                        Figure 10. The diagonal model.
    Another example map could show income and education,
    where income distributions are along the y-axis and cate-
    gories of education (e.g., no high school, high school, asso-
    ciate degree, bachelor’s, etc.) comprise the columns along
    the x-axis. Brewer (1994) provides variations on the range
    model. One, a bivariate example, uses a qualitative scheme
    for presentation of nominal data. The second, a binary
    model, presents the range (y-axis) of values within a cate-
    gorical variable (x-axis) while maintaining a binary status
    (e.g., members vs. non-members).

<a id="p013-b002"></a>

<!-- p013-b002 -->
TH E D IAG O NAL M O D EL
    The diagonal model answers exploratory questions about
    the relationship bewteen x and y, as shown in Figure 10. It
    consists of a sequential color scheme at a 45-degree angle,
    to show progression of correlated data, and a diverging
    color scheme on the opposite diagonal, which highlights
    the differences between areas on either side of the main
    diagonal. These two color schemes, at right angles to each
    other, succeed in dividing the data into three categories
    (Carstensen 1984). Correlated data are shown on the di-
    agonal sequence while non-correlated data are shown in
    complementary colors at their respective corners. This is
    similar to the overlay method used by the 1970s Census
    maps; both attempt to show data correlation along the
    diagonal.                                                           Figure 11. Sample map using the diagonal model. Data are from
                                                                        the 2010 US Census.
    The diagonal model can answer questions such as: What
    is the relationship between income and education? Are               orange colors show clearly whether an area’s population is
    tobacco sales and food deserts correlated? Is there a rela-         predominantly elderly or minority. The internal progres-
    tionship between population density and public transpor-            sion of color preserves the degree of population differenc-
    tation? The example map and legend in Figure 11 show                es (e.g., high elderly populations are a darker orange than
    the relationship between elderly and minority populations           areas with low elderly populations).
    using the diagonal model. The complementary colors in
    the diverging color scheme produce a white-gray-black se-           Figure 11 clearly shows the locations where one of the two
    quence along the diagonal. The resulting effect divides the         variables has a much higher percentage than the other. The
    data into three categories: correlated data appear in a gray-       data do not need to be correlated to use this model, as the
    scale sequence, while non-correlated data are shown using           diagonal model shows data to be above, on, or below the
    gradients of complementary colors. In the example map,              diagonal. Contrast Figure 11 with Figure 1, which used
    there are few greyscale areas, as the data themes feature           the overlay method. Recall that Figure 7 presents an alter-
    little correlation. However, the complementary blue and             native version of the corners and diagonal models.

<a id="p013-b003"></a>

<!-- p013-b003 -->
Cartographic Perspectives, Number 94, 2019                   Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 17

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
R ES U LT S
    In order to compare the focal models in detail, we cre-                  The range model (Figure 13) shows a diverging color se-
    ated three maps, one per model, of the same two datasets:                quence along the obesity axis, with sequential colors rep-
    the percentages of obese and of physically inactive per-                 resenting the range of inactivity in each obesity category.
    sons per county, from the US County Health Rankings &                    This map could be used to answer the following questions,:
    Roadmaps Program (University of Wisconsin Population                     Where are the areas of highest inactivity and highest obe-
    Health Institute 2016). Figures 12–14 illustrate the results.            sity? What is the range of inactivity in the counties with
                                                                             the highest obesity? Note that in this map, counties with
    In the corners model (Figure 12), the diverging comple-                  the highest inactivity, regardless of obesity category, have
    mentary colors in each corner separate high values from                  a high saturation. This shifts the readers’ focus strictly to
    low values. Since this model focuses on high and low                     the activity levels rather than how activity relates to obe-
    values, a 3×3 grid is sufficient, with intermediary shades               sity, which should be considered when categorizing data
    working only to separate the corners. This map can answer                and designing a color scheme.
    the following questions: Where are areas of high obesi-
    ty and high inactivity? Where are areas of high obesity                  The diagonal model (Figure 14) shows both obesity and
    and low inactivity? Where are areas of low obesity and                   inactivity with sequential colors. The diagonal, represent-
    low inactivity? Where are areas of low obesity and high                  ing a correlation between the two, follows a grayscale se-
    inactivity?                                                              quence, while the more saturated blue and orange corners

<a id="p014-b002"></a>

<!-- p014-b002 -->
Figure 12. Corners model of obesity and inactivity in the lower 48 states.

<a id="p014-b003"></a>

<!-- p014-b003 -->
Cartographic Perspectives, Number 94, 2019                        Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 18

<a id="page-015"></a>

## PDF page 15

<a id="p015-b001"></a>

<!-- p015-b001 -->
Figure 13. Range model of obesity and inactivity in the lower 48          Figure 14. Diagonal model of obesity and inactivity in the lower
    states.                                                                   48 states.

<a id="p015-b002"></a>

<!-- p015-b002 -->
Figure 15. Inverted range model of activity and obesity in the lower 48 states.

<a id="p015-b003"></a>

<!-- p015-b003 -->
Cartographic Perspectives, Number 94, 2019                         Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 19

<a id="page-016"></a>

## PDF page 16

<a id="p016-b001"></a>

<!-- p016-b001 -->
represent non-correlation. The map could answer the fol-                 answer questions such as: Where are the areas of lowest
    lowing questions: Where are obesity and inactivity posi-                 activity and highest obesity? What is the range of activity
    tively correlated? Where do obesity and inactivity differ?               in the counties with higher percent obesity?
    The most attention is drawn to the black areas of the map,
    which represent areas with high, correlated values of obe-               Figure 16 shows that a reclassification from “inactivity”
    sity and inactivity.                                                     to “activity,” though beneficial for the range model map,
                                                                             is detrimental for the diagonal model map, whose color
    To illustrate how changing the color scheme can affect the               scheme now represents an entirely different purpose.
    outcome of the data interpretation, we inverted the “inac-               The new diagonal emphasizes any correlation between
    tivity” dataset to an “activity” dataset for Figures 15–16,              increased activity and increased obesity, which is both a
    and switched the axes while keeping the color scheme                     very different perspective on the datasets than before,
    the same. Now, the range model in Figure 15 illustrates                  and a correlation that mostly doesn’t appear on the map.
    activity levels on the x-axis with diverging colors, while               However, the map can answer questions such as: Where
    a sequential scheme shows obesity along the y-axis. In                   are high activity levels and high obesity levels? Where are
    contrast to Figure 13, this reclassification of inactivity to            low activity levels and high obesity levels? Is there positive
    activity provides a more intuitive understanding of how                  correlation between increased activity and increasing obe-
    activity levels may relate to obesity levels. Rising activi-             sity? Is there lack of correlation between increased activity
    ty would seem to indicate lower obesity, rather than lower               and increasing obesity?
    inactivity indicating lower obesity. This allows readers to

<a id="p016-b002"></a>

<!-- p016-b002 -->
Figure 16. Inverted diagonal model of activity and obesity in the lower 48 states.

<a id="p016-b003"></a>

<!-- p016-b003 -->
Cartographic Perspectives, Number 94, 2019                        Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 20

<a id="page-017"></a>

## PDF page 17

<a id="p017-b001"></a>

<!-- p017-b001 -->
CO NCLUSIO NS
    To be effective, maps must be designed for their in-                     producing focal models, sample color palettes, and sample
    tended use. Bivariate and univariate maps share many of                  maps (Table 4). The three resulting focal models offer map-
    the same design challenges, but the multidimensional as-                 makers bivariate choropleth options other than the sin-
    pect of the former adds extra complexity. To address this,               gle-purpose overlay scheme, and they lead to design choic-
    Trumbo (1981) proposed three types of bivariate choro-                   es that support a map’s intended purpose by highlighting
    pleth maps, each with unique purposes and goals. Our                     the appropriate data. The focal model diagrams, and our
    work, under the guidance of Trumbo, extends his ideas by                 sample materials, provide guidelines for the production of

<a id="p017-b002"></a>

<!-- p017-b002 -->
Inquiry Syntax &
       Focal Model                                  Focal Areas                      Focal Axes                         Sample Color Palette
                         Sample Question

<a id="p017-b003"></a>

<!-- p017-b003 -->
low/high of x and low/
                         high of y
       Corners           Where are areas of
                         high income and low
                         education?

<a id="p017-b004"></a>

<!-- p017-b004 -->
Diverging

<a id="p017-b005"></a>

<!-- p017-b005 -->
range of y within low/
                         high of x

<a id="p017-b006"></a>

<!-- p017-b006 -->
What is the range of
                         education among high
                         earners?

<a id="p017-b007"></a>

<!-- p017-b007 -->
Range

<a id="p017-b008"></a>

<!-- p017-b008 -->
Qualitative

<a id="p017-b009"></a>

<!-- p017-b009 -->
range of y within
                         category

<a id="p017-b010"></a>

<!-- p017-b010 -->
What is the range of
                         education within each
                         category?

<a id="p017-b011"></a>

<!-- p017-b011 -->
relationship of x and y

<a id="p017-b012"></a>

<!-- p017-b012 -->
Diagonal          What is the relationship
                         between income and
                         education?

<a id="p017-b013"></a>

<!-- p017-b013 -->
Table 4. Summary of focal models and their attributes.

<a id="p017-b014"></a>

<!-- p017-b014 -->
Cartographic Perspectives, Number 94, 2019                        Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 21

<a id="page-018"></a>

## PDF page 18

<a id="p018-b001"></a>

<!-- p018-b001 -->
bivariate choropleth maps in a GIS production environ-               to the clarity of these maps, including the size of geo-
    ment. We also presented a methodology to relate typical              graphic areas, display devices, and the user’s knowledge
    map user questions to the appropriate focal model, which             and experience with the data.
    can be used for cartographic decision making.
                                                                         In this paper, we have provided a framework for linking
    There is more work to be done to improve the design of
                                                                         types of bivariate maps with focal models, and thereby
    bivariate choropleths, and future work could explore color
    palette selection, the role of color saturation, classification      operationalized Trumbo’s (1981) principles of bivariate
    choices, the value of statistics in revealing data relation-         map design. Using this framework, GIS practitioners have
    ships, and mapping data uncertainty. We also urge re-                a practical outline for how to create bivariate choropleth
    searchers to consider external factors that could contribute         maps.

<a id="p018-b002"></a>

<!-- p018-b002 -->
ACK N OWL ED G E M EN TS
    The authors would like to thank Bruce Trumbo for                     Huffman, and three anonymous reviewers provided valu-
    revisiting his original ideas and providing insight on               able comments and suggestions. Our thanks to Brittany
    our interpretations of his work. Amy Griffin, Daniel P.              Gress for her support with graphics.

<a id="p018-b003"></a>

<!-- p018-b003 -->
REFERENCES
    Bernard, Jürgen, Martin Steiger, Sebastian Mittelstädt,              Bujack, Roxana, Terece L. Turton, Francesca Samsel,
      Simon Thum, Daniel Keim, and Jörn Kohlhammer.                        Colin Ware, David H. Rogers, and James Ahrens.
      2015. “A Survey and Task-Based Quality Assessment                    2017. “The Good, the Bad, and the Ugly: A Theoretical
      of Static 2D Colormaps.” Visualization and Data                      Framework for the Assessment of Continuous
      Analysis 2015, edited by David L. Kao, Ming C. Hao,                  Colormaps.” IEEE Transactions on Visualization
      Mark A. Livingston, and Thomas Wischgoll. Bellingham,                and Computer Graphics 24 (1): 923–933. https://doi.
      WA: SPIE. https://doi.org/10.1117/12.2079841.
                                                                           org/10.1109/TVCG.2017.2743978.

<a id="p018-b004"></a>

<!-- p018-b004 -->
Bertin, Jacques. 1973. Semiologie Graphique, Second                  Caquard, Sébastien. 2015. “Cartography III: A
      Edition. The Hague: Mouton-Gautier.                                  Post-representational Perspective on Cognitive
                                                                           Cartography.” Progress in Human Geography, 39 (2):
                                                                           225–235. https://doi.org/10.1177/0309132514527039.
    Brewer, Cynthia A. 1994. “Color Use Guidelines for
      Mapping and Visualization.” In Modern Cartography.                 Carstensen, Lawrence W. 1984. “Perceptions of
      Vol. 2: Visualization in Modern Cartography, edited                  Variable Similarity on Bivariate Choropleth Maps.”
      by Alan M. MacEachren and D. R. Fraser Taylor,                       The Cartographic Journal 21 (1): 23–29. https://doi.
      123–147. New York: Elsevier Science, Inc. https://doi.               org/10.1179/caj.1984.21.1.23.
      org/10.1016/B978-0-08-042415-6.50014-4.
                                                                         ———. 1986. “Bivariate choropleth mapping: The effects
                                                                          of Axis Scaling.” The American Cartographer 13 (1):
    ———. 2005. Designing Better Maps: A Guide for GIS
                                                                          27–42. https://doi.org/10.1559/152304086783900158.
     Users. Redlands, CA: Esri Press.
                                                                         Carswell, C. Melody, and Christopher D. Wickens. 1990.
    Brewer, Cynthia A., Mark Harrower, Ben Sheesley, Andy                  “The Perceptual Interaction of Graphical Attributes:
      Woodruff, and David Heyman. 2015. “ColorBrewer:                      Configurality, Stimulus Homogeneity, and Object
      Color Advice for Cartography.” Accessed December                     Integration.” Perception & Psychophysics 47: 157–168.
      22, 2015. http://www.ColorBrewer.org.                                https://doi.org/10.3758/BF03205980.

<a id="p018-b005"></a>

<!-- p018-b005 -->
Cartographic Perspectives, Number 94, 2019                    Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 22

<a id="page-019"></a>

## PDF page 19

<a id="p019-b001"></a>

<!-- p019-b001 -->
Dunn, Richard. 1989. “A Dynamic Approach to Two-                     MacEachren, Alan M. 1995. How Maps Work:
      variable Color Mapping.” The American Statistician 43               Representation, Visualization, and Design. New York:
      (4): 245–252. https://doi.org/10.1080/00031305.1989.                Guilford Press.
      10475669.
                                                                         MacEachren, Alan M., Monica Wachowicz, Robert
    Elmer, Martin E. 2013. “Symbol Considerations                         Edsall, Daniel Haug, and Raymon Masters. 1999.
      for Bivariate Thematic Maps.” Proceedings of 26th                   “Constructing Knowledge from Multivariate
      International Cartographic Conference, Dresden,                     Spatiotemporal Data: Integrating Geographical
      Germany. https://icaci.org/files/documents/ICC_                     Visualization with Knowledge Discovery in Database
      proceedings/ICC2013/_extendedAbstract/278_                          Methods.” International Journal of Geographical
      proceeding.pdf.                                                     Information Science 13 (4): 311–334. https://doi.
                                                                          org/10.1080/136588199241229.
    Eyton, J. Ronald. 1984. “Map Supplement:
      Complementary-color, Two-variable Maps.” Annals of                 Meyer, Morton A., Frederick R. Broome, and
      the Association of American Geographers 74 (3): 477–490.            Richard H. Schweitzer Jr. 1975. “Color Statistical
      https://doi.org/10.1111/j.1467-8306.1984.tb01469.x.                 Mapping by the U.S. Bureau of the Census.” The
                                                                          American Cartographer 2 (2): 101–117. https://doi.
    Fienberg, Stephen E. 1979. “Graphical Methods in                      org/10.1559/152304075784313250.
       Statistics.” The American Statistician 33 (4): 165–178.
                                                                         Monmonier, Mark. 1989. “Interpolated Generalization:
       https://doi.org/10.1080/00031305.1979.10482688.
                                                                          Cartographic Theory for Expert Guided Feature
    Friendly, Michael. 2008. “The Golden Age of Statistical               Displacement.” Cartographica 26 (1): 43–64. https://
       Graphics.” Statistical Science 23 (4): 502–535. https://           doi.org/10.3138/V700-H680-077Q-6503.
       doi.org/10.1214/08-sts268.
                                                                         ———. 2006. “Cartography: Uncertainty,
                                                                          Interventions, and Dynamic Display.” Progress in
    Halliday, Sandra M. 1987. Two-variable Choropleth Maps:
                                                                          Human Geography 30 (3): 373–381. https://doi.
      An Investigation of Four Alternate Designs. Master’s
                                                                          org/10.1191/0309132506ph612pr.
      Thesis, Memorial University of Newfoundland. http://
      research.library.mun.ca/id/eprint/890.                             Nelson, Elisabeth S. 2000. “Designing Effective
                                                                           Bivariate Symbols: The Influence of Perceptual
    Jin, Hai, and Diansheng Guo. 2009. “Understanding
                                                                           Grouping Processes.” Cartography and Geographic
       Climate Change Patterns with Multivariate
                                                                           Information Science 27 (4): 261–278. https://doi.
       Geovisualization.” In 2009 IEEE International
                                                                           org/10.1559/152304000783547786.
       Conference on Data Mining Workshops, edited by Yucel
       Saygin, Jeffrey Xu Yu, Hillol Kargupta, Wei Wang,                 Nyerges, Timothy L. 1991. “Analytical Map Use.”
       Sanjay Ranka, Philip S. Yu, and Xindong Wu, 217–                    Cartography and Geographic Information Systems 18 (1):
       222. Washington: IEEE. https://doi.org/10.1109/                     11–22. https://doi.org/10.1559/152304091783805635.
       ICDMW.2009.91.
                                                                         Olson, Judy M. 1981. “Spectrally Encoded Two-
    Kimball, Miles A., and Charles Kostelnick, eds. 2017.                  variable Maps.” Annals of the Association of
      Visible Numbers: Essays on the History of Statistical                American Geographers 71 (2): 259–276. https://doi.
      Graphics. London: Routledge.                                         org/10.1111/j.1467-8306.1981.tb01352.x.

<a id="p019-b002"></a>

<!-- p019-b002 -->
Leonowicz, Anna. 2006. “Two-variable Choropleth Maps                 Perdue, Nicholas A. 2013. “The Vertical Space
      as a Useful Tool for Visualization of Geographical                   Problem: Rethinking Population Visualizations in
      Relationship.” Geografija 42 (1): 33–37. https://                    Contemporary Cities.” Cartographic Perspectives 74:
      publications.lsmuni.lt/object/elaba:6210410.                         9–28. https://doi.org/10.14714/cp74.83.

<a id="p019-b003"></a>

<!-- p019-b003 -->
Cartographic Perspectives, Number 94, 2019                    Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 23

<a id="page-020"></a>

## PDF page 20

<a id="p020-b001"></a>

<!-- p020-b001 -->
Rheingans, Penny. 1997. “Dynamic Color Mapping of                 Tukey, John W. 1980. “We Need Both Exploratory and
      Bivariate Qualitative Data.” Proceedings: Visualization           Confirmatory.” The American Statistician 34 (1): 23–25.
      ‘97: 159–166. New York: ACM. https://doi.                         https://doi.org/10.1080/00031305.1980.10482706.
      org/10.1109/VISUAL.1997.663874.
                                                                      Tyner, Judith A. 2010. Principles of Map Design. New
    Robertson, Philip K., and John F. O’Callaghan. 1986.                York: Guilford Press.
      “The Generation of Color Sequences for Univariate
                                                                      University of Wisconsin Population Health Institute.
      and Bivariate Mapping.” IEEE Computer Graphics and
                                                                        2016. “Rankings Data and Documentation.”
      Applications 6 (2): 24–32. https://doi.org/10.1109/               County Health Rankings and Roadmaps.
      MCG.1986.276688.                                                  Accessed December 18, 2019. https://www.
                                                                        countyhealthrankings.org/explore-health-rankings/
    Roth, Robert E., Andrew W. Woodruff, and Zachary F.                 rankings-data-documentation.
      Johnson. 2010. “Value-by-alpha Maps: An Alternative
      Technique to the Cartogram.” The Cartographic Journal           Wainer, Howard, and Carl M. Francolini. 1980. “An
      47 (2): 130–140. https://doi.org/10.1179/00087040                Empirical Inquiry Concerning Human Understanding
      9X12488753453372.                                                of Two-variable Color Maps.” The American Statistician
                                                                       34 (2): 81–93. https://doi.org/10.1080/00031305.1980
    Slocum, Terry A., Robert B. McMaster, Fritz C. Kessler,            .10483006.
       and Hugh H. Howard. 2005. Thematic Cartography and
       Geographic Visualization, Second Edition. Upper Saddle         Waters, Nigel. 2018. “GIS: History.” International
       River, NJ: Pearson Prentice Hall.                               Encyclopedia of Geography, edited by Douglas
                                                                       Richardson, Noel Castree, Michael F. Goodchild,
    Stevens, Joshua. 2015. Bivariate Choropleth Maps:                  Audrey Kobayashi, Weidong Liu, and Richard A.
       A How-to Guide. Accessed June 24, 2015.                         Marston. https://doi.org/10.1002/9781118786352.
                                                                       wbieg0841.pub2.
       http://www.joshuastevens.net/cartography/
       make-a-bivariate-choropleth-map.                               Ware, Colin. 2009. “Quantitative Texton Sequences
                                                                       for Legible Bivariate Maps.” IEEE Transactions on
    Trumbo, Bruce E. 1981. “A Theory for Coloring Bivariate
                                                                       Visualization and Computer Graphics 15 (6): 1523–1529.
      Statistical Maps.” The American Statistician 35 (4):
                                                                       https://doi.org/10.1109/TVCG.2009.175.
      220–226. https://doi.org/10.1080/00031305.1981.10
      479360.                                                         Wickens, Christopher D., John Lee, Yili Liu, and Sally
                                                                       Gordon Becker. 2004. An Introduction to Human
    Tufte, Edward R. 1990. Envisioning Information.                    Factors Engineering, Second Edition. Upper Saddle
      Cheshire, CT: Graphics Press.                                    River, NJ: Prentice Hall.

<a id="p020-b002"></a>

<!-- p020-b002 -->
———. 2001. The Visual Display of Quantitative                     Wyszecki, Günter, and W. S. Stiles. 1967. Color Science,
     Information. Cheshire, CT: Graphics Press.                        Second Edition. New York: John Wiley & Sons.

<a id="p020-b003"></a>

<!-- p020-b003 -->
Cartographic Perspectives, Number 94, 2019                 Operationalizing Trumbo’s Principles of Bivariate Choropleth Map Design – Strode et al. | 24
