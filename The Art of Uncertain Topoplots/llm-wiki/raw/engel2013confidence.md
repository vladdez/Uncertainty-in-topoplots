---
id: "engel2013confidence"
title: "Confidence Intervals for fMRI Activation Maps"
source_file: "The Art of Uncertain Topoplots/papers/engel2013confidence.pdf"
source_sha256: "a9887f453e5e3d936b9a4cb69c48be1ad47978e336a6a7a83226d1baf087554f"
extraction_format: 1
---

# Confidence Intervals for fMRI Activation Maps — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
Confidence Intervals for fMRI Activation Maps
Stephen A. Engel1*, Philip C. Burton2
1 Department of Psychology, University of Minnesota, Twin Cities, Minneapolis, Minnesota, United States of America, 2 Office of the Associate Dean for
Research, University of Minnesota, Twin Cities, Minneapolis, Minnesota, United States of America

<a id="p001-b002"></a>

<!-- p001-b002 -->
Abstract

<a id="p001-b003"></a>

<!-- p001-b003 -->
Neuroimaging activation maps typically color voxels to indicate whether the blood oxygen level-dependent (BOLD)
    signals measured among two or more experimental conditions differ significantly at that location. This data
    presentation, however, omits information critical for interpretation of experimental results. First, no information is
    represented about trends at voxels that do not pass the statistical test. Second, no information is given about the
    range of probable effect sizes at voxels that do pass the statistical test. This leads to a fundamental error in
    interpreting activation maps by naïve viewers, where it is assumed that colored, “active” voxels are reliably different
    from uncolored “inactive” voxels. In other domains, confidence intervals have been added to data graphics to reduce
    such errors. Here, we first document the prevalence of the fundamental error of interpretation, and then present a
    method for solving it by depicting confidence intervals in fMRI activation maps. Presenting images where the bounds
    of confidence intervals at each voxel are coded as color allows readers to visually test for differences between
    “active” and “inactive” voxels, and permits for more proper interpretation of neuroimaging data. Our specific graphical
    methods are intended as initial proposals to spur broader discussion of how to present confidence intervals for fMRI
    data.

<a id="p001-b004"></a>

<!-- p001-b004 -->
Citation: Engel SA, Burton PC (2013) Confidence Intervals for fMRI Activation Maps. PLoS ONE 8(12): e82419. doi:10.1371/journal.pone.0082419
  Editor: Pedro Antonio Valdes-Sosa, Cuban Neuroscience Center, Cuba
  Received November 28, 2011; Accepted November 2, 2013; Published December 2, 2013
  Copyright: © 2013 Engel, Burton. This is an open-access article distributed under the terms of the Creative Commons Attribution License, which permits
  unrestricted use, distribution, and reproduction in any medium, provided the original author and source are credited.
  Funding: This work was supported by NSF-BCS-1028584. The funders had no role in study design, data collection and analysis, decision to publish, or
  preparation of the manuscript.
  Competing interests: The authors have declared that no competing interests exist.
  * E-mail: engel@umn.edu

<a id="p001-b005"></a>

<!-- p001-b005 -->
Introduction                                                                     1A, which shows activation in an experimental condition
                                                                                 relative to a baseline condition. The map may make it appear
   Activation maps are the most popular method for displaying                    that mean “activity” (the difference in signal between the
the results of an fMRI experiment. They typically show colored                   condition of interest and baseline) at location B is significantly
voxels on an image of the brain, with color indicating whether                   lower than activity at location A, since strong differences in
neural responses at that location differ between experimental                    color intuitively map to large differences in activation. This
conditions. To create such maps, software packages conduct                       conclusion is not warranted, of course, since the means and
statistical tests at each voxel, and color significantly active                  variances of activity at voxels that are not reliably greater than
voxels to indicate either p values, effect sizes, or a statistic                 zero, such as voxel B, are not displayed. It could well be that
such as F or t. The colored voxels are then overlaid onto a                      the mean activity at B is equal to or even greater than that at A,
gray-scale anatomical brain image.                                               but that high variability prevents location B from showing a
   The spatial nature of activation maps seems to invite                         significant difference from zero.
comparison between regions; when different voxels have                              We believe that this fundamental error in interpreting
different colors, it is natural to think about relationships                     activation maps is widespread within the nonexpert audience of
between them. Valid comparisons between voxels cannot be                         neuroimaging studies. Furthermore, even experts often fail to
made using typical activation maps, however, since the                           report the statistical testing that could correct it [1,2]. The joint
statistical test at each voxel (or cluster of voxels) is done                    goals of this paper are to document the error and present
independently, and comparisons require statistical tests that                    possible solutions.
span multiple voxels. Activation maps are neither designed nor                     Confidence intervals have proved to be an efficient method
intended      to   support    comparisons     between   voxels.                  for correcting similar problems in other types of data (e.g., 3).
Nevertheless, we believe that naïve map-readers make them.                       Because they allow both comparisons between conditions (e.g.
   In particular, readers of activation maps often assume that                   voxel activation) and baseline and between the conditions
significant, colored voxels differ reliably from nonsignificant,                 themselves, confidence intervals should be useful for helping
uncolored voxels. To illustrate this problem, consider Figure                    readers avoid making the fundamental error in activation map

<a id="p001-b006"></a>

<!-- p001-b006 -->
PLOS ONE | www.plosone.org                                                   1                         December 2013 | Volume 8 | Issue 12 | e82419

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
fMRI Confidence Intervals

<a id="p002-b002"></a>

<!-- p002-b002 -->
Figure 1. The fundamental error of interpreting brain maps. A. Brain activation map presented to Survey 1 respondents who
were asked to compare points labeled “A,” “B,” and “C.” B. 83% of respondents believed the colored location “A” to be reliably more
active than the uncolored location. C. Activity map presented to Survey 2 respondents. D. Over 90% of respondents believed the
colored location to be reliably more active than the uncolored ones.
doi: 10.1371/journal.pone.0082419.g001

<a id="p002-b003"></a>

<!-- p002-b003 -->
interpretation. Here, we present three methods for depicting            that location A was more active than location C as “Very likely
confidence intervals in fMRI activation maps. While none is             (Greater than 95% chance it is true)”. In analyses of Surveys 2,
perfect, they should serve as the basis for future development          3, and 4, only this response was classified as an error.
of methods for depicting confidence intervals in neuroimaging               Based upon informal discussion with colleagues in the field,
data. Our second and third methods were specifically designed           we believe that this error is likely prevalent in other populations,
to be effective for a naïve audience, and so we tested them on          including the popular press, and perhaps even graduate
samples of undergraduates. We found that they reliably                  students and PIs with limited backgrounds in statistics. The
improved the ability of subjects to interpret activation maps.          fundamental error is a version of the “erroneous interactions in
                                                                        neuroscience” that have recently been well documented in the
                                                                        literature: A random sample of Neuroscience articles found
Results
                                                                        many cases of “comparing several brain areas and claiming
                                                                        that a particular effect (property) is specific for one of these
Survey 1 and 2
                                                                        brain areas” without explicit tests for statistical interactions
   To test whether the fundamental error of interpretation was          between areas [2]. In the case examined here, the effect is
widespread in nonexpert populations, in Survey 1 we showed              “activity” , and the unsupported claim of specificity is that the
35 undergraduates the image in Figure 1A and asking if they             uncolored voxels are less active than colored ones. Two other
believed location A was significantly more active than location         papers have also noted that unsupported claims of interactions
C. Eighty-three percent responded that they indeed believed             across brain areas are commonly made by investigators in the
this was the case (Figure 1B). While such a conclusion may in           field [1,6]. However, no previous study to date has documented
fact be true, it is not warranted given the information available       the error in naïve readers of brain maps, and the frequency at
in the map alone. To make sure that subjects understood                 which it is made here greatly surpasses rates reported for
uncertainty regarding differences was possible, we repeated             investigators.
the survey with more probabilistic language (as well as better
indications of the voxels in question) using the map in Figure
1C. Language for both surveys is reproduced in Materials and
Methods, below. Even when given the option of “Can’t tell with
confidence”, 94% of the 17 subjects tested rated the response

<a id="p002-b004"></a>

<!-- p002-b004 -->
PLOS ONE | www.plosone.org                                          2                       December 2013 | Volume 8 | Issue 12 | e82419

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
fMRI Confidence Intervals

<a id="p003-b002"></a>

<!-- p003-b002 -->
Figure 2. Confidence interval map Method 1, Data Set 1. Top, right. Conventional activation map for Data Set 1, visual
stimulation vs. baseline. Top, left. Activation and confidence intervals for the three labeled locations at right are plotted. Middle row.
Map of the lower bound of the 99% confidence interval for activation of each voxel. Bottom row.Map of the upper bound of the 99%
confidence interval for each voxel. That locations A and B do not reliably differ can be seen by noting that the upper bound of point
B (yellowish in lower panel) is higher than the lower bound of point A (reddish in middle panel).
doi: 10.1371/journal.pone.0082419.g002

<a id="p003-b003"></a>

<!-- p003-b003 -->
Depiction of confidence intervals in activation maps:                   respectively, of 99% confidence intervals computed for the
Method 1                                                                activation of each voxel. Color again reflects percent signal
  To reduce the prevalence of the fundamental interpretation            change, and positive values are plotted in the red-yellow range
error, we developed a way of showing confidence intervals in            and negative values in the blue-cyan range. The size of the
fMRI images. We first illustrate this idea using data from a            interval corresponds to the same alpha (p < 0.01) used to
simple visual experiment; the study compared activity                   threshold the original activation map, which in both cases helps
measured when subjects viewed dynamic white noise to a                  reduce Type 1 errors associated with multiple comparisons.
baseline condition of activity measured when subjects viewed a          Depending on the purposes of the confidence intervals, other
uniform gray screen.                                                    choices of alpha would be possible.
  Figure 2 shows the results of our method for constructing
                                                                           The image clearly shows that the active area is not likely to
confidence intervals on activation maps. The upper right panel
                                                                        be significantly more active than several other regions
displays the group activation map on an inflated brain in
                                                                        scattered throughout the brain. These are regions whose upper
Talairach space. Voxels where response to visual noise was
                                                                        confidence bound is greater than the lower confidence bound
significantly greater than baseline are colored, with the color
reflecting activation in percent signal change. Activity at             of the active region. Specifically, since the lower bound of the
uncolored voxels is of course unspecified in these images, and          active region is reddish (as seen in the middle right panel),
the bar plot at the upper left shows that while one uncolored           voxels whose upper bounds are yellowish do not significantly
voxel (labeled C) is indeed reliably less active than a colored         differ from the active region. For example, location B is
voxel (labeled A), another is not (labeled B). The middle and           yellowish in the lower panel, which displays the upper bound.
lower panels show the upper and lower boundaries,                       As can be verified in the bar graph, its activity does not differ

<a id="p003-b004"></a>

<!-- p003-b004 -->
PLOS ONE | www.plosone.org                                          3                      December 2013 | Volume 8 | Issue 12 | e82419

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
fMRI Confidence Intervals

<a id="p004-b002"></a>

<!-- p004-b002 -->
Figure 3. Confidence interval map Method 1, Data Set 2. Top, left. Conventional activation map for Dataset 2, human motion vs.
nonhuman motion. Top, right. Activations and confidence intervals for the three labeled points. Middle row. Map of the lower bound
of the 99.9% confidence interval for activation of each voxel. Bottom row. Map of the upper bound. Again, the lack of a difference
between locations A and B can be seen by comparing the color of the upper bound of B to the lower bound of A.
doi: 10.1371/journal.pone.0082419.g003

<a id="p004-b003"></a>

<!-- p004-b003 -->
reliably from the “active” voxel A. Location C is an example               is slightly higher than in a red voxel in the lower panels. An
voxel whose activity does reliably differ from location A’s.              additional problem for naïve viewers is that such comparisons
   Figure 3 shows a similar analysis for a second data set. In            require understanding the relatively technical concept of upper
this case, the standard activation map (top) shows voxels                 and lower bounds of confidence intervals, and keeping track of
where viewing human motion produced reliably greater activity             which is which while scanning the two images.
than viewing motion of tools. Comparing the lower bound
(middle panels) and upper bound (lower panels) images for a               Depiction of confidence intervals in activation maps:
99.9% confidence interval reveals that for several “inactive”             Methods 2 and 3
cortical locations response does not reliably differ from the                An alternative approach colors voxels according to whether
“active” cortical locations. For example activity at location A           they differ from a given region of interest. We chose as our
does not differ from activity at location C. For these voxels, as         region the active occipital voxels in Figure 4 (top), replotted
well as voxel B where activity does in fact differ from A,                from Figure 2. As a simple test of whether voxels outside the
activation values and confidence intervals are again shown in a           region differ from it, we chose to compare each voxel to a
conventional bar plot in the upper panel.                                 representative one from the ROI, in this case the voxel that
   The images of confidence interval bounds in Figures 2 and 3            was at the 75th percentile of activity level within the region
map relatively closely onto the bounds presented with error               (which is close in value to the voxel labeled “A”). Each voxel in
bars in traditional univariate bar graphs. However, identifying           the brain was compared with the representative one using a
significant differences among voxels is difficult because it              standard t-test. Voxels that were significantly less activated
involves scanning two separate images, and because non-                   than the ROI reference voxel were colored with the blue/cyan
overlapping upper and lower confidence intervals may fall                 range of the color scale, while those that were significantly
within the same color category. For example it is difficult to tell       greater were colored in the red/yellow range. Figure 4 shows
whether activity in a red voxel in the middle panels of Figure 2          results of this analysis for Data Set 1 while Figure 5 shows the

<a id="p004-b004"></a>

<!-- p004-b004 -->
PLOS ONE | www.plosone.org                                            4                      December 2013 | Volume 8 | Issue 12 | e82419

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
fMRI Confidence Intervals

<a id="p005-b002"></a>

<!-- p005-b002 -->
Figure 4. Confidence interval map Method 2, Data Set 1. Top. Conventional activation map, as in Figure 2. Bottom. Results of
comparing activity within the active ROI to each voxel in cortex are shown. Only voxels that differ reliably from the ROI are colored.
Voxels that do not differ reliably are uncolored.
doi: 10.1371/journal.pone.0082419.g004

<a id="p005-b003"></a>

<!-- p005-b003 -->
Figure 5. Confidence interval map Method 2, Data Set 2. Activation map (top) and results of comparison to ROI (bottom) for
data set 2, with conventions as in Figure 4.
doi: 10.1371/journal.pone.0082419.g005

<a id="p005-b004"></a>

<!-- p005-b004 -->
analysis for Data Set 2. Arrows depict the same sample voxels              Survey 3 demonstrated the effectiveness of this method
from previous figures that do and do not differ significantly from       (Figure 6A, B). The number of subjects making the
each other, with activity levels as shown in the bar graphs in           fundamental error, tested by comparing activity at locations A
Figures 2 and 3.                                                         and C, dropped significantly from 94% to 41% (Chi-square test,
   The method clearly identifies voxels whose activity is reliably
                                                                         as are all that follow, p < 0.01). While an improvement, this
lower than the ROI’s; such voxels are colored blue. Voxels
                                                                         error rate remains remarkably high, which shows how strongly
whose activity is not reliably lower are also easy to identify.
                                                                         subjects believe a lack of coloring corresponds to a lack of
Such voxels are uncolored or red.
                                                                         activity. In addition, some subjects may have interpreted the
                                                                         blue coloring as positive “activity” in and of itself, which may

<a id="p005-b005"></a>

<!-- p005-b005 -->
PLOS ONE | www.plosone.org                                           5                      December 2013 | Volume 8 | Issue 12 | e82419

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
fMRI Confidence Intervals

<a id="p006-b002"></a>

<!-- p006-b002 -->
Figure 6. Survey images and results for confidence interval Methods 2 and 3. A. Brain activation maps presented in Survey 3.
B. Fewer respondents believed the colored location (A) in the basic activation map was reliably more active than the uncolored one
(C), when presented with a Method 2 display. However, a substantial number of respondents were not certain that the blue location
(B) were reliably less active than the ROI. C. Brain activation maps presented in Survey 4. D. Very few respondents believed the
colored location in the basic activation map (A) was reliably more active than the uncolored one (C), and most respondents
identified the blue location (B) as reliably less active than the colored ones in the basic map (A).
doi: 10.1371/journal.pone.0082419.g006

<a id="p006-b003"></a>

<!-- p006-b003 -->
have reduced the number of correct responses for the question         To better match intuitions mapping color to activity, and to
comparing activation in the ROI with a blue region (comparing       simplify the display even further for a naïve audience, we
activity at locations A and B).                                     developed a third type of display. In it, voxels that significantly

<a id="p006-b004"></a>

<!-- p006-b004 -->
PLOS ONE | www.plosone.org                                      6                       December 2013 | Volume 8 | Issue 12 | e82419

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
fMRI Confidence Intervals

<a id="p007-b002"></a>

<!-- p007-b002 -->
Figure 7. Confidence interval map Method 3, Data Set 1. Top. Conventional activation map, as in Figure 2. Bottom. Results of
comparing activity within the active ROI to each voxel in cortex are shown. Voxels that differ reliably from the ROI are colored blue.
Voxels that do not differ reliably are colored red.
doi: 10.1371/journal.pone.0082419.g007

<a id="p007-b003"></a>

<!-- p007-b003 -->
Figure 8. Confidence interval map Method 3, Data Set 2. Activation map (top) and results of comparison to ROI (bottom) for
Data Set 2, with conventions as in Figure 7.
doi: 10.1371/journal.pone.0082419.g008

<a id="p007-b004"></a>

<!-- p007-b004 -->
differ from the representative ROI voxel simply colored blue,          2). Overall, the number of errors made across all three
and all voxels that do not are simply colored red. Figures 7 and       questions was significantly lower in Survey 4 than Survey 3 (p
8 illustrate this type of display for our two data sets.               < 0.05).
   This method proved to be very effective in correcting the
fundamental interpretation error: it was tested in Survey 4, and       Discussion
only 12% of subjects made the error, a significant improvement
over our initial surveys (p < 0.001; Figure 6C, D). Method 3             Naïve viewers almost universally misinterpret maps of brain
also helped subjects to determine which areas were in fact             activity, by assuming that colored regions are reliably more
different from the ROI raising it to 88% (from 71% with Method         active than uncolored ones. This fundamental error is a specific

<a id="p007-b005"></a>

<!-- p007-b005 -->
PLOS ONE | www.plosone.org                                         7                      December 2013 | Volume 8 | Issue 12 | e82419

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
fMRI Confidence Intervals

<a id="p008-b002"></a>

<!-- p008-b002 -->
form of one commonly made across neuroscience, inferring a                    The goal of this paper was to document the need for
statistical interaction in the absence of a test [1]. We presented         confidence intervals in neuroimaging research and to
three methods to encourage more accurate reading of brain                  demonstrate some proof-of-concept solutions. Our specific
maps, based upon displaying confidence intervals for neural                methods for computing and displaying confidence intervals
activation. Our second and third methods were tested on naïve              could be improved, however. Most importantly, computing the
subjects, and greatly reduced the prevalence of interpretation             lower and upper bounds on a purely voxel by voxel basis
errors.                                                                    ignores statistical information present in clusters of voxels. It
   The advantage of our Method 1 is the completeness with                  should be possible to develop methods to take this information
which it displays the confidence intervals. Its disadvantages are          into account while computing the upper and lower bound
its conceptual complexity, and that comparing colors across                images. It may also be possible to develop better graphical
cortical locations can be imprecise. For the studies with                  methods for allowing confidence intervals to be displayed
multiple subjects, the method also has another difficulty. When            across voxels. Placing error bars on data maps is a problem
comparing two voxels in a standard GLM analysis, the relevant              that extends far beyond fMRI, and any solution that is
error term is the standard error of the difference between the             developed could have wide applicability.
                                                                              Misinterpreting “inactive”, i.e. uncolored, parts of activation
voxels. Using this term effectively factors out between subjects
                                                                           maps is likely to be highly prevalent in the general public, and
variance in overall activity levels. However, our confidence
                                                                           so is a major problem for the field. While the precise format
intervals include such variance, and it is unclear how to remove
                                                                           may be improved further, we urge the field to solve this
it from brain maps. In behavioral experiments, between
                                                                           problem by adopting some method of displaying confidence
subjects variance can be removed from error bars either by
                                                                           intervals, and look forward to their eventually becoming a
normalizing each subject’s scores, by using the error term from
                                                                           standard part data presentation.
a subject by condition analysis of variance [3], or by plotting
error bars for pairwise differences between conditions (the last
method is probably the best, see 7). None of these is likely to
                                                                           Materials and Methods
be effective for imaging data, however, because the conditions
                                                                           Surveys
being compared are voxels, and the population of voxels is so
large and diverse.                                                           In four survey experiments, we tested undergraduate
   Methods 2 and 3 have the advantage that they make visually              students participating in the Psychology Department subject
clear which regions in the brain do, and do not, differ from an            pool. The research protocol was approved by the Office for
ROI. Their disadvantage is that they can display results for only          Protection of Research Subjects at the University of Minnesota,
                                                                           and we obtained written informed consent from all subjects.
a single ROI at a time. One way to overcome this problem
                                                                             In Survey 1, 35 subjects viewed the map shown in Figure 1A,
would be to show multiple maps, which might be appropriate
                                                                           and were given the following written instructions:
for the many neuroimaging papers that focus their analysis on
only one or two key ROIs.                                                           The image above shows the results of a
   Method 3 may seem heavy-handed, since it explicitly informs                   study that measured brain activity using
readers which voxels are, and are not, reliably less active than                 functional MRI. The colors on the image show
an ROI. Such explicitness seems necessary, however, as                           areas that were more active when subjects
method 2, which only colored voxels that were reliably less                      looked at pictures of faces compared to when
active than the ROI, produced less accurate interpretations in                   they looked at a blank screen. Which of the
our survey. Because of its simplified color map, Method 3 may                    following is true? (Circle all that apply.)
also be displayable in a relatively small format, perhaps as an
                                                                            1.   Areas A and B were significantly more active in
inset of figures showing primary activation maps. However, the                response to faces than to a blank screen.
fact that Method 3 colors red some voxels that do not show                  2. Area A showed significantly greater activity in response
activity in the primary maps may lead readers to faultily                     to faces than area B.
assume that they are in fact active.                                        3. Area A showed significantly greater activity in response
   In our opinion, the best approach would be to make use of a                to faces than area C.
dynamic display. An interactive tool could allow a user to select
a reference ROI off of a standard activation map. The tool                   In Survey 2, a group of 17 subjects was shown the map in
could then automatically generate and display a confidence                 Figure 1C. This survey had voxels indicated both with arrows
interval image using either Method 2 or 3. Such interactive                and circles, and the added caption “Parts of the brain that are
displays could be an attractive part of standard analysis                  more active (p < 0.05) when people look at faces than a blank
packages, and could be incorporated into electronic journals               screen are colored.” Instructions were reworded as follows:
and as online supplemental material for paper publications.                        The image above shows the results of an
This approach would also overcome our somewhat arbitrary                         experiment that measured brain activity while
choice of activity of the voxel in the 75th percentile of activation             people were looking at faces. Please look over
as representative of the ROI; other voxels could be selected,                    both it and its caption now.
and a number of options for ROI comparison could be                                Use the image to answer the following. Circle
presented.                                                                       the best answer for each question.

<a id="p008-b003"></a>

<!-- p008-b003 -->
PLOS ONE | www.plosone.org                                             8                      December 2013 | Volume 8 | Issue 12 | e82419

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
fMRI Confidence Intervals

<a id="p009-b002"></a>

<!-- p009-b002 -->
Is Area A active when people look at faces?                  gray field. Data were acquired from a 3T Siemens Tim Trio
                                                                      Scanner. EPI data were acquired in two runs of 134 volumes
 1.     Very likely (Greater than 95% chance it is true)
                                                                      each that lasted 4 minutes and 28 seconds (TR=2000 ms,
 2.     Very unlikely (Less than 5% chance)
                                                                      TE=28 ms, flip angle =90). Each EPI volume consisted of 34 3
 3.     Can’t tell with confidence (between 5% and 95%
                                                                      mm slices (in-plane resolution 3 x 3 mm).
      chance)
                                                                         Dataset 2 consisted of one subject’s data from a paper
         Is Area A more active than area B when                       published in [4] that are available as part of a tutorial dataset at
       people look at faces?                                          http://afni.nimh.nih.gov (and fMRI Data Center Archive
                                                                      Ascension No. 2-2003-113QA). The study investigated brain
 1.     Very likely (Greater than 95% chance it is true)
                                                                      regions responsive to human and nonhuman motion. Stimuli
 2.     Very unlikely (Less than 5% chance)
                                                                      were movies of human motion and moving tools, and point light
 3.     Can’t tell with confidence (between 5% and 95%
                                                                      displays of human motion and moving tools, and were
      chance)
                                                                      presented in an event-related fashion with a jittered intertrial
         Is Area A more active than area C when                       interval (minimum 3 seconds). Data were acquired in 10 runs of
       people look at faces?                                          4:36. For additional details about MR data and acquisition
                                                                      parameters, see 4.
 1.     Very likely (Greater than 95% chance it is true)
                                                                         For both data sets, standard preprocessing steps including
 2.     Very unlikely (Less than 5% chance)
                                                                      six-parameter motion correction, slice-time correction, and
 3.     Can’t tell with confidence (between 5% and 95%
                                                                      spatial smoothing (4mm FWHM Gaussian blur) were
      chance)
                                                                      performed. The general linear model (GLM) was used to
  In Survey 3, 20 subjects were shown both the maps in Figure         estimate beta weights and conduct associated significance
6A. The left image was identical to that used in Survey 2 and         tests for effects of interest. These operations were conducted
had the identical caption. The right image had the caption:           in AFNI [5].
“Area A is more active (p < 0.05) than areas colored bluish              For Dataset 1, beta weights for the visual noise vs. baseline
when people look at faces”. Subjects were then given identical        contrast were transformed to a standard anatomical space
instructions and questions as were given to those who                 (MNI), and a one-sample across-subjects t-test was conducted
participated in Survey 2.                                             on beta weights with subjects (n=10) as a random factor. Data
  In Survey 4, 17 subjects viewed the two maps shown in               were thresholded at p < 0.01 and a minimum cluster size of
Figure 6C. The left figure and caption were identical to those        1,000 μL. For Dataset 2, beta weights and associated t-tests
used in the previous two surveys. The right figure had the            were computed for a fixed-effect (single subject) contrast
caption: “Area A is more active (p < 0.05) than areas colored         between human motion and tool motion. Data were collapsed
bluish when people look at faces. Activity in reddish areas is        across the movies vs. points variable in order to focus on a
not statistically different from A”. The rest of the Survey was       single, robustly activated contrast, and were thresholded at p <
identical to the corresponding part of Survey 3.                      0.001, and a minimum cluster size of approximately 984 μL.
                                                                      Because Dataset 2 consisted of a single subject, its fixed effect
fMRI data analysis                                                    analysis was less conservative than the random effect analysis
   To develop examples of fMRI confidence intervals, portions         conducted with Dataset 1. Accordingly, a more conservative
of existing data from one published and one unpublished study         threshold was used with Dataset 2 to make the analyses
were reanalyzed, using standard GLM analysis methods to               comparable.
compute voxel by voxel statistics. Upper and lower 99%
confidence intervals (dataset 1) and 99.9% confidence intervals       Acknowledgements
(dataset 2) were then computed at each voxel and color-coded
                                                                      We thank the editor and reviewers for helpful suggestions and
such that differences among voxels could be compared.
                                                                      patience, and Wilma Koutstaal and Chad Marsolek for
   Confidence intervals were computed using the standard
                                                                      facilitating the testing of subjects.
formula: CI = μ ± t(crit)*σ/sqrt(n-1), where μ is the mean
percent signal change, t(crit) is the critical t value for the        Author Contributions
confidence range and data degrees of freedom, and σ/sqrt(n-1)
is the standard error of the mean voxel activity.                     Conceived and designed the experiments: SAE PCB.
   Dataset 1 included data from 10 subjects performing a visual       Performed the experiments: SAE PCB. Analyzed the data: SAE
cortex localizer task as part of a broader unpublished study of       PCB. Contributed reagents/materials/analysis tools: SAE PCB.
vision (Olman C., et al.). Subjects viewed dynamic white noise        Wrote the manuscript: SAE PCB.
patterns in 20 sec blocks separated by 16 sec of fixation on a

<a id="p009-b003"></a>

<!-- p009-b003 -->
PLOS ONE | www.plosone.org                                        9                       December 2013 | Volume 8 | Issue 12 | e82419

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
fMRI Confidence Intervals

<a id="p010-b002"></a>

<!-- p010-b002 -->
References
 1. Poldrack RA, Fletcher PC, Henson RN, Worsley KJ, Brett M et al.                    objects.      J     Cogn     Neurosci     15:      991-1001.      doi:
    (2008) Guidelines for reporting an fMRI study. NeuroImage 40:                      10.1162/089892903770007380. PubMed: 14614810.
    409-414. doi:10.1016/j.neuroimage.2007.11.048. PubMed: 18191585.                5. Cox RW (1996) AFNI: Software for analysis and visualization of
 2. Nieuwenhuis S, Forstmann BU, Wagenmakers EJ (2011) Erroneous                       functional magnetic resonance neuroimages. Comput Biomed Res, 29:
    analyses of interactions in neuroscience: a problem of significance. Nat           162 - 173. doi:10.1006/cbmr.1996.0014. PubMed: 8812068.
    Neurosci 14: 1105-1107. doi:10.1038/nn.2886. PubMed: 21878926.                  6. Henson R (2005) What can functional neuroimaging tell the
 3. Loftus GR, Masson MEJ (1994) Using confidence intervals in within-                 experimental psychologist? Q J Exp Psychol A 58: 193-233. PubMed:
    subjects designs. Psychon Bull Rev, 1: 476 - 490. doi:10.3758/                     15903115.
    BF03210951. PubMed: 24203555.                                                   7. Franz VH, Loftus GR (2013) Standard errors and confidence intervals
                                                                                       in within-subject designs:
 4. Beauchamp MS, Lee KE, Haxby JV, Martin A (2003) FMRI responses
                                                                                       Generalizing Loftus & Masson (1994) and avoiding biases of alternative
    to video and point-light displays of moving humans and manipulable
                                                                                       accounts. Psychonomic Bulletin & Review (in press).

<a id="p010-b003"></a>

<!-- p010-b003 -->
PLOS ONE | www.plosone.org                                                     10                       December 2013 | Volume 8 | Issue 12 | e82419
