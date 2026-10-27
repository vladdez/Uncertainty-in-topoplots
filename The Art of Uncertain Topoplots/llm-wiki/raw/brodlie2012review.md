---
id: "brodlie2012review"
title: "A Review of Uncertainty in Data Visualization"
source_file: "The Art of Uncertain Topoplots/papers/brodlie2012review.pdf"
source_sha256: "2e8b0480888476c369d970263203d45f17db8fe1ba5c49deb93646544a52e210"
extraction_format: 1
---

# A Review of Uncertainty in Data Visualization — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
promoting access to White Rose research papers

<a id="p001-b002"></a>

<!-- p001-b002 -->
Universities of Leeds, Sheffield and York
                          http://eprints.whiterose.ac.uk/

<a id="p001-b003"></a>

<!-- p001-b003 -->
This is an author produced version of a book chapter published in Expanding
the Frontiers of Visual Analytics and Visualization.

<a id="p001-b004"></a>

<!-- p001-b004 -->
White Rose Research Online URL for this paper:

<a id="p001-b005"></a>

<!-- p001-b005 -->
http://eprints.whiterose.ac.uk/77640/

<a id="p001-b006"></a>

<!-- p001-b006 -->
Paper:
Brodlie, KW, Allendes Osorio, R and Lopes, A (2012) A review of uncertainty in
data visualization. In: Expanding the Frontiers of Visual Analytics and
Visualization. Springer , 81 - 110.

<a id="p001-b007"></a>

<!-- p001-b007 -->
White Rose Research Online
                           eprints@whiterose.ac.uk

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
A Review of Uncertainty in Data Visualization

<a id="p002-b002"></a>

<!-- p002-b002 -->
Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p002-b003"></a>

<!-- p002-b003 -->
Abstract Most visualization techniques have been designed on the assumption that
the data to be represented are free from uncertainty. Yet this is rarely the case. Re-
cently the visualization community has risen to the challenge of incorporating an in-
dication of uncertainty into visual representations, and in this article we review their
work. We place the work in the context of a reference model for data visualization,
that sees data pass through a pipeline of processes. This allows us to distinguish the
visualization of uncertainty - which considers how we depict uncertainty specified
with the data - and the uncertainty of visualization - which considers how much in-
accuracy occurs as we process data through the pipeline. It has taken some time for
uncertain visualization methods to be developed, and we explore why uncertainty
visualization is hard - one explanation is that we typically need to find another dis-
play dimension and we may have used these up already! To organise the material
we return to a typology developed by one of us in the early days of visualization,
and make use of this to present a catalogue of visualization techniques describing
the research that has been done to extend each method to handle uncertainty. Fi-
nally we note the responsibility on us all to incorporate any known uncertainty into
a visualization, so that integrity of the discipline is maintained.

<a id="p002-b004"></a>

<!-- p002-b004 -->
Key words: visualization; uncertainty; errors

<a id="p002-b005"></a>

<!-- p002-b005 -->
Ken Brodlie
University of Leeds, Leeds LS2 9JT, UK. e-mail: k.w.brodlie@leeds.ac.uk
Rodolfo Allendes Osorio
Depto. de Ciencias de la Computación, Fac. de Ingeneria, Universidad de Talca, Chile. e-mail:
rallendes@utalca.cl
Adriano Lopes
CITI / Depto. Informática, FCT, Universidade Nova de Lisboa, Portugal. e-mail: alopes@fct.unl.pt

<a id="p002-b006"></a>

<!-- p002-b006 -->
1

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
2                                     Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p003-b002"></a>

<!-- p003-b002 -->
1 Introduction

<a id="p003-b003"></a>

<!-- p003-b003 -->
Understanding uncertainty is one of the great scientific challenges of our time. It
impacts on many crucial issues facing the world today - from climate change pre-
diction, to economic modelling, to interpretation of medical data. Visualization is
now well accepted as a powerful means to allow scientists to explore large datasets,
and to present their results to a wider audience. Yet most visualization techniques
make the assumption that the data they are displaying are exact. We may encounter
error bars on graphs, but we rarely see the equivalent on contour maps or isosurfaces.
Indeed the very crispness of an isosurface gives an impression of confidence that is
frankly often an illusion. This is a major issue when visualizations are used in deci-
sion making - such as planning evacuations based on a visualization of the predicted
hurricane path. Indeed as computation power and capability continue to increase we
see a rise in ensemble computing, where many simulations of a phenomenon are
carried out for different initial conditions, or different settings of unknown parame-
ters - leading not to a unique data value, but to a set of values - so-called multivalue
data. There is a growing awareness of the uncertainty problem within the visual-
ization community, and many traditional techniques are being extended to represent
not only the data, but also the uncertainty information associated with the data. We
call this visualization of uncertainty. In addition it is important to realise that, even
if there is certainty about the data, errors can occur in the process of turning the
data into a picture. We call this uncertainty of visualization. In this paper we aim to
review the current state of the art in uncertainty in scientific visualization, looking
at both of these aspects.
    There are a growing number of application areas where uncertainty visualiza-
tion is being put to good effect. Here is a brief list, together with relevant cita-
tions: agriculture [38]; astrophysics [42]; biology [22]; climate studies [63, 65]; fluid
flow [10, 34, 58, 75, 81]; geography [1, 24, 26, 29, 33, 48, 51, 52]; geophysics [78];
medicine [41, 49, 66]; meteorology [8, 50, 70]; oceanography [3, 7, 25]; under-
ground assets [11]; visual analytics [20].
    Historically the geovisualization community were perhaps the first to realise the
importance of uncertainty. This community have long been concerned with issues
of data quality so that the limitations of the data are understood when looking at
maps. Buttenfield and Beard [15] suggested that:
    Computer generated maps, a standard output of GIS, generally imply an accuracy not war-
    ranted by the data.

<a id="p003-b004"></a>

<!-- p003-b004 -->
The paper by Goodchild et al [29] presents a view of the 1994 state of art in vi-
sualizing data validity, while MacEachren et al [52] provides a view of the field in
2005. Interest within the scientific visualization community developed rather later:
the paper by Pang et al [60] provides possibly the first significant review of the field.
Important subsequent reviews include the papers by Griethe and Schumann [30] and
by Zuk and Carpendale [80] (who look at the area from the perspective of percep-
tual theory and in particular the work of Bertin, Tufte and Ware), while important
awareness-raising papers are Johnson and Sanderson [37] and Johnson [36] who

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
A Review of Uncertainty in Data Visualization                                                  3

<a id="p004-b002"></a>

<!-- p004-b002 -->
includes the representation of error and uncertainty as one of his top ten research
problems. Recent theses include those of Allendes [2] and Zuk [79].
   The structure of our review is as follows. We begin in section 2 with a reference
model for uncertainty visualization that can help us understand where uncertainty
occurs in visualization. We then reflect in section 3 on why visualization of uncer-
tainty, and uncertainty of visualization, are hard problems. We then organise the
main body of the review under a classification similar to that introduced by Brodlie
et al [13] and used and extended by Pang et al [60] in their review. Section 4 in-
troduces the notation and is followed by two sections: section 5 focuses on visual-
ization of uncertain data, where most of the research has been done; and section 6
looks at the uncertainty of visualization.

<a id="p004-b003"></a>

<!-- p004-b003 -->
2 Uncertainty Reference Model

<a id="p004-b004"></a>

<!-- p004-b004 -->
We can understand the different sources of uncertainty by re-visiting the visualiza-
tion reference model presented by Haber and McNabb [32]. In Figure 1, we show
the traditional model of data passing through a pipeline. The first step is to filter,
or reconstruct through interpolation or approximation, creating a model of the en-
tity underlying the data. This model is then passed to a mapping stage, where a
visualization algorithm produces geometry. Finally this geometry is rendered as an
image. Uncertainty occurs at all stages - visualization of uncertainty focusses on the
data stage, while the uncertainty of visualization begins at the filter stage and passes
through to the render stage.

<a id="p004-b005"></a>

<!-- p004-b005 -->
!"#$%&"!"'()
         *#(#)
                                +,("&)             !#-)               &"'*"&)

<a id="p004-b006"></a>

<!-- p004-b006 -->
$.!%,#/0')
           *#(#)

<a id="p004-b007"></a>

<!-- p004-b007 -->
1.$%#,.2#/0')03)                          4'5"&(#.'(6)03)
        4'5"&(#.'(6)                            1.$%#,.2#/0')

<a id="p004-b008"></a>

<!-- p004-b008 -->
Fig. 1 Haber and McNabb model: visualization of uncertainty and uncertainty of visualization

<a id="p004-b009"></a>

<!-- p004-b009 -->
data The source of the data may be measurement or simulation. In either case,
  the data may have associated uncertainty information - this may be in the form
  of a known range of error; or the data may be described as a random variate with

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
4                                  Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p005-b002"></a>

<!-- p005-b002 -->
a given probability distribution; or the data may be multi-valued as a result of an
    ensemble of simulations or multiple measurements.
filter The filtering stage builds an empirical model from the data - we are making
    plausible inferences from incomplete information. In the case of exact data, the
    empirical model is typically created by interpolation - calculating a curve, sur-
    face or volume through the given data. Of course uncertainty is introduced here
    because we are only guessing at the behaviour between data points. When we
    have uncertain data, then a different approach is needed. One option is to take a
    representative value at each datapoint (this might be the mean if several possible
    values are given), and to associate with it a measure of the uncertainty (perhaps
    a standard deviation); the representative is then used as though it were exact, and
    interpolation used to create an empirical model, but with the associated uncer-
    tainty model attached to it. A variation of this is to estimate the distribution at a
    datapoint as a Probability Density Function (PDF), and build an empirical model
    as an interpolation of these PDFs. A different option, if we have prior knowl-
    edge of the form of the model, is to fit a parameterised form of the model to the
    data forming in some sense a best approximation - for example, if the model is
    linear, then linear regression would be appropriate; more generally, spline data-
    fitting using least-squares will enable a useful approximation to be constructed.
    The E02 chapter of the NAG Library is a good source of software for data fitting
    (www.nag.co.uk). This second option of data fitting has not been the focus of the
    recent uncertainty visualization research, and so we shall not discuss it further
    here - but it remains a very important practical approach.
map The map process, or visualization algorithm, where a geometric model is
    created, may involve computation that is subject to error - for example the ap-
    proximation of curved surfaces by polygons, or the creation of streamlines by
    numerical solution of ordinary differential equations.
render The render process which rasterises the geometry involves a discretisation
    step that may hide information - for example if the resolution of the output image
    is of a lower order of magnitude than the resolution of the data. Here focus and
    context ideas might usefully be employed to overcome this difficulty.
   Other authors have similarly used the Haber and McNabb model as a reference
for uncertainty, including Pang et al [60], Griethe and Schumann [30], Lopes and
Brodlie [45] and Correa et al [20].
   We tend to see the pipeline as a left-to-right output process, with uncertainty
accumulating as data passes through. In interactive work, we also traverse the model
from right-to-left, and uncertainty needs to be borne in mind as we pass back along
the pipeline.

<a id="p005-b003"></a>

<!-- p005-b003 -->
3 Why is Uncertainty So Hard?

<a id="p005-b004"></a>

<!-- p005-b004 -->
Most visualization techniques have been developed, and used, under an assumption
that the given data are exact - and any uncertainty information is not included in the

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
A Review of Uncertainty in Data Visualization                                                 5

<a id="p006-b002"></a>

<!-- p006-b002 -->
picture. While this situation is changing, it has taken a long time. Why is uncertainty
a hard topic in visualization? Here are some possible explanations:
Uncertainty is complex Uncertainty, by its very nature, is a difficult subject. In-
 deed as Davis and Keller [24] note, even the terminology is often unhelpful:
      The self-referential problem of uncertainty about uncertainty terminology has been a
      notable stumbling block in this avenue of inquiry.

<a id="p006-b003"></a>

<!-- p006-b003 -->
A useful step forward here is the typology for uncertainty in geospatially ref-
 erenced information presented by Thomson et al [71] (building on earlier work
 in standardisation bodies - see [74]). They distinguish nine categories in their
 typology: accuracy/error (these are often confusing, and used interchangeably
 to refer to difference between observed and true or modelled values, but in this
 typology are sensibly combined as a single category), precision (exactness of
 measurement), and a number of more qualitative categories - completeness, con-
 sistency, currency/timing, credibility, subjectiveness and interrelatedness. A final
 category, lineage, covers the provenance information associated with a dataset.
 Although this typology is specific to geovisualization, it would be a useful exer-
 cise to extend it to the wider area of scientific data visualization - looking perhaps
 at further issues introduced by the multiple simulations of ensemble computing.
Uncertainty information is presented in different ways In scientific visualiza-
 tion, we are normally presented with a dataset (assuming scalar data for simplic-
 ity) fi (x1 , . . . , xn ), i = 1, 2, . . . , m, being unique values at a given set of m points
 in n-dimensional space. The additional uncertainty information may be supplied
 in different ways:
    as a PDF Rather than a unique value f , statistical analysis may have resulted
      in data at each point being provided as a random variate, F say, with Proba-
      bility Density Function (PDF), g(F), where
                                                       Z b
                                  Pr(a ≤ F ≤ b) =            g( f )d f
                                                        a

<a id="p006-b004"></a>

<!-- p006-b004 -->
as multivalue data If the data results from several simulations as in ensemble
      computing, or from several physical measurements of the same entity, then we
      will have many values at each datapoint. That is, we will have p values at each
      point:
                               fij (x1 , . . . , xn ), j = 1, 2, . . . , p
      This data can then be passed for visualization as a multivalued dataset, or a
      PDF can be estimated from the data (in which case we generate a PDF, and
      we have the case above).
    as bounded data Sometimes the data may be given simply as falling within
      finite bounds. Olston and McKinlay [57] refer to this as bounded uncertainty
      to contrast with statistical uncertainty, where we do not know bounds but we
      know the probability distribution, typically normal with mean and standard
      deviation (i.e. the PDF case above).

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
6                                     Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p007-b002"></a>

<!-- p007-b002 -->
Uncertainty propagates When we calculate with uncertain data, we propagate
 the uncertainty. In the pipeline of Figure 1, the original data goes through a num-
 ber of transformations before an image is created. We need to understand how
 to propagate uncertainty in the data, through to uncertainty in the image. Careful
 mathematics and statistics are required, and a good primer is the NPL report by
 Cox and Harris [21]. The propagation problem can be stated formally as follows:
 given a model Y = g(X) where X = (X1 , . . . , Xn )T , and the Probability Density
 Functions fXi (xi ) for the input quantities Xi , with i = 1, . . . , n, determine the PDF
  fY (y) for the output quantity Y . Occasionally this can be solved analytically, but
 often a Monte Carlo approach is required.
 In the context of visual analytics, Correa et al [20] describe uncertainty propaga-
 tion for two common data analysis operations: Principal Components Analysis
 and clustering using k-means.
Uncertainty adds a dimension to the visualization The most elementary exam-
 ple will illustrate this. A single data point (2, 8.8) is plotted in Figure 2 - the
 marker is zero-dimensional, i.e. a point. But if there is uncertainty in the y-value,
 say 8.8 ± 0.3, then adding an error bar increases the dimension by one, as the
 marker becomes a line. (The dimension of the data remains the same - i.e. zero
 - but we have required an extra dimension in the visualization to display the
 additional uncertainty variable.) Similarly we shall see that isolines with uncer-
 tainty become areas, and isosurfaces become volumes. For lower dimensions this
 poses little problem - but on a two-dimensional display surface, we have enough
 problems visualizing exact 3D or higher dimensional data without introducing
 another dimension for uncertainty.

<a id="p007-b003"></a>

<!-- p007-b003 -->
10                                          10

<a id="p007-b004"></a>

<!-- p007-b004 -->
9.5                                         9.5

<a id="p007-b005"></a>

<!-- p007-b005 -->
9                                           9

<a id="p007-b006"></a>

<!-- p007-b006 -->
8.5                                         8.5

<a id="p007-b007"></a>

<!-- p007-b007 -->
8                                           8

<a id="p007-b008"></a>

<!-- p007-b008 -->
7.5                                         7.5
                 1    1.5      2      2.5       3            1   1.5    2      2.5      3

<a id="p007-b009"></a>

<!-- p007-b009 -->
Fig. 2 Error Bars add a dimension: the point becomes a line

<a id="p007-b010"></a>

<!-- p007-b010 -->
Even if we do not increase the spatial dimension, we still need to find a ‘dimen-
    sion’ from somewhere. Various ideas have been tried with varying degrees of
    success:
    juxtaposition A common approach is to provide a visualization of the un-
      certainty in a separate picture, alongside a standard representation (perhaps

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
A Review of Uncertainty in Data Visualization                                         7

<a id="p008-b002"></a>

<!-- p008-b002 -->
showing a standard deviation plot alongside a mean value plot). See for ex-
      ample Aerts et al [1].
    animation A number of authors have used animation, making use of time
      as an extra dimension. A simple example is to replace the above juxtaposi-
      tion approach with a toggle facility, where the user can swap between the
      normal view and a view of the associated uncertainty. Experiments by Aerts
      et al [1] showed that in fact juxtaposition was better than toggling. Another
      use of animation is to display a sequence of different possible realisations
      of a model. For example, looking at uncertainty in Digital Elevation Mod-
      els (DEMs), Ehlschlaeger et al [26] create a sequence of different realisations
      of a given DEM, and then generate in-between frames in order to produce a
      smooth animation showing the range of possibilities. Animation must be used
      carefully - Brown [14] gives a good overview of the pitfalls, and suggests a
      useful ‘vibration’ technique, again illustrated on DEMs. In medical visualiza-
      tion, animation has been used by Lundstrom et al [49].
    overlay With some visualizations, it is possible to overlay a visualization of
      uncertainty on top of the normal visualization. For example, Bingham and
      Haines [7] overlay a contour map of an error field on top of a heatmap of the
      mean value of a multivalue dataset.
    sound There were a number of early attempts to use sound to encode uncer-
      tainty - see Lodha [43] and Fisher [28]. A difficulty is that sound is essentially
      a local feature (you get feedback on uncertainty at a point), whereas images
      give a global view - perhaps this explains why there seems to have been little
      recent work on using sound.
    colour A number of authors have experimented with use of the hue, satu-
      ration, value components of colour to encode uncertainty. See for example
      MacEachren [51], and Hengl [33] who adds white to indicate degree of un-
      certainty.
Uncertainty tends to dominate certainty In most natural visual representations
 of uncertainty, the greatest emphasis is placed on data of greatest uncertainty.
 Consider error bars: long bars correspond to high uncertainty. However as
 Hlawatsch et al [34] note in the context of fluid flow, it is sometimes areas of
 certainty that are more important.
Uncertainty adds another discipline Some of the best visualizations have been
 created by multidisciplinary teams, bringing together domain scientists, numeri-
 cal analysts, visualization scientists and artists. See for example the storm cloud
 visualizations from NCSA (access.ncsa.illinois.edu/Stories/supertwister/index.htm).
 There is a further discipline to be added now: statistics is the branch of mathe-
 matics that deals with uncertainty, and we need increasing collaborations with
 statisticians in order to improve the rigour of uncertainty visualization.

<a id="p008-b003"></a>

<!-- p008-b003 -->
The above reasons help to explain why visualization of uncertainty is hard. But
the area of uncertainty of visualization is difficult too, perhaps for the following
reason:

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
8                                   Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p009-b002"></a>

<!-- p009-b002 -->
Linearity adds uncertainty Computer graphics hardware - from early graph
  plotters to current graphics cards - encourages the approximation of curves and
  surfaces by straight lines and triangles, inevitably introducing error.

<a id="p009-b003"></a>

<!-- p009-b003 -->
4 Notation

<a id="p009-b004"></a>

<!-- p009-b004 -->
In this section we re-visit an early attempt to classify scientific visualization algo-
rithms by Brodlie et al [13] in 1992. This work saw data as discrete items being
sampled from some underlying entity, and visualization as the process of viewing a
continuous empirical model built from the data. The classification was based on the
dimensions of the independent variable (often spatial or temporal), and the type of
dependent variable - point, scalar, vector or tensor. The classification has since been
extended by a number of authors, notably Tory and Moller [72] who have extended
the work to information visualization, and Pang et al [60] who used it for uncertainty
visualization classification.
    An E notation was introduced in the 1992 paper, with a subscript indicating the
number of independent variables and a superscript indicating the type of dependent
variable. Thus:
                                          E1S
represented a model of a scalar function of one variable, such as temperature mea-
sured over time. In the case of multifield data, where there are several variables at a
datapoint, the notation extends to, for example:

<a id="p009-b005"></a>

<!-- p009-b005 -->
E1kS

<a id="p009-b006"></a>

<!-- p009-b006 -->
for k variables, such as temperature, pressure, . . . . In the original work, the character
E had no real meaning (other than underlying Entity) and was redundant. With
serendipity, we now interpret it as ‘Exact’, to act as a notation for certain data. For
uncertain data, we simply replace E by U.
   The following table organises the main visualization algorithms according to this
classification. We subdivide the scalar class into three distinct approaches: embed,
where we place the visualization into a higher dimensional display space (e.g. a
surface view where we view a 2D data set in a 3D space); dense, where we view
the data at every point in the domain; and sparse, where we extract an important
feature such as a contour line. For vector visualization, we follow the subdivision
suggested by Post et al [61]: direct, dense, geometric and feature–based. The table
is not complete - there are many more visualization techniques to include - but it
acts as a roadmap for the techniques that have been enhanced to include uncertainty
and are discussed in this article.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
A Review of Uncertainty in Data Visualization                                             9

<a id="p010-b002"></a>

<!-- p010-b002 -->
Table 1 Classification of Techniques - Key: SP = Scatter Plot; PC = Parallel Coordinates; CSV =
Coloured Surface View
 Dim Point                 Scalar E/U S            Multifield              Vector E/U V
       E/U P       embed        dense      sparse    kE/U S direct dense geometric feature
E/U0                Point                           SP & PC
E/U1               Graph      Col Line
E/U2 Markers Surface view Heatmap Contour             CSV Glyphs LIC Particles Topology
E/U3                         Vol Render Isosurface                     IBFV Streamlines

<a id="p010-b003"></a>

<!-- p010-b003 -->
5 Visualization of Uncertainty

<a id="p010-b004"></a>

<!-- p010-b004 -->
5.1 Introduction

<a id="p010-b005"></a>

<!-- p010-b005 -->
In this section we review the efforts that have been made to extend existing ‘exact’
visualization techniques to cater for uncertainty information. To organise this large
body of research, we use the U notation of the previous section.

<a id="p010-b006"></a>

<!-- p010-b006 -->
5.2 Point Data U P

<a id="p010-b007"></a>

<!-- p010-b007 -->
Occasionally the underlying entity is simply a collection of points in nD space, with
no dependent variable associated with the points. An example in 3D would be the
positions of stars in the universe, which are typically described in terms of a distance
component (along line of sight from earth) and equatorial coordinates (RA, Dec)
to describe the direction. Li et al [42] consider this very problem: uncertainty in
distance is much greater than in RA/Dec, and so error bars on the line of sight are
possible, or an ellipsoid centred on the star if the RA/Dec component is important.

<a id="p010-b008"></a>

<!-- p010-b008 -->
5.3 Scalar Data U S

<a id="p010-b009"></a>

<!-- p010-b009 -->
5.3.1 Zero dimensional data U0S

<a id="p010-b010"></a>

<!-- p010-b010 -->
This is the very simple case: with exact data, we are just plotting one point! In
the uncertain case, we are typically presented with many observations of a sin-
gle scalar variable. A standard uncertainty visualization is the boxplot proposed by
Tukey [73], showing the five summary statistics of upper and lower bounds, upper
and lower quartiles and median. See Figure 3 which takes the data point of Figure 2
and assumes now that a large number of measurements have been made - notice the
dimensionality increase in the visualization as uncertainty is added - rectangle, lines
and outlier point rather than just a point (arguably the rectangle is only 1D as its
width is not significant). There have since been many extensions and modifications

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
10                                      Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p011-b002"></a>

<!-- p011-b002 -->
(see Potter et al [64] for a review, and suggestion of a summary plot which incor-
porates further descriptive statistics such as skew and kurtosis). Cumming et al [22]
provide important guidelines for the use and interpretation of error bars.

<a id="p011-b003"></a>

<!-- p011-b003 -->
10                                                 10

<a id="p011-b004"></a>

<!-- p011-b004 -->
9.5                                                9.5

<a id="p011-b005"></a>

<!-- p011-b005 -->
9                                                  9

<a id="p011-b006"></a>

<!-- p011-b006 -->
8.5                                                8.5

<a id="p011-b007"></a>

<!-- p011-b007 -->
8                                                  8

<a id="p011-b008"></a>

<!-- p011-b008 -->
7.5                                                7.5
             1     1.5        2        2.5       3              1     1.5        2       2.5        3

<a id="p011-b009"></a>

<!-- p011-b009 -->
Fig. 3 Tukey box plot - on left, a single point represents the exact observation; on right, the un-
certainty of multiple observations is summarised as rectangle, line and outlier point, an increase of
display dimension

<a id="p011-b010"></a>

<!-- p011-b010 -->
5.3.2 One dimensional data U1S

<a id="p011-b011"></a>

<!-- p011-b011 -->
Embed - Graph This is the ubiquitous one-dimensional graph - probably the
  most common of all visualizations. There are a variety of ways that an indication
  of uncertainty can be added: error bars can be added to the data point markers, or
  the markers themselves can encode the uncertainty through size or colour of the
  glyph. A continuous model of uncertainty can be provided by colour coding the
  graph itself, using an uncertainty colour map. Sanyal et al [69] compare differ-
  ent approaches: their user study found different methods were best depending on
  whether the task was to locate least uncertainty (glyph size best) or highest un-
  certainty (colour best). Figure 4 shows two examples from their study: showing
  uncertainty by glyph size and by graph colour, in the latter case using different
  levels of saturation of blue following the early suggestion of MacEachren [51].

<a id="p011-b012"></a>

<!-- p011-b012 -->
5.3.3 Two dimensional data U2S

<a id="p011-b013"></a>

<!-- p011-b013 -->
Embed - Surface Views When surface views are used, the third space dimension
  is used for the visualization itself, and so another ‘dimension’ is needed for uncer-

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
A Review of Uncertainty in Data Visualization                                                  11

<a id="p012-b002"></a>

<!-- p012-b002 -->
!"                                                       #"

<a id="p012-b003"></a>

<!-- p012-b003 -->
Fig. 4 Examples from Sanyal et al user study [69]: (a) glyph size; (b) graph colour. Images kindly
created for this article by J. Sanyal and R.J. Moorhead

<a id="p012-b004"></a>

<!-- p012-b004 -->
tainty. The time dimension is commonly used and animated effects are described
  by Ehlschlaeger [26] and Brown [14].
  Sanyal et al [69] do a similar study as for 1D graphs mentioned above. They ex-
  amine adding glyphs at the data points on the surface, varying size and colour;
  adding error bars to the surface; and colour mapping the surface with an uncer-
  tainty measure. Here surface colour worked well, except for counting of uncer-
  tainty features - where possibly perception of the shape of the mean surface was
  affected by the uncertainty colour mapping.
Sparse - Contouring There are two distinct approaches to the visualization of
  uncertainty in contouring. The first is to draw a crisp isoline of the mean, and
  overlay some indication of uncertainty of the data, say standard deviation. The
  second is to draw some indication of the spread of contour lines that is possible
  for a given threshold. The first is showing uncertainty in the value of the de-
  pendent variable, along the mean contour; the second is showing the uncertainty
  in the space of the independent variable, for a given threshold. We call the first
  value uncertainty, and the second positional uncertainty.
  Value uncertainty is explored in Sanyal et al [70]. They draw uncertainty ribbons
  in which the thickness of the ‘mean’ contour lines gives an indication of the
  relative uncertainty at that point on the contour. Another possibility (not tried to
  our knowledge) is to simply colour the contour lines with a measure of the value
  uncertainty.
  Positional uncertainty has been studied by a number of researchers. The standard
  approach of meteorologists for example is to draw a spaghetti plot, in which a
  contour line is drawn for each model in an ensemble. Sanyal et al [70] and Potter
  et al [65] describe the use of spaghetti plots - the former comparing spaghetti
  plots with uncertainty ribbons, and discussing the merits of value and positional

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
12                                   Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p013-b002"></a>

<!-- p013-b002 -->
uncertainty visualization. Juang et al [38] use juxtaposition to look at contour
     plots from different realisations of a model.
     Allendes and Brodlie [3] take an image-based approach to positional uncertainty,
     identifying pixels where the probability of a value close to the contour threshold
     is sufficiently high. This gives a contour band - an area rather than a line, showing
     again the dimension increase that comes with uncertainty visualization. In con-
     trast to the uncertainty ribbons in [70], the width of the band indicates positional
     rather than value uncertainty. In a further variation, by mapping the probability to
     intensity, a fuzzy contour effect is produced, with high intensity indicating high
     probability of a contour passing through the pixel.
     Pöthkow et al [62] describe a similar method: from a set of gridded data, defined
     as random variates with associated PDF, they interpolate to gain a PDF defined
     continuously over the domain; at any point, they calculate the probability of tak-
     ing two samples from the distribution, and having one sample greater than the
     contour threshold, and the other less. This too gives a fuzzy contour effect. The
     method depends on the assumption that the data at grid points is independent.
     This is rarely the case: in an ensemble situation, if the value from one model at a
     data point is greater than the ensemble mean, then it is likely that the model will
     similarly be above the mean at adjacent datapoints. Therefore in a subsequent
     paper Pöthkow et al [63] take the spatial correlation of the data into account; the
     effect is to sharpen the areas of uncertainty.
     There is one further method which does not fall neatly into either category. Love
     et al [48] consider the situation where it makes sense to regard not just the data
     as a random variate, but also the threshold. They look for the greatest similarity
     between the distributions of data and the distribution of threshold. These give
     edge intersections which are linked as in normal contouring.
     In order to illustrate some of these ideas, we make use of an oceanography case
     study, described by Bingham and Haines [7]. The study of Ocean Dynamic To-
     pography (ODT), the height of the sea surface above its rest state (the geoid), is
     of importance to oceanographers, as it allows them to understand the circulation
     patterns of oceans and the associate surface currents, one of the main players
     in the regulation of the Earth’s climate. Calculation of the ODT is difficult and
     so scientists focus on computation of the associated Mean Dynamic Topography
     (MDT). Several models for calculation of the MDT exist; Bingham and Haines
     collected data from eight such models, allowing them to calculate an average
     value, together with a formal estimate of the error. In their paper they use an
     overlay approach, in which the contours of the average MDT are overlaid on a
     heatmap of an error field.
     We shall use a simple method for positional uncertainty, and apply it to this prob-
     lem, working directly with the ensemble data rather than estimating PDFs. Since
     we can interpolate each model, we assume we have values for each model ev-
     erywhere in the domain. At any point, we will wish to test the null hypothesis
     that the data comes from a distribution whose mean value equals the contour
     threshold, say zero: i.e.
                                           H0 : m = 0

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
A Review of Uncertainty in Data Visualization                                                    13

<a id="p014-b002"></a>

<!-- p014-b002 -->
The alternative hypothesis is non-directional:

<a id="p014-b003"></a>

<!-- p014-b003 -->
H1 : m 6= 0

<a id="p014-b004"></a>

<!-- p014-b004 -->
A t-test is applied to test the hypothesis and leads to two uncertain contour repre-
   sentations: a contour band, similar to that of Allendes and Brodlie [3], where the
   95% confidence interval is displayed, that is, all points where the null hypothesis
   would not normally be rejected (see Figure 5); and a fuzzy contour, where the
   value of the t-statistic is mapped to a colour scale between sea-blue and black,
   giving an inky effect (see Figure 6). For comparison, Figure 7 shows a spaghetti
   plot of all eight models. (Note that we only do the calculation at points where we
   have data from all eight models - hence the ‘unusual’ geography in places!)

<a id="p014-b005"></a>

<!-- p014-b005 -->
Fig. 5 Contour band: This shows the extent of the 95% confidence interval for the zero contour,
with the zero contour for the average data at each point shown for comparison.

<a id="p014-b006"></a>

<!-- p014-b006 -->
Fuzzy Contour with Mean : t−test

<a id="p014-b007"></a>

<!-- p014-b007 -->
Fig. 6 Fuzzy contour: This shows the value of the t-statistic from the hypothesis test with a colour
mapping from sea-blue to black based on the size of the t-statistic.

<a id="page-015"></a>

## PDF page 15

<a id="p015-b001"></a>

<!-- p015-b001 -->
14                                   Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p015-b002"></a>

<!-- p015-b002 -->
Fig. 7 Spaghetti Plot: zero contours from each of the eight individual models, superimposed on
95% confidence band

<a id="p015-b003"></a>

<!-- p015-b003 -->
Finally note that it would be possible to combine both positional and value un-
  certainty in a single representation - for example by modifying the contour band
  shown in white in Figure 5 so that a measure of the value error (say, standard
  deviation) was colour mapped on to the band.
Dense - Heatmap A heatmap uses colour mapping (sometimes called pseudo-
  colouring) to visualize a scalar function over a 2D region. Various approaches
  have been suggested for uncertainty: a straightforward idea is to map uncertain
  data to a derived scalar such as mean or standard deviation (see for example Love
  et al [48]); Hengl [33] suggests addition of whiteness in areas of uncertainty;
  Cedilnik and Rheingans [17] superimpose a grid where the grid lines are subtly
  modified to indicate uncertainty (for example, through mapping uncertainty to an
  intensity/width combination); Coninx et al [18] add Perlin noise effects.

<a id="p015-b004"></a>

<!-- p015-b004 -->
5.3.4 Three dimensional data U3S

<a id="p015-b005"></a>

<!-- p015-b005 -->
The problem gets harder! The three space dimensions are already in use for the
normal, ‘certain’, visualization, either by isosurfacing or volume rendering, and so
the uncertainty problem becomes challenging. Embedding is no longer an option.

<a id="p015-b006"></a>

<!-- p015-b006 -->
Sparse - Isosurface The approaches here mirror those for contouring. Again
  there is a choice between visualization of value uncertainty (mean isosurface
  with indication of uncertainty in data), or positional uncertainty (indication of
  the spread of isosurfaces possible for the defined threshold).
  For value uncertainty, the ‘mean’ isosurface can be enhanced with an indication
  of uncertainty, either through colour (Rhodes et al [68]) or glyphs (Newman et
  al [55]). Grigoryan and Rheingans [31] displace surface points in the direction of
  the surface normal, by a distance proportional to the uncertainty.
  Positional uncertainty of isosurfaces has been addressed by the same researchers
  who studied positional uncertainty in contouring, as the extensions are straight-

<a id="page-016"></a>

## PDF page 16

<a id="p016-b001"></a>

<!-- p016-b001 -->
A Review of Uncertainty in Data Visualization                                                     15

<a id="p016-b002"></a>

<!-- p016-b002 -->
forward: see the thesis of Allendes [2], and the papers by Pöthkow et al [62]
                and [63], the second incorporating spatial correlation. The fuzzy contours from
                the 2D case become fuzzy regions in 3D. Perception gets harder as the dimen-
                sionality increases, and the addition of a crisp, opaque isosurface of the mean
                of the data is necessary. Figure 8 shows uncertain isosurfaces using the methods
                of [62] and [63]: in (a) the isosurface is drawn without taking spatial correlation
                into account, while in (b) the use of spatial correlation gives a more localised
                spatial distribution of the uncertain isosurface.
                                 K. Pöthkow & B. Weber & H.-C. Hege / Probabilistic Marching Cubes                             939

<a id="p016-b003"></a>

<!-- p016-b003 -->
(a)

<a id="p016-b004"></a>

<!-- p016-b004 -->
(b)
                                        ◦
Figure 8: Uncertain isosurfaces ϑ = 0 C in a 3D temperature field. In Fig. (a) the probabilities computed using the formulation
             Fig. 8 Uncertain isosurfaces: these are drawn using the methods of [62] and [63]: in (a) the iso-
in [PH10] (not considering correlation) are shown. For Fig. (b) correlation was considered and the level crossing probabilities
             surface is drawn without taking spatial correlation into account, while in (b) the use of spatial
               localized spatial
reveal a morecorrelation gives a distribution of the
                                 more localised      uncertain
                                                  spatial        isosurface.
                                                          distribution of the uncertain isosurface. We are grateful
             to the authors for permission to use this picture which first appeared in [63]

<a id="p016-b005"></a>

<!-- p016-b005 -->
cases. This property is shared by both the approach pre-                in [PH10] should be preferred because of greater simplic-
sented here and the one from [PH10].                                    ity and speed. In case a correlation structure is known and
                                                                        realtime computation is not required our approach should
   Due to the consideration of correlation our approach leads           be preferred to get more accurate results. The Monte Carlo
to more accurate results compared to [PH10]. In contrast                computations are embarrassingly parallel. Currently, we are
to [PH10] we associate a probability for the existence of a             working on an efficient implementation for GPUs and expect
level crossing with each cell (of each dimension 1, ..., d)             that this will improve performance significantly.
in some grid and not with every point in a continuous do-
main. To compute level crossing probabilities for rectangles
or cuboid cells, we solve 4- or 8-dimensional integrals us-             Acknowledgments
ing a Monte Carlo method. This is computationally more
expensive than the evaluation of the analytic formulas used             This work was supported by the German Research Founda-
in [PH10] (partly as approximations). In special cases where            tion (DFG HE 2948/5-3) and the Max Planck Institute of
the input data contains spatially uncorrelated distributions or         Molecular Cell Biology and Genetics (Segmentation of mi-

<a id="page-017"></a>

## PDF page 17

<a id="p017-b001"></a>

<!-- p017-b001 -->
16                                 Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p017-b002"></a>

<!-- p017-b002 -->
Zehner et al [78] look at both value and positional approaches: in their value
  method, they extend Hengl’s [33] idea of saturation mapping to indicate standard
  deviation; in their positional method, they construct three isosurfaces (mean, up-
  per and lower bounds of a confidence interval), drawing the mean isosurface plus
  rays emanating from this to the upper and lower surfaces. Finally Love et al [48]
  extend their contour method that matches a target distribution for the threshold
  with the distribution of the data.
Dense - Volume Render This is a rather difficult technique to extend, since it
  already uses all three space dimensions plus colour and opacity. Early work by
  Djurcilov et al [25] explored two approaches: first, the transfer function used in
  volume rendering was modified to map data to colour and uncertainty to opacity;
  second, a post-processing step was added to incorporate special effects (holes,
  noise, texture) in areas of uncertainty.
  Not surprisingly, the time dimension has also been exploited, for example by
  Lundstrom et al [49]. Their application is to medical visualization where they
  note different transfer functions (used because the classifications are uncertain)
  may give different indications of how wide a vessel might be. Clinicians will
  generally try different preset transfer functions in order to make a decision on the
  stenosis. Lundstrom et al work from a probabilistic classification model, where
  explicit material probabilities are assigned to each CT value. An animation is
  then produced where areas of confident tissue classification appear static, while
  uncertain parts change with time. In a user trial, radiologists came close to per-
  forming as well with the single animation, as with lengthy experimentation with
  different transfer functions.
  Segmentation uncertainty is also considered in Kniss et al [41] and Prabni et
  al [66].

<a id="p017-b003"></a>

<!-- p017-b003 -->
5.4 Multifield Scalar Data kU S

<a id="p017-b004"></a>

<!-- p017-b004 -->
5.4.1 Zero dimensional data U0kS

<a id="p017-b005"></a>

<!-- p017-b005 -->
This is the case of multivariate data where we have measurements of a set of vari-
ables, but no specific dependency on space, time or anything else. It is often visu-
alized as a scatter plot, but is essentially a different datatype to U P . Parallel coor-
dinates is another popular technique. Uncertainty has been incorporated into scatter
plots and parallel coordinates by Xie et al [77] who compare different visual encod-
ings such as hue, and by Feng et al [27] , who use density plots based on representing
the data as PDFs.

<a id="page-018"></a>

## PDF page 18

<a id="p018-b001"></a>

<!-- p018-b001 -->
A Review of Uncertainty in Data Visualization                                         17

<a id="p018-b002"></a>

<!-- p018-b002 -->
kS
5.4.2 Higher dimensional data U>0

<a id="p018-b003"></a>

<!-- p018-b003 -->
There is increasing interest in the visualization of multifield data defined over 2D
and 3D domains, sometimes with time as an additional dimension - see for exam-
ple, Janicke et al [35]. It is not easy to find visualizations that represent sensibly in
a single picture a number of separate variables.The addition of uncertainty makes
the problem even harder. Consider for example one of the simplest cases of multi-
field visualization, where we use a surface view to depict a 2D dataset, with height
representing one variable and colour representing another. The use of colour for
the second variable prohibits us using colour for uncertainty information about the
first variable, as mentioned earlier in section 5.3.3. This is an interesting challenge.
Advances in multifield visualization may help uncertainty visualization (because an
uncertainty measure such as standard deviation can be treated as an extra variable),
and vice versa.

<a id="p018-b004"></a>

<!-- p018-b004 -->
5.5 Vector Data U V

<a id="p018-b005"></a>

<!-- p018-b005 -->
5.5.1 Two dimensional data U2V

<a id="p018-b006"></a>

<!-- p018-b006 -->
Direct - Glyphs Glyphs in the form of arrows provide a simple 2D vector visu-
  alization technique, especially for steady flows. Wittenbrink et al [75] consider
  carefully the design of uncertainty glyphs, proposing an arrow shape that widens
  to indicate uncertainty in bearing, with extra arrow heads for uncertainty in mag-
  nitude. Zuk et al [81] re-visit the topic for dense, bi-directional fields.
  For unsteady flow, glyphs can be animated but the load placed on the human
  memory is considerable, and certainly challenging when uncertainty is added.
  Hlawatsch et al [34] suggest a static glyph representation for unsteady flow: a
  glyph in the form of a small curve is traced out in polar coordinates at each data
  point, with the direction mapped to angle, θ , and time mapped to radius, r. For
  uncertainty, curves can be drawn for the upper and lower bounds of the sequence
  of angles over time, and the area between the curves shaded to give an indication
  of the range of directions at each data point.
Geometric - Particle advection and streamlines Euler’s equation gives a very
  simple (but not always accurate) means of calculating particle paths in a flow
  field:

<a id="p018-b007"></a>

<!-- p018-b007 -->
xn+1 = xn + v(xn ) ∗ ∆t                          (1)
   where xn is position at time step n, v(x) is the velocity at x and ∆t is the timestep.
   With uncertain data, we can think of v(x) as a random variate with associated
   PDF (perhaps estimated from multivalue data). Luo et al [50] and Love et al [48]
   suggest a number of approaches:

<a id="page-019"></a>

## PDF page 19

<a id="p019-b001"></a>

<!-- p019-b001 -->
18                                     Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p019-b002"></a>

<!-- p019-b002 -->
1.     a representative scalar can be used at each step, for example the mean of the
        distribution, and the particle path constructed as normal, without any indica-
        tion of uncertainty
 2.     a set of paths (e.g. corresponding to the multiple values in case of multivalue
        data) are followed from the seed-point for the first time-step; then the centroid
        of the resulting end-points is calculated and used to initiate another set of
        paths, and so on
 3.     equation 1 is interpreted directly in terms of PDFs, and generates a result
        at each time step which is a PDF - a simple means of adding two PDFs is
        suggested.
  Although Euler’s method is used here for simplicity, it would be straightforward
  to extend to, say, Runge-Kutta.
Dense - Texture-based approaches A number of important approaches use tex-
  tures to give a visual impression of the flow field: either as a dense, noise-like
  pattern or as a sparse effect produced from a simulation of injecting dye. A lead-
  ing method is Line Integral Convolution, or LIC, in which a dense texture is cre-
  ated by considering a random noise pattern, and integrating the noise forwards
  and backwards along streamlines through a pixel. The effect for surface veloc-
  ity in the ocean example of section 5.3.3 is studied in Allendes and Brodlie [4].
  They explore different ways of encoding uncertainty within LIC: by varying the
  frequency of the noise pattern (low frequency - giving blur - is used for high
  uncertainty); with colour, by assigning hue to uncertainty, and lightness to nor-
  mal LIC; and by adding fog to indicate uncertainty. Figure 9 shows the effect of
  colouring the LIC.

<a id="p019-b003"></a>

<!-- p019-b003 -->
Fig. 9 Uncertain LIC: here hue is used to encode the uncertainty while lightness is used to repre-
sent the LIC computation.

<a id="p019-b004"></a>

<!-- p019-b004 -->
Another popular texture approach is based on semi-Lagrangian texture advec-
      tion. An example is Image-Based Flow Visualization (IBFV), in which texture
      is advected by the flow field and a visualization created by blending successive
      frames to show flow lines. Allendes [2] explores the use of multiple frequen-
      cies (as in LIC); he also connects the opacity used in blending with the level

<a id="page-020"></a>

## PDF page 20

<a id="p020-b001"></a>

<!-- p020-b001 -->
A Review of Uncertainty in Data Visualization                                         19

<a id="p020-b002"></a>

<!-- p020-b002 -->
of uncertainty in order to blur flow lines in areas of high uncertainty. Similarly,
  Botchen et al [10] explore the incorporation of uncertainty into semi-Lagrangian
  methods: in two of their methods, they apply a post-processing step which has
  a smearing effect proportional to the uncertainty - either by adding an advection
  perpendicular to the flow, or by diffusing in all directions; in a final method, pre-
  rather than post-processing, they also use multi-frequency noise. An advantage of
  the post-processing methods is that they work both for dense and sparse texture
  effects.
Feature - Topology-based methods An increasingly important set of methods
  focus on identifying the topological characteristics of the flow field. This enables
  a global view to be taken, in which critical points (zero velocity) are identified
  and the domain is segmented into regions with common flow behaviour. Otto et
  al [58] have extended the topological analysis to the case of uncertain flow data.
  Faced with the particle advection difficulty of uncertain velocities in equation 1,
  they consider streamline integration not in terms of a single particle at point (x, y)
  but rather a particle density function defined over the whole domain. This density
  function is then advected in the flow. With an initial distribution concentrated at a
  seed point, the integration will typically converge to a ‘critical point distribution’.

<a id="p020-b003"></a>

<!-- p020-b003 -->
5.5.2 Three dimensional data U3V

<a id="p020-b004"></a>

<!-- p020-b004 -->
The work on uncertain 2D flow visualization largely carries forward into 3D. So for
example, Otto et al [59] extend their 2D topological analysis to the 3D case. The
trajectory of stars is studied by Li et al [42] where cones are used to visualize the
range of possible trajectories - over 50,000 years!

<a id="p020-b005"></a>

<!-- p020-b005 -->
6 Uncertainty of Visualization

<a id="p020-b006"></a>

<!-- p020-b006 -->
Even when we are certain about the data, we may introduce uncertainty when we
generate a visualization. We take a brief look at this area now. There are two aspects:
at the filter stage, we incur error when we build an interpolant from the data as an
empirical model of the true entity; and in the map and render stages, we incur error
when we represent the model in a visualization. Again we use the classification of
section 4, although Point Data in this case is trivial so we omit it.

<a id="page-021"></a>

## PDF page 21

<a id="p021-b001"></a>

<!-- p021-b001 -->
20                                   Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p021-b002"></a>

<!-- p021-b002 -->
6.1 Scalar Data E S

<a id="p021-b003"></a>

<!-- p021-b003 -->
6.1.1 One dimensional data E1S

<a id="p021-b004"></a>

<!-- p021-b004 -->
Interpolation plays a major role in scalar visualization - it lets us see not only the
data but also suggests the behaviour where there is no data. A simple 1D example
(used before - see Brodlie [12] - but still relevant) highlights this. Consider coal
burning in a furnace, with the percentage of oxygen measured in the flue gas. Data
is collected at intervals of time, as shown in Table 2. The perils are illustrated in
Figure 10. The top left image shows just the data; top right is a piecewise linear
interpolant - but do we really believe the rate of change of oxygen jumps dramati-
cally at each data point?; bottom left shows a smoothly changing model, using cubic
spline interpolation - but how can we have a negative percentage of oxygen?; bottom
right is more credible - but still just an estimate.

<a id="p021-b005"></a>

<!-- p021-b005 -->
Table 2 Oxygen in flue gas
                      x (time in mins)
                   0 2 4 10 28 30 32
y (% of oxygen) 20.8 8.8 4.2 0.5 3.9 6.2 9.6

<a id="p021-b006"></a>

<!-- p021-b006 -->
6.1.2 Two dimensional data E2S

<a id="p021-b007"></a>

<!-- p021-b007 -->
In 2D, bilinear interpolation dominates for rectangular gridded data. For contour
drawing, this gives contour lines that are hyperbolas. Graphics systems tend to
work in straight lines and so an approximation to the hyperbola is made, often very
crudely by joining the intersections of the contour lines with cell edges. Lopes and
Brodlie [46] show the sort of error that can occur. The calculation of edge intersec-
tions can itself be a difficult task numerically: if the values at the end points of an
edge are close to each other, and close to the threshold, the intersection calculation
is ill-conditioned, as Pöthkow et al [62] demonstrate.
    Higher order interpolation can be used - Preusser [67] provides a bicubic con-
touring routine.
    If the grid is triangular, linear interpolation can be used - resulting in straight line
contours.

<a id="p021-b008"></a>

<!-- p021-b008 -->
6.1.3 Three dimensional data E3S

<a id="p021-b009"></a>

<!-- p021-b009 -->
In isosurfacing, the normal practice is to use trilinear interpolation to build an empir-
ical model inside each cell of a rectilinear grid. This again causes difficulty further
down the pipeline: the shape of an isosurface is complex and hard to represent con-
sistently using the triangular facets required by typical graphics systems such as

<a id="page-022"></a>

## PDF page 22

<a id="p022-b001"></a>

<!-- p022-b001 -->
A Review of Uncertainty in Data Visualization                                                     21

<a id="p022-b002"></a>

<!-- p022-b002 -->
25                                                25

<a id="p022-b003"></a>

<!-- p022-b003 -->
20                                                20
   % oxygen

<a id="p022-b004"></a>

<!-- p022-b004 -->
% oxygen
              15                                                15

<a id="p022-b005"></a>

<!-- p022-b005 -->
10                                                10

<a id="p022-b006"></a>

<!-- p022-b006 -->
5                                                 5

<a id="p022-b007"></a>

<!-- p022-b007 -->
0                                                 0
                   0   10        20        30                        0   10        20        30
                        time in mins                                      time in mins

<a id="p022-b008"></a>

<!-- p022-b008 -->
25                                                25

<a id="p022-b009"></a>

<!-- p022-b009 -->
20                                                20
   % oxygen

<a id="p022-b010"></a>

<!-- p022-b010 -->
% oxygen
              15                                                15

<a id="p022-b011"></a>

<!-- p022-b011 -->
10                                                10

<a id="p022-b012"></a>

<!-- p022-b012 -->
5                                                 5

<a id="p022-b013"></a>

<!-- p022-b013 -->
0                                                 0
                   0   10        20        30                        0   10        20        30
                        time in mins                                      time in mins

<a id="p022-b014"></a>

<!-- p022-b014 -->
Fig. 10 Perils of interpolation: oxygen burning in furnace - top left is data; top right is piecewise
linear (with sharp changes in slope); bottom left is smooth spline, but how can a percentage be
negative?; bottom right is a monotonic curve, credible because positive, but is minimum at 10
minutes exactly?

<a id="p022-b015"></a>

<!-- p022-b015 -->
OpenGL (see, for example, Lopes and Brodlie [47] who also explore issues of ro-
bustness - for example, how sensitive the representation of the isosurface is to small
changes in the threshold).
   Again, tetrahedral grids allow linear interpolation and triangular facet isosur-
faces. Thus for rectilinear grids, it is tempting to split each cell into a set of tetrahe-
dra in order to simplify the isosurface construction. Beware! Carr et al [16] nicely
demonstrate the different results obtained when various different tetrahedral decom-
positions are used. Figure 11 shows the visual artifacts created from isosurfacing a
test dataset; the data is sampled from a sum of nine Gaussians with most of the peaks
aligned in a zig-zag pattern along the grid, the ‘ground truth’ isosurface being a set
of spheres. Subimage (a) shows a marching cubes visualization - piecewise linear
approximation to trilinear interpolation on rectangular cells; subimages (b) and (c)
both show piecewise linear interpolants after cell subdivision into five tetrahedra,
but doing the subdivision in two, different, equally plausible ways; subimages (d)

<a id="page-023"></a>

## PDF page 23

<a id="p023-b001"></a>

<!-- p023-b001 -->
22                                       Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p023-b002"></a>

<!-- p023-b002 -->
and (e) show piecewise linear interpolants after cell subdivision into six tetrahedra,
but using different major diagonals of the cell to do the split. Each image (b) - (e)
in Figure 11 uses the same data, uses the same interpolation (piecewise linear), but
shows quite different results. Further subdivisions, illustrating further artifacts, are
included in the paper.

<a id="p023-b003"></a>

<!-- p023-b003 -->
!%#$                                 !'#$

<a id="p023-b004"></a>

<!-- p023-b004 -->
!"#$

<a id="p023-b005"></a>

<!-- p023-b005 -->
!&#$                                 !(#$

<a id="p023-b006"></a>

<!-- p023-b006 -->
Fig. 11 Effect of simplicial subdivision on isosurfaces: subimage (a) shows a marching cubes visu-
alization - piecewise linear approximation to trilinear interpolation on rectangular cells; subimages
(b) and (c) both show piecewise linear interpolants after cell subdivision into five tetrahedra, but
doing the subdivision in two, different, equally plausible ways - notice the different topologies
that result; subimages (d) and (e) show piecewise linear interpolants after cell subdivision into six
tetrahedra, but using different major diagonals of the cell to do the split. Images kindly created for
this article by H.Carr

<a id="p023-b007"></a>

<!-- p023-b007 -->
It can be frustrating for scientists who carry out simulations using higher order
approximations, to find that linear approximations are required in order to visual-

<a id="page-024"></a>

## PDF page 24

<a id="p024-b001"></a>

<!-- p024-b001 -->
A Review of Uncertainty in Data Visualization                                         23

<a id="p024-b002"></a>

<!-- p024-b002 -->
ize their results - with consequent loss of accuracy. Thus there is growing interest
in being able to pass the higher order data through the visualization pipeline. For
example, Nelson and Kirby [53] show how isosurfaces can be drawn by direct ray-
tracing of high order finite element data. The cost is a loss of interactivity compared
with sampling on a ‘fairly well-spaced’ mesh and using marching cubes with its
piecewise trilinear interpolation. However Nelson and Kirby show that for high ac-
curacy it is better to ray trace the high order data directly, than to run marching cubes
on a very finely sampled mesh. Subsequent work by the authors [54] demonstrates
interactivity is possible for cut surfaces (ie E2S ) extracted from high order finite el-
ement data, and visualized using GPU hardware; however, accurate and interactive
isosurface rendering of high order data remains a challenging topic.

<a id="p024-b003"></a>

<!-- p024-b003 -->
6.2 Multifield Scalar Data kE S

<a id="p024-b004"></a>

<!-- p024-b004 -->
Interpolation is important in design studies, where there are a number of parameters
as independent variables, and a number of values that are calculated and used in
multiobjective optimization. Visualization can be used to guide the optimization
process by showing models of the objective functions, interpolated from sample
values. Often however the calculation of a sample can be a major task, and so the
data points have to be chosen with care. Wright et al [76] show how visualization
can help steer the selection of good sample points. Berger et al [5] use statistical
learning techniques to improve the process, and provide sensitivity analysis.

<a id="p024-b005"></a>

<!-- p024-b005 -->
6.3 Vector Data E V

<a id="p024-b006"></a>

<!-- p024-b006 -->
For vector data, we again require interpolation. In some applications involving flow,
interpolation error is a long standing issue. For example, in meteorology, Kahl and
Sampson [39] describe how substantial errors in spatial and to a lesser extent tem-
poral interpolation can lead to false conclusions about air pollution. More recently,
Boller et al [8] perform a study in which they aim to bound the interpolation error in
each grid cell and visualize the resulting uncertainty as ribbons of varying thickness
around the estimated path.
   For particle advection methods, there is the additional step of numerical integra-
tion in order to calculate the path over time. Lodha et al [44] explore a number of
approaches to visualizing the error in the integration, such as creating a ribbon be-
tween a pair of streamlines generated by different integration methods (Euler and
Runge-Kutta). Similarly, Lopes and Brodlie [45] use the error estimates provided
by NAG Library ODE solvers to provide indications of trajectory errors; figure 12
shows an envelope of trajectories formed by re-integrating with a smaller tolerance.
   As in the scalar case, there is a very useful simplification for triangular or tetra-
hedral meshes. If we use linear interpolation in such cells, it is possible to solve the

<a id="page-025"></a>

## PDF page 25

<a id="p025-b001"></a>

<!-- p025-b001 -->
24                                     Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p025-b002"></a>

<!-- p025-b002 -->
Fig. 12 Uncertainty of Particle Advection: the yellow tube indicates an envelope within which the
exact path might lie, based on integrating with different tolerances.

<a id="p025-b003"></a>

<!-- p025-b003 -->
ODE analytically, removing the need for numerical integration. This idea is due to
Nielson and Jung [56], and has been further developed by Kipfer et al [40] and by
Bhatia et al [6].
    Accurate particle advection for high order data has been studied by Coppola et
al [19].

<a id="p025-b004"></a>

<!-- p025-b004 -->
7 Conclusions

<a id="p025-b005"></a>

<!-- p025-b005 -->
We have reviewed the state of the art in uncertainty visualization, looking at both
the visualization of uncertainty of data and also the uncertainty of the visualization
process itself. We have seen that the visualization research community has enthusi-
astically taken up the challenge of uncertainty and most of the popular visualization
techniques have been extended in some way to handle uncertain data. There is some
way to go however before these techniques are standard facilities in visualization
software toolkits.

<a id="page-026"></a>

## PDF page 26

<a id="p026-b001"></a>

<!-- p026-b001 -->
A Review of Uncertainty in Data Visualization                                                   25

<a id="p026-b002"></a>

<!-- p026-b002 -->
A measure of the increasing interest in uncertainty visualization is that another
state-of-the-art paper is underway, following discussions at a Dagstuhl seminar in
2011 [9]; it will act as a companion paper to this review.
   There remain significant research challenges ahead. While incorporation of un-
certainty into 1D and 2D visualization, both scalar and vector, is relatively straight-
forward, there are difficult perceptual issues in adding an indication of uncertainty
in 3D. There is also work to be done in linking uncertainty and risk: Daradkeh et
al [23] for example look at the influence of uncertainty associated with the input
variables of a model, on the risk associated with decision-making. In this review we
have looked separately at visualization of uncertainty, and uncertainty of visualiza-
tion: we need to study how both can be incorporated in a single representation.
   We have mentioned that uncertainty is hard. But it is simple to ignore. Fred
Brooks, in a keynote address to the IEEE Visualization conference in 1993, re-
minded the audience of the need to present data honestly - while in some areas,
such as realistic rendering, there is a ground truth against which the correctness of
an image may be judged, in visualization we rely on the integrity of the visual-
ization scientist. This gives us the responsibility to include in our visualizations an
indication of the reliance we may place on the picture we have drawn.

<a id="p026-b003"></a>

<!-- p026-b003 -->
Acknowledgements We have many people to thank : Alan McKinnon of Lincoln University, NZ,
who helped us during his sabbatical at Leeds in 2009; Roger Payne, of VSNi Ltd, showed us how
t-tests could help draw uncertain contours; Rory Bingham and Keith Haines who lent us the ocean
data we have used in most of our uncertainty studies; Christian Hege who gave permission for
us to use Figure 8; Robert Moorhead, Jibonananda Sanyal and Hamish Carr who created images
especially for this article; and members past and present of the VVR group at University of Leeds.

<a id="p026-b004"></a>

<!-- p026-b004 -->
References

<a id="p026-b005"></a>

<!-- p026-b005 -->
1. Jeroen C.J.H. Aerts, Keith C. Clarke, and Alex D. Keuper. Testing popular visualization
    techniques for representing model uncertainty. Cartography and Geographic Information
    Science, 30(3):249–261, 2003.
 2. Rodolfo S. Allendes Osorio. Visualization of Uncertainty in Scientific Data. PhD thesis,
    University of Leeds, 2010.
 3. Rodolfo S. Allendes Osorio and Ken W. Brodlie. Contouring with uncertainty. In Ik Soo Lim
    and Wen Tang, editors, Proceedings 6th Theory & Practice of Computer Graphics Confer-
    ence(TP.CG.08). Eurographics Association, 2008.
 4. Rodolfo S. Allendes Osorio and Ken W. Brodlie. Uncertain flow visualization using LIC. In
    W. Tang and J. Collomosse, editors, Theory and Practice of Computer Graphics - Eurograph-
    ics UK Chapter Proceedings, pages 215–222, 2009.
 5. W. Berger, H. Piringer, P. Filzmoser, and E. Gröller. Uncertainty-aware exploration of contin-
    uous parameter spaces using multivariate prediction. Computer Graphics Forum, 30(3):911–
    920, 2011.
 6. H. Bhatia, S. Jadhav, P.-T. Bremer, G. Chen, J.A. Levine, L.G. Nonato, and V. Pascucci. Edge
    maps: Representing flow with bounded error. In Proceedings of IEEE Pacific Visualization
    Symposium 2011, pages 75–82, March 2011.
 7. Rory J. Bingham and Keith Haines. Mean dynamic topography: intercomparisons and errors.
    Philosophical Transactions of The Royal Society A, pages 903 – 916, 2006.

<a id="page-027"></a>

## PDF page 27

<a id="p027-b001"></a>

<!-- p027-b001 -->
26                                      Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p027-b002"></a>

<!-- p027-b002 -->
8. R.A. Boller, S.A. Braun, J. Miles, and D.H. Laidlaw. Application of uncertainty visualization
    methods to meteorological trajectories. Earth Science Informatics, 3:119–126, 2010.
 9. Georges-Pierre Bonneau, Gordon Kindlmann, Hans-Christian Hege, Chris R. Johnson,
    Manuel Oliveira, Kristin Potter, and Penny Rheinghans. Overview and state-of-the-art of
    uncertainty visualization. In Scientific Visualization: Challenges for the Future, Min Chen,
    Hans Hagen, Charles Hansen, Chris Johnson and Arie Kaufmann (eds), in preparation, 2012.
10. Ralf P. Botchen, Daniel Weiskopf, and Thomas Ertl. Texture-based visualization of uncer-
    tainty in flow fields. In Proceedings of IEEE Visualization 2005, pages 647–654, 2005.
11. Nadia Boukhelifa and David J. Duke. The uncertain reality of underground assets. In Pro-
    ceedings of ISPRS/ICA/DGfK Joint Workshop on Visualization and Exploration of Geospatial
    Data. ISPRS, 2007.
12. K. Brodlie. A classification scheme for scientific visualization. In R.A. Earnshaw and D. Wat-
    son, editors, Animation and Scientific Visualization, pages 125–140. Academic Press, 1993.
13. K. W. Brodlie, L. A. Carpenter, R. A. Earnshaw, J. R. Gallop, R. J. Hubbold, A. M. Mumford,
    C. D. Osland, and P. Quarendon, editors. Scientific Visualization - techniques and applications.
    Springer-Verlag, 1992.
14. Ross A Brown. Animated visual vibrations as an uncertainty visualisation technique. In
    International Conference on Computer Graphics and Interactive Techniques in Australasia
    and South East Asia, pages 84–89, 2004.
15. B. Buttenfield and M.K. Beard. Graphical and geographical components of data quality. In
    H.M. Hearnshaw and D.J. Unwin, editors, Visualization in Graphical Information Systems,
    pages 150–157. Wiley, 1994.
16. Hamish Carr, Torsten Moller, and Jack Snoeyink. Artifacts caused by simplicial subdivision.
    IEEE Transactions on Visualization and Computer Graphics, 12(2):231–242, 2006.
17. Andrej Cedilnik and Penny Rheingans. Procedural annotation of uncertain information. In
    Proceedings of Visualization 2000, pages 77–84. IEEE Computer Society Press, 2000.
18. Alexandre Coninx, Georges-Pierre Bonneau, Jacques Droulez, and Guillaume Thibault. Visu-
    alization of uncertain scalar data fields using color scales and perceptually adapted noise. In
    Applied Perception in Graphics and Visualization, Toulouse, France, 2011.
19. G. Coppola, S.J. Sherwin, and J. Peiro. Nonlinear particle tracking for high-order elements.
    Journal of Computational Physics, 172(1):356–386, 2001.
20. Carlos D. Correa, Yu-Hsuan Chan, and Kwan-Liu Ma. A framework for uncertainty-aware
    visual analytics. In Proceedings of IEEE Symposium on Visual Analytics Science and Tech-
    nology VAST 09, 2009.
21. M.G. Cox and P.M. Harris. Uncertainty evaluation. Technical report, National Physical Lab-
    oratory, March 2004. Software Support for Metrology. Best Practice Guide No. 6.
22. G. Cumming, F. Fidler, and D.L. Vaux. Error bars in experimental biology. The Journal of
    Cell Biology, 177(1):7–11, 2007.
23. Mohammad Daradkeh, Alan McKinnon, and Clare Churcher. Visualisation tools for exploring
    the uncertainty-risk relationship in the decision-making process: a preliminary empirical eval-
    uation. In Proceedings of the Eleventh Australasian Conference on User Interface - Volume
    106, AUIC ’10, pages 42–51, Darlinghurst, Australia, Australia, 2010. Australian Computer
    Society, Inc.
24. Trevor J. Davis and C. Peter Keller. Modelling and visualizing multiple spatial uncertainties.
    Computers and Geosciences, 23(4):397 – 408, 1997. Exploratory Cartograpic Visualisation.
25. Suzana Djurcilov, Kwansik Kim, Pierre Lermusiaux, and Alex Pang. Visualizing scalar volu-
    metric data with uncertainty. Computers & Graphics, 26:239–248, 2002.
26. C.R. Ehlschlaeger, A.M. Shortridge, and M.F. Goodchild. Visualizing spatial data uncertainty
    using animation. Computers and Geosciences, 23(4):387–395, 1997.
27. D. Feng, L. Kwock, Y. Lee, and R.M. Taylor. Matching visual saliency to confidence in plots
    of uncertain data. IEEE Transactions on Visualization and Computer Graphics, 16(6):980–
    989, 2010.
28. P. Fisher. Animation and sound for the visualization of uncertain spatial information. In
    Visualization in Graphical Information Systems, pages 181–185. Wiley, 1994.

<a id="page-028"></a>

## PDF page 28

<a id="p028-b001"></a>

<!-- p028-b001 -->
A Review of Uncertainty in Data Visualization                                                   27

<a id="p028-b002"></a>

<!-- p028-b002 -->
29. M. Goodchild, B.Buttenfield, and J. Wood. Introduction to visualizing data validity. In H.M.
    Hearnshaw and D.J. Unwin, editors, Visualization in Graphical Information Systems, pages
    141–149. Wiley, 1994.
30. Henning Griethe and Heidrun Schumann. The visualization of uncertain data: Methods and
    problems. In Proceedings of the 17th Simulation and Visualization Conference, 2006.
31. Gevorg Grigoryan and Penny Rheingans. Point-based probabilistic surfaces to show surface
    uncertainty. IEEE Transactions on Visualization and Computer Graphics, 10(5):564–573,
    2004.
32. Robert B. Haber and David A. McNabb. Visualization idioms: A conceptual model for scien-
    tific visualization systems. In B. Shriver, G.M. Nielson, and L.J. Rosenblum, editors, Visual-
    ization in Scientific Computing, pages 74–93. IEEE, 1990.
33. T. Hengl. Visualisation of uncertainty using the hsi colour model: Computation with
    colours. In Proceedings of the 7th International Conference on GeoComputation, pages 8–17,
    Southampton, United Kingdom, 2003.
34. Marcel Hlawatsch, Philipp Leube, Wolfgang Nowak, and Daniel Weiskopf. Flow radar glyphs
    - static visualization of unsteady flow with uncertainty. IEEE Transactions on Visualization
    and Computer Graphics, 17(12):1949–1958, 2011.
35. H. Jänicke, A. Wiebel, G. Scheuermann, and W. Kollmann. Multifield visualization using
    local statistical complexity. IEEE Transactions on Visualization and Computer Graphics,
    13(6):1384–1391, 2007.
36. Chris Johnson. Top scientific visualization research problems. IEEE Computer Graphics and
    Applications, pages 13–17, July/August 2004.
37. Chris R. Johnson and Allen R. Sanderson. A next step: Visualizing errors and uncertainties.
    IEEE Computer Graphics and Applications, pages 6–10, 2003.
38. K.-W. Juang, Y.-S. Chen, and D.-Y. Lee. Using sequential indicator simulation to assess the
    uncertainty of delineating heavy-metal contaminated soils. Environmental Pollution, 127:229–
    238, 2004.
39. J.D. Kahl and P.J. Sampson. Uncertainty in trajectory calculations due to low resolution me-
    teorological data. Journal of Climate and Applied Meteorology, 25:1816–1831, 1986.
40. P. Kipfer, F. Reck, and G. Greiner. Local exact particle tracing on unstructured grids. Com-
    puter Graphics Forum, 22:133–142, 2003.
41. J.M. Kniss, R.V. Uitert, A. Stephens, G.-S. Li, T. Tasdizen, and C. Hansen. Statistically quan-
    titative volume visualization. In IEEE Visualization 2005, 2005.
42. Hongwei Li, Chi-Wing Fu, Yinggang Li, and Andrew J. Hanson. Visualizing large-scale un-
    certainty in astrophysical data. IEEE Transactions on Visualization and Computer Graphics,
    13(6):1640–1647, 2007.
43. S.K. Lodha, C.M. Wilson, and R.E. Sheehan. LISTEN: Sounding uncertainty visualization.
    In Proceedings of Visualization 96, pages 189–195, 1996.
44. Suresh K. Lodha, Alex Pang, Robert E. Sheehan, and Craig M. Wittenbrink. UFLOW: Vi-
    sualizing uncertainty in fluid flow. In Roni Yagel and Gregory M. Nielson, editors, IEEE
    Visualization ’96,, pages 249–254, 1996.
45. Adriano Lopes and K. Brodlie. Accuracy in 3D particle tracing. In H.C. Hege and K. Polthier,
    editors, Mathematical Visualization: Algorithms, Applications and Numerics, pages 329–341.
    Springer Verlag, 1999.
46. Adriano Lopes and Ken Brodlie. Accuracy in contour drawing. In Proceedings of Eurograph-
    ics, pages 301–312, 1998.
47. Adriano Lopes and Ken Brodlie. Improving the robustness and accuracy of the marching
    cubes algorithm for isosurfacing. IEEE Transactions on Visualization and Computer Graph-
    ics, 9:16–29, January 2003.
48. Alison L. Love, Alex T. Pang, and David L. Kao. Visualizing spatial multivalue data. IEEE
    Computer Graphics and Applications, pages 69–79, 2005.
49. C. Lundstrom, P. Ljung, A. Persson, and A. Ynnerman. Uncertainty visualization in medi-
    cal volume rendering using probabilistic animation. IEEE Transactions on Visualization and
    Computer Graphics, 13(6):1648–1655, 2007.

<a id="page-029"></a>

## PDF page 29

<a id="p029-b001"></a>

<!-- p029-b001 -->
28                                     Ken Brodlie, Rodolfo Allendes Osorio and Adriano Lopes

<a id="p029-b002"></a>

<!-- p029-b002 -->
50. A. Luo, D. Kao, and A. Pang. Visualizing spatial distribution data sets. In Proceedings
    of VISSYM ’03 - Eurographics and IEEE TVCG Symposium on Visualization, pages 29–38.
    Eurographics Association, 2003.
51. Alan M. MacEachren. Visualizing uncertain information. Cartographic Perspective,
    Fall(13):10–19, 1992.
52. Alan M. MacEachren, Anthony Robinson, Susan Hopper, Steven Gardner, Robert Murray,
    Mark Gahegan, and Elisabeth Hetzler. Visualizing geospatial information uncertainty: what
    we know and what we need to know. Cartography and Geographic Information Science,
    32(8):139–160, 2005.
53. Blake Nelson and Robert M. Kirby. Ray-tracing polymorphic multidomain spectral/hp ele-
    ments for isosurface rendering. IEEE Transactions on Visualization and Computer Graphics,
    12(1):114–126, 2006.
54. Nelson, Blake and Kirby, Robert M. and Haimes, Robert. Gpu-based interactive cut-surface
    extraction from high-order finite element fields. IEEE Transactions on Visualization and Com-
    puter Graphics, 17(12):1803–1811, 2011.
55. T.S. Newman and W. Lee. On visualizing uncertainty in volumetric data: techniques and their
    evaluation. Journal of Visual Languages and Computing, 15:463–491, 2004.
56. G.M. Nielson and I.-H. Jung. Tools for computing tangent curves for linearly varying vector
    fields over tetrahedral domains. IEEE Transactions on Visualization and Computer Graphics,
    5(4):360–372, 1999.
57. Chris Olston and Jock D. Mackinlay. Visualizing data with bounded uncertainty. In INFOVIS,
    pages 37–, 2002.
58. M. Otto, T. Germer, H.-C. Hege, and H. Theisel. Uncertain 2d vector field topology. Computer
    Graphics Forum, 29(2):347–356, 2010.
59. Mathias Otto, Tobias Germer, and Holger Theisel. Uncertain topology of 3d vector fields.
    Visualization Symposium, IEEE Pacific, 0:67–74, 2011.
60. Alex T. Pang, Craig M. Wittenbrink, and Suresh K. Lodha. Approaches to uncertainty visual-
    ization. The Visual Computer, 13(8):370–390, 1997.
61. Frits H. Post, Benjamin Vrolijk, Helwig Hauser, Robert S. Laramee, and Helmut Doleisch.
    The state of the art in flow visualisation: Feature extraction and tracking. Computer Graphics
    Forum, 22(4):775–792, 2003.
62. K. Pöthkow and H.-C. Hege. Positional uncertianty of isocontours: Condition analysis and
    probabilistic measures. IEEE Transactions on Visualization and Computer Graphics, 2010.
63. Kai Pöthkow, Britta Weber, and Hans-Christian Hege. Probabilistic marching cubes. Com-
    puter Graphics Forum, 30(3):931–940, 2011.
64. K. Potter, J. Kniss, R. Riesenfeld, and C.R. Johnson. Visualizing summary statistics and
    uncertainty. Computer Graphics Forum, 29(3):823–831, 2010.
65. K. Potter, A. Wilson, P.-T. Bremer, D. Williams, C. Doutriaux, V. Pascucci, and C.R. Johnson.
    Ensemble-vis: A framework for the statistical visualization of ensemble data. In Proceedings
    of the 2009 IEEE International Conference on Data Mining Workshops, pages 233–240. IEEE
    Computer Society, 2009.
66. J.-S. Prabni, T. Ropinski, and K. Hinrichs. Uncertainty-aware guided volume segmentation.
    IEEE Transactions on Visualization and Computer Graphics, 16(6):1358–1365, 2010.
67. A. Preusser. Algorithm 671: Farb-e-2d: fill area with bicubics on rectangles&mdash;a contour
    plot program. ACM Trans. Math. Softw., 15:79–89, March 1989.
68. Philip J. Rhodes, Robert S. Laramee, R. Daniel Bergeron, and Ted M. Sparr. Uncertainty
    visualization methods in isosurface rendering. In M. Chover, H. Hagen, and D. Tost, editors,
    Proceedings of Eurographics. The Eurographics Association, 2003.
69. J. Sanyal, S. Zhang, G. Bhattacharya, P. Amburn, and R.J. Moorhead. A user study to com-
    pare four uncertainty visualization methods for 1D and 2D datasets. IEEE Transactions on
    Visualization and Computer Graphics, 15(6):1209–1218, 2009.
70. J. Sanyal, S. Zhang, J. Dyer, A. Mercer, P. Amburn, and R.J. Moorhead. Noodles: A tool
    for visualization of numerical weather model ensemble uncertainty. IEEE Transactions on
    Visualization and Computer Graphics, 16(6):1421–1430, 2010.

<a id="page-030"></a>

## PDF page 30

<a id="p030-b001"></a>

<!-- p030-b001 -->
A Review of Uncertainty in Data Visualization                                                  29

<a id="p030-b002"></a>

<!-- p030-b002 -->
71. Judi Thomson, Beth Hetzler, Alan MacEachren, Mark Gahegan, and Misha Pavel. A typology
    for visualizing uncertainty. In Proceedings of the SPIE, Visualization and Data Analysis,
    pages 146–157, 2005.
72. M. Tory and T. Moeller. Rethinking visualization: A high-level taxonomy. In Proceedings of
    IEEE Symposium on Information Visualization, pages 151–158, 2004.
73. J.W. Tukey. Exploratory Data Analysis. Addison-Wesley, 1977.
74. USGS. Spatial Data Transfer Standard (SDTS): Logical Specifications, 1977.
75. Craig M. Wittenbrink, Alex T. Pang, and Suresh K. Lodha. Glyphs for visualizing uncertainty
    in vector fields. IEEE Transactions on Visualization and Computer Graphics, 2:266–279,
    1996.
76. H. Wright, K. Brodlie, and T. David. Navigating high-dimensional spaces to support design
    steering. In Proceedings of IEEE Visualization 2000, pages 291–296, 2000.
77. Z. Xie, S. Huang, M.O. Ward, and E.A. Rundensteiner. Exploratory visualization of mul-
    tivariate data with variable quality. In IEEE Symposium on Visual Analytics Science and
    Technology, pages 183–190, 2006.
78. B. Zehner, N. Watanabe, and O. Kolditz. Visualization of gridded scalar data with uncertainty
    in geosciences. Computers and Geosciences, 36(10):1268–1275, 2010.
79. T. Zuk. Visualizing Uncertainty. PhD thesis, Department of Computer Science, University of
    Calgary, 2008.
80. T. Zuk and S. Carpendale. Theoretical analysis of uncertainty visualizations. In Visualization
    and Data Analysis, 2006.
81. Torre Zuk, Jon Downton, David Gray, Sheelagh Carpendale, and J.D. Liang. Exploration of
    uncertainty in bidirectional vector fields. In Katy Börner, Matti T. Grönh, Jinah Park, and
    Jonhathan C. Roberts, editors, Visualization and Data Analysis 2008, Proceedings of SPIE-
    IS&T Electroning Imaging. SPIE and IS&T, 2008.
