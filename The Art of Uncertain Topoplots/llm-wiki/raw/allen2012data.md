---
id: "allen2012data"
title: "Data Visualization in the Neurosciences: Overcoming the Curse of Dimensionality"
source_file: "The Art of Uncertain Topoplots/papers/allen2012data.pdf"
source_sha256: "e545e35740ae9103c4395f08c38123a5c4f092dd9da6ddd7c2f546c6628d0bdd"
extraction_format: 1
---

# Data Visualization in the Neurosciences: Overcoming the Curse of Dimensionality — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
Neuron

<a id="p001-b002"></a>

<!-- p001-b002 -->
NeuroView

<a id="p001-b003"></a>

<!-- p001-b003 -->
Data Visualization in the Neurosciences:
Overcoming the Curse of Dimensionality
Elena A. Allen,1,2,* Erik B. Erhardt,1,3 and Vince D. Calhoun1,4
1The Mind Research Network, 1101 Yale Boulevard NE, Albuquerque, NM 87106, USA
2Departments of Biological and Medical Psychology and the K.G. Jebsen Center for Research on Neuropsychiatric Disorders,

<a id="p001-b004"></a>

<!-- p001-b004 -->
University of Bergen, 5009 Bergen, Norway
3Department of Mathematics and Statistics
4Departments of Electrical and Computer Engineering, Psychiatry, and Neuroscience

<a id="p001-b005"></a>

<!-- p001-b005 -->
University of New Mexico, Albuquerque, NM 87131, USA
*Correspondence: eallen@mrn.org
DOI 10.1016/j.neuron.2012.05.001

<a id="p001-b006"></a>

<!-- p001-b006 -->
In publications, presentations, and popular media, scientific results are predominantly communicated
through graphs. But are these figures clear and honest or misleading? We examine current practices in
data visualization and discuss improvements, advocating design choices which reveal data rather than
hide it.

<a id="p001-b007"></a>

<!-- p001-b007 -->
Visualizations are vital tools for neurosci-    for large data sets in which visualization     2D data, 3D displays provide poorer
entists of every discipline, affording the      poses a challenge) and propose a set of        descriptions of the outcome of interest
ability to reveal relationships in large data   figure guidelines in the form of a checklist   and rarely provide an indication of uncer-
sets and communicate information to             (Table 1). We hope these recommenda-           tainty. Only 43% of 3D graphics label the
a broad audience. But with the great            tions, compiled from a number of excellent     dependent variable (meaning that if you
power of graphs, one might say, comes           resources on data visualization (Lane and      were asked, ‘‘What is being plotted
great responsibility. Graphs can be funda-      Sándor, 2009; Tufte, 2001; Wainer, 1996),     here?’’ you would be able to answer less
mentally misleading about underlying            may be used by both internal and external      than half of the time) and only 20% portray
data, and design choices can skew               reviewers to help evaluate figures for         the uncertainty of reported effects. Even
viewers’ perceptions, leading them toward       clarity and completeness.                      for 2D data, the proportion of graphs
incorrect conclusions (Jones, 2006). For                                                       displaying uncertainty is lower when
example, recent studies suggest that            Surveying the Field                            explanatory variables are continuous
results rendered on aesthetically pleasing      We sampled 288 articles published in 2010      (and typically take on many values) than
brain images are perceived as more              from six neuroscience journals (Frontiers      when they are categorical (and typically
persuasive and credible than identical          in Systems Neuroscience, Human Brain           represent a few conditions; Figure 1C).
information presented in other formats          Mapping, Journal of Neuroscience, Nature       Of 2D figures that do indicate uncertainty,
(Keehner et al., 2011; McCabe and Castel,       Neuroscience, NeuroImage, and Neuron)          nearly 30% fail to define the type of uncer-
2008). Beyond the attractiveness of             and examined the 1,451 figures therein.        tainty or variability being portrayed. Given
displays, readers may also be misled by         We surveyed four basic features that           the plurality of interpretations connoted
the frequent errors that plague scientific      were applicable to nearly all graphs and       by an error bar (e.g., a standard deviation
figures (Cleveland, 1984) or a lack of suffi-   addressed Wainer’s points above. The           [SD] of the sample, a standard error of the
cient information. In the words of statisti-    survey asked the following questions: (1)      mean [SEM], a range, a parametric confi-
cian and graphic design expert Howard           Is the dependent variable or quantity of       dence interval [CI] of the mean, a boot-
Wainer, effective data visualization must       interest labeled? (2) Is the scale of the      strap CI, a Bayesian probability interval,
‘‘remind us that the data being displayed       dependent variable indicated? (3) Where        a prediction interval, etc.), it is unclear
do contain some uncertainty’’ and ‘‘char-       applicable, is a measure of uncertainty        how including it without a proper label
acterize the size of that uncertainty as it     displayed? (4) Is the type of uncertainty      would offer readers any further under-
pertains to the inferences we have in           (e.g., standard error bars or confidence       standing of the data; in contrast, the
mind’’ (Wainer, 1996). It is our impression     intervals) defined in the figure or accompa-   poor labeling or omission of error bars
that such descriptions (along with more         nying legend? Examples of these graph-         has been shown to encourage misinter-
basic elements) are often lacking from          ical features are shown in Figure 1A for       pretation (Cumming and Finch, 2005;
published figures. In this NeuroView, we        two-dimensional (2D) and 3D data sets.         Vaux, 2004; Wainer, 1996).
perform a survey of figures from leading           Survey results, shown in Figure 1B,            A breakdown of results by journal (see
neuroscience journals with an eye toward        overwhelmingly suggest that graphical          supplementary analysis at http://mialab.
clarity and the portrayal of uncertainty.       displays become less informative as            mrn.org/datavis) further highlights the
Based on survey results, we discuss             the dimensions and complexity of data          issue of data dimensionality in visualiza-
methods to improve graphics (particularly       sets increase. Compared to graphs of           tion: journals with lower proportions of

<a id="p001-b008"></a>

<!-- p001-b008 -->
Neuron 74, May 24, 2012 ª2012 Elsevier Inc. 603

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
Neuron

<a id="p002-b002"></a>

<!-- p002-b002 -->
NeuroView

<a id="p002-b003"></a>

<!-- p002-b003 -->
Table 1. When Evaluating a Figure for Clarity and Completeness, Consider the Following Questions
Questions                                                                         Examples/Suggestions
Design/Organization
 Is the display consistent with the model or hypothesis being tested?               If data have been residualized or transformed for statistical
                                                                                    analysis they should also be transformed in the graph.
                                                                                    If data are paired between conditions, the graph should reveal
                                                                                    the pairwise differences rather than differences at the group
                                                                                    level.
 Are there "empty dimensions" in the display that could be removed?                 A 3D pie chart for 2D categorical data
                                                                                    Extraneous colors that do not encode meaningful information
 Does the display provide an honest and transparent portrayal of the                Hiding, smoothing, or modifying data has been avoided
 data?                                                                              Actual data points are emphasized over idealized models
Axes
 Are axes scales defined as linear, log, or radial?
 Does each axis label describe the variable and its units?                          For quantities with units: "Time to peak (ms)"
                                                                                    For arbitrary units (a.u.): "BOLD signal intensity (a.u.)"
                                                                                    For unitless quantities: "Spearman rank correlation"
 Are axes limits appropriate for the data?                                          The graphic should not be bounded at zero if the data can
                                                                                    take on both positive and negative values.
 Is the aspect ratio appropriate for the data?                                      When x and y axes contrast the same variable under different
                                                                                    conditions the graphic should be square.
Color mapping
 Is a color bar provided?
 Is the color map sensible for the data type?                                       Use                when data is bipolar, and map zero to green
                                                                                    Use                when data is unipolar, and map zero to black
                                                                                    Use                when data is circular, and map − , + to red
 Does the color bar axis indicate the quantity, units, and scale?
Uncertainty
 Does the display indicate the uncertainty of estimated parameters?
 Is the type of error surface appropriate for the data?                             Standard deviations or prediction intervals are useful to
                                                                                    describe variability in the population.
                                                                                    Standard errors or confidence intervals are useful to make
                                                                                    inferences about parameters estimated from a sample.
                                                                                    Parametric confidence intervals should only be used if data
                                                                                    meet the assumptions of the underlying model.
 Are the units of uncertainty defined?                                              "Error bands indicate non-parametric 95% confidence intervals
                                                                                    of the median"
Color
 Are contrasting colors consistent with a natural interpretation? Red for increases, blue for decreases
 Can features be discriminated when printed in grayscale?         Group A ---●---
                                                                  Group B ―●―
 Has red/green contrast been avoided to accommodate common forms of colorblindness?
Annotation
Information necessary to understand the display should be shown on the figure itself. Details & definitions may be relegated to the legend.
 Are all symbols defined, preferably by directly labeling objects?
 Is the directionality of a contrast between conditions obvious?                    "Patients − Controls"
 Is the number of samples or independent experiments indicated?                     "Each point represents the mean over 23 subjects"
 Are statistical procedures and criteria for significance described?                For a single test: “A repeated-measures ANOVA showed a
                                                                                    significant effect of treatment (F[2, 10] = 12.53, p = 0.002)"
                                                                                    For several tests: "Asterisks denote correlations different from
                                                                                    zero (p < 0.01, two-tailed t tests, Bonferroni corrected for 10
                                                                                    tests)."
 Are uncommon abbreviations avoided or clearly defined?
 Are abbreviations consistent with those used in the text?

<a id="p002-b004"></a>

<!-- p002-b004 -->
2D and 3D graphical features are those               is not surprising. Dependent variables                are undesirable. As data sets become
that primarily publish neuroimaging and              are more difficult to label when they repre-          more complex, displays should become
systems-level findings, in which results             sent abstract parameter estimates rather              increasingly informative, elucidating rela-
are often distilled from very large data             than directly measured quantities; uncer-             tionships that would be inaccessible
sets using a hierarchy of models. That               tainty is more challenging to render when             from tables or summary statistics. In the
the so-called ‘‘curse of dimensionality’’            data sets require error surfaces rather               next section, we provide examples of
extends to the realm of data visualization           than error bars. However, these results               creating more informative displays for

<a id="p002-b005"></a>

<!-- p002-b005 -->
604 Neuron 74, May 24, 2012 ª2012 Elsevier Inc.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
Neuron

<a id="p003-b002"></a>

<!-- p003-b002 -->
NeuroView

<a id="p003-b003"></a>

<!-- p003-b003 -->
A                                                                                                                                     B Survey results for all articles                C 2D data                       mean, 95% CI
                                                                                                                                                                   mean, 95% CI                                         Categorical data
                     variable             scale                                        uncertainty     uncertainty
                                                                                                                                            1                      2D data                                          1   Continuous data
                     labeled              indicated                                    indicated       labeled
                                                                                                                                                                   3D data
                                                                                                                                          0.8

<a id="p003-b004"></a>

<!-- p003-b004 -->
uncertainty indicated
                                2D data                                                     3D data                                                                                                               0.8
                     4
                                                      Independent variable 2   3                                                   4
                                                                               2                                                          0.6                                                                     0.6
Dependent variable

<a id="p003-b005"></a>

<!-- p003-b005 -->
Dependent variable
                     3                                                                                                             3
                                                                               1
                                                                                                                                          0.4                                                                     0.4
                     2                                                         0                                                   2
                                     ±1 s.e.m.                                 -1                                                         0.2                                                                     0.2
                     1                                                                                                             1
                                                                               -2                                                           0                                 n/a
                                                                                                                                                                                                                    0
                     0                                                         -3                                                  0                                                                                    Figures with

<a id="p003-b006"></a>

<!-- p003-b006 -->
lab iable

<a id="p003-b007"></a>

<!-- p003-b007 -->
ica le

<a id="p003-b008"></a>

<!-- p003-b008 -->
ica ty

<a id="p003-b009"></a>

<!-- p003-b009 -->
lab ainty
                              A     B                                            -3     -2 -1 0 1 2 3                                                                                                                   categorical &

<a id="p003-b010"></a>

<!-- p003-b010 -->
d

<a id="p003-b011"></a>

<!-- p003-b011 -->
te d

<a id="p003-b012"></a>

<!-- p003-b012 -->
te d

<a id="p003-b013"></a>

<!-- p003-b013 -->
d
                                                                                                                                                        ind sca

<a id="p003-b014"></a>

<!-- p003-b014 -->
ind tain
                                                                                                                                                ele

<a id="p003-b015"></a>

<!-- p003-b015 -->
ele
                         Independent variable                                         Independent variable 1                                                                                                            continuous data

<a id="p003-b016"></a>

<!-- p003-b016 -->
v ar

<a id="p003-b017"></a>

<!-- p003-b017 -->
t
                                                                                                             (not shown)

<a id="p003-b018"></a>

<!-- p003-b018 -->
cer

<a id="p003-b019"></a>

<!-- p003-b019 -->
cer
                                                                                                                                                        un

<a id="p003-b020"></a>

<!-- p003-b020 -->
un
Figure 1. Survey Results
(A) Definitions and examples of graphical features for 2D (left) and 3D (right) data sets. (B) Mean proportion of 2D (white) and 3D (dark gray) figures displaying each
feature. Error bars denote 95% nonparametric confidence intervals (10,000 resamples). (C) Mean proportion of 2D figures indicating uncertainty, separated by
categorical (white) and continuous (light gray) data. Left panel considers all figures; right panel considers only figures with both categorical and continuous data.

<a id="p003-b021"></a>

<!-- p003-b021 -->
simple and complex data sets by making                                                                   change our initial inference that sample                             In Figure 3, we apply the guiding principle
design choices that reveal data, rather                                                                  means are similar between conditions,                             of ‘‘show more, hide less’’ to high-dimen-
than hide it.                                                                                            we are certainly not likely to make the                           sional electroencephalographic (EEG) and
                                                                                                         misinterpretation that condition has no                           functional magnetic resonance imaging
Show More, Hide Less                                                                                     effect on the response. Distributional                            (fMRI) data sets. We portray the results
Consider a simple experiment in which                                                                    differences also suggest that assumptions                         using a common design (panel A) and
a researcher investigates the effect of                                                                  of the ANOVA (or other parametric models)                         a modified design (panel B), in which
different conditions on a single response                                                                may not be met and that the mean may                              each change is arrived at by following the
variable. Having collected 50 samples of                                                                 not be the most interesting quantity to                           guidelines in Table 1.
the response variable under each condition                                                               investigate.                                                         Figures 3Aa and 3Ba present data from
1, 2, and 3, how should the researcher visu-                                                                This example is not meant to imply that                        an EEG visual flanker task. Subjects were
alize the data to best inform themselves                                                                 bar plots should always be avoided in                             asked to indicate the direction of a visual
and their audience of the results? Figure 2                                                              favor of more complex designs. Bar plots                          target which appeared shortly after the
provides three possible designs. In panel                                                                have numerous merits: they are easy to                            presentation of flanking distracters. For
A, a bar plot displays the sample mean                                                                   generate, straightforward to comprehend,                          each participant, multichannel EEG time
and SEM under each condition. With no                                                                    and can efficiently contrast a large number                       series were decomposed using indepen-
distributional information provided, the                                                                 of conditions in a small space. They are                          dent component analysis, and a single
data density is quite low and the same                                                                   particularly effective for displaying                             component best matching the expected
information could be provided in a single                                                                frequencies or proportions (as in Figure 1),                      frontocentral topography for a perfor-
sentence, e.g., ‘‘Mean response ± SEM                                                                    in which binary data samples are trans-                           mance monitoring process was selected
for conditions 1, 2, and 3 were 4.9 ± 0.4,                                                               formed into a height that intuitively reflects                    for further analysis (Eichele et al., 2010).
5.0 ± 0.4, and 5.2 ± 0.4, respectively.’’                                                                the fraction of ‘‘successes.’’ Yet, bar plots                     Here, we ask how the extracted event-
Panel B offers some improvement, with                                                                    are also commonly used in scenarios in                            related potential (ERP) differs according
box plots displaying the range and quar-                                                                 which the distance from zero is not mean-                         to the subject’s response (i.e., correct or
tiles of each sample. This design reveals                                                                ingful and in which distributional informa-                       incorrect). Panel A provides a typical
that response variables may take on both                                                                 tion would be of great benefit to readers.                        portrayal of results, in which mean ERPs
positive and negative values (hidden in                                                                  In roughly the same amount of space                               are displayed for each condition. As Table
panel A) and that condition 2 may be right                                                               required by a bar plot, one can portray                           1 recommends, the axes are labeled, vari-
skewed. Distributional differences are                                                                   the full shape of distributions and overlay                       able units are indicated, and experimental
better understood in panel C when using                                                                  descriptive statistics, inferential statistics                    conditions are distinguished by line color
violin plots to display kernel density esti-                                                             related to hypothesis testing, or even                            with direct annotation on the plot. While
mates (smoothed histograms) of each                                                                      individual data points, creating a so-                            this panel is clear, it is not complete: there
data set (Hintze and Nelson, 1998). Violin                                                               called ‘‘bean plot’’ (Kampstra, 2008). By                         is no portrayal of uncertainty. In panel B,
plots make the skew in condition 2 more                                                                  increasing the amount of information                              we add 95% confidence bands around
apparent and reveal that responses in                                                                    available to the viewers, we allow them                           the average ERPs. The confidence bands
condition 3 are bimodal (hidden in panels                                                                to assess the appropriateness of related                          are made slightly transparent to highlight
A and B). Although the additional distribu-                                                              statistical analyses and make their own                           overlap between conditions and to main-
tional information in panel C does not                                                                   inferences.                                                       tain the visual prominence of the means.

<a id="p003-b022"></a>

<!-- p003-b022 -->
Neuron 74, May 24, 2012 ª2012 Elsevier Inc. 605

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
Neuron

<a id="p004-b002"></a>

<!-- p004-b002 -->
NeuroView
                                         Less information                                                                                                            More information
                     A Bar plots display only two                            B                                                C Violin plots display the shape of each
                                         numbers (here the mean and                     min, max, and quartiles) to provide       distribution and may be overlayed with
                                         s.e.m.) for each distribution.                 greater distributional information.       descriptive or inferential statistics.
                                         6                    ± 1 s.e.m.                             15                                               15

<a id="p004-b003"></a>

<!-- p004-b003 -->
Response variable
                     Response variable

<a id="p004-b004"></a>

<!-- p004-b004 -->
Response variable
                                                                                                     10                                               10
                                         4

<a id="p004-b005"></a>

<!-- p004-b005 -->
5                                                5
                                         2

<a id="p004-b006"></a>

<!-- p004-b006 -->
0                                                0

<a id="p004-b007"></a>

<!-- p004-b007 -->
0
                                                1      2         3                                        1      2        3                                   1       2        3
                                                    Condition                                                 Condition                                            Condition

<a id="p004-b008"></a>

<!-- p004-b008 -->
Figure 2. Comparison of Graphical Designs
The same synthetic data is summarized in a bar plot (A), box plot (B), and violin plot (C). Box plots in (B) and (C) also show the mean ± SEM and are drawn with
a maximum whisker length of 1.53 the interquartile range. Data points (n = 50 for each condition) were sampled from a normal distribution (condition 1), a gener-
alized c2 distribution with 2 degrees of freedom (2), and an equal mixture of two normal distributions with different means (3).

<a id="p004-b009"></a>

<!-- p004-b009 -->
Confidence intervals clarify that there is                                 laid on a high-resolution structural image.                                     contours. However, substantial informa-
greater uncertainty in the error response                                  Following Table 1, the variable of interest                                     tion is gained. The quality of the data is
than the correct response (because                                         is labeled, the color map is sensible for                                       now apparent: large and consistent differ-
subjects make few errors) and that there                                   the data and is mapped with symmetric                                           ences in betas are wholly localized to gray
is insufficient evidence to conclude                                       endpoints, and annotation clearly indicates                                     matter, while white matter and ventricular
a response difference after 800 ms. In                                    the directionality of the contrast (i.e.,                                       regions exhibit very small or very uncer-
panel B, we also add verbal descriptions                                   ‘‘Novel–Standard’’). This design provides                                       tain differences. In addition, isolated
and additional annotation to the graphic                                   excellent spatial localization for functional                                   blobs of differential activation in panel A
(Lane and Sándor, 2009; Tufte, 2001).                                     effects but is not without problems. The                                        are now seen as the peaks of larger
Labels indicate that the timeline is relative                              display does not portray uncertainty and                                        contiguous activations (often with bilat-
to the presentation of the target stimulus                                 has a remarkably low data-ink ratio due                                         eral homologs) that failed to meet signifi-
and specify our null and alternative hypoth-                               to the prominent (nondata) structural                                           cance criteria. The modified display also
eses as well as the alpha level (type I error                              image and sparsity of actual data (Habeck                                       reveals regions in lateral parietal cortex,
rate) chosen to determine statistical signif-                              and Moeller, 2011). More crucially, the                                         medial prefrontal cortex, and posterior
icance. Integrating descriptions into the                                  design encourages authors to hide results                                       cingulate cortex with reduced activation
figure (rather than the legend) discourages                                not passing a somewhat arbitrary statis-                                        to novel stimuli compared to standard
misinterpretation and permits readers to                                   tical threshold. Given numerous correction                                      tones. These brain areas coincide with
understand the display more quickly. Of                                    methods and little consensus on the appro-                                      the so-called ‘‘default-mode network,’’
course, annotation must be used judi-                                      priate family-wise type I error rate (Lieber-                                   a system preferentially active when
ciously and should not overwhelm or                                        man and Cunningham, 2009), authors                                              subjects engage in internal rather than
detract from the data visualization itself.                                may arrive at a ‘‘convenient’’ threshold to                                     external processes (Buckner et al., 2008).
   Figures 3Ab and 3Bb portray results                                     reveal visually appealing and easily ex-                                        We hope to impress upon the reader the
from an auditory oddball event-related                                     plained results. This design reduces a rich                                     wealth of findings that can be revealed
fMRI experiment. Participants responded                                    and complex data set to little more than                                        simply by unhiding data. To encourage
to target tones presented within a series                                  a dichotomous representation (i.e., ‘‘signif-                                   the use of this approach, we provide
of standard tones and novel sounds. Blood                                  icant or not?’’) that suffers from all the limi-                                sample MATLAB scripts for hue and trans-
oxygenation level-dependent (BOLD) time                                    tations of all-or-none hypothesis testing                                       parency coding on our website (http://
series at each brain voxel were regressed                                  (Harlow et al., 1997).                                                          mialab.mrn.org/datavis).
onto activation models for the target,                                        Rather than threshold results, we                                               Along with increased annotation, panel
novel, and standard stimuli (Kiehl et al.,                                 suggest a dual-coding approach to repre-                                        B also displays the beta parameters for
2001). Here, we ask what brain regions                                     sent uncertainty (Hengl, 2003). As shown                                        individual subjects, averaged over clus-
might be involved in the novelty processing                                in panel B, differences in beta estimates                                       ters of voxels passing significance
of auditory stimuli and compare beta                                       are mapped to color hue, and associated                                         (Figures 3Bb1 and 3Bb2). The 2D plots re-
parameters between novel and standard                                      paired t statistics (providing a measure of                                     move dependence on color mapping
conditions. Panel A presents voxelwise                                     uncertainty) are mapped to color trans-                                         (which is more difficult for viewers to
differences between beta coefficients                                      parency. Compared to panel A, no infor-                                         decode than position along an axis;
using a widely reproduced design: func-                                    mation is lost. Transparency is sufficient                                      Cleveland and McGill, 1985) and allow
tional-imaging results are thresholded                                     to determine structural boundaries and                                          us to access the data in greater detail.
based on statistical significance and over-                                statistical significance is indicated with                                      Scatter plots indicate the beta estimates

<a id="p004-b010"></a>

<!-- p004-b010 -->
606 Neuron 74, May 24, 2012 ª2012 Elsevier Inc.

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
Neuron

<a id="p005-b002"></a>

<!-- p005-b002 -->
NeuroView

<a id="p005-b003"></a>

<!-- p005-b003 -->
A              Commonly seen displays comparing data between                                    B
               groups or conditions.                                                                    helping the viewer make correct inferences. Annotation and
                                                                                                        examples clarify data properties and models.
 a                                4                                                                 a                                 6                     target

<a id="p005-b004"></a>

<!-- p005-b004 -->
3
                                                                                                                                      4
     Average IC potential (μV)

<a id="p005-b005"></a>

<!-- p005-b005 -->
Average IC potential (μV)
                                  2                                    Error                                                                                                           Error, 95% CI
                                                                                                                                      2
                                  1                                    Correct                                                                                                         Correct, 95% CI
                                  0                                                                                                   0
                                 −1
                                                                                                                                    −2
                                 −2                                                                                                                                                    H0: μE = μC
                                 −3                                                                                                 −4                                                 Ha: μE ≠ μ C

<a id="p005-b006"></a>

<!-- p005-b006 -->
−4                                                                                                 −6                                *        *       * = p < 0.001
                                 −500     0               500               1000                                                    −500          −200     0                500                 1000
                                              Time (ms)                                                                                                         Time (ms)
 b                                                                         Δβ weight                b                                                                                           Δβ weight
                                                                                                                                                                                                               ≥5
                                                                                                                                                                                      |t|
    Novel – Standard                                                                                       Novel – Standard                                                                                   0
                                                                    −1.6         0       +1.6                                                                                         −1.6         0       +1.6

<a id="p005-b007"></a>

<!-- p005-b007 -->
L                 R                                                                                                  L              R
                             Z = 22     Z=2               Z = −19              Z = −39                                              Z = 22                Z=2               Z = −19              Z = −39
                                                                                                                                                 b1                  b2
                                                                                                                                          1.5                                                H0: μN = μS
                                                                                                    (%ΔBOLD/stim)

<a id="p005-b008"></a>

<!-- p005-b008 -->
1                                               Ha: μN ≠ μ S
                                                                                                       Novel β

<a id="p005-b009"></a>

<!-- p005-b009 -->
0.5                                                    = p < 0.001
                                                                                                                                             0                                 n = 28
                                                                                                                                                                             subjects
                                                                                                                                       −0.5
                                                                                                                                           −0.5       0 0.5 1 1.5
                                                                                                                                                      Standard β (%ΔBOLD/stim)

<a id="p005-b010"></a>

<!-- p005-b010 -->
Figure 3. Redesigning Figures
Conventional (A) and modified (B) designs. Captions describe panel (B). (a) EEG flanker data. ERPs for error trials (red) and correct trials (blue) averaged over ten
subjects. Error bands are 95% nonparametric CIs (1,000 bootstraps). Asterisks indicate significantly different ERPs at p < 0.001 (nonparametric randomization
test, 10,000 randomizations, and implicit correction for multiple comparisons). (b) FMRI auditory oddball data. Axial slices show the difference between novel
and standard beta weights averaged over 28 subjects. Beta difference is mapped to color hue; t statistic magnitude is mapped to transparency. Contours
denote significantly different betas at p < 0.001 (two-tailed paired t tests corrected with false discovery rate). (b1 and b2) Scatter plots of standard versus novel
betas for select regions. Beta weights are averaged over clusters of contiguous voxels passing significance (b1 = 2,426 voxels; b2 = 1,733 voxels). Dotted lines
indicate y = x.

<a id="p005-b011"></a>

<!-- p005-b011 -->
for each condition (rather than just the                             designs such as bar plots and thresh-                                                EEG data, and Kent Kiehl and Godfrey Pearlson
                                                                                                                                                          for their contribution of the fMRI data. We also
difference), reveal the degree of variability                        olded maps that hide these data, we,
                                                                                                                                                          thank Christian Habeck and Tom Eichele for valu-
across subjects (and the absence of                                  as authors, peer reviewers, and editors,                                             able discussions throughout the completion of
outliers), and validate our ‘‘paired’’ statis-                       can establish new standards for visu-                                                this work.
tical approach, because beta values co-                              alizations that reveal data and inform
vary across conditions.                                              readers.
                                                                                                                                                          REFERENCES

<a id="p005-b012"></a>

<!-- p005-b012 -->
ACKNOWLEDGMENTS
Conclusion                                                                                                                                                Buckner, R.L., Andrews-Hanna, J.R., and
A single figure may portray experimental                                                                                                                  Schacter, D.L. (2008). Ann. N Y Acad. Sci. 1124,
                                                                     We thank Christian Habeck and James Moeller                                          1–38.
data painstakingly collected over months                             for commentary that helped to motivate this
or even years. Rather than use standard                              work, Tom Eichele for his contribution of the                                        Cleveland, W.S. (1984). Am. Stat. 38, 261–269.

<a id="p005-b013"></a>

<!-- p005-b013 -->
Neuron 74, May 24, 2012 ª2012 Elsevier Inc. 607

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
Neuron

<a id="p006-b002"></a>

<!-- p006-b002 -->
NeuroView
Cleveland, W.S., and McGill, R. (1985). Science         Hintze, J.L., and Nelson, R.D. (1998). Am. Stat. 52,     Lieberman, M.D., and Cunningham, W.A. (2009).
229, 828–833.                                           181–184.                                                 Soc. Cogn. Affect. Neurosci. 4, 423–428.

<a id="p006-b003"></a>

<!-- p006-b003 -->
Cumming, G., and Finch, S. (2005). Am. Psychol.         Jones, G.E. (2006). How to Lie with Charts, Second
60, 170–180.                                            Edition (Santa Monica, CA: LaPuerta).
                                                                                                                 McCabe, D.P., and Castel, A.D. (2008). Cognition
Eichele, H., Juvodden, H.T., Ullsperger, M., and        Kampstra, P. (2008). Journal of Statistical Software     107, 343–352.
Eichele, T. (2010). Front Hum Neurosci 4, 65.           28, Code Snippet 1, 1–9.

<a id="p006-b004"></a>

<!-- p006-b004 -->
Habeck, C., and Moeller, J.R. (2011). Brain             Keehner, M., Mayberry, L., and Fischer, M.H.             Tufte, E. (2001). The Visual Display of Quantitative
Connect 1, 99–103.                                      (2011). Psychon. Bull. Rev. 18, 422–428.                 Information (Cheshire, CT: Graphics Press).

<a id="p006-b005"></a>

<!-- p006-b005 -->
Harlow, L.L., Mulaik, S.A., and Steiger, J.H. (1997).   Kiehl, K.A., Laurens, K.R., Duty, T.L., Forster, B.B.,
What If There Were No Significance Tests? (Mah-         and Liddle, P.F. (2001). Psychophysiology 38,
                                                                                                                 Vaux, D.L. (2004). Nature 428, 799.
wah, NJ: Lawrence Erlbaum).                             133–142.

<a id="p006-b006"></a>

<!-- p006-b006 -->
Hengl, T. (2003). Proceedings of the 7th Interna-       Lane, D.M., and Sándor, A. (2009). Psychol.
tional Conference on GeoComputation, 8.                 Methods 14, 239–257.                                     Wainer, H. (1996). Am. Stat. 50, 101–111.

<a id="p006-b007"></a>

<!-- p006-b007 -->
608 Neuron 74, May 24, 2012 ª2012 Elsevier Inc.
