---
id: "correll2018task"
title: "Value-Suppressing Uncertainty Palettes"
source_file: "The Art of Uncertain Topoplots/papers/correll2018task.pdf"
source_sha256: "068b990b59bd142a93d660019718a81493bf5d1e24ca1d1ecd88afff56ab3c65"
extraction_format: 1
---

# Value-Suppressing Uncertainty Palettes — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
CHI 2018 Paper                                                                                                        CHI 2018, April 21–26, 2018, Montréal, QC, Canada

<a id="p001-b002"></a>

<!-- p001-b002 -->
Value-Suppressing Uncertainty Palettes
                Michael Correll                                             Dominik Moritz                                                              Jeffrey Heer
                Tableau Research                                         University of Washington                                                 University of Washington
              mcorrell@tableau.com                                     domoritz@cs.washington.edu                                                      jheer@uw.edu

<a id="p001-b003"></a>

<!-- p001-b003 -->
Bivariate Map of                                  Value Suppressing
ABSTRACT                                                                                                                  Value and Uncertainty                                Uncertainty Palette

<a id="p001-b004"></a>

<!-- p001-b004 -->
Understanding uncertainty is critical for many analytical tasks.                                                       Low Value          High Value
                                                                                                                                                                           e                              Hig
                                                                                                                                                                         lu                                  hV
One common approach is to encode data values and uncer-                                                                                                               Va

<a id="p001-b005"></a>

<!-- p001-b005 -->
Low Uncertainty
                                                                                                                                                                  w                                            alu
                                                                                                                                                                Lo                                                  e

<a id="p001-b006"></a>

<!-- p001-b006 -->
tainty values independently, using two visual variables. These

<a id="p001-b007"></a>

<!-- p001-b007 -->
y
                                                                                                                                                                                                                     int
                                                                                                                                                                                                                   rta
resulting bivariate maps can be difficult to interpret, and in-

<a id="p001-b008"></a>

<!-- p001-b008 -->
ce
                                                                                                                                                                                                                Un
                                                                                                                                                                                                               w
terference between visual channels can reduce the discrim-

<a id="p001-b009"></a>

<!-- p001-b009 -->
Lo
inability of marks. To address this issue, we contribute Value-

<a id="p001-b010"></a>

<!-- p001-b010 -->
High Uncertainty

<a id="p001-b011"></a>

<!-- p001-b011 -->
y
                                                                                                                                                                                                     int
Suppressing Uncertainty Palettes (VSUPs). VSUPs allocate

<a id="p001-b012"></a>

<!-- p001-b012 -->
e rta
                                                                                                                                                                                               nc
larger ranges of a visual channel to data when uncertainty

<a id="p001-b013"></a>

<!-- p001-b013 -->
hU
                                                                                                                                                                                            Hig
is low, and smaller ranges when uncertainty is high. This
                                                                                                                                                       Sample Data
non-uniform budgeting of the visual channels makes more
economical use of the limited visual encoding space when
uncertainty is low, and encourages more cautious decision-
making when uncertainty is high. We demonstrate several
examples of VSUPs, and present a crowdsourced evaluation
showing that, compared to traditional bivariate maps, VSUPs
encourage people to more heavily weight uncertainty informa-
tion in decision-making tasks.
                                                                                                Figure 1: A standard bivariate map (left) and a VSUP (right),
ACM Classification Keywords                                                                     used to encode an identical 10x10 grid of random data. Both
H.5.0. Information Interfaces and Presentation (e.g. HCI):                                      use the same visual channels to encode value (position along
General                                                                                         the Viridis [46] color map) and uncertainty (lightness and
                                                                                                saturation). However, the VSUP uses a tree-like structure to
Author Keywords                                                                                 allocate colors, defining more bins when uncertainty is low.
Uncertainty Visualization; Color Perception; Thematic Maps;                                     This non-uniform budgeting affords better discrimination be-
Semiotics.                                                                                      tween values when uncertainty is low, even though the VSUP
                                                                                                has fewer color bins (in this case, 15 to the bivariate map’s 16).
INTRODUCTION                                                                                    This tree-like structure also discourages analysis in regions
Uncertainty is an inescapable component of collecting, analyz-                                  where uncertainty may be unacceptably high.
ing, and presenting data. A common goal in the communica-
tion of uncertainty is promoting uncertainty-aware decisions:
the audience should be aware of the risks and rewards of cer-                                   mark properties. Due to the interference and interplay be-
tain decisions, modulate their confidence in their conclusions,                                 tween different visual variables, bivariate maps may suffer
and perhaps refrain from making a decision at all if there is                                   from limited discriminability.
too much uncertainty. A way that designers can contribute to                                    In this paper, we contribute Value-Suppressing Uncertainty
this goal is by ensuring that uncertainty information is well-                                  Palettes (VSUPs) for integrating data and uncertainty informa-
integrated with the rest of the data. That is, it should be                                     tion in visualizations. VSUPs intentionally alias together data
difficult to discount or ignore the uncertainty in a dataset.                                   values with high uncertainty, affording greater discriminability
Simultaneous presentation of uncertainty and value necessi-                                     as uncertainty decreases. Traditional bivariate maps might
tates the construction of a bivariate map — a relation, in terms                                be thought of as a 2D square, with differing outputs for each
of visual variables, between 2-tuples (value, uncertainty) and                                  combination of value and uncertainty. In contrast, VSUPs can
                                                                                                be conceptualized as arcs: as uncertainty increases, values are
Permission to make digital or hard copies of all or part of this work for personal or
classroom use is granted without fee provided that copies are not made or distributed           mapped to smaller and smaller sets of outputs, culminating
for profit or commercial advantage and that copies bear this notice and the full citation       in a singularity where all inputs are mapped to an identical,
on the first page. Copyrights for components of this work owned by others than the
author(s) must be honored. Abstracting with credit is permitted. To copy otherwise, or
                                                                                                highly uncertain mark regardless of data value. Figure 1 shows
republish, to post on servers or to redistribute to lists, requires prior specific permission   examples of both a traditional bivariate map and a VSUP.
and/or a fee. Request permissions from permissions@acm.org.
 CHI 2018, April 21–26, 2018, Montreal, QC, Canada                                              We describe the motivations for VSUPs, provide examples of
© 2018 Copyright held by the owner/author(s). Publication rights licensed to ACM.               their utility for decision-making under uncertainty, and assess
ISBN 978-1-4503-5620-6/18/04. . . $15.00                                                        VSUPs in a crowdsourced experiment. Our results indicate
DOI: https://doi.org/10.1145/3173574.3174216

<a id="p001-b014"></a>

<!-- p001-b014 -->
Paper 642                                                                                                                                                                                                       Page 1

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
CHI 2018 Paper                                                             CHI 2018, April 21–26, 2018, Montréal, QC, Canada

<a id="p002-b002"></a>

<!-- p002-b002 -->
that VSUPs create close integration between uncertainty and          value and uncertainty of a given data point requires consult-
data. This integration has a demonstrable effect on decision-        ing two separate charts. To integrate uncertainty information
making, leading viewers to make more cautious choices that           into an analysis, we focus on the construction of bivariate
avoid high uncertainty.                                              maps, where value and uncertainty information is displayed
                                                                     simultaneously in a spatially co-located manner.
RELATED WORK
Despite the acknowledged importance of uncertainty in un-            Bivariate maps can, in principle, be constructed from the com-
derstanding data, explicit representations of uncertainty are        bination of any two visual variables (such as shape and color,
often missing from visualizations [5]. This is partially due         or size and texture). For example Ware’s “textons” [49] over-
to the complexity of uncertainty as a concept. In typologies         lay glyphs on top of regions to simultaneously encode two
from Thomson et al. [42] and Buttenfield & Beard [7], the            quantitative values. However, for spatial visualizations like
authors note that many, occasionally contradictory, concepts         choropleth maps, heatmaps, and treemaps, visual channels
can fall under the category of “uncertainty,” including data         such as position and length are reserved for data variables
quality, sampling error, credibility, and provenance.                other than value (such as geographic location or relative size).
                                                                     In these situations, data value is often encoded using color.
Reviewing the state of the art in uncertainty visualization in       Bivariate maps in these settings therefore typically rely on
the field, Greithe et al. [20] and Brodlie et al. [6] present        a visual channel related to color for encoding a secondary
lists of potential techniques for conveying uncertainty in con-      variable, such as opacity [39] or pixel noise [26].
cert with data. Some of these options (interaction, animation,
and sonification) are not applicable for static charts; even for     Colors in univariate quantitative color maps should be suffi-
dynamic charts, many users do not interact with charts in suf-       ciently far apart as to be perceptually distinguishable [48], and
ficient detail to recover uncertainty information [44]. While        vary in lightness as well as hue to afford an implicit ordering
we acknowledge the potential utility of these techniques in          of value [2, 37]. Different choices of color maps can high-
uncertainty visualization (for instance, the animation used          light different features of the data, and should be chosen with
to convey sampling error in Hullman et al.’s Hypothetical            care [38]. These principles extend to bivariate color maps,
Outcome Plots [24]), we limit the scope of our discussion to         with the additional consideration that our perception of color
techniques which center on static charts.                            channels lacks orthogonality. That is, while we can perceive
                                                                     e.g., the height of a bar in a bar chart independently of its
Visual Variables for Uncertainty                                     width, a particular property of a color (e.g., its redness, satu-
One challenge of uncertainty visualization is that the decision      ration, transparency, etc.) affect how its other properties are
to explicitly encode uncertainty increases the dimensionality        perceived [15, 50]. Many color channels such as hue and satu-
of the data, and so requires the use of (at least one) additional    ration are therefore perceptually integral, which complicates
visual channel [6]. Uncertainty therefore inherently increases       their use in bivariate maps.
the visual complexity of a visualization. When the data are          Another recurring design consideration when constructing
already complex to convey, and many of the more common or            color maps is whether to quantize data into a discrete set of
accurate visual variables are in use, allocating an additional di-   colors, or to encode data using a continuous mapping. While
mension is non-trivial. As the number of dimensions increases,       continuous color maps afford greater fidelity in presenting val-
finding visual variables that are both perceptually accurate (in     ues [32], non-linearity in human color perception introduces
either estimation of quantity or discrimination of category)         errors in extracting numeric values from continuous colors [2].
as well as perceptually separable from all the other encoding        Quantizing a color map is therefore an exercise in balancing
channels, becomes increasingly difficult.                            perceptual error and quantization error [13]. Discrete maps
A further hurdle is that not all visual variables are well-suited    offer finer control over this balance, which can result in better
for conveying uncertainty. MacEachren et al. [27] evaluate           performance in tasks involving heatmaps [34].
a number of visual variables with respect to their semiotic          In general, the quality of bivariate color maps is a multivariate
fit for representing uncertainty. They observe that certain          measure involving consideration of not just the component
visual variables such as blurriness and transparency seem to         color channels, but also the interpolation scheme and the color
have a more intuitive connection to uncertainty than other           of the surround [1]. However, even simple bivariate maps can
variables such as shape or hue. Unfortunately, Boukhelifa            be difficult for a general audience to interpret: due to their
et al. [4] find that many visual variables habitually used for       additional complexity, Wainer & Francolini [47] reported high
conveying uncertainty, such as blur and value, are also difficult    levels of error for participants even for “elementary” graph
to estimate. This results in a preference/performance gap            reading tasks, and additionally that bivariate legends were
where designers must choose between encoding uncertainty             more difficult to memorize and internalize than their univariate
in a way that is intuitive but error prone, or use higher fidelity   equivalents. Therefore, bivariate maps in practice are often
channels that may not intuitively convey uncertainty.                limited to a small set of output colors [36, 43] (say, a 4x4
Bivariate Maps                                                       matrix as in Figure 1).
While uncertainty can be visualized entirely separately from         Given that bivariate maps, for reasons of either practicality
the rest of the data (for instance, in a juxtaposed chart), this     or perceptual fidelity, have only a limited budget of outputs,
runs the risk that uncertainty information becomes ignor-            we adapt an insight from Dunn [14] that these limited cate-
able [31]. It also complicates analysis, as interpreting the

<a id="p002-b003"></a>

<!-- p002-b003 -->
Paper 642                                                                                                                   Page 2

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
CHI 2018 Paper                                                              CHI 2018, April 21–26, 2018, Montréal, QC, Canada

<a id="p003-b002"></a>

<!-- p003-b002 -->
gories ought to be assigned with regards to their importance to       statistically spurious visual patterns, and the highlighting of
analysis tasks, rather than uniformly. Our Value-Suppressing          regions of interest [11].
Uncertainty Palettes apply this insight to data with uncertainty.
Frequently, uncertain information ought to be weighted less           VSUPs rely on an underlying quantization tree that governs
heavily in a decision-making process, or have less prominence         how values are discretized. Values above a certain uncertainty
in an analysis, than information with high certainty.                 threshold are mapped to a singular “root” node. As uncertainty
                                                                      decreases, the tree branches into leaves, which evenly divide
Correll et al. [8, 9] use a precursor of VSUPs in their               the data domain. The data value of a parent is the midpoint
LayerCake genomics visualization tool, where marks repre-             of all of its children. These leaves can then branch again, up
senting genomic data with increasing uncertainty are mapped           to a designer-specified stopping point. The layers quantize
to a smaller and smaller set of increasingly grey colors, creat-      the uncertainty domain, and sibling nodes quantize the data
ing the effect of uncertain values retreating into a “confidence      domain. Figure 1 shows a VSUP with a tree with a branching
fog” while highly certain values remain prominent. Other bi-          factor of 2 and 4 layers, resulting in an output range with 15
variate visualizations implicitly alias together uncertain values     distinct colors.
through perceptual integrality. For instance, if uncertainty is
encoded by transparency, a maximally uncertain glyph may be           Since the visual channel used to encode uncertainty (e.g.,
entirely transparent, and so impossible to distinguish from any       saturation, lightness, transparency) often reduces the ability of
                                                                      people to distinguish colors, VSUPs have the added benefit
other maximally uncertain glyph. Other channels with a semi-
                                                                      of creating bivariate palettes that are perceptually easier to
otic connection to uncertainty, such as saturation, value, blur,
                                                                      distinguish, by reducing color resolution in precisely the areas
or size, have similar deleterious effects on the disambiguation
                                                                      where color disambiguation would be most difficult anyway.
of colors and shapes. In both cases, the property of aliasing
                                                                      For instance, the two closest colors in the VSUP in Figure 1
is ad hoc, and places no guarantees on the discriminability
                                                                      are 1.4 units farther apart in CIELAB color space than the two
of colors. The binning and degradation approach of VSUPs
makes the choice to alias values explicit to both the designer        closest colors in the traditional bivariate map.
and the viewer, and results in a bivariate mapping with known         JavaScript code for generating VSUPs for use in D3 [3] charts
perceptual properties.                                                is available at https://github.com/uwdata/vsup.
VALUE-SUPPRESSING UNCERTAINTY PALETTES
                                                                      Design Considerations
Value-Suppressing Uncertainty Palettes (VSUPs) are a tech-
                                                                      There are multiple choices that designers must make before
nique for creating bivariate maps of data value and uncertainty.
                                                                      creating a VSUP. Specifically, they must choose which visual
VSUPs make two central assumptions about bivariate maps:
                                                                      channels map to value (1), uncertainty (2), and the structure
1. There is a limited budget for perceptual discriminability.         of the underlying VSUP tree (3).
2. Differences among certain data are more germane than               When selecting a visual channel to represent uncertainty, we
   differences among uncertain data.                                  recommend channels with both a strong semiotic connection
                                                                      to uncertainty (such as those recommended by MacEachren et
In some cases, these assumptions are violated. For instance, an
                                                                      al. [27]) as well as a relatively large number of perceptually
analyst might be interested in “long tail risks” or other “black      distinguishable levels (such as those evaluated by Boukhelifa
swan events,” where the impact of a value, no matter how              et al. [4]). Here, we focus on a combination of increasing
uncertain, must be considered and planned for [41]. Other             luminance and decreasing saturation, as in Hengl & Tooma-
analysis tasks (such as filtering out outliers), require increased,   nian [23]. Correll & Gleicher [10] provide evidence that even
rather than decreased, discriminability when uncertainty is           audiences without statistical training can successfully interpret
high. However, for many information fusion tasks, the as-             uncertainty information encoded in these channels.
sumption is that uncertainty is related to data quality, or the
variability of data values [35].                                      When selecting a visual channel to represent value, the de-
                                                                      signer should consider the perceptual integrality of the value
If both of these assumptions hold, then it follows that the           and uncertainty visual channels. For instance, we use the
designer of a bivariate map should allocate more mark types           Viridis [46] color map frequently in this paper, as many stan-
to certain values, and fewer mark types to uncertain values.          dard color ramps (such as sequential ColorBrewer [22] ramps),
VSUPs codify this decision by reducing the number of mark             following usual best practices, interpolate in both hue and lu-
categories for representing value as uncertainty increases.           minance [48]. This interpolation in luminance interferes with
This means that data encoded using a VSUP will make visible
                                                                      our uncertainty encoding, introducing ambiguity. Ramps such
only the largest of differences in uncertain data, but highlight
                                                                      as Viridis, which avoid very light and very dark colors, reduce
comparatively small differences in value when uncertainty
                                                                      this ambiguity.
is low. VSUPs therefore act as both a filtering mechanism
(in that values with too much uncertainty are mapped to the           When determining the quantization tree, the design should be
same glyph), as well as an implicit test of effect size (in that      careful to avoid having too many output colors. For reasons
smaller and smaller changes in value are visible as uncertainty       of memorability and complexity, Wainer & Francolini [47]
decreases). This strategy of dampening low quality or highly          suggest no more than 16 distinct outputs in bivariate maps. For
uncertain values in maps in order to focus on more informative        a binary quantization tree, this results in a maximum tree depth
regions has measurable benefits, including the removal of             of 4, as seen in Figure 1. In general, for tasks that require

<a id="p003-b003"></a>

<!-- p003-b003 -->
Paper 642                                                                                                                    Page 3

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
Day of the Week
                                                                                                                                                                                                          0
                                                                                                      Wednesday

<a id="p004-b002"></a>

<!-- p004-b002 -->
1

<a id="p004-b003"></a>

<!-- p004-b003 -->
or
                                                                                                      Thursday

<a id="p004-b004"></a>

<!-- p004-b004 -->
Err
                                                                                                                                                                                                       an
                                                                                                                                                                                         2
                                                                                                      Friday

<a id="p004-b005"></a>

<!-- p004-b005 -->
Me
CHI 2018 Paper                                                                                                                                                                                                                                                      CHI 2018, April 21–26, 2018, Montréal, QC, Canada

<a id="p004-b006"></a>

<!-- p004-b006 -->
ard
                                                                                                                                                                                 3
                                                                                                      Saturday

<a id="p004-b007"></a>

<!-- p004-b007 -->
nd
                                                                                                                                                                                         Sta
                                                                                                      Sunday                                                            4

<a id="p004-b008"></a>

<!-- p004-b008 -->
0   6   7   8   9   10   11   12   13   14   15   16   17    18    19    20    21    22    23    24

<a id="p004-b009"></a>

<!-- p004-b009 -->
Departure Time

<a id="p004-b010"></a>

<!-- p004-b010 -->
Monday                                        Departure Delay (minutes)
                                                                                                                                                0            10    20            30              40
                                                                                                      Tuesday                                                                                             0

<a id="p004-b011"></a>

<!-- p004-b011 -->
Standard Mean Error
                                                                                                                   Day of the Week
                                                                                                      Wednesday                                                                                           1

<a id="p004-b012"></a>

<!-- p004-b012 -->
Thursday
                                                                                                                                                                                                          2

<a id="p004-b013"></a>

<!-- p004-b013 -->
Friday
                                                                                                                                                                                                          3
                                                                                                      Saturday

<a id="p004-b014"></a>

<!-- p004-b014 -->
4
                                                                                                      Sunday                                                                                                                                                                                                                 Clinton Lead
                                                                                                                                                                                                                                                                                                               -20         -10         0               10            20
0   6   7   8   9   10   11   12   13   14   15   16   17    18    19    20    21    22    23    24                                                                                                                                                                                                                                                                          8
                                   Departure Time

<a id="p004-b015"></a>

<!-- p004-b015 -->
Lead / Margin of Error
                                                                                                                                                                                                                                                                                                                                                                             6

<a id="p004-b016"></a>

<!-- p004-b016 -->
Figure 2: Average departure delay for different times of the                                                                                                                                                                                                                                                                                                                 4

<a id="p004-b017"></a>

<!-- p004-b017 -->
day and days of the week visualized with a 2D uncertainty                                                                                                                                                                                                                                                                                                                    2

<a id="p004-b018"></a>

<!-- p004-b018 -->
map. Horizontal position is the hour of scheduled departure,                                                                                                                                                                                                                                                                                                                 0

<a id="p004-b019"></a>

<!-- p004-b019 -->
and vertical position is the day of the week.                                                                                                                                                                                                                 Figure 4: Polling data prior to the 2016 U.S. Presidential
                                                                                                                                                                                                                                                              Election, encoded in a traditional 2D bivariate map. The
                                                                                                       Monday                                           Departure Delay (minutes)

<a id="p004-b020"></a>

<!-- p004-b020 -->
5
                                                                                                                                                             10 15
                                                                                                                                                                   20 25 30
                                                                                                                                                                            35
                                                                                                                                                                                                                                                              redness and blueness show the polling lead for Trump and
                                                                                                                                                                                                                                                              Clinton, respectively. But many polls had high margins of
                                                                                                       Tuesday                                  0                                                          40

<a id="p004-b021"></a>

<!-- p004-b021 -->
Day of the Week
                                                                                                                                                                                                              0
                                                                                                       Wednesday

<a id="p004-b022"></a>

<!-- p004-b022 -->
1                                                       error, creating uncertainty about the election results.

<a id="p004-b023"></a>

<!-- p004-b023 -->
or
                                                                                                       Thursday

<a id="p004-b024"></a>

<!-- p004-b024 -->
Err
                                                                                                                                                                                                            an
                                                                                                                                                                                             2
                                                                                                       Friday

<a id="p004-b025"></a>

<!-- p004-b025 -->
Me
                                                                                                                                                                                                   rd
                                                                                                                                                                                     3

<a id="p004-b026"></a>

<!-- p004-b026 -->
da
                                                                                                       Saturday

<a id="p004-b027"></a>

<!-- p004-b027 -->
n
                                                                                                                                                                                             Sta
                                                                                                       Sunday                                                                4

<a id="p004-b028"></a>

<!-- p004-b028 -->
0   6   7   8   9   10   11   12   13   14   15   16    17    18    19    20    21    22    23    24

<a id="p004-b029"></a>

<!-- p004-b029 -->
Departure Time

<a id="p004-b030"></a>

<!-- p004-b030 -->
Figure 3: Flight delay data encoded with a VSUP.                                           Monday

<a id="p004-b031"></a>

<!-- p004-b031 -->
0
                                                                                                                                                        Departure Delay (minutes)
                                                                                                                                                              10        20            30               40
                                                                                                       Tuesday                                                                                                0
                                                                                                                                                                                                                                        Standard Mean Error
                                                                                                                              Day of the Week

<a id="p004-b032"></a>

<!-- p004-b032 -->
Wednesday                                                                                              1                                                                                                                  Clinton Lead
                                                                                                                                                                                                                                                                                                                                  -5       0       5       10
                                                                                                                                                                                                                                                                                                                           -10

<a id="p004-b033"></a>

<!-- p004-b033 -->
finer-grade distinctions between uncertainty, the depth of the
                                                                                                       Thursday                                                                                                                                                                                                                                                     15
                                                                                                                                                                                                              2                                                                                                      -15                                                     20
                                                                                                                                                                                                                                                                                                               -20
                                                                                                       Friday

<a id="p004-b034"></a>

<!-- p004-b034 -->
tree could be increased. For tasks involving finer-grade dis-
                                                                                                                                                                                                                                                                                                                                                                                  8
                                                                                                                                                                                                              3
                                                                                                       Saturday
                                                                                                                                                                                                                                                                                                                                                                         6

<a id="p004-b035"></a>

<!-- p004-b035 -->
tinctions between value, the branching factor of the tree could

<a id="p004-b036"></a>

<!-- p004-b036 -->
or
                                                                                                                                                                                                                                                                                                                                                                                  Err
                                                                                                                                                                                                              4
                                                                                                       Sunday

<a id="p004-b037"></a>

<!-- p004-b037 -->
of
                                                                                                                                                                                                                                                                                                                                                                4

<a id="p004-b038"></a>

<!-- p004-b038 -->
be increased. However, these factors increase the number

<a id="p004-b039"></a>

<!-- p004-b039 -->
in
                                                                                                                                                                                                                                                                                                                                                                         arg
0   6   7   8   9   10   11   12   13   14   15   16    17    18    19    20    21    22    23    24

<a id="p004-b040"></a>

<!-- p004-b040 -->
/M
                                                                                                                                                                                                                                                                                                                                                       2
                                    Departure Time

<a id="p004-b041"></a>

<!-- p004-b041 -->
of colors, and so designers should moderate between legend

<a id="p004-b042"></a>

<!-- p004-b042 -->
ad
                                                                                                                                                                                                                                                                                                                                                            Le
                                                                                                                                                                                                                                                                                                                                               0

<a id="p004-b043"></a>

<!-- p004-b043 -->
complexity and data fidelity. Beyond these two parameters,                                                                                                                                                                                                    Figure 5: Polling data prior to the 2016 U.S. Presidential
non-uniform binning would allow the designer to target par-                                                                                                                                                                                                   Election, encoded with a VSUP.
ticular distributions or important subregions of the data that
would otherwise be difficult to visualize in a limited palette,
as in Dunn’s [14] dynamic bivariate maps. As an additional
                                                                                                                                                                                                                                                              has sufficient color resolution to show a quasi-linear trend.
form of control, prior tools using VSUP-like techniques, such
                                                                                                                                                                                                                                                              Uncertainty is high only for a few bins for which there are
as LayerCake [8], allow the analyst to control the bins in the
                                                                                                                                                                                                                                                              small number of flights, either on the weekends or late at night.
tree through interaction with the color legend.
                                                                                                                                                                                                                                                              The VSUP does not obscure any significant trends in the high
EXAMPLES
                                                                                                                                                                                                                                                              uncertainty data, despite having fewer color categories overall.
We present a set of examples showing how VSUPs can be
applied to real-world datasets. VSUPs allocate color bins                                                                                                                                                                                                     2016 Pre-Election Polling
asymmetrically amongst value and uncertainty regions, afford-                                                                                                                                                                                                 Using a public data set from Wikipedia [51] of the statewide
ing greater discriminability in regions of the chart that warrant                                                                                                                                                                                             polls that were conducted closest to the 2016 U.S. presidential
closer scrutiny, while discouraging exploration of regions with                                                                                                                                                                                               election, we created a choropleth map showing which candi-
noisy or unreliable signals.                                                                                                                                                                                                                                  date was leading in the polls. We calculated uncertainty as the
                                                                                                                                                                                                                                                              size of the lead in terms of margin of error (lead/margin). The
Air Travel Delay                                                                                                                                                                                                                                              AP style guide for reporters suggests that a candidate leading
Using a public data set from the U.S. Bureau of Transporta-                                                                                                                                                                                                   by more than two margins of error is said to be “significantly
tion Statistics [33], we created a heatmap showing average                                                                                                                                                                                                    ahead” in the polls [17]. As the lead becomes closer to the mar-
flight delay for different times of the day and days of the                                                                                                                                                                                                   gin of error, there is more doubt about the electoral outcome,
week forpU.S. carriers in January 2017. We use standard er-                                                                                                                                                                                                   and smaller leads are less definitive.
ror (s / n) as our measure of uncertainty. We created two
                                                                                                                                                                                                                                                              By providing more color categories when the margin of error
alternate heatmaps of this delay information. Figure 2 shows
                                                                                                                                                                                                                                                              was relatively small, the VSUP map shows that, in many of the
a traditional bivariate map, whereas Figure 3 shows a VSUP
                                                                                                                                                                                                                                                              states leaning towards Hillary Clinton, her lead was quite small.
generated under the same constraints.
                                                                                                                                                                                                                                                              The VSUP map, by limiting inferences about which candidate
Both maps illustrate a similar trend: flight delays are shorter                                                                                                                                                                                               was leading when the uncertainty is high, also prevents the
towards the beginning of the day, increasing on average over                                                                                                                                                                                                  viewer from making strong claims about the outcome of the
time. The traditional bivariate map affords only a coarse                                                                                                                                                                                                     election in highly volatile states, even if a state is leaning one
examination of this trend: two visible “blocks” of color, early                                                                                                                                                                                               way or the other. Given the relative volatility in polling data,
in the day, and later in the afternoon. The VSUP, in contrast,                                                                                                                                                                                                this caution is warranted.

<a id="p004-b044"></a>

<!-- p004-b044 -->
Paper 642                                                                                                                                                                                                                                                                                                                                  Page 4

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
CHI 2018 Paper                                                             CHI 2018, April 21–26, 2018, Montréal, QC, Canada

<a id="p005-b002"></a>

<!-- p005-b002 -->
EVALUATION                                                           types. This resulted in (4+4+2+1)=11 valid targets. For each
We performed two crowdsourced experiments on Amazon’s                trial, we placed one example of each of these 11 targets ran-
Mechanical Turk to evaluate the effectiveness of VSUPs for           domly in a heatmap; the remaining 13 cells of the heatmap
integrating uncertainty and value information in visualizations.     were randomly sampled from this target list. Thus there could
This focus on integration meant that we limited our experimen-       be multiple correct locations in each trial, deterring a strategy
tal tasks to scenarios where the participants needed to consider     of looking for “oddball” colors.
both value and uncertainty before making a decision. Each
                                                                     We selected this task both as a way of assessing the ability
experiment focused on one of two separate tasks:
                                                                     of people to successfully encode and decode values using a
1. An identification task, where we gave participants charts         bivariate map, and to provide training for the prediction task
   with value and uncertainty information, and asked them to         (since we reused the bivariate maps in that task). We measured
   locate specific regions. E.g., “click on the region of the        performance both in terms of accuracy (did the participant
   chart with a value of 0.1 and an uncertainty of 0.2.”             select the correct point) as well as response time.
2. A prediction task, inspired by the game Battleship, where         We recruited 24 participants for this task: 12 female, 12 male,
   we gave participants charts with both forecast and forecast       (Mage = 31, SDage = 7.8). Each of the participants saw the data
   uncertainty information, and asked the participants to place      encoded as each of 8 types of bivariate encoding and legend,
   tokens on the board in order to minimize danger. E.g.,            with 8 replications, for a total of 64 stimuli. Figure 6 shows
   “place your 5 ships on the safest locations on the board.”        these factor levels.
We limited our population to Turkers from the United States,         Hypotheses
with a prior task approval rate of at least 90%. As the experi-      We had two initial hypotheses, informed by prior work:
mental tasks required multi-hue color perception, we presented
participants with a set of Ishihara plates [21] as a pre-test, and   1. Juxtaposed maps, by introducing a second search task to
excluded participants who either misidentified the values in            the identification task (searching for the proper values in
the plates, or who self-reported as having a color vision de-           two, rather than one map), would have poorer performance
ficiency (CVD) in the post-test. Based on piloting, we paid             than other conditions.
participants $2 for participation, for a target rate of $8/hour.     2. Continuous maps require more specific and accurate color
After completion of the main tasks, we solicited demographic            matching between value and color, and so would have
information, including a risk aversion assay from Mandrik &             poorer performance than discrete conditions.
Bao [29]. Participants from the first experiment were excluded
from participating in the second.                                    We had no strong hypotheses about the shape of the legend
                                                                     (square vs. wedge), but, as the wedge shape makes more uncer-
Experimental materials, including data tables and stimuli            tain bins in the legend smaller (and thus potentially harder to
generation code, are available at https://github.com/uwdata/         disambiguate), we included it as a check against VSUPs which
vsup-paper.
                                                                     explicitly alias uncertain values. For this identification task,
                                                                     which did not involve reasoning with uncertainty, but simply
Identification Experiment                                            matching colors to a color legend, we also did not have strong
We wished to determine what effects, if any, our various design      hypotheses about performance differences between VSUPs
considerations had on performance at a basic analysis task:          and traditional discrete bivariate maps.
using a bivariate legend to interpret a heatmap. There are a
number of design decisions to be made even after one has             Results
determined which two visual channels will be used to encode          We performed a repeated measures ANOVA on our results to
value and uncertainty. In particular:                                measure the effect of juxtaposed versus superimposed maps,
                                                                     and continuous versus discrete legends, on accuracy. Partici-
1. Whether or not to juxtapose or superimpose the data and
                                                                     pant ID was included as a random effect. Figure 7 shows the
   uncertainty maps.
                                                                     performance of each of our 8 conditions.
2. Whether or not to discretize each visual channel, or encode       The results support our first hypothesis. Juxtaposition was
   values continuously.                                              a significant effect (F(1, 166) = 5.5,p = 0.02). A post-hoc
3. Whether or not to use a square legend, which gives equal          t-test confirmed (t = 2.5, p = 0.01) that superimposed charts
   area to each bin, or a wedge legend, which reduces in size        (M = 0.58, SD = 0.50) performed significantly better than jux-
   as uncertainty increases.                                         taposed (M = 0.51, SD = 0.49) ones. For our identification
                                                                     task, juxtaposition requires at least two search tasks (one to
4. If discretizing, whether to employ a VSUP or a standard           locate squares with the correct data value, another to locate
   quantization scheme.                                              ones with the correct uncertainty value), which introduces
                                                                     additional error compared to conditions where value and un-
For the identification task, we gave participants a 5x5 heatmap,     certainty are displayed simultaneously.
and asked them to click on a region of the heatmap that en-
codes a particular (value, uncertainty) pair. To support compa-      The results also support our second hypothesis. Discretization
rability across conditions, we chose a set of target pairs such      was a significant effect (F(1, 166) = 30,p < 0.01). A post-hoc
that each target mapped to a unique color across all encoding        t-test confirmed (t = 6.1, p < 0.01) that charts with discrete

<a id="p005-b003"></a>

<!-- p005-b003 -->
Paper 642                                                                                                                   Page 5

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
CHI 2018 Paper                                                                                                                                         CHI 2018, April 21–26, 2018, Montréal, QC, Canada

<a id="p006-b002"></a>

<!-- p006-b002 -->
Wedge                   Square                   Wedge             Square                   Wedge      Square           Discrete               Continuous

<a id="p006-b003"></a>

<!-- p006-b003 -->
Legend Style

<a id="p006-b004"></a>

<!-- p006-b004 -->
Sample Data

<a id="p006-b005"></a>

<!-- p006-b005 -->
VSUP                             Traditional Bivariate                          Continous Bivariate                 Juxtaposed Univariate

<a id="p006-b006"></a>

<!-- p006-b006 -->
Figure 6: The 8 conditions from the identification experiment. Juxtaposed maps require participants to make an error-prone
connection between areas in two separate maps in order to make a decision that integrates value and uncertainty. Traditional
bivariate maps integrate both value and uncertainty. VSUPs attempt to improve on traditional bivariate maps by reducing color
resolution as uncertainty increases, discouraging conclusions based on noisy or imprecise data.

<a id="p006-b007"></a>

<!-- p006-b007 -->
VSUP (Wedge)

<a id="p006-b008"></a>

<!-- p006-b008 -->
VSUP (Square)

<a id="p006-b009"></a>

<!-- p006-b009 -->
Traditional (Wedge)
  Chart Type (Legend Type)

<a id="p006-b010"></a>

<!-- p006-b010 -->
Traditional (Square)

<a id="p006-b011"></a>

<!-- p006-b011 -->
Juxtaposed (Discrete)

<a id="p006-b012"></a>

<!-- p006-b012 -->
Juxtaposed (Continuous)

<a id="p006-b013"></a>

<!-- p006-b013 -->
Continuous (Wedge)

<a id="p006-b014"></a>

<!-- p006-b014 -->
Continuous (Square)

<a id="p006-b015"></a>

<!-- p006-b015 -->
0.0    0.1   0.2   0.3   0.4     0.5      0.6   0.7   0.8   0.9   1.0
                                                                                               Accuracy
                                                                                                                                                  Figure 8: The prediction task. The participant has a list of
Figure 7: Accuracy results for the identification experiment.                                                                                     locations, and ought to place their ships on locations with low
For examples of each condition, see Figure 6. Juxtaposing                                                                                         probability of attack, and high certainty in this probability.
two univariate maps for both value and uncertainty requires                                                                                       Ships above the heatmap have yet to be placed.
an error-prone search task for identification tasks. Continuous
rather than discrete bivariate maps requires an error-prone
color encoding and estimation task. Discrete bivariate maps,
both VSUPs and otherwise, avoid these issues. The confidence                                                                                      Prediction Experiment
intervals are bootstrapped 95% CIs of trimmed means.                                                                                              For the prediction task, we gave participants the rules of a
                                                                                                                                                  game similar to Battleship. Greis et al. [18] employ these
                                                                                                                                                  game-like experimental tasks to assess how different visual
bins (M = 0.63, SD = 0.48) performed significantly better                                                                                         designs communicate uncertainty information, which can be
than charts with continuous color maps (M = 0.47, SD = 0.5).                                                                                      abstract or complex, to the general audience. In our task, the
The lack of quantization bias in continuous maps is countered                                                                                     participant and a (fictional) adversary have to place tokens
                                                                                                                                                  representing ships on a 5x5 spatial grid, with the expectation
by the perceptual error in precisely estimating value from color.
                                                                                                                                                  that certain squares will be hit by missiles. Players have
Relying on a discrete set of output colors simplifies this task.
                                                                                                                                                  to place all their tokens before continuing. The objective
We performed a second ANOVA among the superimposed dis-                                                                                           is to minimize the number of your own ships that are hit.
crete charts to determine the effect of legend shape (wedge or                                                                                    In our task, participants were given a map representing the
square) and quantization scheme (VSUP or standard) on per-                                                                                        predictions of missile strikes in each location on the grid.
formance, with participant ID as a random factor. We did not                                                                                      The value component was the ship’s danger if placed on the
find a significant effect for either the legend shape (F(1, 70) =                                                                                 square. The uncertainty component was the confidence in
0.04, p = 0.84) or the quantization scheme (F(1, 70) = 1.4,                                                                                       this prediction. Other studies of uncertainty representation,
p = 0.24).                                                                                                                                        such as in Cox et al. [12], have used “prediction + prediction

<a id="p006-b016"></a>

<!-- p006-b016 -->
Paper 642                                                                                                                                                                                                 Page 6

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
CHI 2018 Paper                                                                CHI 2018, April 21–26, 2018, Montréal, QC, Canada

<a id="p007-b002"></a>

<!-- p007-b002 -->
uncertainty” stimuli to elicit differences in decision-making
                                                                                       Danger                                               Danger
                                                                        0       0.25     0.5    0.75    1                        0   0.25     0.5    0.75   1
                                                                                                            0                                                   0

<a id="p007-b003"></a>

<!-- p007-b003 -->
between visualizations of uncertainty.                                                                                                                                                  0

<a id="p007-b004"></a>

<!-- p007-b004 -->
0.25                                                0.25
                                                                                                                                                                                        4
Our stimuli were created by randomly sampling from values                                                                                                                               8

<a id="p007-b005"></a>

<!-- p007-b005 -->
Uncertainty

<a id="p007-b006"></a>

<!-- p007-b006 -->
Uncertainty
that fell within each of the 16 bins of the 4x4 2D bivariate                                                0.5                                                 0.5                     12

<a id="p007-b007"></a>

<!-- p007-b007 -->
color map. This resulted in 16 samples. The remaining 9                                                     0.75                                                0.75                    16
samples were “bad” values, with low safety and high certainty.
This created 4 quartile categories of uncertainty, with a skew                                              1                                                   1

<a id="p007-b008"></a>

<!-- p007-b008 -->
Traditional Bivariate Map                                       VSUP
towards the highest quartile. This stimuli design meant that,
while participants had at least one “safe” square (low danger       Figure 9: 2D histogram of placements from the prediction
with high certainty), they were forced to make at least some        experiment. For each trial, participants were asked to place
guesses in other quartiles.                                         5 tokens on heatmaps encoding both predicted safety, and
We selected this task in order to promote risk-averse behavior.     uncertainty in these predictions. There were intentionally more
Tversky & Kahneman [45] illustrate that framings in terms           tokens to place than there were “safe and certain” locations
of gains or losses produce reliably different outcomes. In          (top left corner). When looking at traditional 2D maps (left),
particular, there is greater perceived value in avoiding large      participants favored safe but uncertain locations (bottom left
losses as opposed to striving for a large gain [25]. Our results    corner). When looking at VSUPs (right), participants favored
from the prior study indicate that discrete, non-juxtaposed         locations that were less safe, but more certain.)
maps outperformed the other bivariate maps we selected, so
we limited our study to only 4 types: square and wedge bi-
variate maps. While other map types might produce different         mation, and encourage caution by highlighting the ambiguity
patterns of decision-making (for instance, the juxtaposed map       introduced by uncertain data. In particular:
might encourage participants to ignore uncertainty information      1. Participants would avoid targets with high uncertainty
altogether), their low accuracy for our previous information           when using a VSUP.
fusion tasks led us to discard them, as it would be difficult to
distinguish between different patterns of predictions caused
                                                                    2. This would result in a tradeoff where they would also choose
by the design, and different patterns caused by simply mis-
                                                                       targets with higher danger when using a VSUP.
reading the heatmap. Having fewer conditions also afforded
a within-subjects design that controlled for the variation in       As with the prior experiment, we had no strong hypotheses
interpersonal differences in strategies and risk-aversion, while    for square vs. wedge-shaped legends, but included both as a
limiting the potential effects of learning and fatigue from large   check against the potential implicit VSUP-like properties of
numbers of stimuli.                                                 wedge-shaped legends.
The ideal strategy from a value-maximizing standpoint would         Results
be to place tokens on areas with the lowest predicted danger        Consistent with our first experiment, we found no significant
(highest expected value), ignoring the uncertainty information.     effect of legend shape on either uncertainty (F(1, 61) = 0.01,
However, as with roulette and other similar games of chance,        p = 0.92) or value (F(1, 61) = 3.1, p = 0.08) of guesses. This
the variability in expected value is relevant when considering      result suggests that wedge- and square-shaped legends pro-
where to place bets [30]. A risky player would choose guesses       mote similar patterns of decision-making. Overall, we pre-
with high expected value, regardless of the uncertainty of those    fer to employ the wedge-shaped legend for VSUPs, and the
points. A more conservative guesser might eschew high-risk,         square-shaped legend for traditional maps, as it makes the
high-reward locations, resulting in a lower average value of        conceptual differences between the two more apparent.
guesses, but also lower uncertainty. We therefore measured
the distribution of both value and uncertainty of the tokens        The results partially support our first hypothesis. We per-
placed by the participants.                                         formed a repeated measures ANOVA on our results to measure
                                                                    the effect of VSUP versus standard quantizations, and square-
We recruited 24 participants for this task: 12 female, 12 male,     versus wedge-shaped legends, on average uncertainty in bets.
(Mage = 37, SDage = 9.8). Our selected square and wedge maps        We found no significant effect of quantization scheme on aver-
were either VSUPs or traditional bivariate maps, for a 2 (square    age guess uncertainty (F(1, 61) = 0.05, p = 0.83). This result
or wedge legend) x 2 (VSUP or standard) factorial design,           indicates that there does not appear to be a uniform pattern
with 6 replications, for a total of 24 stimuli. Prior to the main   of risk aversion between the two scale types. However, given
task, we included a short replication of the identification task    our quartile-based stimuli design, the central tendency of un-
from the prior experiment (with 12 stimuli) for training and        certainty would not necessarily capture caution in guesses.
exclusion purposes. 3 people with unacceptably low accuracy         To capture differences in this non-normal distribution, and to
on the training task (6%, 6%, and 25% accuracy compared to          test our belief that VSUP users would avoid highly uncertain
a mean of 70%) were excluded from analysis.                         regions, we performed a one-sided two-sample, Kolmogorov-
                                                                    Smirnov test on the distributions of uncertainty in guesses in
Hypotheses                                                          the VSUP and traditional bivariate conditions. We found a sig-
We had two hypotheses, stemming from our belief that VSUPs          nificant difference (D = 0.5, p = 0.03), and an inspection of
promote better integration between uncertainty and value infor-     the distribution shows that participants using VSUPs were less

<a id="p007-b009"></a>

<!-- p007-b009 -->
Paper 642                                                                                                                                                                            Page 7

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
CHI 2018 Paper                                                                CHI 2018, April 21–26, 2018, Montréal, QC, Canada

<a id="p008-b002"></a>

<!-- p008-b002 -->
likely to make guesses with very high uncertainty. Figure 9             as it requires searching for connections in two separate charts.
shows this result.                                                      In our experiments, the error introduced by juxtaposition out-
                                                                        weighed the benefits of having simpler univariate scales rather
The results support our second hypothesis. A similar ANOVA              than bivariate ones (accuracy of 58% vs. 51% for superim-
for average danger value of guesses found a significant effect          posed and juxtaposed charts, respectively). In our experimen-
of quantization scheme (F(1, 59) = 17, p < 0.01). A post-hoc            tal data, where value and uncertainty were not well-correlated,
t-test confirmed (t = 2.3, p = 0.02) that guesses made with             there were no reliable visual landmarks in common amongst
VSUPs had significantly higher average danger (M = 0.32,                the value and uncertainty charts, which may have made it diffi-
SD = 0.17) (and so lower expected value) than traditional               cult for participants to perform quick correspondence between
maps (M = 0.29, SD = 0.18).                                             value in one chart, and uncertainty in the other. Given this
These two results, taken together, suggest that VSUPs led               error-prone information fusion, we recommend either the use
participants to moderate their guesses: avoiding highly un-             of superposition or explicit encoding for information fusion
certain regions, but willing to “gamble” more on regions of             tasks involving uncertainty. At the very least, designers should
middling certainty (as in Figure 9). In our design, where these         use interaction (such as highlighting across charts) to make
gambles were usually poor (due to the predominance of “bad”             comparison in dense juxtaposed charts easier.
cells), this moderation resulted in guesses with higher average
danger. However, when expected value and uncertainty are                Discrete vs. Continuous Encodings
orthogonal, this moderation can be beneficial, or at least not          When using color to encode data, designers must make the de-
harmful. Indeed, for guesses with middling and low uncer-               cision whether or not to separate the data into discrete classes
tainty (quartiles 1-3), where this orthogonality was present,           of color outputs, or to employ a continuous and class-less
there was no significant difference (t = 1.56, p = 0.11) in             scale. This, in turn, introduces a trade-off between quantiza-
average danger between VSUP (M = 0.30, SD = 0.24) and                   tion error (the sampling error introduced by binning the data)
traditional (M = 0.29, SD = 0.24) conditions.                           and perceptual error (the error introduced by the viewer as
                                                                        they decode the color). There is also a cost in terms of expres-
DISCUSSION                                                              sivity and consistency: a designer might wish for quantitative,
Our experimental results have a number of implications for              continuous information to be represented continuously [28].
designers wishing to employ bivariate maps for encoding un-
certainty. Both of our experiments show that the way that               However, for bivariate color maps, where often the color chan-
uncertainty information is presented can have a measurable              nels for each variable are not perceptually separable, it can
impact on decision-making. VSUPs make a number of de-                   be difficult to decode the color into its component parts. In
sign choices in presenting uncertainty. Firstly, they present           our identification experiment this perceptual decoding error
uncertainty information simultaneously (superimposed) with              was high. Continuous maps performed the worst of all of our
value, rather than in juxtaposed charts. Secondly, they encode          other bivariate map types (47% accuracy vs. 63% accuracy for
value and uncertainty via discrete, quantized bins, rather than         discrete maps). Echoing the results of Padilla et al. [34], we
continuously. Lastly, they are designed to alias and suppress           hold that the error introduced by quantization, which is known
uncertain values, rather than certain values. Our experiments           and bounded, has performance benefits even for continuous
provide evidence about the potential impact of each of these            data, if the perceptual error is sufficiently high. Bivariate maps,
choices on performance for information fusion tasks. We                 where the integrality of channels raise this perceptual error,
will discuss the impact of our experimental findings on the             are a prime example of such a scenario. We advise designers
consideration of each of these design decisions in turn.                to avoid continuous bivariate color scales when possible, and
                                                                        instead employ discrete scales with a relatively small number
Juxtaposition vs. Superposition                                         of categories.
Gleicher et al. [16] propose three major categories for vi-
sualizations that support comparison: juxtaposition (where              Risk Averse vs. Risk Seeking Decision-Making
two variables are visualized in adjacent charts), superposition         It is often difficult for the general audience to successfully
(where the two variables are encoded simultaneously in a sin-           make use of uncertainty information. In order to minimize the
gle chart) and explicit encoding (where the two variables are           complexity of uncertainty, uncertain information is often visu-
reduced to a single calculated variable, which is directly visu-        alized in a binary way, where values either meet some explicit
alized). Juxtaposition has a number of advantages for bivariate         uncertainty standard, or do not. These binary encodings for un-
data of this sort: firstly, there are no issues of the integrality of   certain information, such as error bars for estimates, or “cones
different components of color perception, as there are separate         of uncertainty” for hurricane paths, result in binary patterns of
maps for both uncertainty and value. Secondly, juxtaposed               decision-making that do not accurately reflect the underlying
displays allow viewers to separately consider patterns in value         uncertainty in the data [12, 10]. On the other hand, present-
and uncertainty. The literature also suggests that superposition,       ing more detailed uncertainty information may overwhelm or
which requires a bivariate scale, results in poor accuracy even         confuse the viewer [19].
for basic identification tasks [47].
                                                                        VSUPs are in a middle ground between sparse but simple,
However, our results indicate that juxtaposed visualizations            and dense but complex presentations of uncertainty. At high
have a substantial drawback for information fusion tasks. Inte-         levels of uncertainty, VSUPs have only one output color, and
grating information from juxtaposed heatmaps is error-prone,            so explicitly prevent any decoding of value. This narrowing of

<a id="p008-b003"></a>

<!-- p008-b003 -->
Paper 642                                                                                                                       Page 8

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
CHI 2018 Paper                                                            CHI 2018, April 21–26, 2018, Montréal, QC, Canada

<a id="p009-b002"></a>

<!-- p009-b002 -->
options is reflected not only in the quantization scheme, but       and a particular item’s encoding in a VSUP cannot be used
also in the shape of the legend, narrowing as the uncertainty       as a proxy for a test of statistical significance. As with other
increases. We selected this design to promote risk-averse           quantized forms of data analysis, including histograms and
decision-making. That is, people should be hesitant to make         geospatial binning, analysts and designers should consider the
strong predictions or decisions about values when uncertainty       distribution of values before quantizing.
is high. Our prediction experiment, drawing from Kahneman
& Tversky’s prospect theory [25], was further designed to           Conclusion
elicit avoidance of uncertain data, by framing the predictions      Uncertainty, data quality, or confidence values are often con-
in terms of minimizing losses, rather than maximizing gains.        sidered separately from the data itself, relegated to tooltips or
This framing was reflected in participants mostly making safe       visually distant supplemental charts. We contend, in contrast,
and certain guesses (low danger, high certainty). Where the         that uncertainty information ought to be directly integrated
differences in decision-making occurred were where the partic-      within a shared chart. This integration introduces additional
ipants had exhausted the set of safe and certain locations, and     complexity in the design and presentation of data. Value-
were forced to value either certainty or expected value. A risk     Suppressing Uncertainty Palettes represent one strategy for
seeker would choose uncertain locations if the reward were          dealing with this complexity, by assigning mark properties in
high enough, whereas a risk-avoider would select locations          a way that supports the disambiguation of values in data where
with less uncertainty, even with a lower payoff. Participants       uncertainty is low, but suppresses these judgments when uncer-
using VSUPs were likelier to make these risk-avoiding deci-         tainty is high. This decision of how to allocate visual variables
sions than when they were using traditional bivariate maps.         promotes patterns of decision-making that make responsible
Beyond VSUPs, this result indicates that the designers of vi-       use of uncertainty information, discouraging comparison of
sualizations can have fine-grained control over the types of        values in unreliable regions of the data, and promoting com-
decision-making their visualizations promote. Visualization         parison in regions of high certainty.
designers should consider not just fidelity to the underlying
dataset, but also the decision strategies their designs support.    ACKNOWLEDGMENTS
                                                                    This work was supported by a Moore Foundation Data-Driven
Limitations and Future Work                                         Discovery Investigator Award.
VSUPs assume that uncertain values ought to have less visual
                                                                    REFERENCES
impact than highly certain values. VSUPs therefore act both as
a kind of filtering device as well as a bivariate representation.    1. Jürgen Bernard, Martin Steiger, Sebastian Mittelstädt,
This assumption holds in scenarios like the polling dataset             Simon Thum, Daniel Keim, and Jörn Kohlhammer. 2015.
(Figure 5), where the expectation is that highly uncertain data         A survey and task-based quality assessment of static 2D
is unreliable or should otherwise be downweighted in analysis.          colormaps. In SPIE/IS&T Electronic Imaging.
If the analyst has a different interpretation of uncertainty, or        International Society for Optics and Photonics,
wishes to quickly and orthogonally analyze the distributions            93970M–93970M.
of uncertainty and value, other strategies, such as juxtaposed       2. David Borland and Russell M Taylor II. 2007. Rainbow
maps, may be more appropriate. VSUPs are designed for the               color map (still) considered harmful. IEEE Computer
integration of value and uncertainty. Designers should take             Graphics and Applications 27, 2 (2007). DOI:
care in considering when and how this integration is desirable.         http://dx.doi.org/10.1109/MCG.2007.323435

<a id="p009-b003"></a>

<!-- p009-b003 -->
Our experiments dealt with cases where both uncertainty              3. Michael Bostock, Vadim Ogievetsky, and Jeffrey Heer.
and value were represented by color. The perceptual non-                2011. D3 data-driven documents. IEEE Transactions on
separability of color channels is well-known [15, 50], and so           Visualization and Computer Graphics 17, 12 (2011),
the concept of a limited “budget” of distinguishable marks              2301–2309. DOI:
easier to quantify and illustrate. In principle, a VSUP can             http://dx.doi.org/10.1109/TVCG.2011.185
be created for any combination of visual variables. All that
                                                                     4. Nadia Boukhelifa, Anastasia Bezerianos, Tobias Isenberg,
is required is a perceptual model of the interaction between
                                                                        and Jean-Daniel Fekete. 2012. Evaluating sketchiness as
these two variables. Where these models exist, as with the
                                                                        a visual variable for the depiction of qualitative
interaction between size and color [40], the creation of VSUPs
                                                                        uncertainty. IEEE Transactions on Visualization and
is straightforward. Where these models do not exist, or where
                                                                        Computer Graphics 18, 12 (2012), 2769–2778. DOI:
the perceptual interaction is too complex to efficiently model,
                                                                        http://dx.doi.org/10.1109/TVCG.2012.220
experimental work remains to be done before VSUPs can be
considered a feasible design strategy. We are currently ex-          5. Nadia Boukhelifa and David John Duke. 2009.
perimenting with the creation of VSUPs using these other                Uncertainty visualization: why might it fail?. In CHI’09
channels, such as color and size.                                       Extended Abstracts on Human Factors in Computing
                                                                        Systems. ACM, 4051–4056. DOI:
VSUPs, like other mappings involving quantization, are also
                                                                        http://dx.doi.org/10.1145/1520340.1520616
highly sensitive to the binning scheme used. Uncertain data
with values that fall very close to bin boundaries may end up        6. Ken Brodlie, Rodolfo Allendes Osorio, and Adriano
having large color differences, even though they may be close           Lopes. 2012. A review of uncertainty in data
in value. The comparison to effects tests is therefore imperfect,       visualization. In Expanding the frontiers of visual

<a id="p009-b004"></a>

<!-- p009-b004 -->
Paper 642                                                                                                                  Page 9

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
CHI 2018 Paper                                                       CHI 2018, April 21–26, 2018, Montréal, QC, Canada

<a id="p010-b002"></a>

<!-- p010-b002 -->
analytics and visualization. Springer, 81–109. DOI:             Presented Uncertainty Influences User Behavior. In
    http://dx.doi.org/10.1007/978-1-4471-2804-5_6                   Proceedings of the 9th Nordic Conference on
                                                                    Human-Computer Interaction. ACM, 52. DOI:
 7. Barbara Buttenfield and M Kate Beard. 1994. Graphical
                                                                    http://dx.doi.org/10.1145/2971485.2971535
    and geographical components of data quality.
    Visualization in geographic information systems (1994),     19. Miriam Greis, Jessica Hullman, Michael Correll,
    150–157.                                                        Matthew Kay, and Orit Shaer. 2017. Designing for
                                                                    Uncertainty in HCI: When Does Uncertainty Help?. In
 8. Michael Correll, Adam L Bailey, Alper Sarikaya,
                                                                    Proceedings of the 2017 CHI Conference Extended
    David H O’Connor, and Michael Gleicher. 2015.
                                                                    Abstracts on Human Factors in Computing Systems.
    LayerCake: a tool for the visual comparison of viral deep
                                                                    ACM, 593–600. DOI:
    sequencing data. Bioinformatics (2015), btv407. DOI:
                                                                    http://dx.doi.org/10.1145/3027063.3027091
    http://dx.doi.org/10.1093/bioinformatics/btv407
                                                                20. Henning Griethe, Heidrun Schumann, and others. 2006.
 9. Michael Correll, Subhadip Ghosh, David O’Connor, and
                                                                    The visualization of uncertain data: Methods and
    Michael Gleicher. 2011. Visualizing virus population
                                                                    problems. In SimVis. 143–156.
    variability from next generation sequencing data. In 2011
    IEEE Symposium on Biological Data Visualization             21. LeGrand H Hardy, Gertrude Rand, and M Catherine
    (BioVis). IEEE, 135–142. DOI:                                   Rittler. 1945. Tests for the detection and analysis of
    http://dx.doi.org/10.1109/BioVis.2011.6094058                   color-blindness. I. The Ishihara test: an evaluation. JOSA
                                                                    35, 4 (1945), 268–275. DOI:
10. Michael Correll and Michael Gleicher. 2014. Error bars
                                                                    http://dx.doi.org/10.1364/JOSA.35.000268
    considered harmful: Exploring alternate encodings for
    mean and error. IEEE Transactions on Visualization and      22. Mark Harrower and Cynthia A Brewer. 2003.
    Computer Graphics 20, 12 (2014), 2142–2151. DOI:                ColorBrewer. org: an online tool for selecting colour
    http://dx.doi.org/10.1109/TVCG.2014.2346298                     schemes for maps. The Cartographic Journal 40, 1
                                                                    (2003), 27–37.
11. Michael Correll and Jeffrey Heer. 2017. Surprise!
    Bayesian Weighting for De-Biasing Thematic Maps.            23. Tomislav Hengl and Norair Toomanian. 2006. Maps are
    IEEE Transactions on Visualization and Computer                 not what they seem: representing uncertainty in
    Graphics 23, 1 (2017), 651–660. DOI:                            soil-property maps. In Proc. Accuracy. 805–813.
    http://dx.doi.org/10.1109/TVCG.2016.2598618
                                                                24. Jessica Hullman, Paul Resnick, and Eytan Adar. 2015.
12. Jonathan Cox, Donald House, and Michael Lindell. 2013.          Hypothetical outcome plots outperform error bars and
    Visualizing uncertainty in predicted hurricane tracks.          violin plots for inferences about reliability of variable
    International Journal for Uncertainty Quantification 3, 2       ordering. PloS one 10, 11 (2015), e0142444. DOI:
    (2013). DOI:http://dx.doi.org/10.1615/Int.J.                    http://dx.doi.org/10.1371/journal.pone.0142444
    UncertaintyQuantification.2012003966
                                                                25. Daniel Kahneman and Amos Tversky. 1979. Prospect
13. Michael W Dobson. 1973. Choropleth maps without class           theory: An analysis of decision under risk. Econometrica:
    intervals?: a comment. Geographical Analysis 5, 4               Journal of the econometric society (1979), 263–291. DOI:
    (1973), 358–360. DOI:                                           http://dx.doi.org/10.2307/1914185
    http://dx.doi.org/10.1111/j.1538-4632.1973.tb00498.x
                                                                26. Lydia R Lucchesi and Christopher K Wikle. 2017.
14. Richard Dunn. 1989. A dynamic approach to two-variable          Visualizing uncertainty in areal data with bivariate
    color mapping. The American Statistician 43, 4 (1989),          choropleth maps, map pixelation and glyph rotation. Stat
    245–252. DOI:http://dx.doi.org/10.2307/2685372                  (2017). DOI:http://dx.doi.org/10.1002/sta4.150
15. W. R. Garner and G. L. Felfoldy. 1970. Integrality of       27. Alan M MacEachren, Robert E Roth, James O’Brien,
    stimulus dimensions in various types of information             Bonan Li, Derek Swingley, and Mark Gahegan. 2012.
    processing. Cognitive Psychology 1, 3 (1970), 225–241.          Visual semiotics & uncertainty visualization: An
    DOI:http://dx.doi.org/10.1016/0010-0285(70)90016-2              empirical study. IEEE Transactions on Visualization and
16. Michael Gleicher, Danielle Albers, Rick Walker, Ilir            Computer Graphics 18, 12 (2012), 2496–2505. DOI:
                                                                    http://dx.doi.org/10.1109/TVCG.2012.279
    Jusufi, Charles D Hansen, and Jonathan C Roberts. 2011.
    Visual comparison for information visualization.            28. Jock Mackinlay. 1986. Automating the design of
    Information Visualization 10, 4 (2011), 289–309. DOI:           graphical presentations of relational information. Acm
    http://dx.doi.org/10.1177/1473871611416549                      Transactions On Graphics (Tog) 5, 2 (1986), 110–141.
17. N Goldstein. 1994. The Associated Press Stylebook and       29. Carter A Mandrik and Yeqing Bao. 2005. Exploring the
    Libel Manual. Fully Revised and Updated. ERIC.                  concept and measurement of general risk aversion.
18. Miriam Greis, Passant El Agroudy, Hendrik Schuff,               NA-Advances in Consumer Research Volume 32 (2005).
    Tonja Machulla, and Albrecht Schmidt. 2016.                 30. Leonard Mlodinow. 2009. The drunkard’s walk: How
    Decision-Making under Uncertainty: How the Amount of            randomness rules our lives. Vintage. 81–104 pages.

<a id="p010-b003"></a>

<!-- p010-b003 -->
Paper 642                                                                                                           Page 10

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
CHI 2018 Paper                                                        CHI 2018, April 21–26, 2018, Montréal, QC, Canada

<a id="p011-b002"></a>

<!-- p011-b002 -->
31. Dominik Moritz, Danyel Fisher, Bolin Ding, and Chi               function of size. In Color and Imaging Conference, Vol.
    Wang. 2017. Trust, but Verify: Optimistic Visualizations         2014. Society for Imaging Science and Technology,
    of Approximate Queries for Exploring Big Data. In                253–258.
    Proceedings of the 33rd annual ACM conference on
                                                                 41. Nassim Nicholas Taleb and Mark Blyth. 2011. The black
    Human factors in computing systems. ACM. DOI:
                                                                     swan of Cairo: How suppressing volatility makes the
    http://dx.doi.org/10.1145/3025453.3025456
                                                                     world less predictable and more dangerous. Foreign
32. Jean-Claude Muller. 1979. Perception of Continuously             Affairs (2011), 33–39.
    Shaded Maps. Annals of the Association of American
    Geographers 69, 2 (1979), 240–249. DOI:                      42. Judi Thomson, Elizabeth Hetzler, Alan MacEachren,
    http://dx.doi.org/10.1111/j.1467-8306.1979.tb01254.x
                                                                     Mark Gahegan, and Misha Pavel. 2005. A typology for
                                                                     visualizing uncertainty. In Electronic Imaging 2005.
33. Bureau of Transportation Statistics. 2016. Airline Delays,       International Society for Optics and Photonics, 146–157.
    Cancellations and Tarmac Times. (2016).
                                                                 43. Bruce E Trumbo. 1981. A theory for coloring bivariate
    http://www.rita.dot.gov/bts/data_and_statistics/by_
                                                                     statistical maps. The American Statistician 35, 4 (1981),
    mode/airline_and_airports/airline_delay.html
                                                                     220–226. DOI:http://dx.doi.org/10.2307/2683294
34. Lace Padilla, P Samuel Quinan, Miriah Meyer, and
    Sarah H Creem-Regehr. 2017. Evaluating the Impact of         44. Archie Tse. 2016. Why We Are Doing Fewer Interactives.
    Binning 2D Scalar Fields. IEEE Transactions on                   (2016). https://github.com/archietse/malofiej-2016/
                                                                     blob/master/tse-malofiej-2016-slides.pdf Malofiej.
    Visualization and Computer Graphics 23, 1 (2017),
    431–440. DOI:                                                45. Amos Tversky and Daniel Kahneman. 1985. The framing
    http://dx.doi.org/10.1109/TVCG.2016.2599106                      of decisions and the psychology of choice. In
35. Maria Riveiro. 2007. Evaluation of uncertainty                   Environmental Impact Assessment, Technology
    visualization techniques for information fusion. In 10th         Assessment, and Risk Analysis. Springer, 107–129. DOI:
    International Conference on Information Fusion. IEEE,            http://dx.doi.org/10.1007/978-3-642-70634-9_6
    1–8. DOI:http://dx.doi.org/10.1109/ICIF.2007.4408049         46. Stéfan van der Walt and Nathaniel Smith. 2015. mpl
36. Philip K Robertson and John F O’Callaghan. 1986. The             colormaps. https://bids.github.io/colormap/, (2015).
    generation of color sequences for univariate and bivariate   47. Howard Wainer and Carl M Francolini. 1980. An
    mapping. IEEE Computer Graphics and Applications 6, 2            Empirical Inquiry Concerning Human Understanding of
    (1986), 24–32. DOI:                                              Two-Variable Color Maps. American Statistician (1980),
    http://dx.doi.org/10.1109/MCG.1986.276688                        81–93. DOI:http://dx.doi.org/10.2307/2684111
37. Bernice E Rogowitz and Alan D Kalvin. 2001. The              48. Colin Ware. 1988. Color sequences for univariate maps:
    "Which Blair Project": a quick visual method for                 Theory, experiments and principles. IEEE Computer
    evaluating perceptual color maps. In Visualization, 2001.        Graphics and Applications 8, 5 (1988), 41–49. DOI:
    VIS’01. Proceedings. IEEE, 183–556. DOI:                         http://dx.doi.org/10.1109/38.7760
    http://dx.doi.org/10.1109/VISUAL.2001.964510
                                                                 49. Colin Ware. 2009. Quantitative texton sequences for
38. Bernice E Rogowitz, Lloyd A Treinish, Steve Bryson,
                                                                     legible bivariate maps. IEEE Transactions on
    and others. 1996. How not to lie with visualization.
                                                                     Visualization and Computer Graphics 15, 6 (2009). DOI:
    Computers in Physics 10, 3 (1996), 268–273. DOI:
                                                                     http://dx.doi.org/10.1109/TVCG.2009.175
    http://dx.doi.org/10.1063/1.4822401
39. Robert E Roth, Andrew W Woodruff, and Zachary F              50. Colin Ware. 2012. Information visualization: perception
    Johnson. 2010. Value-by-alpha maps: An alternative               for design. Elsevier.
    technique to the cartogram. The Cartographic Journal 47,     51. Wikipedia. 2017. Statewide opinion polling for the
    2 (2010), 130–140. DOI:                                          United States presidential election, 2016. (2017). https:
    http://dx.doi.org/10.1179/000870409X12488753453372               //en.wikipedia.org/wiki/Statewide_opinion_polling_for_
40. Maureen Stone, Danielle Albers Szafir, and Vidya Setlur.         the_United_States_presidential_election,_2016
    2014. An engineering model for color difference as a

<a id="p011-b003"></a>

<!-- p011-b003 -->
Paper 642                                                                                                           Page 11
