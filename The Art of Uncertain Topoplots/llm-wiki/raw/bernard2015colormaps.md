---
id: "bernard2015colormaps"
title: "A Survey and Task-Based Quality Assessment of Static 2D Colormaps"
source_file: "The Art of Uncertain Topoplots/papers/bernard2015colormaps.pdf"
source_sha256: "e481497c01f56c8671888d901289eeb38dca9f87b8b09c6821d025193a8aa35b"
extraction_format: 1
---

# A Survey and Task-Based Quality Assessment of Static 2D Colormaps — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
A Survey and Task-Based Quality Assessment of Static 2D Colormaps
          Jürgen Bernarda, c and Martin Steigera, c and Sebastian Mittelstädtb and Simon Thuma
                                and Daniel Keimb and Jörn Kohlhammera, c
                     a Fraunhofer Institute for Computer Graphics Research IGD, Germany;
                                              b University of Konstanz, Germany;
                                                    c TU Darmstadt, Germany;

<a id="p001-b002"></a>

<!-- p001-b002 -->
Figure 1. Static 2D colormaps with the highest overall rating for black or white backgrounds. From left to right: TeulingFig3,1 Mittelstädt et
al.,2 Ramirez et al..3 Bremm et al. (regular),4 TeulingFig3NoWhitening,1 TeulingFig2,1 TeulingFig4a,1 Cube Diagonal Cut B-C-Y-R,4–8

<a id="p001-b003"></a>

<!-- p001-b003 -->
ABSTRACT
Color is one of the most important visual variables since it can be combined with any other visual mapping to encode
information without using additional space on the display. Encoding one or two dimensions with color is widely explored
and discussed in the field. Also mapping multi-dimensional data to color is applied in a vast number of applications, either
to indicate similar, or to discriminate between different elements or (multi-dimensional) structures on the screen. A variety
of 2D colormaps exists in literature, covering a large variance with respect to different perceptual aspects. Many of the
colormaps have a different perspective on the underlying data structure as a consequence of the various analysis tasks that
exist for multivariate data. Thus, a large design space for 2D colormaps exists which makes the development and use of
2D colormaps cumbersome. According to our literature research, 2D colormaps have not been subject of in-depth quality
assessment. Therefore, we present a survey of static 2D colormaps as applied for information visualization and related fields.
In addition, we map seven devised quality assessment measures for 2D colormaps to seven relevant tasks for multivariate
data analysis. Finally, we present the quality assessment results of the 2D colormaps with respect to the seven analysis tasks,
and contribute guidelines about which colormaps to select or create for each analysis task.
Keywords: 2D colormap, data comparison, data projection, color spaces, user perception, evaluation, quality assessment,
information visualization, visual analytics

<a id="p001-b004"></a>

<!-- p001-b004 -->
1. INTRODUCTION
Color is one of the most important and widely used variables to encode data values in information visualization. Prominent
application fields are social sciences, statistical analysis, economics, biology, chemistry, medicine, physics, computer
graphics, multimedia, and many others. Color is used to encode qualitative, as well as quantitative data values. For the latter,
colormap designers distinguish between unipolar and bipolar data attributes. Influential methodologies for the use of color in
general were presented by Ware and Brewer.9, 10 Further, color is not just used for univariate, but also for multivariate data.
For this kind of data, dimension reduction techniques are often applied to map the data into a 2D space. As a result, static
2D colormaps can be used to facilitate the encoding of data with color, as shown in Figure 1. The analytical tasks for the use
of colormaps for multi-dimensional data differ considerably compared to those for univariate data. Colormaps for univariate
data are often explained explicitly with colormap legends within a visualization system. Thus, some sort of ‘semantics’ is
introduced and color values are used to support lookup, comparison and other elementary tasks. However, the semantics
(or: intrinsic properties) of multivariate data are more complex. In this case, color is usually applied in a relative context
to indicate similar, or to discriminate between different multivariate data values (or clusters). Color is especially useful to
     Further author information: (Send correspondence to Jürgen Bernard)
Jürgen Bernard: E-mail: juergen.bernard@igd.fraunhofer.de, Telephone: +49 6151 155666

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
enrich the visualization if accurate visual variables (such as position) are already used for other encodings. Moreover, in
many approaches the colors of 2D colormaps are also used for linking (multivariate) data values between different views.
    However, the design of ‘good’ 2D colormaps is a sophisticated exercise. Many quality criteria exist and requirements
towards colormaps are often contradicting.11 One example is the number of colors covered by a 2D colormap. In order to
discern different data values, colormaps should contain a vast number of visually distinct colors (color exploitation). On the
other hand, the perceived distance between two colors should correspond to the geometrical distance on the 2D colormap
and thus to the distance in the data space. However, ensuring the so-called perceptual linearity becomes more difficult when
more colors are involved. Thus, a trade-off between these two quality criteria has to be made. The challenge of designing a
colormap that supports several user tasks is more difficult or may even be impossible. Following Tominski et al.,12 the what
aspect (what data is visualized) is not the only influencing aspect. Colormap design also depends on the question why (for
which task13 ) the data is encoded. Furthermore, for whom (which users) the colormap is targeted has a decisive influence on
the design. Finally, where the visualization is shown (device) also has considerable implications on the design.
    In summary, the different criteria yield into a large design space which makes the design of 2D color maps a challenging
task. While a variety of 2D colormaps exist today, we identify that these colormaps all perform differently with respect to
quality assessment measures. Thus, applying 2D colormaps with respect to different analytical tasks strongly depends on the
map design, and the task. One may assume that not every existing 2D colormap was designed on behalf of all important
quality assessment indicators, or on the task they aim to support. However, according to our literature research, there exists
no summarizing work that evaluates existing 2D colormaps with respect to quality assessment criteria.
    In this work, we present a survey of the most prominent static 2D colormaps used in a variety of application fields
related to information visualization. We focus on applications with general 2D colormaps where the focus is on en- and
decoding data relations of more than one-dimensional data with color; and not on two-dimensional color mapping where
the focus is on metric quantities of the dimensions, for example, with color-hue encoding dimension X, and saturation
encoding dimension Y . The surveyed 2D colormaps were re-implemented to assess their quality. Therefore, we devise
novel quality measures based on the requirements of the established task model of Andrienko & Andrienko.13 We further
present a taxonomy of task-based requirements for the use of 2D colormaps for multivariate data (note that we do not
follow approaches for encoding bivariate data). For every provided task, we suggest combinations of relevant quality criteria
and determine respective quality assessment measures. Finally, we present the best 2D colormaps for any of the described
analytical tasks and discuss quality-dependent varieties among the 2D colormaps.

<a id="p002-b002"></a>

<!-- p002-b002 -->
2. RELATED WORK
2.1 Colorspaces and Color Theory
How precisely color is perceived is still a focus of research. Hunt et al.14 and Fairchild15 offer a full discussion of color
appearance. The standardized color appearance model CIECAM0216 (which is used in this paper) is based on the results
of the Hunt model but is adapted for industrial practical usage. It is well known that the RGB and HSV color spaces are
not perceptually uniform, i.e. they cannot be used to measure the perceptual distance of two colors. CIE LAB and CIE
LUV almost fulfil this criteria and are widely used for perceptual estimations in the field of information visualization.17
These color spaces have been refined over the years (e.g. DIN 99) and distance metrics (such as CIEDE 2000) have been
devised aiming at perceptual uniformity, where a value of ∆E = 1 expresses the just noticeable difference (noticed by half
of the observers). The DIN 99 color space and the CIECAM02 color appearance model are recent developments that define
a perceptual color space with reversible conversion operations. In such well-defined perceptual color spaces, colormaps
can be created by interpolation within the color space.
     Luo et al. defined a similar ∆E based on CIECAM02,18 based on the idea that a CAM should be a natural candidate
to define a ∆E because similarity of colors is rooted in their appearance attributes. Luo et al. correlated appearance attribute
differences to the color difference data sets also used to develop CIE DE 2000 and DIN99, and obtained a color difference
formula and three parameterizations named CIECAM02-SCD (based on the dataset of Small Color Differences), CIECAM02-
LCD (Large Color Differences), and CIECAM02-UCS (fit both datasets). In this paper, we use the CIECAM02-UCS variant
(CAM02-UCS in short) as we require measures of small and large color differences which are comparable. Also, Luo et
al. reported CAM02-UCS predictive performance to be on par with the SCD and LCD variants. A shortened definition is
repeated in equation 1, for a complete discussion please see Luo et al..18 CAM02-UCS is an Euclidean distance defined in a
suitable derivative of CIECAM02. Starting from CIECAM02 attributes J, M and h, ∆E in CAM02-UCS is defined as follows:

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
(1 + 100c1 )J
              J0 =                  M 0 = (1/c2 )ln(1 + c2 M)                       q
                       1 + c1 J                                    ∆E = ∆EUCS =      (∆J 0 /KL )2 + ∆a02 + ∆b02              (1)
              a0 = M 0 cos(h)        b0 = M 0 sin(h)

<a id="p003-b002"></a>

<!-- p003-b002 -->
The fitting constants KL , c1,2 are obtained from a parametrization table determined by Luo et al. for the SCD, LCD and
UCS variants. ∆J 0 and other deltas refer to the corresponding difference between two given colors.

<a id="p003-b003"></a>

<!-- p003-b003 -->
2.2 Criteria for the Design of (2D) Colormaps
The existing related literature discusses many different criteria for the use of color. However, only few works have been
presented discussing or evaluating design criteria for 2D colormaps. The works of Guo, and Bremm et al. may serve as
examples .4, 19 Thus, in this section, we shed light on colormap design from a wide range of color-related research. In order
to create a solid foundation for our measures, we review the motives, requirements and criteria introduced in the related
work. The terminology differs significantly within the existing literature. Thus, we summarize different criteria with terms
we consider as most representative.
    Color exploitation is based on the idea that one might want to use as many colors as possible, i.e. a large (but sensible)
fraction of the possible perceptible colors. Related is the phenomenon of contrast, i.e. (strongly) visible differentiation, is
seen as important in several related works. Bremm et al.4 call for ‘high color resolution/contrast, [to] increase the perception
of color differences for comparison’; Baum et al.20 recommend that ‘the contrast for each source should be maximized’.
    Perceptual linearity: To date there is no accepted uniform color space that explains all the phenomena observable in
color vision. Since we are looking at colormaps applied to data, perceptual linearity is a function of both the working color
space and, for better or worse, the mapping of data values into the color space. Tominski et al.12 elaborate ‘if the data’s value
range is given by a linear function, the colormapping function has to be constructed in such a way that the color coding is
perceived as linear as well’. Baum et al. intend linearity to express the true magnitude of variation in the data.20
    Equal visual importance is relevant in cases where there is no prior knowledge that should be factored in, like in
visualizations supporting hypothesis generation. More formally, the works of Bergmann and Rogowitz21 suggest that for
localizing and separating groups, sets of values or data points in the segmentation task, they have to be assigned with
significantly different colors but with equal visual importance.
    Separation or separability: Differences in values of a variable should be represented by different colors. While
separability may be very dependent on qualities of the data, it often just depends on color space exploitation. Trumbo22
stresses that a ’colormapping function f has to be invertible’, which may be interpreted in the mathematical sense on f
but as well along the ’whole chain’, i.e. including the perceptual distance of the colors produced by f . This view gains
recognition in Tominski et al.12 who state that two different data values should be visually distinguishable because visually
similar colors imply that they represent data values that are close to each other.
    Rows and columns: A closely related concept is that of separation of individual color characteristics such as hue or
lightness. Trumbo and Baum et al. call for an equivalent of rows and columns in the colormap, where value progressions of
one variable should not be compromised by a second perceptual variable.20, 22 Modern color models such as CIECAM02
attempt to provide this form of separation with their color appearance attributes. While generally desirable, it is not required
for mapping dimensionally reduced data, which we focus on here.
    Background sensitivity is an issue when a background color is present which does not represent data, or represents a
‘no data’ value (known absence of data). The background needs to be visibly different from the rest of the colors used in
the visualization. Thus, colormaps should avoid confusion with the background. Such criteria are generally accepted and a
formal definition with application guidelines can be found in the Web Accessibility Guidelines, Section 1.4.3.23
    Device independence, the ability to transform colors to another device or other viewing conditions, is necessary to
successfully reproduce visualizations or maps. In theory this is possible if one can transform colors to CIE XYZ, the
conventional color interchange space, but in practice different target devices often lead to poor color precision. Tominski et
al.12 mention this, while Brewer10 even proof-printed maps and adjusted color schemes to achieve device indedendence.
    Ease of implementation is, technically, the inverse of the complexity of the color space and the construction method.
In practice it is also dependent on how understandable the accounts on how the construction is to be implemented are, or
how easy they are to obtain. Many authors give only imprecise information on how they turned their data into color.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
Figure 2. Colormaps excluded from the test. The designs are for the visualization of bivariate data, instead of multivariate data. From left
to right, from top to bottom: Rheingans,35 Rheingans,35 Baum et al.,36 Baum et al.,36 Baum et al.,36 Baum et al.,37 Baum et al.,37 Baum
et al.,37 Baum et al.,37 Brecheisen et al.,38 Brecheisen et al.,38 Lespinats and Aupetit,39 Ruppert et al. ,40 and Ruppert et al. .40
2.3 Guidelines and Task Models for Colormapping
Creating colormaps for data visualizations is a well discussed topic in the literature. Ware’s book9 offers a full discussion of
the visual cognition system and illustrates advanced guidelines and advice for colormapping. Silva et al. present an overview
of color mapping techniques.24, 25 Colormaps for illustrative visualizations are presented by Wang et al.26 with an overview
of perceptual findings and aesthetics. These overviews and surveys primarily focus on perceptual issues and one-dimensional
data encodings, which is different from our approach. Generally, there is no colormap that meets all the requirements of data
visualization equally well. The challenge is to create an appropriate colormap for a specific task and specific data properties,
as proposed in the literature. The resulting guidelines can be classified into data-driven and or task-driven guidelines.
    A data-driven guideline has been defined by Ware.27 He focuses on continuous data but differentiates between the
metric and form tasks. For both form and metric tasks, the challenge is to encode continuous data with discrete color
levels. The metric task needs an discernible representation of data values. Therefore, colormaps need to consider the just
noticeable differences, that are maximized by varying over hues with linear increasing intensity.27, 28 For the form task
this is an ineffective choice, since the human visual system is trained to recognize natural forms (predominantly) based on
luminance.29 This is why the gray scale colormap works very well, although it is limited to only 256 different device levels.
However, contrast illusions could bias our perception when used for metric encodings.27 An application-independent method
that compensates for the bias of contrast effects in visualizations has been introduced previously by Mittelstädt et al..30
    Bergman21 and Rogowitz31 present data- and task-driven guidelines. On the data side Bergman classifies type (ratio, inter-
val), and spatial frequency (high, low). The tasks are described as isomorphic, segmentation, and highlighting. The isomorphic
task faithfully reflects the structure in the (continuous) data and can be compared with Ware’s metric task. For localizing and
separating groups, sets of values or data points in the segmentation task, they have to be assigned significantly different colors
but with equal visual importance. Colormaps for segmentation and categorical data have been discussed previously.17, 32
    Tominski et al.12 based their guidelines on a task model of Andrienko and Andrienko.13 The visualization tasks are
grouped in two levels: elementary and synoptic tasks. While elementary tasks address individual data points, synoptic tasks
consider sets of values or data points. On a lower level, elementary and synoptic tasks are further classified into lookup
(identification or localization of data values or sets of values), comparison of absolute and relative values or between sets of
values, and relation seeking (search for occurrences of relations specific between data characteristics).
    Multi-dimensional encodings with color were evaluated by Ware33 and Wainer.34 Wainer evaluated two-dimensional
encodings and found that 2D colormaps are unintelligible to read metrics of both dimensions. Contradicting, Ware evaluated
whether color dimensions support the user in cluster identification in comparison to spatial dimensions and found that each
additional color dimension is as useful as each additional spatial dimension. Mittelstädt et al.11 therefore grouped the tasks
of Tominski et al.12 and supported cluster identification and cluster localization with their colormapping optimization.
    The works surveyed for this paper were distributed in a variety of application domains following several different
analysis tasks. Following the definitions above, the most prominent task observed was the comparison task on the granularity
of both single data objects (elementary tasks), and clusters (synoptic tasks).13

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
2.4 List of 2D Colormaps
Table 1 shows a list of 2D colormaps presented in the related work. A total of 22 colormaps are listed. For every colormap,
the title, a short description, and the color space is shown. In the column ‘REAL’ an overview of all colormaps is given. The
static 2D color distribution of every colormap also forms the basis for the subsequently conducted quality assessment tests.
Table 1 also displays the (local) value distribution of features of every 2D colormap. The features are in order of appearance:
luminance, red channel, green channel, blue channel, hue values, saturation, value, and attention steering. We neglected the
class of 2D colormaps which target the visualization of two-variable relations as frequently applied in the geo-visualization
or simulation context. In Figure 2, we present representatives of this group.35–42

<a id="p005-b002"></a>

<!-- p005-b002 -->
3. APPROACH
In this section, we detail our 2D colormap quality assessment strategy. Starting with a description of the most relevant
analytical tasks for the use of 2D colormaps for multivariate data, we define a set of quality assessment measures which can
be applied to static 2D colormaps. We then demonstrate how to map each of the measures to the analytical tasks and vice
versa. As a result, we obtain a test bench to evaluate colormap applicability with respect to a set of analytical tasks.

<a id="p005-b003"></a>

<!-- p005-b003 -->
3.1 Requirements for Applying 2D Colormaps based on a Set of Analytical Tasks
The general goal of visual analysis tools is to provide means to perform certain analysis tasks. Thus, colormaps should be
selected according to requirements that support these tasks. We exclude the discussion of the data properties in this paper
and focus on the general analysis tasks and discuss how they can be effectively supported by colormaps in general. The
scope of the paper is on multi-dimensional visual analysis where the focus is on perceiving the data relations in the visual
mapping. Our requirements are based on the task model of Tominski et al.12 In the following, we describe each analysis task
in detail and define the corresponding requirements. In accordance with Tominski’s work, we group the tasks in two levels.
Elementary tasks are defined on single objects in the visualization with respect to their visual mapping whereas synoptic tasks
are performed on sets of objects (clusters or classes). Requirements for colormaps for the elementary tasks are as follows:
ER1 Elementary Lookup comprises localization and identification. Elementary localization defines the task of detecting
    single objects in the visualization with respect to their properties. For example, finding objects that are encoded with
    a light blue color. Elementary identification defines the task of identifying the properties of single objects within
    the visualization. An ideal colormap therefore provides n distinct and salient colors for n distinct objects that are
    visually separable. The requirement ER1 is therefore that colormaps have to provide as many colors as possible that
    are distinct with respect to human perception.
ER2 Equal Visual Importance is the requirement that colors are equally salient. In elementary lookup tasks, especially in
    exploratory setups, analysts may be biased if single objects stand out due to perceptual color effects not related to
    object properties. This requirement is not valid for highlighting tasks, where certain objects should be highlighted with
    e.g., a special color. Therefore, ER2 defines that colormaps should exhibit equal visual importance for every color.
ER3 Elementary Comparison defines the task of comparing the properties of two or more objects. Here, the analyst
    compares the colors of objects and decides whether they are similar or different. Elementary relation seeking describes
    the task of localizing data relations between objects in the visualization. The requirement here is that the data relations
    are preserved in the visual mappings. In other words, the distance of the objects in data space should be equivalent to
    the perceived color distance in the visualization space. Therefore, a conforming 2D colormap has to be perceptually
    linear.

<a id="p005-b004"></a>

<!-- p005-b004 -->
Synoptic tasks are focused on the analysis of sets or groups of objects e.g., identifying clusters in the visualization according
to their color-encoded properties. However, the visualization of groups still represents the sets of single data elements. Thus,
requirements that support the effective mapping of properties of single objects also serve as a basis for higher level tasks.

<a id="p005-b005"></a>

<!-- p005-b005 -->
SR1 Synoptic Localization defines the task to detect an (a priori known) group or class in the visualization. This implies
    that one group has to be visually differentiable against all other groups. For example, one class is encoded in blue
    whereas the other class is encoded in red. The color mapping has to provide colors that separate (known) groups or
    classes of data objects by color (ER1) and still satisfy ER3 between sets. As discussed for elementary localization,
    attention steering towards certain elements or groups can also be harmful and has to be avoided (ER2).

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
Title                                                                       Space REAL LUM   R   G   B    HUE SAT VAL ATT
BCP 3743                                                                    sRGB
CIELab colormap with colors from the BCP 37 (Berkeley Color Project).
Implementation based on a sRGB regression model
Baum et al. G-Y-R-B20, 37                                                   sRGB
2D color lookup table by Baum et al. with the 4 color anchors Green,
Yellow, Red, Black
Bremm et al. (regular)4                                                     L*a*b
Bremm et al. 2011 Fig. 9a: assumed numbers, stick to description except
for a shift.
Bremm et al. (stretched)4                                                   L*a*b
Bremm et al. 2011 Fig. 9b: assumed numbers.

<a id="p006-b002"></a>

<!-- p006-b002 -->
Constant Blue4, 44–47                                                       sRGB
RGB colormap with constant Blue. Red and Green span one axis each.

<a id="p006-b003"></a>

<!-- p006-b003 -->
Constant Green4                                                             sRGB
RGB colormap with constant Green. Red and Blue span one axis each.

<a id="p006-b004"></a>

<!-- p006-b004 -->
Constant Red4                                                               sRGB
RGB colormap with constant Red. Green and Blue span one axis each.

<a id="p006-b005"></a>

<!-- p006-b005 -->
Cube Diagonal Cut B-C-Y-R4–8                                                sRGB
RGB cube diagonal cuting with the anchors Yellow, Red, Blue and Cyan.
X-axis: Green, y-axis: Blue vs. Red
Cube Diagonal Cut B-M-Y-G4, 48–51                                           sRGB
RGB cube diagonal cuting with the anchors Green, Yellow, Magenta, and
Blue. X-axis: Red, y-axis: Blue vs. Green
Four Corners R-B-G-Y52–54                                                   sRGB
RGB colormap with four color anchors in the edges: Red, Blue, Green,
and Yellow.
Griscom and Palmer43                                                        L*a*b
Griscom and Palmer 2013 - not really a 2D color map, maybe not Lab.

<a id="p006-b006"></a>

<!-- p006-b006 -->
Guo et al. (Gaussian)55, 56                                                 L*a*b
Guo 2005 (L*a*b*; Gaussian lightness; xy mapped to ab)

<a id="p006-b007"></a>

<!-- p006-b007 -->
Ramirez et al.3                                                             HSV
HSL-based map with white center and maximal saturation.

<a id="p006-b008"></a>

<!-- p006-b008 -->
Robertson and OCallaghan57                                                  sRGB
RGB colormap with 4x4 discrete color anchors. In the corners: Light-
Orange, Brown, Dark-Brown, Blue
Simula and Alhoniemi58                                                      HSV
HSL-based map with black center and constant saturation.

<a id="p006-b009"></a>

<!-- p006-b009 -->
Mittelstädt et al.2                                                        L*a*b
Generic CIELab-based colormap with perceptually (almost) equi-distant
corners
TeulingFig21                                                                sRGB
See Teuling paper fig. 2 or 4(b). Orientation as in Fig. 4.

<a id="p006-b010"></a>

<!-- p006-b010 -->
TeulingFig31                                                                sRGB
See Teuling paper fig. 3 / 4 (c). This colormap is as described, not as
shown in the paper. Orientation as in Fig. 4
TeulingFig3NoWhitening1                                                     sRGB
See Teuling paper fig. 3 / 4 (c) upper part.

<a id="p006-b011"></a>

<!-- p006-b011 -->
TeulingFig4a1                                                               sRGB
See Teuling paper fig. 4(a). This is as described geometrically, which is
not really in line with the shown colormap.
Wainer and Francolini34                                                     sRGB
RGB colormap with 4x4 discrete color anchors. The colors in the corners
are: Red, Blue, Green, and Yellow.
Yeo et al.59                                                                sRGB
Topological map in geometric RGB color space. Colors: Green, Dark
Green, Pink, Purple
Table 1. An overview of all re-implemented colormaps. The images show the colormap as described in the corresponding paper, and the
spatial distributions of different color components: the luminance, red, green and blue, the hue, saturation, value, and attention steering.

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
SR2 In Synoptic Identification, the task is to identify (unknown) groups or classes in the visualization. For example, an
     analyst identifies clusters of different reddish colors sharing similar properties. Therefore, the analysts’ attention
     should not be dragged towards distracting visual encodings of certain groups. Therefore the visual mapping has to
     preserve all pair-wise data relations (ER3) and further does not assign some groups a high visual importance (ER2).
SR3 Synoptic Comparison and relation seeking are tasks to compare two or more sets of objects. This implies that the
    properties within a set or cluster is preserved and also the relations between clusters. This transfers ER3 to two
    different levels. The color mapping should preserve global (between sets) and local (within sets) data properties. If
    global relations are in focus, the requirement of preserving all pair-wise distances (ER3) can be relaxed since local
    data-properties of single elements are not compared across sets. If the task is to relate or to compare sets of objects,
    then SR3 requires that the relations between sets have to be preserved in the coloring.
SR4 Corresponding to SR3, if the focus is on analyzing local properties of sets, then local relations between set elements
    have to be preserved. Therefore, the coloring can also relax ER3 of preserving all pair-wise distances and focus on
    preserving local relations and discarding global (between sets) relations. Thus, SR4 can be defined to preserve the
    relations of an object to its neighborhood in the color mapping.

<a id="p007-b002"></a>

<!-- p007-b002 -->
3.2 Quality Assessment Measures for 2D Colormaps
The related work on color theory and colormap design has presented a variety of different quality criteria. We provide a
set of quality assessment measures which are mapped to the requirements for applying 2D colormaps. As can be seen in the
related work (e.g., Bremm,4 Mittelstädt11 ), one of the most critical issues in the design of colormaps concerns the trade-off
between color space exploitation and perceptual linearity. All measures are data-independent but focus on the static 2D
space exploited by of the 2D colormaps. The measures calculate scalar values for every 2D colormap. As a result, these
measures facilitate the comparability of 2D colormaps at a global scale, all shown in Table 2. A possible drawback is that
quality criteria hidden in local structures of the 2D colormaps may be overlooked.

<a id="p007-b003"></a>

<!-- p007-b003 -->
Color Space Exploitation - JND Colors (Just Noticeably Different Colors) Color space exploitation is relevant for
elementary ER1 and synoptic SR1 lookup tasks, which includes the localization and identification of objects or sets of
objects. The ability of encoding dissimilar objects with significantly different colors is crucial for a good 2D colormap. Thus,
2D colormaps should exploit large parts of the available color space confirming the colormaps a large number of distinct
colors. The just noticeable distance of two colors is defined in color spaces such as CIE LAB (cf. Section 2.1). Thus, two
colors are perceptually different (distinct) if the color difference ∆E is greater than a predefined threshold depending on the
color space. According to Sharma et al.60 a value of 2.3 is roughly equal to the JND in CIELAB. Therefore, we apply ∆E > 3
as a parameterization for the JND colors to estimate the number of perceptually distinct colors for obtaining a measure for the
exploitation of available colors. We define a JND region on a colormap as the spatial area where the perceived distances to
the center of the region satisfy the equation ∆E <= 32 for all contained color points. This allows us to define a density-based
measure for a JND region membership similar to compactness measures for cluster quality assessment. We calculate the num-
ber of JND colors by estimating the number of non-intersecting JND regions within a 2D colormap beginning at the center of
a colormap (cf. Figure 1). The relative context of applying the identical algorithm to every colormap confers the result a suf-
ficient degree of robustness. We are aware that other implementation variants may lead to slightly different results. However,
the class of algorithms estimating the number of JND colors provides a powerful means to assess the color space exploitation.

<a id="p007-b004"></a>

<!-- p007-b004 -->
Distance to Background - Black Distance and White Distance Most visualization systems draw their color-encoded
data onto a background. Just as well, most papers are printed on white paper. Some colors are more or less visually salient on
different backgrounds (bright colors are well visible on dark backgrounds but their visibility is reduced on white background).
Therefore, the background reduces the amount of colors that can carry information to the analyst. Likewise, we identify the
problem of colors which are similar to contours colors, text, or labeling colors. In such a case, shapes cannot be differentiated
from colored objects preattentively. We provide two quality assessment measures which calculate the minimum JND distance
of every colormap to a white and black reference color rc.
                                                                               
                                                BC(cm, rc) = min ∆E (c, rc)                                                   (2)
                                                              c∈cm

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
JND Region Size Local perceptual linearity is expected for SR4 where the focus is on analyzing the relations of elements
within sets. We assume that all sets within the data span over the whole colormap, which implies that the elements of one
set will span over a smaller region of the colormap. Therefore, one can relax ER3 of preserving all pair-wise distances
and focus on preserving local relations, which implies that only local areas of the colormap need to provide perceptual
linearity. The size of JND regions indicates the homogeneity of the color distribution in the map. If a colormap would be
perfectly perceptually linear, all JND regions would have the same size since the ratio of all pairwise perceptual distances
and respective spatial distances is equal. We define the Region Size measure as the standard deviation of all JND region sizes
of a particular 2D colormap. We invert the scores since lower standard deviations indicate higher quality.

<a id="p008-b002"></a>

<!-- p008-b002 -->
Visual Importance - Attention Steering Not all elements in a visualization are of equal visual importance. Our attention is
dragged towards objects that stimulate our senses. As an example, in social life signal colors are used to gain human attention.
To satisfy ER2 and SR2, we measure whether there are differences in the visual importance of colors within a colormap.
Many experiments have been conducted to determine which color properties drag the human attention. As a result, color
temperature and certain hues,26, 61 as well as brightness and saturation62 attract attention. This also correlates to the guidelines
and rule-of-thumbs of the information visualization domain (e.g.,6326 ). Yet, no measure was defined to validate the potential
attention of a color. However, since the experiments of Brewer63 and Camgös62 reveal the strong impact of brightness and
saturation, we adapt the method of Guo19 that uses a bell-shape raster in CIELAB to create diverging colormaps. This results
in equivalent lightness and chroma for all colors and potentially assigns each color the same importance.√Therefore, we define
attention ca of a color c with the hypotenuse between lightness L and chroma C in CIELAB with c = a2 + b2 . To measure
whether there are differences in the visual importance of colors, we compute the standard deviation of the visual attention
of a set of sampling points. High standard deviations constitute high violations of ER2 which is why we invert the score.
                                                          q
                                                  ca(c) = Lc2 +Cc2                                                               (3)
                                                             1
                                                  cacm =         ∑ |ca(c) − ca|
                                                           |cm| c∈cm
                                                                             ¯                                                  (4)

<a id="p008-b003"></a>

<!-- p008-b003 -->
Distance Ratio Divergence - Perceptual Linearity Providing perceptual linearity is the most relevant requirement for
the comparison of data points, relevant for ER3 SR3. The arithmetical distance of two (multivariate) objects (e.g., provided
by distance measures) should be proportional to the perceived color distance. In other words, similar objects in data space
should have similar colors, while dissimilar objects should have dissimilar colors. For the use of static 2D colormaps,
multivariate data are typically projected into 2D. Thus, for the quality of static 2D colormaps it is crucial that the spatial
distances of any two points on a 2D colormap are proportional to the perceived color distance. If the perceptual distance
between the data objects is equivalent to the spatial distance, then the colormap has the property of perceptual linearity.
This measure also tests for the preservation of global (between sets) relations, since we assume that all sets within the data
span over the whole colormap and thus, tests for SR3. We can define perceptual linearity based on the ratio ph between the
color distance as measured in ∆E and the arithmetical distance (see above) for a pair of projected points p1 , p2 and their
corresponding pair of colors c1 , c2 in the colormap cm.
                                                             ∆E(c1 , c2 )
                                                     phcm =                                                                (5)
                                                              |p1 − p2 |

<a id="p008-b004"></a>

<!-- p008-b004 -->
One measure to assess the perceptual linearity is the Distance Ratio Divergence. In a perfect colormap, the ratio ph is equal
for every possible pair of points. We apply Monte Carlo sampling to provide arbitrarily distant pairs of points and sample
the pmcm for each pair. The Distance Ratio Divergence measure is then defined as the standard deviation of the ph variable.
                                                N                        2
                                           2
                                                          
                                          σcm = ∑ phcm MCi − Ø phcm (MCi )                                                      (6)
                                                 i=1

<a id="p008-b005"></a>

<!-- p008-b005 -->
Distance Ratio Quantiles - Perceptual Linearity We assess the perceptual linearity from a complementary perspective.
We focus on the so-called ‘lie factor’ which is the factor of mis-judgment that a visualization may evoke. In contrary to the
Distance Ratio Divergence which considers all phcm , we here concentrate in outlier values to assess the most diverging
perceptual linearity effects in a colormap. From an identical Monte Carlo sampling, we again use phcm . For Distance Ratio

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
Quantiles, we take the 5% and 95% quantiles of all phcm and provide their quotient as a measure of divergence. In effect,
this measure states the worst lie factor to assume in 90% of possible color distance-based judgements. Good values are just
above 1. On the contrary, values greater than 5 reflect problems in the colormap design method or parametrization.
                                                                Q0.95
                                                        DRD =                                                           (7)
                                                                Q0.05

<a id="p009-b002"></a>

<!-- p009-b002 -->
4. GUIDELINE FOR THE TASK-BASED CHOICE OF STATIC 2D COLORMAPS
In the following, we discuss the results of our quality assessment measures applied on 22 re-implemented 2D colormaps. A
matrix showing the results for all seven quality assessment measures is shown in Table 2. The overall goal was the creation
of a repeatable guideline for the task-based choice of static 2D colormaps that is being backed by reproducible measures.
     In Section 3, we characterized requirements that support most relevant analysis tasks. We suggest a mapping of the seven
presented quality measures to the analysis tasks, depending on the ease of use for each of the provided tasks. A matrix with
all 22 colormaps showing a guideline for the analysis tasks is shown in Table 3. Since every task has a relevant subset of the
seven quality measures, we apply the rank-based Borda count election method to obtain an overall ranking of colormaps for
each analysis task. The rank-based means of the election method is robust in comparison to normalization-based methods.
The Borda count criterion assigns points to each candidate and quality measure, until the count of each colormap defines the
overall rank. To increase the robustness of the method, we filter out colormaps with worse performance in single quality
measures. In particular, colormaps performing worse than 80% other candidates in a respective quality measure are assigned
                    / . Thus, the applied method is comparably robust, prefers good overall performance, and punishes quality
an overall score of ∈
flaws in single quality measures. However, other election criteria are possible. We divide our task-based guideline for the
usage of black and white backgrounds. As a result, colormaps do not necessarily have to perform well for both black and
white backgrounds. As an example Simula and Alhoniemi exploits large parts of the black color space resulting in high
numbers of JND colors but a weak Black Distance score. However, the colormap is appropriate for white backgrounds.

<a id="p009-b003"></a>

<!-- p009-b003 -->
4.1 Elementary Localization and Identification (ER1)
Relevant Measures: JND Colors, Black / White Distance
Users perform elementary localization and identification tasks, whether they try to locate items based on a given color
or identify the color of a data point. As a consequence a high number of JND colors is deemed important. Moreover, the
background and contour colors of the visualization play a major role, which are covered by the Black and White Distance
category. On black backgrounds Cube Diagonal Cut B-C-Y-R, Ramirez et al., and the Teuling et al. (beside TeulingFig2)
perform well. We recommend to use TeulingFig3 for this task on black backgrounds. On white backgrounds Baum et al.,
Cube Diagonal Cut B-C-Y-R, Simula and Alhoniemi, TeulingFig3NoWhitening, and TeulingFig4a perform well, whereas
Simula and Alhoniemi has the best performance. Especially Cube Diagonal Cut B-C-Y-R shows good performance on both
black and white backgrounds, and is easy to re-implement.

<a id="p009-b004"></a>

<!-- p009-b004 -->
4.2 Equal Visual Importance (ER2)
Relevant Measures: Attention Steering
The requirement for this task is to provide constant visual importance across the entire map to prevent attention steering
effects in elementary lookup tasks. Maps that perform best in the Attention Steering category are BCP 37, the L*a*b* maps
of Bremm et al., Griscom and Palmer, and TeulingFig3. However, beside Bremm et al. (regular) and TeulingFig3 these maps
have low scores in the color exploitation and do not satisfy ER1. To conclude, we recommend Bremm et al. (regular) on
bright backgrounds and TeulingFig3 on dark backgrounds in the elementary lookup tasks when the avoidance of attention
steering effects is relevant to the application.

<a id="p009-b005"></a>

<!-- p009-b005 -->
4.3 Elementary Comparison (ER3)
Relevant Measures: Black / White Distance, JND Region Size, Distance Ratio Divergence
For elementary comparison, perceptual linearity (global as well as local) is very relevant. Most colormaps that are created
in perceptual uniform spaces such as CIELAB are suited for this tasks since color distance equals spatial distance in the
colormap and thus, encolored data points can be perceptually compared. Interestingly, BCP 37 has good scores although
the colormap is created in sRGB, which is due to the small coverage of the color space. Since Bremm et al. (regular) and
Mittelstädt et al. share high scores for perceptual linearity, we recommend Bremm et al. (regular) for elementary comparison
on bright backgrounds and Mittelstädt et al. on dark backgrounds.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
tances. Quotient of 0.95 and 0.05 quant.
                                                                                                                                                                                                                                                                                                      steering (Lightness and Chroma) vari-

<a id="p010-b002"></a>

<!-- p010-b002 -->
The standard deviation of the color dis-

<a id="p010-b003"></a>

<!-- p010-b003 -->
Ratios of color distances to spatial dis-
                                                                      The number of colors with a pair-wise

<a id="p010-b004"></a>

<!-- p010-b004 -->
The smallest found JND distance to

<a id="p010-b005"></a>

<!-- p010-b005 -->
The smallest found JND distance to

<a id="p010-b006"></a>

<!-- p010-b006 -->
The standard deviation of the JND region

<a id="p010-b007"></a>

<!-- p010-b007 -->
The standard deviation of the attention

<a id="p010-b008"></a>

<!-- p010-b008 -->
Distance Ratio Quantiles

<a id="p010-b009"></a>

<!-- p010-b009 -->
to assess the divergence of linearity
                                                                                                                                                                                                                                                                                                                                                Dist. Ratio Divergence
                                                                                                                                                                                                                                                                                 Attention Steering

<a id="p010-b010"></a>

<!-- p010-b010 -->
tance/map distance ratio
                                                                      distance of ∆E >= 3.0

<a id="p010-b011"></a>

<!-- p010-b011 -->
WhiteDistance
                                                                                                              BlackDistance

<a id="p010-b012"></a>

<!-- p010-b012 -->
Region Size
                                                         JND Colors

<a id="p010-b013"></a>

<!-- p010-b013 -->
white
                                                                                                                              black

<a id="p010-b014"></a>

<!-- p010-b014 -->
able
                                                                                                                                                                                                                                      size
 Title                               Space      Img.
 BCP 37                              sRGB
                                                         136                                                  53.2                                                 39.6                                                 -15.5                                                    -5.5                                                           -12.0                                                               -2.5
 Baum et al. G-Y-R-B                 sRGB
                                                         437                                                  5.9                                                  53.9                                                 -11.0                                                    -17.2                                                          -23.2                                                               -2.7
 Bremm et al. (regular)              L*a*b
                                                         368                                                  54.7                                                 45.2                                                 -8.6                                                     -6.2                                                           -14.9                                                               -2.0
 Bremm et al. (stretched)            L*a*b
                                                         200                                                  54.7                                                 45.2                                                 -26.4                                                    -3.0                                                           -14.6                                                               -3.2
 Constant Blue                       sRGB
                                                         435                                                  39.2                                                 35.5                                                 -10.1                                                    -11.1                                                          -23.3                                                               -2.9
 Constant Green                      sRGB
                                                         359                                                  52.0                                                 39.1                                                 -13.5                                                    -7.2                                                           -18.0                                                               -2.5
 Constant Red                        sRGB
                                                         492                                                  41.1                                                 35.6                                                 -9.2                                                     -12.8                                                          -25.4                                                               -2.7
 Cube Diagonal Cut B-C-Y-R           sRGB
                                                         585                                                  47.8                                                 41.8                                                 -7.1                                                     -11.5                                                          -23.5                                                               -2.4
 Cube Diagonal Cut B-M-Y-G           sRGB
                                                         470                                                  52.4                                                 42.7                                                 -11.6                                                    -14.7                                                          -35.8                                                               -4.1
 Four Corners R-B-G-Y                sRGB
                                                         584                                                  45.8                                                 24.5                                                 -16.3                                                    -13.2                                                          -46.7                                                               -5.7
 Griscom and Palmer                  L*a*b
                                                         193                                                  54.7                                                 45.2                                                 -16.1                                                    -2.3                                                           -12.8                                                               -2.3
 Guo et al. (Gaussian)               L*a*b
                                                         998                                                  31.5                                                 5.8                                                  -5.2                                                     -6.4                                                           -33.2                                                               -2.7
 Ramirez et al.                       HSV
                                                         458                                                  60.8                                                 11.5                                                 -6.7                                                     -6.3                                                           -21.3                                                               -2.5
 Robertson and OCallaghan            sRGB
                                                         190                                                  25.2                                                 27.6                                                 -31.0                                                    -9.5                                                           -13.9                                                               -3.0
 Simula and Alhoniemi                 HSV
                                                         1027                                                 8.2                                                  41.8                                                 -4.5                                                     -16.7                                                          -39.9                                                               -3.1
 Mittelstädt et al.                 L*a*b
                                                         423                                                  60.3                                                 29.2                                                 -4.4                                                     -6.5                                                           -16.1                                                               -1.9
 TeulingFig2                         sRGB
                                                         446                                                  33.4                                                 36.5                                                 -6.6                                                     -9.0                                                           -15.7                                                               -2.0
 TeulingFig3                         sRGB
                                                         547                                                  61.4                                                 5.9                                                  -5.4                                                     -5.9                                                           -17.0                                                               -2.0
 TeulingFig3NoWhitening              sRGB
                                                         442                                                  52.9                                                 47.4                                                 -7.5                                                     -9.1                                                           -19.1                                                               -2.3
 TeulingFig4a                        sRGB
                                                         459                                                  53.0                                                 45.7                                                 -7.9                                                     -11.1                                                          -23.4                                                               -2.6
 Wainer and Francolini               sRGB
                                                         365                                                  43.9                                                 43.9                                                 -20.9                                                    -8.9                                                           -46.2                                                               -6.9
 Yeo et al.                          sRGB
                                                         370                                                  52.5                                                 42.5                                                 -10.4                                                    -12.0                                                          -28.7                                                               -3.2
Table 2. Summary of all quality assessment measures. A continuous color scale from green to gray indicates the quality from good to bad.

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
Black Background                                                                                                                                                                                                   White Background

<a id="p011-b002"></a>

<!-- p011-b002 -->
MotionExplorer53 (UseCase)
                                                                                                                                                                                                                                                 Synoptic Comp. (global)

<a id="p011-b003"></a>

<!-- p011-b003 -->
Synoptic Comp. (global)
                                                                                                                      Elementary Comparison

<a id="p011-b004"></a>

<!-- p011-b004 -->
Elementary Comparison
                                                                                      Equal visual importance

<a id="p011-b005"></a>

<!-- p011-b005 -->
Equal visual importance
                                                                                                                                                                                                                  Synoptic Comp. (local)

<a id="p011-b006"></a>

<!-- p011-b006 -->
Synoptic Comp. (local)

<a id="p011-b007"></a>

<!-- p011-b007 -->
Min (SR1, SR2)
                                Color Space

<a id="p011-b008"></a>

<!-- p011-b008 -->
Synoptic Identification

<a id="p011-b009"></a>

<!-- p011-b009 -->
Synoptic Identification
                                                                                                                                                    Synoptic Localization

<a id="p011-b010"></a>

<!-- p011-b010 -->
Synoptic Localization
                                                            Elementary Lookup

<a id="p011-b011"></a>

<!-- p011-b011 -->
Elementary Lookup
                                              Image
Title

<a id="p011-b012"></a>

<!-- p011-b012 -->
ER1

<a id="p011-b013"></a>

<!-- p011-b013 -->
ER2

<a id="p011-b014"></a>

<!-- p011-b014 -->
ER3

<a id="p011-b015"></a>

<!-- p011-b015 -->
ER1

<a id="p011-b016"></a>

<!-- p011-b016 -->
ER2

<a id="p011-b017"></a>

<!-- p011-b017 -->
ER3
                                                                                                                                              SR1

<a id="p011-b018"></a>

<!-- p011-b018 -->
SR2

<a id="p011-b019"></a>

<!-- p011-b019 -->
SR3

<a id="p011-b020"></a>

<!-- p011-b020 -->
SR4

<a id="p011-b021"></a>

<!-- p011-b021 -->
SR1

<a id="p011-b022"></a>

<!-- p011-b022 -->
SR2

<a id="p011-b023"></a>

<!-- p011-b023 -->
SR3

<a id="p011-b024"></a>

<!-- p011-b024 -->
SR4
BCP 37
                              sRGB                     ∈
                                                       /                        ++ +                                                           ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                               ∈
                                                                                                                                                                                                                                                                            /                        ++ +                                                           ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
Baum et al.
                              sRGB                     ∈
                                                       /                         ∈
                                                                                 /                               ∈
                                                                                                                 /                             ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                              ++                         ∈
                                                                                                                                                                                                                                                                                                      /                               ∈
                                                                                                                                                                                                                                                                                                                                      /                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
Bremm et al. (regular)
                              L*a*b                    +                        ++ ++ ++ ++ ++                                                                                                                                              Ø                               +                        ++ ++ ++ ++ ++                                                                                                                                              Ø                                    ++
Bremm et al. (stretched)
                              L*a*b                    ∈
                                                       /                        ++                               ∈
                                                                                                                 /                             ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                               ∈
                                                                                                                                                                                                                                                                            /                        ++                               ∈
                                                                                                                                                                                                                                                                                                                                      /                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
Constant Blue
                              sRGB                     –                         –                               –                             –                             –                               Ø                              Ø                               –                         –                               –                             –                             –                               –                              Ø                                           –
Constant Green
                              sRGB                     ∈
                                                       /                         +                               Ø                             ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                               ∈
                                                                                                                                                                                                                                                                            /                         +                               –                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
Constant Red
                              sRGB                     Ø                         ∈
                                                                                 /                               –                             ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                               +                         ∈
                                                                                                                                                                                                                                                                                                      /                               –                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
Cube Diagonal Cut BCYR
                              sRGB                    ++                         –                               Ø                             +                             Ø                               Ø                              +                              ++                         –                               Ø                            ++                             Ø                               –                              +                                           Ø
Cube Diagonal Cut BMYG
                              sRGB                     +                         ∈
                                                                                 /                               ∈
                                                                                                                 /                             ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                               +                         ∈
                                                                                                                                                                                                                                                                                                      /                               ∈
                                                                                                                                                                                                                                                                                                                                      /                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
Four Corners R-B-G-Y
                              sRGB                     +                         ∈
                                                                                 /                               ∈
                                                                                                                 /                             ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                               ∈
                                                                                                                                                                                                                                                                            /                         ∈
                                                                                                                                                                                                                                                                                                      /                               ∈
                                                                                                                                                                                                                                                                                                                                      /                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
Griscom and Palmer
                              L*a*b                    ∈
                                                       /                        ++                               ∈
                                                                                                                 /                             ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                               ∈
                                                                                                                                                                                                                                                                            /                        ++                               ∈
                                                                                                                                                                                                                                                                                                                                      /                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
Guo et al. (Gaussian)
                              L*a*b                    ∈
                                                       /                         +                               ∈
                                                                                                                 /                             ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                               ∈
                                                                                                                                                                                                                                                                            /                         +                               ∈
                                                                                                                                                                                                                                                                                                                                      /                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
Ramirez et al.
                              HSV                     ++ +                                                      ++ ++ ++ +                                                                                                                 ++                               ∈
                                                                                                                                                                                                                                                                            /                         +                               ∈
                                                                                                                                                                                                                                                                                                                                      /                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
Robertson and OCallaghan
                              sRGB                     ∈
                                                       /                         Ø                               ∈
                                                                                                                 /                             ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                               ∈
                                                                                                                                                                                                                                                                            /                         Ø                               ∈
                                                                                                                                                                                                                                                                                                                                      /                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
Simula and Alhoniemi
                              HSV                      ∈
                                                       /                         ∈
                                                                                 /                               ∈
                                                                                                                 /                             ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                              ++                         ∈
                                                                                                                                                                                                                                                                                                      /                               ∈
                                                                                                                                                                                                                                                                                                                                      /                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
Mittelstädt et al.
                              L*a*b                   ++ +                                                      ++ ++ ++ +                                                                                                                 ++                               –                         +                              ++                             – ++ +                                                                                      ++                                           –
TeulingFig2
                              sRGB                     ∈
                                                       /                         Ø                               ∈
                                                                                                                 /                             ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                               Ø                         Ø                              ++ +                                                        ++ +                                                           ++                                         +
TeulingFig3
                              sRGB                    ++ ++ ++ ++ ++ ++ ++                                                                                                                                                                                                  ∈
                                                                                                                                                                                                                                                                            /                        ++                               ∈
                                                                                                                                                                                                                                                                                                                                      /                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             /
TeulingFig3NoWhitening
                              sRGB                     +                         Ø                               +                             +                             +                               Ø                              +                              ++                         Ø                              ++ ++ ++ +                                                                                                                  +                                    ++
TeulingFig4a
                              sRGB                    ++                         –                               Ø                            ++                             Ø                               Ø                              +                              ++                         –                               +                            ++ +                                                           Ø                              +                                         +
Wainer and Francolini
                              sRGB                     –                         Ø                               ∈
                                                                                                                 /                             ∈
                                                                                                                                               /                             ∈
                                                                                                                                                                             /                               ∈
                                                                                                                                                                                                             /                              ∈
                                                                                                                                                                                                                                            /                               Ø                         Ø                               ∈
                                                                                                                                                                                                                                                                                                                                      /                             ∈
                                                                                                                                                                                                                                                                                                                                                                    /                             ∈
                                                                                                                                                                                                                                                                                                                                                                                                  /                               ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                  /                              ∈
                                                                                                                                                                                                                                                                                                                                                                                                                                                                 /                                           Ø
Yeo et al.
                              sRGB                     –                         –                               Ø                             –                             –                               –                              Ø                               Ø                         –                               –                             –                             –                               –                              Ø                                           –
Table 3. Applicability of static 2D colormaps for analytical tasks, for black and white background colors. We suggest combinations of
quality measures (cf. Tab. 2) for every task. The Borda count election method provides the overall scores aggregated to ++ , + , Ø ,
and – in the order of applicability. We exclude colormaps if outnumbered by more than 80% of the competitors in one relevant metric ∈.
                                                                                                                                    /

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
4.4 Synoptic Localization (SR1)
Relevant Measures: JND Colors, Black / White Distance, Attention Steering, JND Region Size, Distance Ratio Divergence.
With the synoptic localization task users are expected to detect an (a priori known) group or class in the visualization. This
requires that the relations of data points are preserved in the colormapping, which in turn requires preserving perceptual
linearity. However, the most relevant qualitative requirement for this task remains the number of distinct colors in order to
differentiate between groups to ease localization. Therefore, six quality assessment measures were applied in the test setup,
whereas the weighting of the JND Colors, and the Background Distances measures were emphasized (the influence of these
measures was doubled in the sum of all involved measures). The 2D colormaps with the best quality assessment scores are
TeulingFig3 (black backgrounds) and TeulingFig3NoWhitening (white backgrounds). Both colormaps provide an excellent
trade-off between color space exploitation and perceptual linearity with an emphasis on the number of distinct colors.

<a id="p012-b002"></a>

<!-- p012-b002 -->
4.5 Synoptic Identification (SR2)
Relevant Measures: JND Colors, Black / White Distance, Attention Steering, JND Region Size, Distance Ratio Divergence.
Identifying groups of data points in a visualization by interpreting colored information is a very complex task. The coloring
has to preserve data distances of data points in order to faithfully represent data relations and not to produce artifacts such
as similar colors for dissimilar data points. At the same time, the coloring should exploit the color space in order to allow
discriminating between groups. Similar to synoptic localization, this requires a trade-off between perceptual linearity and
color space exploitation. In this task however, perceptual linearity is the major requirement, since the groups are unknown
and faithfully encoded data relations help to reveal the groups in the coloring. Therefore, six quality assessment measures
were applied in the test setup, whereas the weighting of the Region Size, and the Distance Ratio Divergence measures
were emphasized (the influence of these measures was doubled in the sum of all involved measures). In the final ranking,
TeulingFig3 (dark background) and Mittelstädt et al. (dark and bright background) share the highest rank in this task.
Interestingly, Mittelstädt et al. has the highest rank on white backgrounds although it does generally not perform well on
this background. This indicates a clear need for colormaps that support synoptic identification on white backgrounds.

<a id="p012-b003"></a>

<!-- p012-b003 -->
4.6 Synoptic Comparison and Synoptic Relation (SR3–global) (SR4–local)
Relevant Measures: JND Colors, Black / White Distance, Attention Steering, JND Region Size (local), Distance Ratio
Divergence (global).
As mentioned above, the tasks of synoptic comparison and relation seeking can be transferred to two different levels:
between sets (global, e.g., comparing clusters) and within sets (local, e.g., comparing cluster elements). Therefore, different
measures of perceptual linearity should be applied to accurately estimate the support of the colormaps for those two levels.
As with other synoptic tasks, the trade-off between perceptual linearity and color space exploitation is obligatory, whereas
perceptual linearity plays a major role and is emphasized for these two tasks, accordingly. While Region Size estimates the
variance of perceptual linearity locally, it is used to estimate the performance for applications that require comparison within
sets. Distance Ratio Divergence is a measure for global perceptual linearity and thus reveals the support of between–set
comparison. Bremm et al. (regular) has the highest rank for global tasks and Mittelstädt et al. scores best for local tasks.

<a id="p012-b004"></a>

<!-- p012-b004 -->
5. USE CASE
We proceed to show the applicability of our guideline for the task-based choice of static 2D colormaps. The MotionExplorer53
system serves as a use case example. MotionExplorer supports domain experts in human motion analysis by providing
exploratory search capability for large data collections. Based on two overview visualizations (not shown) the search for
motion sequences begins with querying a start and an end cluster by-example. The retrieved sequences (here: jumping jack
motions) are shown in the Figures 3, 4, and 5. At the center, retrieved motions are shown, visually encoded with colored
sequence bars. A grid-based color legend (left) provides a mapping of clustered human poses (the high-dimensional feature
vectors) to colors of a static 2D colormap. Thus, colors allow for synoptic localization (SR1) and identification (SR2) tasks
in different linked views. The best colormap in the use case is expected to provide the highest minimum score in the tasks
SR1 and SR2 for a white background (cf. Table 3). For the sake of completeness, the underlying quality measures for
SR1 and SR2 are JND Colors, White Distance, Region Size, Attention Steering, and Distance Ratio Divergence (cf. Table
2). 14 of the colormaps are excluded for SR1 or SR2, just like for MotionExplorer. One of the inappropriate colormaps
for the given tasks is e.g., Robertson and OCallaghan shown in Figure 3. The two colormaps Bremm et al. (regular) and
TeulingFig3NoWhitening shown in the Figures 4 and 5 score with ++ .

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
Figure 3. An inappropriate colormap for the tasks performed in MotionExplorer: Robertson and OCallaghan.
    The 190 JND Colors of Robertson and OCallaghan are low compared with Bremm et al. (regular) and Teuling-
Fig3NoWhitening (368 and 442 JND Colors). The White Distance of Robertson and OCallaghan is comparably weak,
see the upper right corner of the colormap. In contrary all regions of Bremm et al. (regular) and TeulingFig3NoWhitening
provide clear differences to white colors, in Table 2 these differences are measured with at least 45.2 and 47.4 JND Colors.
The scores for the Region Size as well as the Distance Ratio Divergence of both best-scoring colormaps are among the
best, emphasizing a good perceptual linearity. The Attention Steering score of Bremm et al. (regular) is among the best
rankings and thus outperforms TeulingFig3NoWhitening. In summary, the static 2D colormaps Bremm et al. (regular) and
TeulingFig3NoWhitening score best in the use case section. Both colormaps produce excellent rankings for the relevant tasks
SR1 or SR2 shown in Table 3. At the same time the colormaps do not show any weaknesses in any of the underlying quality
assessment measures (cf. Table 2). In this regard both colormaps differ from other well-ranked colormaps which, however,
suffer from deficiencies in single relevant quality assessment measures and thus were excluded.

<a id="p013-b002"></a>

<!-- p013-b002 -->
Figure 4. An appropriate colormap for the use case: Bremm et al. (regular). A sufficient number of JND Colors, distances to white and
black, as well as perceptual linearity scores above average, and a good Attention Steering score.

<a id="p013-b003"></a>

<!-- p013-b003 -->
Figure 5. An appropriate colormap for the use case: Teuling3NoWhitening. More JND Colors than Bremm et al. (regular), distances to
white and black, as well as perceptual linearity scores above average.

<a id="p013-b004"></a>

<!-- p013-b004 -->
6. DISCUSSION AND FUTURE WORK
Reflections on the Test Results The three elementary task-requirements (ER1, ER2, and ER3) each emphasize com-
pletely different design goals for 2D colormaps, which confirms the challenges of design trade-offs described in literature.
For the synoptic tasks (SR1, SR2, SR3, and SR4), however, the results are more homogeneous. Here, 2D colormaps which
mastered these trade-offs best prevailed. Altogether, ten colormaps have proven to be very robust, passing all described
analysis tasks without any exclusion for either a black or a white background. Two of these colormaps are based on L*a*b
while the other colormaps are designed in sRGB/HSV. The title Figure 1 shows the eight 2D colormaps having a positive
sum of score points with the JND regions drawn (∆E = 5). Assessing these local quality aspects of 2D colormaps in detail
may be a subject of future work.

<a id="p013-b005"></a>

<!-- p013-b005 -->
Discussion In this paper, we analyzed the applicability of static 2D colormaps with respect to a set of tasks which can be
tackled by mapping multivariate data to color. We neglected the class of colormaps which were designed explicitly for map-
ping bivariate data (see Figure 2). A point of discussion is that for some presented colormaps, insufficient information for a re-
implementation was provided. In these cases, we applied work-around techniques to implement the colormaps. One strategy
was making use of regression models based on available color distributions (used for Robertson,57 Lespintas,39 Griscom,43
and Baum et al.20, 36 ). Despite the fact that we did not detect considerable differences between our implementations and the
2D colormaps printed in the original papers visually, we would prefer to re-implement the 2D colormaps on the basis of the

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
original design specifications. A similar issue relates to the sRGB-based test environment where the measures were taken. We
know that in some cases, conversions to sRGB lead to lossy conversions which impacts the applicability to non-screen uses
and distorts the value of the quality measures as such. However, although other implementers may use any kind of strategy to
deal with these lossy conversions, our simple clipping algorithm may well be the first choice of many. In future work, this issue
may be addressed more rigorously. Looking back to the colormap design taxonomy of Tominski et al.,12 we made assumptions
in order to reduce the number of dependent variables. We determined the where dimension (displays, printers, or other devices)
as static with the focus on high resolution displays and print media with the assumption of a white or a black background color.
Similar to the latter, the choice of accent colors e.g., for text, contours, or borders may influence the choice of a 2D colormap.
In cases where white and black colors are reserved for contours and background (like in the MotionExplorer system) both the
white distance and the black distance measure can be utilized. Colormaps performing well for both black and white distances
are Bremm et al. (regular), Mittelstädt et al., TeulingFig3NoWhitening, and TeulingFig4a. Highly related to the latter concern
is the use of the alpha-value of colors as an additional visual variable which is typically utilized to indicate data-specific
variances, or uncertainty in general. The black distance, the white distance, and the attention steering measure may serve
as starting points for a more in-depth discussion about quality measures adressing the use of the alpha compositing. Finally,
we want to emphasize the what dimension in the taxonomy of Tominski et al.12 Another class of 2D colormaps exists which
explicitly incorporates intrinsic data properties for the design of 2D colormaps.11, 64 These 2D colormaps are data-adaptive
variants and only exist in combination with a particular data set, in contrary to the static 2D colormaps tested for this paper.

<a id="p014-b002"></a>

<!-- p014-b002 -->
Future Work We already listed a couple of concerns which may be subject of future work. We also want to focus on a
full-automatic ranking of colormaps with respect to a given analysis task. Here, developing functions to weight the provided
quality assessment measures on the basis of linear combinations is conceivable. Similarly to other retrieval algorithms,
the question arises whether the results of the single quality assessment measures should be utilized on value-based, or on
rank-based criteria. A related subject of future work concerns the development of task-specific measures, e.g., by deriving
measures based on task-specific sampling strategies. Another possible extension would be the visual-interactive analysis
of given 2D colormaps for global, but also for local quality assessment measures. Closely related is the development of
decision support capability for the choice of 2D colormaps. It may also be a possible concern not only to evaluate existing,
but also to create new or adapt 2D colormaps based on particular data, tasks, and usage parameters. Finally, we aim to focus
on data-adaptive 2D colormaps and compare this special class of 2D colormaps with the static variants surveyed in this
work. It will be interesting to see advantages and disadvantages of different 2D colormap classes in detail.

<a id="p014-b003"></a>

<!-- p014-b003 -->
7. CONCLUSION
In this paper, we presented a survey of static 2D colormaps with the overall goal to assess the quality of existing variants
with respect to well-known analysis tasks. To this end, we re-implemented the most prominent designs and variants, covering
the 2D colormaps of over 50 related works in total. The provided colormaps are based on the sRGB color space, variants of
CIE L*a*b* and HSV. We provided a set of different quality assessment measures which we mapped on seven different
analysis tasks for color-coded multivariate data. A test environment enabled us to present detailed quality information for
every 2D colormap and every quality assessment measure. Finally, we made suggestions for the choice of 2D colormaps for
each of the seven tasks. We hope that the information visualization community, but also affine application domains may
benefit from the quality assessment results, the task-based guidelines, and the discussion presented in this work.

<a id="p014-b004"></a>

<!-- p014-b004 -->
REFERENCES
 [1] Teuling, A. J., Stöckli, R., and Seneviratne, S. I., “Bivariate colour maps for visualizing climate data,” International
     Journal of Climatology 31(9), 14081412 (2011).
 [2] Steiger, M., Bernard, J., Mittelstädt, S., Lücke-Tieke, H., Keim, D., May, T., and Kohlhammer, J., “Visual analysis of
     time-series similarities for anomaly detection in sensor networks,” in [CG Forum], 33(3), 401–410 (2014).
 [3] Ramirez, C., Gonzalez, G., Argaez, M., and Guillen, P., “Self-organizing maps in seismic image segmentation,”
     Computer Technology and Application (2012).
 [4] Bremm, S., von Landesberger, T., Bernard, J., and Schreck, T., “Assisted descriptor selection based on visual compara-
     tive data analysis,” in [EuroVis], 891–900, Eurographics Association (2011).
 [5] Himberg, J., “A som based cluster visualization and its application for false coloring,” in [Neural Networks, 2000.
     IJCNN 2000, Proceedings of the IEEE-INNS-ENNS International Joint Conference on], 3, 587–592, IEEE (2000).
 [6] Himberg, J. et al., [From insights to innovations: data mining, visualization, and user interfaces], HUT (2004).

<a id="page-015"></a>

## PDF page 15

<a id="p015-b001"></a>

<!-- p015-b001 -->
[7] Andrienko, N., Andrienko, G., Stange, H., Liebig, T., and Hecker, D., “Visual analytics for understanding spatial
     situations from episodic movement data,” KI-Künstliche Intelligenz 26(3), 241–251 (2012).
 [8] Bernard, J., Ruppert, T., Scherer, M., Kohlhammer, J., and Schreck, T., “Content-based layouts for exploratory metadata
     search in scientific research data,” in [Proceedings of JCDL ], 139–148, ACM, New York, NY, USA (2012).
 [9] Ware, C., [Information visualization: perception for design], Elsevier (2012).
[10] Brewer, C., [Designing Better Maps: A Guide for Gis Users], Environmental Systems Research (2004).
[11] Mittelstädt, S., Bernard, J., Schreck, T., Steiger, M., Kohlhammer, J., and Keim, D. A., “Revisiting Perceptually
     Optimized Color Mapping for High-Dimensional Data Analysis,” in [EG Conference on Visualization], (2014).
[12] Tominski, C., Fuchs, G., and Schumann, H., “Task-driven color coding,” in [Information Visualisation, 2008. IV’08.
     12th International Conference], 373–380, IEEE (2008).
[13] Andrienko, N. and Andrienko, G., [Exploratory analysis of spatial and temporal data], Springer (2006).
[14] Hunt, R. W. G. and Pointer, M. R., [Measuring Colour], John Wiley & Sons (2011).
[15] Fairchild, M. D., [Color Appearance Models], John Wiley & Sons (2013).
[16] Moroney, N., Fairchild, M. D., Hunt, R. W., Li, C., Luo, M. R., and Newman, T., “The CIECAM02 color appearance
     model,” in [Proceedings of the Color and Imaging Conference], 2002(1), 23–27 (2002).
[17] Healey, C. G., “Choosing effective colours for data visualization,” in [Proceedings of the conference on Visualization
    ’96], 263–270, IEEE (1996).
[18] Luo, M. R., Cui, G., and Li, C., “Uniform colour spaces based on ciecam02 colour appearance model,” Color Research
     & Application 31(4), 320–330 (2006).
[19] Guo, H., Lewis, S., and Marfurt, K., “Mapping multiple attributes to three- and four-component color models a
     tutorial,” GEOPHYSICS 73(3), W7–W19 (2008).
[20] Baum, K. G., Helguera, M., and Krol, A., “Genetic algorithm automated generation of multivariate color tables for
     visualization of multimodal medical data sets,” in [Color and Imaging Conference], 138–143, IS&T (2006).
[21] Bergman, L. D., Rogowitz, B. E., and Treinish, L. A., “A rule-based tool for assisting colormap selection,” in
     [Proceedings of the 6th conference on Visualization’95], 118, IEEE Computer Society (1995).
[22] Trumbo, B. E., “A theory for coloring bivariate statistical maps,” The American Statistician 35(4), 220–226 (1981).
[23] Caldwell, B., Cooper, M., Reid, L., and Vanderheiden, G., “Web content accessibility guidelines (wcag) 2.0,” recom-
     mendation, W3C (Dec. 2008). http://www.w3.org/TR/WCAG20/.
[24] Silva, S., Madeira, J., and Santos, B. S., “There is more to color scales than meets the eye: a review on the use of color
     in visualization,” in [11th International Conference on Information Visualization], 943–950, IEEE (2007).
[25] Silva, S., Sousa Santos, B., and Madeira, J., “Using color in visualization: A survey,” C&G 35(2), 320–333 (2011).
[26] Wang, L., Giesen, J., McDonnell, K. T., Zolliker, P., and Mueller, K., “Color design for illustrative visualization,” IEEE
     Transactions on Visualization and Computer Graphics 14(6), 1739–1754 (2008).
[27] Ware, C., “Color sequences for univariate maps: Theory, experiments and principles,” IEEE Computer Graphics and
     Applications 8(5), 41–49 (1988).
[28] Levkowitz, H. and Herman, G. T., “The design and evaluation of color scales for image data,” IEEE Computer Graphics
     and Applications 12(1), 72–80 (1992).
[29] Hansen, T. and Gegenfurtner, K. R., “Independence of color and luminance edges in natural scenes,” Visual neuro-
     science 26(01), 35–49 (2009).
[30] Mittelstädt, S., Stoffel, A., and Keim, D. A., “Methods for compensating contrast effects in information visualization,”
     in [Computer Graphics Forum], 33, 231–240, Wiley Online Library (2014).
[31] Rogowitz, B. E., Treinish, L. A., and Bryson, S., “How not to lie with visualization,” Computers in Physics 10(3),
     268–273 (1996).
[32] Harrower, M. and Brewer, C. A., “ColorBrewer. org: An online tool for selecting colour schemes for maps,” The
     Cartographic Journal 40(1), 27–37 (2003).
[33] Ware, C. and Beatty, J. C., “Using color dimensions to display data dimensions,” Human Factors: The Journal of the
     Human Factors and Ergonomics Society 30(2), 127–142 (1988).
[34] Wainer, H. and Francolini, C. M., “An empirical inquiry concerning human understanding of two-variable color maps,”
     The American Statistician 34(2), 81–93 (1980).
[35] Rheingans, P. L., “Task-based color scale design,” in [28th AIPR Workshop: 3D Visualization for Data Exploration
     and Decision Making], 35–43, International Society for Optics and Photonics (2000).

<a id="page-016"></a>

## PDF page 16

<a id="p016-b001"></a>

<!-- p016-b001 -->
[36] Baum, K. G., Helguera, M., Hornak, J. P., Kerekes, J. P., Montag, E. D., Unlu, M. Z., Feiglin, D. H., and Krol, A.,
     “Techniques for fusion of multimodal images: Application to breast imaging,” in [Image Proc. ], 2521–2524 (2006).
[37] Baum, K. G., Rafferty, K., Helguera, M., and Schmidt, E., “Investigation of pet/mri image fusion schemes for enhanced
     breast cancer diagnosis,” in [Nuclear Science Symposium], 3774–3780, IEEE (2007).
[38] Brecheisen, R., Vilanova, A., Platel, B., and ter Haar Romeny, B., “Parameter sensitivity visualization for dti fiber
     tracking,” IEEE Transactions on Visualization and Computer Graphics 15, 1441–1448 (Nov. 2009).
[39] Lespinats, S. and Aupetit, M., “Checkviz: Sanity check and topological clues for linear and non-linear mappings,” in
     [Computer Graphics Forum], 30(1), 113–125, Wiley Online Library (2011).
[40] Ruppert, T., Bernard, J., Ulmer, A., Lücke-Tieke, H., and Kohlhammer, J., “Visual access to an agent-based simulation
     model to support political decision making,” in [Proceedings of i-KNOW], ACM (2014).
[41] Eyton, J. R., “Complementary-color, two-variable maps,” American Geographers Assoc. 74(3), 477–490 (1984).
[42] Olson, J. M. and Brewer, C. A., “An evaluation of color selections to accommodate map users with color-vision
     impairments,” Annals of the Association of American Geographers 87(1), 103–134 (1997).
[43] Griscom, W. and Palmer, S., “Violins are green, pianos are blue: Cross-modal sound-to-sight associations with timbre
     in synesthetes & non-synesthetes,” Journal of Vision 13(9), 1169–1169 (2013).
[44] Schreck, T., von Landesberger, T., and Bremm, S., “Techniques for precision-based visual analysis of projected data,”
     Information Visualization 9(3), 181–193 (2010).
[45] Hein, T. and Kramer, O., “Recognition and visualization of music sequences using self-organizing feature maps,” in
     [KI 2010: Advances in Artificial Intelligence], 160–167, Springer (2010).
[46] Kramer, O. and Gieseke, F., “Analysis of wind energy time series with kernel methods and neural networks,” in
     [Natural Computation (ICNC), 2011 Seventh International Conference on], 4, 2381–2385, IEEE (2011).
[47] Kramer, O., Gieseke, F., and Satzger, B., “Wind energy prediction and monitoring with neural computation,” Neuro-
     computing 109, 84–93 (2013).
[48] Himberg, J., “Enhancing the som based data visualization by linking different data projections,” in [Proceedings of 1st
     International Symposium IDEAL], 98, 427–434 (1998).
[49] Vesanto, J., Himberg, J., Siponen, M., and Simula, O., “Enhancing SOM Based Data Visualization,” in [Proceedings
     of IIZUKA], 64–67 (1998).
[50] Vesanto, J., “Som-based data visualization methods,” Intelligent Data Analysis 3, 111–126 (1999).
[51] Khedairia, S. and Khadir, M. T., “Self-organizing map and k-means for meteorological day type identification for the
     region of annaba -algeria-,” Computer Information Systems and Industrial Management Applications , 91–96 (2008).
[52] Ziegler, H., Nietzschmann, T., and Keim, D. A., “Visual exploration and discovery of atypical behavior in financial
     time series data using two-dimensional colormaps,” in [Information Visualization, 2007.], 308–315, IEEE (2007).
[53] Bernard, J., Wilhelm, N., Krüger, B., May, T., Schreck, T., and Kohlhammer, J., “MotionExplorer: Exploratory Search
     in Human Motion Capture Data Based on Hierarchical Aggregation,” IEEE TVCG (Proc. VAST) (Oct. 2013).
[54] Bernard, J., Steiger, M., Widmer, S., Lücke-Tieke, H., May, T., and Kohlhammer, J., “Visual-interactive Exploration of
     Interesting Multivariate Relations in Mixed Research Data Sets,” Comp. Graph. Forum 33(3), 291–300 (2014).
[55] Guo, D., Gahegan, M., MacEachren, A. M., and Zhou, B., “Multivariate analysis and geovisualization with an
     integrated geographic knowledge discovery approach,” Cartography and Geographic IS 32(2), 113–132 (2005).
[56] Guo, D., Chen, J., MacEachren, A., and Liao, K., “A visualization system for space-time and multivariate patterns
     (vis-stamp),” Visualization and Computer Graphics, IEEE Transactions on 12, 1461–1474 (Nov 2006).
[57] Robertson, P. K. and O’Callaghan, J. F., “The generation of color sequences for univariate and bivariate mapping,”
     Computer Graphics and Applications, IEEE 6(2), 24–32 (1986).
[58] Simula, O. and Alhoniemi, E., “Som based analysis of pulping process data,” in [Engineering Applications of
     Bio-Inspired Artificial Neural Networks], 567–577, Springer (1999).
[59] Yeo, N., Lee, K., Venkatesh, Y., and Ong, S. H., “Colour image segmentation using the self-organizing map and
     adaptive resonance theory,” Image and Vision Computing 23(12), 1060–1079 (2005).
[60] Sharma, G. and Bala, R., [Digital color imaging handbook], CRC press (2002).
[61] Kaiser, P. K., “Physiological response to color: A critical review,” Color Research & Application 9(1), 29–36 (1984).
[62] Camgöz, N., Yener, C., and Güvenc, D., “Effects of hue, saturation, and brightness: Part 2: Attention,” Color Research
     & Application 29(1), 20–28 (2004).
[63] Brewer, C. A., “Color use guidelines for data representation,” in [Proceedings of the Section on Statistical Graphics,
     American Statistical Association], 55–60 (1999).
[64] Kaski, S., Venna, J., and Kohonen, T., “Coloring that reveals high-dimensional structures in data,” in [Neural
     Information Processing (ICONIP)], 2, 729–734, IEEE (1999).
