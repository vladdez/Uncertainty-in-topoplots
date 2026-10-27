---
id: "padilla2017binning"
title: "Evaluating the Impact of Binning 2D Scalar Fields"
source_file: "The Art of Uncertain Topoplots/papers/padilla2017binning.pdf"
source_sha256: "532000b04e5b00e170273ec2fea56a131ee5db6a4bdf392dc19c8cca66e08b96"
extraction_format: 1
---

# Evaluating the Impact of Binning 2D Scalar Fields — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS VOL. 23, NO. 1, JANUARY 2017431

<a id="p001-b002"></a>

<!-- p001-b002 -->
Evaluating the Impact of Binning 2D Scalar Fields
                            Lace Padilla, P. Samuel Quinan, Miriah Meyer, and Sarah H. Creem-Regehr

<a id="p001-b003"></a>

<!-- p001-b003 -->
Fig. 1: Experimental stimuli for five binning conditions: A. Continuous, B. 10m binning, C. 20m binning, D. 30m binning, E. 40m
        binning

<a id="p001-b004"></a>

<!-- p001-b004 -->
Abstract— The expressiveness principle for visualization design asserts that a visualization should encode all of the available data,
        and only the available data, implying that continuous data types should be visualized with a continuous encoding channel. And yet,
        in many domains binning continuous data is not only pervasive, but it is accepted as standard practice. Prior work provides no clear
        guidance for when encoding continuous data continuously is preferable to employing binning techniques or how this choice affects
        data interpretation and decision making. In this paper, we present a study aimed at better understanding the conditions in which
        the expressiveness principle can or should be violated for visualizing continuous data. We provided participants with visualizations
        employing either continuous or binned greyscale encodings of geospatial elevation data and compared participants’ ability to complete
        a wide variety of tasks. For various tasks, the results indicate significant differences in decision making, confidence in responses, and
        task completion time between continuous and binned encodings of the data. In general, participants with continuous encodings were
        faster to complete many of the tasks, but never outperformed those with binned encodings, while performance accuracy with binned
        encodings was superior to continuous encodings in some tasks. These findings suggest that strict adherence to the expressiveness
        principle is not always advisable. We discuss both the implications and limitations of our results and outline various avenues for
        potential work needed to further improve guidelines for using continuous versus binned encodings for continuous data types.
        Index Terms—Geographic/Geospatial Visualization, Qualitative Evaluation, Color Perception, Perceptual Cognition

<a id="p001-b005"></a>

<!-- p001-b005 -->
1   I NTRODUCTION
 A foundational design principle in visualization is the expressiveness                    tography [43] and meteorology [36] have strong conventions that visu-
 principle, which states that a visual encoding should express all of the                  alize continuous data with a discrete encoding. These domains rely on
 relationships in the data, and only the relationships in the data [24, 35].               visual channels, such as color and saturation to encode a continuous
 For a continuous data type, this implies that a continuous encoding                       function defined over two-dimensional space, known as a 2D scalar
 channel is a good choice. In practice, however, domains such as car-                      field. They commonly do so by employing discrete colormaps or con-
                                                                                           tour lines, also called isarithmic maps [43].
                                                                                              Existing literature provides little guidance about encoding contin-
  • L. Padilla is with the University of Utah Department of Psychology.                    uous, 2D scalar fields with binned colormaps, or how this design de-
    E-mail: lace.m.k.padilla@gmail.com                                                     cision affects data interpretation and decision making. Research into
  • S. Quinan and M. Meyer are with the University of Utah School of                       properties of colormaps for encoding continuous data types has largely
    Computing. E-mail: psq,miriah@cs.utah.edu.                                             focused on continuous colormaps [2, 28, 38, 48]. This line of research
  • S. Creem-Regehr is with the University of Utah Department of Psychology.               provides guidance on how to capture properties of the data, such as
    E-mail: sarah.creem@psych.utah.edu.                                                    divergence around a center point [48] or emphasis on one end of the
                                                                                           data range [2]. These papers go so far as proposing corresponding
 Manuscript received 31 Mar. 2016; accepted 1 Aug. 2016. Date of publication               binned colormaps, but do not make claims, or even discuss, their ef-
 15 Aug. 2016; date of current version 23 Oct. 2016.                                       ficacy for continuous data. Work on transfer function design has also
 For information on obtaining reprints of this article, please send e-mail to:             proposed methods for binning colors, but with a focus on volumetric
 reprints@ieee.org, and reference the Digital Object Identifier below.                     scalar fields, with the underlying goal of classifying materials or fea-
 Digital Object Identifier no. 10.1109/TVCG.2016.2599106                                   tures [12], as opposed to directly understanding the continuous nature
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 13,2025 at 09:29:48 UTC from IEEE Xplore. Restrictions apply.
                                      1077-2626 © 2016 IEEE. Personal use is permitted, but republication/redistribution requires IEEE permission.
                                        See http://www.ieee.org/publications_standards/publications/rights/index.html for more information.

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
432                                         IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 23, NO. 1, JANUARY 2017

<a id="p002-b002"></a>

<!-- p002-b002 -->
of a scalar field itself.                                                   practices used for binning choropleth maps extend to 2D scalar fields.
   An exception is work in cartography that explores the efficacy of        Other work in cartography and GIS, however, has focused on specifi-
using binned colormaps for encoding continuous values in choro-             cations for contouring 2D scalar fields such as digital elevation mod-
pleth maps. This work suggests that bins increase speed and accu-           els [51]. This work suggests that contouring aids in interpreting con-
racy [16]. However, the tasks that a choropleth supports are different      tinuous features [20, 15]. Contouring involves defining spans between
from those of a 2D scalar field, making it unclear whether the results      isolines and, in the case of contour maps, encoding the span between
hold more generally across continuous data types. Additional work           isolines with a discrete encoding such as color or greyscale. As the re-
has focused on contouring 2D scalar fields, such as digital elevation       sulting visualizations can be similar between contouring and discrete
models (DEMs), which involves connecting points of equal value with         binning, there is likely a relationship between tasks that both methods
isolines. While pragmatic advice is offered for determining distances       support. Defining the appropriate relative distance between isolines
between isolines [51], no empirical studies have evaluated the impact       is domain specific and commonly a judgment call by the designer.
of contouring on decision making.                                           Watson recommends that, “By looking at the range of heights in your
   The aim of this work was to test whether the decision to forgo the       dataset, you will get an idea of the levels that suit your data” [51].
expressiveness principle when visualizing 2D scalar fields influences       More advanced techniques in GIS include methods for generating con-
decision making across a broad spectrum of tasks. To this end, we           tours for a given task based on classifications of data features such as
conducted a user study in which participants were provided with con-        peaks or valleys (For a review see [15]). Various techniques for repre-
tinuous or binned greyscale encodings of the same topographical 2D          senting surface topology as graphs have also been proposed, notably
scalar field, as shown in Figure 1. Then we tested participants’ abili-     the Reeb graph [41] and the Morse-Smale complex [8]. These ap-
ties to complete a range of increasingly complex tasks, in a geospatial     proaches represent the relationship of critical topological features as
context. Our results demonstrate that decisions made with binned en-        nodes in a network visualization [23]. However to our knowledge,
codings, that did not conform to the expressiveness principle, were ei-     no user studies in GIS have been conducted to assess the influence of
ther as accurate or better than those that followed the principle. These    discretization techniques on decision making.
findings suggest that strict adherence to the expressiveness principle is
not always advisable for visualizing 2D scalar fields.                      2.2   Visualization
   In the rest of this paper, we lay out an overview of existing work on    An extensive body of research within the visualization literature con-
continuous versus binned colormaps, a description of our study and          siders the role of color for encoding data (For a review see [54]). Here,
results, and a discussion of the findings and their implications for vi-    we summarize work concerning decisions and issues with encoding
sualization. Section 2 includes discussions from cartography regard-        continuous data with color.
ing the decision to use continuous or segmented mappings, as well              Previous work in visualization concerning color encoding channels
as visualization work on encoding data using color and binning data         primarily recommends a binned colormap for categorical and ordinal
effectively. This is followed by a detailed description of the experi-      data and a continuous one for quantitative data [2, 28, 48]. Much of the
mental setup of our user study, along with results, in Section 3. We        work on discrete colormaps centers around Brewer’s perceptually opti-
then conclude in Section 4 with a discussion of the implications of the     mized colormaps [7, 16, 6]. These colormaps are widely adopted [54]
findings and recommendations for future work.                               and have inspired guidelines [53] and generative systems [52]. Alter-
                                                                            natively, Healey outlines a systematic method for generating effective
2     R ELATED W ORK                                                        isoluminant color schemes with up to seven colors by controlling for
Work in cartography and visualization offers inconsistent views on          color distance, linear separation, and color category [18].
binning continuous data. Modern approaches in cartography advo-                For continuous colormaps, the literature largely focuses on prin-
cate for binning the data, while visualization suggests that it should      ciples of colormap design, such as smart defaults [30] or domain-
be encoded with a continuous channel. Given the disagreement in the         specific recommendations [36]. However, it is generally accepted that
literature, we detail research from both disciplines as motivation for      there is no one best color scale, and a variety factors dictate effective
the present work.                                                           color usage [38]. For example, Ware offers experimental evidence that
                                                                            hue variation is better for extracting absolute values, while luminance
2.1    Cartography                                                          change enables enhanced form comprehension in continuous 2D scalar
A prevalent assumption in cartography regarding choropleth maps is          fields [50]. Bergman et al. provide continuous colormap recommen-
that binned colormap encodings of quantitative data are more compre-        dations based on data class, task, and spatial frequency [2]. Rheingans
hensible than continuous encodings [16, 51]. This perspective started       outlines various design considerations for creating successful continu-
a lively discussion in 1973 when Waldo Tobler developed a method            ous colormaps: goals, the nature of the data, the intended audience, the
of creating continuous greyscales using a line plotter [47]. Employ-        visualization as a whole, and cultural connotations [38]. Additionally,
ing Tobler’s method, cartographers had the option between continuous        Tominski et al. [48] provide a formalized set of task-driven continuous
greyscales or discrete tone encodings, and thus a heated debate en-         colormap recommendations based on characteristics of the data, tasks
sued [43]. Jean-Claude Muller was a key advocate for the new contin-        and goals, the user, and the display.
uous method, conducting various studies demonstrating that on printed          Where principles for continuous colormap design have been gen-
maps generated using a facsimile method [34], users could discern           eralized to corresponding binned colormaps, the discussion is lim-
similar map features with continuous encodings that are discernable         ited to applying those colormaps to nominal or ordinal data [28, 48].
by binned encodings [32, 33]. Muller’s and Tobler’s work was con-           Bergman et al. [2] provide one of the only explicit discussions about
tested notably by Michael Dobson in a series of commentaries [10, 9]        encoding continuous data discretely. They argue that using a binned
where he detailed a laundry list of grievances with continuous encod-       colormap on continuous data is useful for segmentation tasks, where
ings of choropleth maps, including but not limited to: increased time       the goal is to explicitly show multiple features. There is, however, no
to perform tasks, reduced ability to control the amount of informa-         discussion of what effect a binned encoding might have on isomorphic
tion presented, decreased pattern discrimination, and increased mental      tasks, where the goal of the representation is to reflect the structure
workload [9]. While these specific findings may not necessarily gener-      in the data. Additionally, as Mittelstadt et al. point out, many of the
alize directly to either 2D scalar field visualizations or modern display   existing guidelines for creating effective colormaps are geared toward
technologies, the perspectives exemplify relevant considerations for        a single elementary task, while real-world scenarios typically require
the trade-offs between the richness of presented data and usability.        more complex, combined tasks [28]. The goal of our work is to look
   Many of the tasks performed with choropleth maps are fundamen-           at the influence of binned colormaps across a wide range of both seg-
tally different from those performed with 2D scalar field visualiza-        mentation and isomorphic tasks for 2D scalar fields.
tions, as the latter are often used to make judgments about continu-           Work on visualizing continuous functions in three-dimensional
ous features in the data. Thus, it is unclear to what extent standard       space using color largely focuses on techniques for volume visualiza-
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 13,2025 at 09:29:48 UTC from IEEE Xplore. Restrictions apply.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
PADILLA ET AL.: EVALUATING THE IMPACT OF BINNING 2D SCALAR FIELDS433

<a id="p003-b002"></a>

<!-- p003-b002 -->
tion. Transfer function (TF) design explores methods and techniques
 to specify optical properties, including both color and opacity, for dif-
 ferent portions of volumetric datasets. TFs are predominately used to
 classify materials based upon features in a scalar field [12], which are
 time-consuming to generate manually. As such, there have been a va-
 riety of attempts to automate or optimize the data classification step
 based on the underlying features of the data [22, 13, 49]. This classifi-
 cation role closely resembles Bergman et al.’s notion of segmentation
 tasks discussed above, where the goal is to elucidate features, as op-
 posed to isomorphic tasks, which we are also interested in testing.

<a id="p003-b003"></a>

<!-- p003-b003 -->
3     M ETHODS AND A IMS
 Even though the expressiveness principle suggests that continuous
 data should be encoded with a continuous channel, it is likely that
 some visualization practitioners have discovered, through experience,
 that binning continuous data types is beneficial in many situations. We
 argue that violations of the expressiveness principle should be used to     Fig. 2: An example of the continuous encoding for the Highest Point
 calibrate efficacy. Visualization efficacy is domain specific, but can      in Region task.
 generally be gauged by speed, accuracy, and confidence in task per-
 formance. Focusing on the geospatial domain, we predict that forgo-         maximum of 100 JNDs [38], and we base our finest binning on the
 ing the expressiveness principle for the 2D scalar field data used in       most conservative estimate of 43 JNDs [26].
 the current study will likely increase accuracy and confidence in task         It should be noted that we did not account for perceptual effects
 performance, which is consistent with work suggesting that binned           such as simultaneous contrast that have been well documented for
 choropleth maps are preferable. However, binning may reduce speed,          greyscale [50]. Recent work by Mittelstädt et al. has proposed and
 showing a classic speed-accuracy trade-off.                                 subsequently improved upon post-processing methods that counter
    To test our hypothesis, we employed a between-subjects design,           contrast effects [29]. However, prioritizations based on task are re-
 with five different groups of participants each performing tasks with       quired. As such, we could not appropriately optimize a single image
 one of five different binning conditions. Each of the binning groups        for all tasks using this technique.
 was comprised of participants from Amazon’s Mechanical Turk with               The CIELAB pixel values were converted to sRGB to create the
 participation criteria set to master-class workers in the US. The aver-     images used in the study. The sRGB color space is non-linear stan-
 age screen size used by the population in this study was 1600 x 900 cm,     dardized RGB specification, which is widely accepted as the default
 the median was 1280 x 1024 cm, and the mode was 1366 x 768 cm.              RGB specification in web-imaging [44]. Given that we ran the study
 The five binning conditions, shown in Figure 1, include one percep-         online, sRGB was a logical choice. 1
 tually linear continuous greyscale encoding, along with four different         For those stimuli requiring defined regions, the regions were layered
 approximately perceptually linear binned greyscale encodings. These         on the sRGB images via post-processing (e.g., Figure 2). Additionally,
 were based on binning intervals ranging from fine to coarse. Type of        to ensure that our visual stimuli more accurately matched the nature of
 task was a within-subject variable, with each participant completing        our questions, we linearly scaled the legend values such that ∆ Eab ∗ =
 12 randomly ordered tasks ranging in complexity.                            2.3 equates to a 10-meter difference in elevation. The five binning
 3.1    Stimuli Generation                                                   techniques or test conditions are named based on this scale (10m n
                                                                             = 100, 20m n = 99, 30m n = 99, 40m n = 100, and Continuous n
 All of the experimental stimuli were created from a DEM projected           = 101). From the participants’ point of view, our questions regarded
 into the continuous range [0, 100]. This range allowed us to start          topographical data spanning a range of [75, 510] meters. We collected
 with a dataset where the data range explicitly matched the range of         responses using this range and for appropriate tasks transformed the
 the lightness channel, L*, in the commonly used CIELAB color space.         response values back to the original [0, 100] range for analysis.
 CIELAB was designed to be perceptually uniform when evaluating
 small color differences [44]. These differences are defined based on        3.2    Tasks
 a Euclidean distance metric, where one unit of Euclidean distance
       ∗ = 1) was designed to equal one just-noticeable color differ-        This study examines how visualization techniques that forgo (i.e.
 (∆ Eab
                                                                             binned encodings) and conform (i.e. continuous encoding) to the ex-
 ence (JND). Other work, suggests that ∆ Eab    ∗ = 2.3 is a more ac-
                                                                             pressiveness principle influence the general public’s interpretations of
 curate benchmark for just-noticeable color differences in CIELAB
                                                                             data. Brehmer and Munzner [5] provide a thorough typology of vi-
 space [26]. While more accurate color difference spaces and color
                                                                             sualization tasks that we selected from to test this aim. We focused
 appearance models exist [31], the simplicity of CIELAB has made it
                                                                             on discovery-based tasks, which involve generating predictions and
 the most practical choice for designers [45].
                                                                             testing theories in the data. This categorization of tasks incorporates
    We generated the perceptually linear continuous greyscale encod-
                                                                             search and query. Search tasks can be categorized as lookup (when
 ing by mapping the elevation data values to CIELAB lightness, L*,
                                                                             both the target and location are known), browse (when the target is un-
 while leaving a* = b* = 0. We utilized the Mahy et al. [26] bench-
                                                                             known, but the location is known), locate (when the target is known,
 mark of ∆ Eab ∗ = 2.3 to create four binning conditions. The smallest
                                    ∗ = 2.3), which resulted in a set of     but the location is unknown) and explore (when neither the target or
 bin was nearly continuous (∆ Eab
                                                                             the location are known). When the target or set of targets has been lo-
 bins approximately 1 JND apart, starting at the highest elevation. The
                                                              ∗ = 4.6),      cated, then a query step is performed, where the participants identify,
 three coarser binnings were then generated by doubling (∆ Eab
               ∗ = 6.9), and quadrupling (∆ E ∗ = 9.2) the initial bin       compare or summarize the targets. We did not address the how and
 tripling (∆ Eab                                ab                           what sections of Brehmer and Munzner’s [5] typology since these are
 size. The resulting images are shown in Figure 1. As none of these
                                                                             most relevant to interactivity, which falls outside of the scope of the
 quantities neatly divide into the data range, the lowest elevation bins
                                                                             current work. Further, we were interested in assessing performance
 were smaller and variable in size. Therefore, we specifically avoided
                                                                             on both elementary (on single values) and synoptic (on sets of val-
 asking questions regarding the lower elevations as this inconsistency
                                                                             ues) tasks [48, 1]. As such, we utilized comparisons, rankings, and
 could have influenced participants’ responses.
    Greyscale is generally considered to have a limited perceived dy-            1 Alternative methods include Szafir et al.’s parametric color difference
 namic range and approximations for the number of JNDs varies [38].          model [45], which was designed to incorporate the real-world perceptions of
 The data range of our continuous encoding matches the theoretical           target populations like Amazon Mechanical Turk.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 13,2025 at 09:29:48 UTC from IEEE Xplore. Restrictions apply.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
434                                          IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 23, NO. 1, JANUARY 2017

<a id="p004-b002"></a>

<!-- p004-b002 -->
summarizations of regions to this aim.                                       location?” This question was a comparison task that could be imple-
   In an extensive initial pilot study, we tested six tasks that were cho-   mented without occluding the relevant locations on the map (which
sen to represent a broad spectrum of possible visualization tasks rang-      would have occurred if specific points were overlaid on the map).
ing in complexity. We were particularly interested in including tasks        Although allowing participants to interactively remove and display a
that included the integration of multiple features, since we had ob-         glyph would have been one solution to the occlusion issue, we felt
served users attempting this in applied settings in our previous work        that it was important to limit the scope of these tasks to static images.
[37]. In the simplest task, participants were instructed to click on the     Thus, we created a task requiring participants first to identify the high-
highest location on a map, which was intended to test the participants’      est location in two regions and then to compare those values.
ability to locate relevant values with the different binning techniques.
Prior work has found that participants are quite accurate at mouse cur-      Rank Heights. Participants were asked to “Find the highest elevation
sor location precision with errors ranging from 2%-3% [3], making            in each box. Then rank each box according to the elevation of its high-
mouse clicks a reasonable choice of response type. In the most com-          est location.” This task was intended to increase complexity from the
plex task, participants were asked to rank locations according to flood      Compare Heights task. Rather than comparing the highest locations in
risk, which involved integrating both elevation information and dis-         two regions, the participants were instructed to rank the highest loca-
tance from a river. This task was both complex and modeled after real-       tions in three regions.
world scenarios. While our pilot study was informative, the problem
was that glyphs were placed on the visualizations to indicate specific       3.2.3   Explore and Identify Task
points, which occluded relevant values. The present study addressed          Exclusively explore tasks required participants to make judgments us-
this issue by asking participants to make relative judgments about re-       ing characteristics of the data rather than known targets.
gions rather than occluded points. Additionally, the present work uses
mouse-click responses and comparisons because they were the most             Steepest. These are one of the most difficult and rarely employed tasks
successful task types in the pilot study. We further expanded the spec-      with the general public. We tested whether participants could identify
trum of tasks to include previously untested variants of the aforemen-       the relationship between points by using the colloquial understanding
tioned tasks along with asking participants to summarize fields of data.     of slope. Participants were provided the following description of slope,
   For all of the tasks, participants were shown one topographical map       “Terrain is steeper where there is a larger change in elevation between
with a single binning technique. Time to complete each task was              adjacent points.” In this task, participants were asked to “Click on the
recorded along with a subjective measure of confidence in task per-          steepest point in the map.”
formance. After each task, participants were presented with a 1-7
Likert scale to measure their confidence (1 = not at all confident, 7        3.2.4   Lookup and Identify Task
= very confident). Additionally, we asked participants questions about
                                                                             Lookup. Lookup tasks are characterized by both the target and loca-
monitor display capacities, included black level, white saturation, and
                                                                             tion being known. Participants were asked to identify the height value
gradient banding. Screenshots of each task and the display questions
                                                                             of the steepest point they selected in the previous question. This ques-
are available in the supplementary materials.
                                                                             tion was presented on the same page as the Steepest task, and asked,
3.2.1 Locate or Explore and Identify Tasks                                   “What are the highest and lowest elevations adjacent to the point you
                                                                             clicked on?”
Depending on a participant’s approach, the following tasks could be
completed by either a locate or explore strategy followed by an identi-
                                                                             3.2.5   Explore and Compare Task
fication step, according to Brehmer and Munzner [5]. For example, if
a participant identified a relevant value on the legend (e.g., the highest   Steepness Compare. This question was intended to assess partici-
elevation) and then looked for that value, this would be a locate task       pants’ ability to compare relationships in the data through exploration,
— seeking for a known target in an unknown location. If instead the          using the “steepest point” task described above. Participants were pro-
participant searched for characteristics in the data which are unknown       vided with the instructions, “In each box, find the steepest point. Com-
targets (e.g., relative height or slope), this would be an exploration       paring these locations, which box contains the steepest point?”
task [5]. Participants then identified the target via mouse click.
                                                                             Steepness Rank. This was one of the most difficult tasks that we
Highest Point. Participants were asked to “Click on the highest point        tested. Participants were given the instructions, “Inside each box, find
in the image.”                                                               the steepest point. Rank each box according to their steepest points.”
Highest Point in Region. Participants were asked to “Click on the
highest point inside box A.” This task was intended to be a more com-        3.2.6   Browse and Summarize
plex version of the former task, by prohibiting participants from dis-       Browse tasks are characterized by the location being known and the
tinguishing the highest elevation on the legend and then identifying         target being unknown. The following browse tasks used specific re-
that location on the map. Instead, participants had to locate the high-      gions with in which the participants were asked to determine charac-
est point within a region, which was outlined in red and overlaid on         teristics about the region.
the map (See Figure 2). All of the tasks that required responses in re-
gions used the same type of red outlined overlay. While participants         Average Height. This task was intended to test participants’ ability to
could have looked up values in the legend, this task did not require this    integrate a large set of relationships in the data. We asked participants
strategy and likely primarily depended on participants’ ability to make      to provide a summary statistic from a specified region. Participants
relative comparisons between elevations within the region.                   were asked, “What is the average elevation of the area in box A?”
                                                                             All participants were screened at the start of the experiment for a basic
Locate 275m. Participants were asked to “Click on any point in the           understanding of how to calculate an average from a string of numbers.
image that has an elevation of 275 m.” This task was intended to re-         While calculating numeric averages is fundamentally different than
quire participants to use the legend then search in the visualization for    visual spatial aggregation, we wanted to ensure that participants were
the relevant value.                                                          familiar with the term average and related concepts.
3.2.2 Locate or Explore and Compare Tasks
                                                                             3.2.7   Browse and Compare
For these tasks, participants could use either a locate or explore strat-
egy, followed by a comparison of targets.                                    Continuous. In this task, participants summarized two regions and
                                                                             then compared the regions. Participants were provided with the in-
Compare Heights. Participants were asked to “Find the highest point          structions, “Find the average elevation in each box. Comparing these
in each box. Comparing these locations, which box contains the higher        locations, which box contains the higher average elevation?”
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 13,2025 at 09:29:48 UTC from IEEE Xplore. Restrictions apply.

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
PADILLA ET AL.: EVALUATING THE IMPACT OF BINNING 2D SCALAR FIELDS435

<a id="p005-b002"></a>

<!-- p005-b002 -->
Mean Error (LAB distance)

<a id="p005-b003"></a>

<!-- p005-b003 -->
Mean Error (LAB distance)

<a id="p005-b004"></a>

<!-- p005-b004 -->
Mean Error (LAB distance)
                                                                                                                                         18 20 22 24 26
                                          6

<a id="p005-b005"></a>

<!-- p005-b005 -->
3.0
                                   5

<a id="p005-b006"></a>

<!-- p005-b006 -->
2.5
                             4

<a id="p005-b007"></a>

<!-- p005-b007 -->
2.0
                      3

<a id="p005-b008"></a>

<!-- p005-b008 -->
16
                                                 Con 10   20   30   40                                     Con 10   20   30   40                                   Con 10   20   30   40

<a id="p005-b009"></a>

<!-- p005-b009 -->
Fig. 3: Highest Point Task. Error bars (95% CI)                   Fig. 4: Highest Point in Region Fig. 5: Locate 275m Task. Error
                                                                              Task. Error bars (95% CI)       bars (95% CI)
 3.2.8    Combination Task
                                                                             location within a region. Click accuracy was calculated by subtracting
 The final combination task involved a multistep iterative process that      the L value at the clicked location from the L value of the highest lo-
 could include all or a subset of the previously defined processes in any    cation in the region (22.40), creating an error score in CIELAB space
 order, depending on a participant’s strategy.                               distance. Outliers 2SD > mean were removed (3.8 % of trials). The
 Steepest at 355. This question was intended to increase complexity          analysis revealed there was a significant effect of binning technique on
 and relevance by combining a locate task and a browse task. Many            click location accuracy, F(4, 472) = 2.744, p = .028, η p2 = .023. The
 tasks that are performed in real-world scenarios require combinations       mean error score for 20m (M = 2.10, SD = 2.04) was significantly
 of tasks. Participants were asked to “Click on the steepest point in the    lower than 30m (M = 2.86, SD = 1.89) binning, p < .05 (See Figure
 map at an elevation of 355 m.”                                              4).

<a id="p005-b010"></a>

<!-- p005-b010 -->
3.3     Analysis                                                            3. Locate 275m. Participants were more accurate using the 40m bin-
                                                                             ning technique, specifically when compared to the 30m binning. This
 3.3.1    Overview of Results                                                result was revealed by a one-way between-subjects ANOVA testing
 As an overview, there were no cases where there was a clear advan-          the effect of binning technique on accuracy of clicking a location at an
 tage in terms of accuracy with the continuous encoding.The results          elevation of 275 m. Click accuracy was calculated by subtracting the
 described in more detail below show that for some tasks there was           L value at the clicked location from the L value corresponding to an
 no difference in accuracy between binned and continuous encoding            elevation of 275 m (45.95), creating an error score in CIELAB space
 (e.g., Compare Heights and Rank Heights tasks), but in other tasks,         distance. The analysis revealed that there was a significant effect of
 binned encodings showed higher accuracy than continuous (e.g., High-        binning technique on click location accuracy, F(4, 491) = 2.763, p =
 est Point and Lookup tasks). Interestingly, we found that, generally,       .027, η p2 = .021. Mean error score for 40m (M = 18.77, SD = 12.46)
 participants were faster to complete the tasks with the continuous en-      was significantly lower than 30m (M = 24.12, SD = 12.87) binning,
 coding than with some of the binned encodings. These findings sug-          p < .05 (See Figure 5).
 gest that while participants with continuous encodings appear to com-
 plete tasks more quickly, continuous encodings did not improve accu-        3.3.3                         Locate or Explore and Compare Task
 racy. The following sections will detail the analyses and results for       4. Compare Heights. A binomial logistic regression found that there
 each task.                                                                  was no significant effect of binning technique on a height compari-
    For all of the following ANOVA analyses, post hoc Tukey HSD              son, χ 2 (d f = 7) = 7.189, p = .40. While participants were overall
 comparisons were used to test significant differences between binning       more likely to correctly choose the higher elevation (73% responded
 techniques for each task, correcting for multiple comparisons. In ad-       correctly), this did not vary across binning condition.
 dition, all analyses controlled for effects of display parameters. (See
 supplementary material for full output.) The task accuracy analyses         5. Rank Heights. An ordinal logistic regression was used to test the
 and results are presented for each task separately, since the nature of     effect of binning technique on rankings of regions by height. Partic-
 the task determined the analyses used (Sections 3.3.2 - 3.3.9). Analy-      ipants responded to this question by entering rankings of 1-3 (three
 ses and results for task completion time and confidence ratings, sum-       indicating the highest region and one the lowest) for regions A, B,
 marized across tasks, are reported in Sections 3.3.10 and 3.3.11.           and C. The ordinal logistic regression equation did not significantly
                                                                             predict rankings when using binning technique and region as predic-
 3.3.2    Locate or Explore and Identify Tasks                               tors, χ 2 (d f = 9) = 10.63, p = 0.30. In general, participants performed
 1. Highest Point. Participants were more accurate when using the            poorly on this task: 35% correctly ranked B as the highest, 52% cor-
 40m binning display compared to the continuous display. This re-            rectly ranked A second, and 35% correctly ranked C as lowest, which
 sult was revealed by a one-way between-subjects ANOVA testing the           makes it difficult to compare the binning conditions.
 effect of binning technique on accuracy of click location. Click accu-
                                                                             3.3.4                         Explore and Identify Task
 racy was calculated by subtracting the L value at the clicked location
 from the L value of the highest location (100), creating an error score     6. Steepest. Preliminary diagnostic checks of the data revealed that
 in CIELAB space distance. Outliers that were two standard devia-            participants predominantly clicked in three separate areas (See Figure
 tions (SD) above the mean were removed (6% of trials). The analysis         6a). We assessed steepness by looking at the DEM’s gradient, which
 revealed there was a significant effect of binning technique on click       we approximated using a Sobel operator. The point with the great-
 location accuracy, F(4, 463) = 2.634, p = .033, η p2 = .021. The mean       est gradient magnitude (44.33), was located in Area A. However, this
 error score for continuous (M = 4.93, SD = 4.55) was significantly          point was located proximal to a low elevation depression in the map.
 higher than 40m (M = 3.25, SD = 3.06) at a p < .05 criterion (See           The vast majority of clicks were in Area B, which was proximal to a
 Figure 3).                                                                  peak feature. This pattern of responses suggests that participants’ click
                                                                             decisions may have been influenced by an assumption about the rela-
 2. Highest Point in Region. Participants were more accurate us-             tionship between steepness and peaks. Because of this initial pattern,
 ing the 20m binning technique, specifically, when compared to the           we decided to provide a qualitative description of the number of clicks
 30m binning. This result was revealed by a one-way between-subjects         per binning condition in each area separately. As shown in Figure 6b,
 ANOVA testing the effect of binning technique on accuracy of click          there are different proportions of total clicks in regions A and C across
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 13,2025 at 09:29:48 UTC from IEEE Xplore. Restrictions apply.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
436                                                                IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 23, NO. 1, JANUARY 2017

<a id="p006-b002"></a>

<!-- p006-b002 -->
80 100 120 140 160

<a id="p006-b003"></a>

<!-- p006-b003 -->
80 100 120 140 160
                                                                                              Absolute Mean Error (m)

<a id="p006-b004"></a>

<!-- p006-b004 -->
Absolute Mean Error (m)
                                                             60

<a id="p006-b005"></a>

<!-- p006-b005 -->
Clicks Per Region
                                          C                   40

<a id="p006-b006"></a>

<!-- p006-b006 -->
B                                     20
        A

<a id="p006-b007"></a>

<!-- p006-b007 -->
60

<a id="p006-b008"></a>

<!-- p006-b008 -->
60
                                                                                                                        Con 10   20     30   40                             Con 10   20     30   40
                                                                   0
  Con         10m     20m       30m      40m                           A    B    C                                          (a) Lower                                           (b) Upper
(a) Click locations overlaid on the continu- (b) Number of clicks per region by binning
ous encoding, showing three main regions. technique.                                                                        Fig. 8: Lookup Task. Error bars (95% CI)
                              Fig. 6: Steepest Task

<a id="p006-b009"></a>

<!-- p006-b009 -->
Fig. 9: An example portion of the continuous encoding from the Steep-
                                                                                            ness Compare task, showing Area A and Area B.

<a id="p006-b010"></a>

<!-- p006-b010 -->
icant differences between the conditions at the p < .05 level when
                                                                                            accounting for multiple comparisons. To understand the main ef-
                                                                                            fect of binning, planned contrast codes were generated which com-
Fig. 7: A visualization of the spatial frequency of the DEM used in                         pared the continuous encoding to the binned encodings. Similar to the
this study.                                                                                 lower elevation analysis above, we found that the continuous encoding
                                                                                            (M = 128.60, SD = 100.90) was less accurate than binned encoding
binning conditions. We can speculate that different binning techniques                      (M = 107.36, SD = 97.16), F(1, 490) = 7.79, p = 0.005 (See Figure
influenced some participants’ incorrect assumptions relating elevation                      8b).
and steepness; however, future studies are needed to fully understand
these effects.
                                                                                            3.3.6                       Explore and Compare Task
   An additional complicating factor when asking participants to make
judgments of steepness comes from the high spatial frequency of the                         8. Steepness Compare. A binomial logistic regression found that
gradient magnitude (See Figure 7). In the areas with the greatest gra-                      there was no significant effect of binning technique on a steepness
dient magnitude, relatively close points (i.e., only a few pixels apart)                    comparison, χ 2 (d f = 7) = 1.35, p = .98. Area A contained the steep-
could have vastly different gradient magnitude values. While beyond                         est point with a magnitude gradient of 44.33, and Area B contained
the scope of this study, future work should investigate strategies to                       the second steepest point with a magnitude gradient of 41.65 (See
account for this.                                                                           Figure 9). 62% of participants incorrectly selected Area B as con-
                                                                                            taining the steeper point. Similar to the Steepest task, these findings
3.3.5       Lookup and Identify Task                                                        suggest that participants’ prior understanding of topography and an as-
7. Lookup. This task followed the Steepest Point task and asked                             sumption about a connection between steepness and peaks could have
participants to report the lowest and highest values adjacent to their                      biased incorrect responses. Additionally, these findings may be influ-
click; thus, accuracy of lowest and highest points were analyzed sep-                       enced by the issues related to the high spatial frequency of the gradient
arately. For the lowest value, participants were the least accurate us-                     magnitude noted in Section 3.3.4.
ing the continuous encoding, specifically when compared to the 30m
and 40m binnings. Accuracy was calculated by subtracting the re-                            9. Steepness Rank. An ordinal logistic regression was used to test the
ported lower adjacent elevation from the actual lower adjacent ele-                         effect of binning technique on rankings of the greatest gradient mag-
vation, creating an error score in CIELAB space distance. Outliers                          nitude between regions. Participants responded to this question by
> 2SD above the mean were removed (7.8% of trials). A one-way                               entering rankings of 1-3 (three indicating the greatest gradient magni-
between-subjects ANOVA, (controlling for reported higher adjacent                           tude region and one the least) for regions A, B, and C. Each of these
elevation), showed there was a significant effect of binning technique,                     regions were selected because they contained the 3rd, 4th, and 5th
F(4, 451) = 4.418, p = .001, η p2 = .057. The mean error score for                          steepest points (See Figure 10). The ordinal logistic regression equa-
the continuous encoding (M = 134.91, SD = 105.20) was significantly                         tion did significantly predict rankings when using binning technique
less accurate than the 30m binning (M = 94.33, SD = 87.21) and 40m                          and regions as predictors χ 2 (d f = 9) = 137.79, p < .00, but binning
binning (M = 86.20, SD = 82.88), p < .05 (See Figure 8a).                                   technique did not effect gradient magnitude rankings. Both the regions
   A similar analysis was performed on the reported upper adjacent                          and the order of rankings were significant predictors of rankings.
elevation. Outliers > 2SD above the mean were removed (2% of tri-                              This task and the prior tasks relating to steepness judgments suggest
als). There was a significant effect of binning technique on reporting                      that a number of different factors likely influenced a reduced effect
the upper adjacent elevation, F(4, 479) = 2.602, p = .03, η p2 = .044.                      of binning, such as prior assumptions about how elevation peaks and
However, post hoc Tukey HSD comparisons did not reveal signif-                              slopes relate and variable gradient magnitudes.
 Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 13,2025 at 09:29:48 UTC from IEEE Xplore. Restrictions apply.

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
PADILLA ET AL.: EVALUATING THE IMPACT OF BINNING 2D SCALAR FIELDS437

<a id="p007-b002"></a>

<!-- p007-b002 -->
factor(Binning)
                                                                                                         10                        factor(Binning)
                                                                                                                                    10
                                                                                                         20
                                                                                                         30                         20
                                                                                                                                    30
                                                                                                         40
                                                                                                         Con                        40
                                                                                                                                    Con

<a id="p007-b003"></a>

<!-- p007-b003 -->
Low                   255m - 455m                     High
                                                                                                     Con     10m    20m 30m           40m

<a id="p007-b004"></a>

<!-- p007-b004 -->
Fig. 12: Distribution of click locations for low, middle, and high ele-
                                                                             vation groups, for the Steepest a 355m Task.
 Fig. 10: An example of the continuous encoding in the Steepness Rank
                                                                             These results were revealed by one-way between-subjects ANOVAs
 Task.
                                                                             computed for each task, examining the effect of binning condition
                                                                             on task completion time. Table 1 includes mean, standard deviation
                   Quantity of Responses

<a id="p007-b005"></a>

<!-- p007-b005 -->
75                                     statistics, and Tukey HSD post hoc tests of significant differences ac-
                                                                             counting for multiple comparisons for each binning technique in all
                                      50                                     12 tasks.2 Figure 13 shows mean time for each task that demonstrated
                                                                             significant differences between binning techniques.
                                      25                                     3.3.11    Task Confidence
                                                                             Four tasks showed significant differences in task confidence between
                                           0 Con 10 20 30 40                 binning techniques. However, no consistent relationship between bin-
                                              Correct   Incorrect            ning and confidence was observed (See Table 2 and Figure 1 in the
                                                                             supplementary material). Further, overall confidence ratings were rel-
 Fig. 11: Proportion of correct and incorrect responses in the Average       atively consistent between tasks. These results were revealed by one-
 Height Compare Task for each encoding condition.                            way between-subjects ANOVAs computed for each task, examining
                                                                             the effect of binning condition on task confidence ranking. These re-
                                                                             sults suggest that confidence ratings were not a very sensitive measure
 3.3.7 Browse and Summarize
                                                                             of differences in encoding conditions and future work might use other
 10. Average Height. A one-way between-subjects ANOVA, testing               subjective ratings such as preference or ease of task.
 the effect of binning technique on reported average height in a region,
 while controlling for the display parameters, found no effect of binning    3.3.12    Discussion of Results
 on response accuracy F(4, 474) = 1.241, p = .293, after removing out-
 liers > 2SD above the mean error score (3.4% of trials). The finding        Significant differences in accuracy of decision making, response
 may be due to the large magnitude of errors in all of the binning con-      speed, and response confidence were found between continuous and
 ditions (M = 101.105, SD = 47.44).                                          binned encodings. The results were task-specific, but overall, our find-
                                                                             ings suggest that the continuous encoding increased speed but rarely
 3.3.8 Browse and Compare                                                    accuracy in many tasks. The largest differences among binning con-
                                                                             ditions were found in the Highest Point and Lookup tasks, suggesting
 11. Average Height Comparison. Participants were least accurate
                                                                             that the continuous encoding technique was the least effective in those
 using the 40m binning technique. This result was revealed by a logistic
                                                                             situations. Our findings suggest that the choice of binning versus con-
 mixed model, testing the effect of binning technique on a comparison
                                                                             tinuous encoding of 2D scalar fields is important to consider as an
 of steepness. Comparison accuracy was calculated by coding correct
                                                                             influence on user task performance.
 responses as 1 and incorrect rankings as 0. The analysis revealed that
 the 40m binning displayed a significantly lower proportion of accurate         More specifically, we found that for the Locate or Explore and Iden-
 responses (63%) compared to the 10m (82%), 20m (79%), 30m (87%)             tify Tasks (Section 3.3.2), the binning technique influenced task per-
 binnings and the continuous encoding (86%). The model accounted             formance. For example, those with the continuous encoding had worse
 for a significant proportion of variance compared to a baseline model       performance than those with the 40m binning in the Highest Point task,
 with no predictors, χ 2 (d f = 7) = 22.80, p = .001 (See Figure 11).        which may have been due to a pop-out effect that the 40m binning pro-
                                                                             duced (See Figure 14 for comparisons). The other Locate or Explore
 3.3.9 Combination task                                                      and Identify tasks varied based on binning interval.
                                                                                Responses for all tasks that utilized a steepness judgment (e.g., Ex-
 12. Steepest at 355. Preliminary diagnostic checks of the data re-
                                                                             plore and Identify task (Section 3.3.4), Explore and Compare tasks
 vealed that the majority of participants were clicking at elevations
                                                                             (Section 3.3.6) and the Combination task (Section 3.3.9)) appear to
 much lower than 355m as instructed (See Figure 12). We defined re-
                                                                             be highly influenced by prior assumptions about the relationship be-
 gions based on relative proximity in elevation to 355m, making three
                                                                             tween elevation peaks and slopes and variable gradient magnitudes as
 groups (below 255, 255–455, above 455) and qualitatively assessed
                                                                             described in Section 3.3.4.
 the frequency of clicks in each region by binning condition. It is clear
 that many participants did not correctly identify the 355 elevation, as        In the Lookup and Identify Task (Section 3.3.5), those with the
 the greatest number of clicks fell in the ”low” category. Overall, the      continuous encoding also performed the worst. This effect may have
 wide distribution of click responses makes it difficult to assess differ-   been due to the difficulty of locating values on the continuous legend.
 ences between the binning conditions and suggests that the task was         Work by Brewer [7, 17, 6] suggests that identifying relevant values
 difficult for users.                                                            2 For the first task, binning technique significantly affected time. However,

<a id="p007-b006"></a>

<!-- p007-b006 -->
post hoc comparisons did not reveal significant differences between the con-
 3.3.10 Task Completion Time
                                                                             ditions at the p < .05 level when accounting for multiple comparisons. To
 Eight of the 12 tasks showed significant differences in task comple-        understand the main effect of binning, contrast codes were generated which
 tion time between binning techniques, with the continuous encoding          compared the continuous encoding to the binned encodings, which is shown in
 displaying consistently faster performance than some of the binnings.       the first row of the table.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 13,2025 at 09:29:48 UTC from IEEE Xplore. Restrictions apply.

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
438                                                                                                  IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 23, NO. 1, JANUARY 2017

<a id="p008-b002"></a>

<!-- p008-b002 -->
Table 1: Task completion time, with ** = p < .000, * = p < .05. Outliers refers to the percent of outliers two standard deviations beyond the
     mean that were removed.
             Task                  Continuous                                                                          Binned Encodings                                                                                                                          F           p        outliers                  figure
                                      µ       σ                                                                              µ     σ
                1                10.90*    5.75                                                                         13.95*   10.54                                                                                                       7.79                     .005**               1.4                       a
             Task                  Continuous                            10m                                         20m              30m                                                            40m                                        F                          p          outliers                  figure
                                      µ       σ                          µ      σ                                   µ        σ        µ      σ                                                       µ     σ
                         2       11.99*    6.83                     13.35*   7.14                              11.81*     6.71 15.74* 10.20                                                     16.87*   9.0                              7.679                       .000**                                2       b
                         3       19.10* 10.96                        20.84 10.76                               19.95*    11.30 20.16*     9.48                                                  25.00* 12.50                              7.679                       .000**                              4.4       c
                         4       16.56*    9.88                     17.14* 10.00                               16.54*    10.25 21.63* 11.17                                                      20.49 12.24                               4.88                       .000**                              2.4       d
                         5       29.24* 15.85                        30.43 17.34                               29.71*    22.10 37.94* 21.16                                                      36.75 22.10                              4.652                       .001**                              3.2       e
                         6       44.83* 23.32                        53.42 32.57                                48.37    28.41 56.41* 31.31                                                      53.87 29.72                              2.522                          .04*                             2.4       f
                         8        20.35 15.25                        19.16 11.78                                20.17    12.43    23.17 16.00                                                    22.82 15.52                              1.462                          .213                             2.6
                         9        31.71 14.81                        32.01 16.86                                29.56    16.02    36.32 18.64                                                    33.86 18.72                                 1.5                         .201                             2.8
                        10       21.34* 11.81                       22.72* 12.63                                24.81    16.86 28.60* 17.04                                                      26.38 15.33                              3.629                       .006**                              3.6       g
                        11       16.66*    9.57                      18.81 12.18                                16.15     9.36    17.90 10.34                                                   20.82* 11.09                              2.977                        .019*                              3.4       h
                        12        23.72 15.44                        27.93 17.60                                25.20    15.59    26.87 16.60                                                    30.03 19.07                              2.011                           .09                             3.9
10 20 30 40 50 60 70

<a id="p008-b003"></a>

<!-- p008-b003 -->
10 20 30 40 50 60 70

<a id="p008-b004"></a>

<!-- p008-b004 -->
10 20 30 40 50 60 70

<a id="p008-b005"></a>

<!-- p008-b005 -->
10 20 30 40 50 60 70

<a id="p008-b006"></a>

<!-- p008-b006 -->
10 20 30 40 50 60 70

<a id="p008-b007"></a>

<!-- p008-b007 -->
10 20 30 40 50 60 70

<a id="p008-b008"></a>

<!-- p008-b008 -->
10 20 30 40 50 60 70

<a id="p008-b009"></a>

<!-- p008-b009 -->
10 20 30 40 50 60 70
                 Con 10 20 30 40                            Con 10 20 30 40                    Con 10 20 30 40                          Con 10 20 30 40                    Con 10 20 30 40                           Con 10 20 30 40                       Con 10 20 30 40                          Con 10 20 30 40
                       (a) Highest Point          (b) Highest in Region                              (c) Locate 275m            (d) Compare Heights                              (e) Rank Heights                          (f) Steepest                          (g) Avg. Height                    (h) Avg. Compare

<a id="p008-b010"></a>

<!-- p008-b010 -->
Fig. 13: Mean Time (s). Error bars (95% CI)

<a id="p008-b011"></a>

<!-- p008-b011 -->
faster than some of the binning techniques for many tasks. This finding
                                                                                                                                                                          is not consistent with work that suggests that binning data facilitates
                                                                                                                                                                          task completion speed [16, 51, 10, 9].
                                                                                                                                                                             While significant differences in task confidence were observed,
                                                                                                                                                                          confidence ratings did not consistently vary across binning conditions.

<a id="p008-b012"></a>

<!-- p008-b012 -->
4          D ISCUSSION AND F UTURE W ORK
                                                                                                                                                                          While the expressiveness principle implies that encoding continuous
                                   (a) Continuous                                                                (b) 40m                                                  data continuously is advantageous, some domains have strong conven-
                                                                                                                                                                          tions that advocate for a discretized encoding of continuous data. The
     Fig. 14: An example of the highest portions of the continuous and 40m                                                                                                existing literature lacks systematic evaluation of the effects of binning
     encodings.                                                                                                                                                           2D scalar fields on human performance. Our goal in this work was to
                                                                                                                                                                          directly compare performance using several different binning intervals
                                                                    B                                                                         B                           and a continuous encoding, across a range of tasks for 2D scalar fields.
                                                                                                                                                                          Consistent with our initial hypothesis, we found that accuracy in per-
                             A                                                                         A                                                                  formance was superior using binning in some tasks. Although in other
                                                                                                                                                                          tasks we did not show differences between binning and continuous
                                                                                                                                                                          representations, there were no tasks that showed a clear advantage for
                                                                                                                                                                          continuous encoding. This result stands in contrast to one of the domi-
                                                                                                                                                                          nant principles in visualization and is a finding that should be pursued
                                   (a) Continuous                                                                (b) 40 m                                                 further in both controlled laboratory studies and real-world contexts.
                                                                                                                                                                             Our findings on task completion time are also notable. In contrast
     Fig. 15: An example of portions of the continuous and 40m encodings                                                                                                  to assertions in cartography, the current study reveals that a binned
     for the Average Height Comparison Task.                                                                                                                              encoding does not facilitate faster task completion times, compared
                                                                                                                                                                          to a continuous encoding. Rather, we found that performance on the
     on a choropleth map legend with many bins (over 12) is difficult. In-                                                                                                continuous encoding condition was the fastest, across a majority of
     discernibility of specific values on the continuous legend may have                                                                                                  the tasks, even when accuracy was worse. One possible explanation
     contributed to the inefficacy of this encoding.                                                                                                                      for this speed-accuracy trade-off is that tasks which require more ef-
        For the Browse tasks (Sections 3.3.7–3.3.8), task difficulty likely                                                                                               fort can activate a slower and more deliberative cognitive process [19].
     led to large errors when participants were asked to report the average                                                                                               Judgments made using fast cognitive processes are more error prone
     elevation of a region. However, participants were reasonably effective                                                                                               and subject to cognitive biases than judgments made using slower
     at comparing the average height of two regions and those with the 40m                                                                                                more contemplative cognitive processes [21]. The continuous encod-
     binning were the least effective at this comparison. This may have                                                                                                   ing may have produced quick responses that did not allow for careful
     been due to the 40m binning’s lack of relevant encodings for making                                                                                                  inspection of the visualization or thoughtful consideration of the task.
     average height comparisons (See Figure 15 for comparisons).                                                                                                             Additionally, one of the aims of this study was to create a method-
        The response time data was the most consistent across tasks. Over-                                                                                                ology for testing increasingly complex and ecologically valid tasks,
     all, these results show that the continuous encoding was significantly                                                                                               which are traditionally difficult to assess and as such rarely utilized.
                Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 13,2025 at 09:29:48 UTC from IEEE Xplore. Restrictions apply.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
PADILLA ET AL.: EVALUATING THE IMPACT OF BINNING 2D SCALAR FIELDS439

<a id="p009-b002"></a>

<!-- p009-b002 -->
Table 2: Task confidence, with ** = p < .000, * = p < .05
               Task     Continuous        10m               20m                30m              40m                 F          p    figure
                            µ       σ         µ       σ         µ       σ          µ      σ        µ        σ
                  1      5.68    1.35      5.95    1.28      5.76    1.31       5.87   1.21     6.12     1.36    1.66         .15
                  2      5.01    1.34      4.87    1.45      4.92    1.49       5.17   1.27     4.90     1.52    0.73         .57
                  3      4.12    1.55     3.78*    1.42      4.06    1.49      4.62*   1.32    4.59*     1.63    5.91    .000**          a
                  4     4.99*    1.45     4.89*    1.43     4.85*    1.49       4.57   1.67    3.98*     1.63    7.05    .000**          b
                  5      4.52    1.49      4.42    1.47      4.25    1.58       4.50   1.47     4.04     1.68    1.72         .14
                  6      4.36    1.73      4.49    1.74      4.67    1.52       5.01   1.48     4.55     1.71    2.22         .06
                  7      3.89    1.57      3.93    1.49      4.00    1.47       4.11   1.56     4.02     1.72    0.29         .88
                  8     4.85*    1.47      5.26    1.58     5.39*    1.57      5.53*   1.41     5.33     1.67    2.77       .02*         c
                  9      4.61    1.46      4.53    1.52      4.66    1.53       4.86   1.34     4.97     1.58     1.5         .20
                 10      3.83    1.37      3.59    1.27      3.61    1.43       3.98   1.28     3.93     1.44    1.75         .13
                 11      4.66    1.54      4.78    1.26      4.67    1.49      5.17*   1.39    4.40*     1.63    3.59    .006**          d
                 12      3.85    1.47      3.81    1.68      3.67    1.56       4.11   1.57     4.23     1.71    2.00        .09

<a id="p009-b003"></a>

<!-- p009-b003 -->
We chose to increase task complexity by having participants make               work exist in this space.
 judgments concerning features and summary statistics in addition to               The primary implications of this work are for topographical analy-
 points and values, increasing the number of comparisons, and re-               sis, geography, cartography and meteorology, suggesting that design-
 quiring multistep judgments. Multistep visual comparison tasks are             ers should consider selectively employing the expressiveness principle
 highly dependent on spatial working memory (SWM), and differences              to promote accuracy or speed. If accuracy is the main objective of the
 in SWM may account for the inconsistent performance observed. In               visualization, then binning may be more effective. If speed is of inter-
 particular, we suspect that ranking tasks may not be appropriate for           est, then following the expressiveness principle using continuous en-
 spatial decision making as this type of task may be confounded by lim-         coding may be desirable. In many cases, designers will want to strike
 its on participants’ SWM. Further work is needed to disambiguate the           a balance between speed and accuracy, requiring a fine tuning of the
 demands on SWM from the increased task complexity. Another issue               binning intervals based on task demands and data. Further, the tasks
 is found in the multistep judgment tasks (i.e., Steepest at 355m task),        developed in this study should be applicable to any domain using 2D
 where it is unclear how to disambiguate participants’ strategies from          scalar fields. While not tested here, designers should also consider the
 the influence of the binning technique. The inconsistent findings of the       influence of both legend labels [27] and even coarser bins (e.g., three
 Steepest at 355m task may have resulted from participants prioritizing         or five) that are commonly used with choropleth maps [16]. Previously
 clicking on the correct elevation or on a steepest location rather than a      studied labeling effects may interact with very coarse binnings, adding
 combination of the two. Each strategy would produce vastly different           to cognitive load. The possible influences of varying spatial frequen-
 responses, which may have influenced the uninterpretable variability           cies and topological characteristics in the underlying data also warrant
 in the current findings.                                                       future study.
     As discussed briefly in Sections 3.3.4 and 3.3.6, interpretations of          A secondary implication for this work involves the use of rainbow
 the questions that involved steepness were difficult. We believe that          colormaps. Rainbow colormaps have been marked as a poor choice
 this is, in part, because the image gradient we used as the basis for          for encoding data in part because they are not perceptually continu-
 steepness had high spatial frequency information. Gradient approxi-            ous, resulting in perceptual bands that hide details [4, 39, 30] (cf.[6]).
 mations are generally known to be sensitive to high frequency infor-           Even though large portions of the visualization community reject this
 mation such as noise [12, 14]. While there are a variety of gradient           technique, rainbow colormaps are still widely used, even as defaults.
 estimation methods we could have pursued, we chose to use the Sobel            Our results call into question the extent to which the natural discretiza-
 operator, which includes a smoothing component [12, 14]. Smoothing             tion produced by rainbow colormaps should truly be considered a defi-
 obfuscates more of the data and the influence of smoothing on deci-            ciency. Possible future directions for work include comparing contin-
 sion making requires further study. Given that our results also left           uous to binned rainbow colormaps to understand if the appeal of this
 open the possibility of other factors influencing the results, such as the     approach comes from a general preference for discretization.
 conflation of steepness with height, it was not clear what amount of              In sum, contrary to the expressiveness principle, no cases were
 smoothing would have been appropriate. While our findings are spe-             found in which a continuous encoding of 2D scalar field data was
 cific to 2D scalar fields embedded in R2 , we suspect that our results         advantageous for task accuracy, and for some tasks, specific binned
 are also relevant for 2D scalar fields embedded in R3 , such as those in       encodings facilitated accuracy. Furthermore, we found support for
 bioengineering [25]. This study provides motivation for future work            the counterintuitive finding that decisions with binned encoding were
 aimed at assessing the influence of individual components of spatial           slower than those made with continuous encoding. Given this apparent
 data, such as spatial frequency, and determining appropriate smooth-           trade-off between accuracy and speed of performance, it is important
 ing for specific conditions.                                                   to consider specific task-goals when deciding whether to adhere to the
     As we were interested in performance across a spectrum of tasks,           expressiveness principle. In addition, we developed and tested several
 we did not attempt to compare an optimized binning technique. There            different tasks that ranged in complexity and relevance to real-world
 are a variety of data-informed optimization strategies for binning             problems and offer insights on types of tasks and data characteristics to
 within the visualization literature [46, 40, 11]. Additionally, standard-      avoid. Our approach and findings contribute to a greater understanding
 ized binning approaches for choropleth maps from cartography [42]              of the use of binning for 2D scalar data and lead to many possibilities
 might also be generalizable. However, it is not clear how these various        for future research.
 optimizations interact with tasks. Given that existing research suggests
 that binning strategies that are highly effective for a particular task are    ACKNOWLEDGMENTS
 likely inadequate for a larger set of tasks [28], optimizing binning for
                                                                                This work was funded by NSF grant IIS-1212806.
 a variety of tasks remains an open problem. We believe a particularly
 fruitful area of inquiry would be investigating the effects of interactive
 interfaces for helping a user customize bins according to evolving task        R EFERENCES
 demands. In such a system, to what extent does the act of binning,              [1] N. Andrienko and G. Andrienko. Exploratory analysis of spatial and
 itself, become a vehicle for exploration of the data? What sorts of de-             temporal data: a systematic approach. Springer Science & Business
 fault settings are desirable? A number of potential avenues for future              Media, 2006.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 13,2025 at 09:29:48 UTC from IEEE Xplore. Restrictions apply.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
440                                              IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 23, NO. 1, JANUARY 2017

<a id="p010-b002"></a>

<!-- p010-b002 -->
[2] L. D. Bergman, B. E. Rogowitz, and L. A. Treinish. A rule-based tool for           personalized perception models. Computer Graphics Forum, 34(3):211–
     assisting colormap selection. In Visualization, 1995. Visualization ’95.           220, 2015.
     Proceedings., IEEE Conference on, pages 118–125, 444, Oct 1995.               [30] K. Moreland. Advances in Visual Computing: 5th International Sympo-
 [3] B. Bied Sperling and T. S. Tullis. Are you a better mouser or trackballer?:        sium, ISVC 2009, Las Vegas, NV, USA, November 30-December 2, 2009.
     A comparison of cursor-positioning performance. ACM SIGCHI Bulletin,               Proceedings, Part II, chapter Diverging Color Maps for Scientific Visu-
     19(3):77–81, 1988.                                                                 alization, pages 92–103. Springer Berlin Heidelberg, Berlin, Heidelberg,
 [4] D. Borland and R. M. Taylor II. Rainbow color map (still) considered               2009.
     harmful. IEEE computer graphics and applications, (2):14–17, 2007.            [31] N. Moroney, M. D. Fairchild, R. W. G. Hunt, C. Li, M. R. Luo, and
 [5] M. Brehmer and T. Munzner. A multi-level typology of abstract visual-              T. Newman. The ciecam02 color appearance model. In IS&T/SID 10th
     ization tasks. Visualization and Computer Graphics, IEEE Transactions              Color Imaging Conference, pages 23–27, 2002.
     on, 19(12):2376–2385, 2013.                                                   [32] J.-C. Muller. Perception of continuously shaded maps. Annals of the
 [6] C. A. Brewer, A. M. MacEachren, L. W. Pickle, and D. Herrmann. Map-                Association of American Geographers, 69(2):240–249, 1979.
     ping mortality: Evaluating color schemes for choropleth maps. Annals of       [33] J.-C. Muller. Visual comparison of continuously shaded maps. Carto-
     the Association of American Geographers, 87(3):411–438, 1997.                      graphica: The International Journal for Geographic Information and
 [7] C. A. Brewer and E. Press. Designing better maps: A guide for GIS users.           Geovisualization, 17(1):40–52, 1980.
     Taylor & Francis, 2006.                                                       [34] J.-C. Muller and J. L. Honsaker. Choropleth map production by facsimile.
 [8] E. Danovaro, L. De Floriani, L. Papaleo, and M. Vitali. A multi-resolution         The Cartographic Journal, 15(1):14–19, 1978.
     representation for terrain morphology. In International Conference on         [35] T. Munzner. Visualization Analysis and Design. CRC Press, 2014.
     Geographic Information Science, pages 33–46. Springer, 2006.                  [36] P. S. Quinan and M. Meyer. Visually comparing weather features in
 [9] M. W. Dobson. Choropleth maps without class intervals?: a comment.                 forecasts. IEEE Transactions on Visualization and Computer Graphics,
     Geographical Analysis, 5(4):358–360, 1973.                                         22(1):389–398, Jan 2016.
[10] M. W. Dobson. Perception of continuously shaded maps. Annals of the           [37] P. S. Quinan and M. Meyer. Visually comparing weather features in
     Association of American Geographers, 70(1):106–107, 1980.                          forecasts. Visualization and Computer Graphics, IEEE Transactions on,
[11] M. Eisemann, G. Albuquerque, and M. Magnor. Data driven color map-                 22(1):389–398, 2016.
     ping. In Proc. EuroVA: International Workshop on Visual Analytics 2011,       [38] P. L. Rheingans. Task-based color scale design. Proc. SPIE, 3905:35–43,
     pages 1–4, Bergen, Norway, May 2011.                                               2000.
[12] K. Engel, M. Hadwiger, J. M. Kniss, C. Rezk-Salama, and D. Weiskopf.          [39] B. E. Rogowitz and L. A. Treinish. Data visualization: the end of the
     Real-time Volume Graphics. A. K. Peters, Ltd., Natick, MA, USA, 2006.              rainbow. IEEE Spectrum, 35(12):52–59, Dec 1998.
[13] I. Fujishiro, T. Azuma, and Y. Takeshima. Automating transfer function        [40] P. Schulze-Wollgast, C. Tominski, and H. Schumann. Enhancing visual
     design for comprehensible volume rendering based on 3d field topology              exploration by appropriate color coding. In Proceedings of the Inter-
     analysis. In Visualization ’99. Proceedings, pages 467–563, Oct 1999.              national Conference in Central Europe on Graphics, Visualization and
[14] R. C. Gonzalez and R. E. Woods. Digital Image Processing (3rd Edition).            Computer Vision (WSCG’05), pages 203–10, Bergen, Norway, 2005.
     Prentice-Hall, Inc., Upper Saddle River, NJ, USA, 2006.                       [41] Y. Shinagawa and T. L. Kunii. Constructing a reeb graph automati-
[15] E. Guilbert. Multi-level representation of terrain features on a contour           cally from cross sections. IEEE Computer Graphics and Applications,
     map. Geoinformatica, 17(2):301–324, 2013.                                          11(6):44–51, 1991.
[16] M. Harrower and C. A. Brewer. ColorBrewer. org: an online tool for            [42] T.-K. Shyy, I. Azeezullah, I. Azeezullah, R. J. Stimson, and A. T. Mur-
     selecting colour schemes for maps. The Cartographic Journal, 40(1):27–             ray. 14 classification for visualizing data: integrating multiple attributes
     37, 2003.                                                                          and space for choropleth display. Handbook of Research Methods and
[17] M. Harrower and C. A. Brewer. Colorbrewer. org: an online tool for                 Applications in Spatially Integrated Social Science, page 265, 2014.
     selecting colour schemes for maps. The Cartographic Journal, 40(1):27–        [43] T. A. Slocum. Thematic cartography and geovisualization. Prentice hall,
     37, 2003.                                                                          2009.
[18] C. G. Healey. Choosing effective colours for data visualization. In Pro-      [44] M. Stone. Field Guide to Digital Color. A K Peters / CRC Press, 7 2003.
     ceedings of the 7th Conference on Visualization ’96, VIS ’96, pages 263–      [45] D. A. Szafir, M. Stone, and M. Gleicher. Adapting color difference for
     ff., Los Alamitos, CA, USA, 1996. IEEE Computer Society Press.                     design. In Color and Imaging Conference, pages 228–233. Society for
[19] J. Hullman, E. Adar, and P. Shah. Benefitting infovis with visual dif-             Imaging Science and Technology, 2014.
     ficulties. Visualization and Computer Graphics, IEEE Transactions on,         [46] D. Thompson, J. Bennett, C. Seshadhri, and A. Pinar. A provably-robust
     17(12):2213–2222, 2011.                                                            sampling method for generating colormaps of large data. In Large-
[20] E. Imhof. Cartographic relief presentation. ESRI, Inc., 2007.                      Scale Data Analysis and Visualization (LDAV), 2013 IEEE Symposium
[21] D. Kahneman. Thinking, fast and slow. Macmillan, 2011.                             on, pages 77–84, Oct 2013.
[22] G. Kindlmann and J. W. Durkin. Semi-automatic generation of transfer          [47] W. R. Tobler. Choropleth maps without class intervals? Geographical
     functions for direct volume rendering. In Proceedings of the 1998 IEEE             analysis, 5(3):262–265, 1973.
     Symposium on Volume Visualization, VVS ’98, pages 79–86, New York,            [48] C. Tominski, G. Fuchs, and H. Schumann. Task-driven color coding. In
     NY, USA, 1998. ACM.                                                                Information Visualisation, 2008. IV ’08. 12th International Conference,
[23] S. Liu, D. Maljovec, B. Wang, P.-T. Bremer, and V. Pascucci. Visualizing           pages 373–380, July 2008.
     high-dimensional data: Advances in the past decade. In Proc. Eurograph-       [49] L. Wang, X. Chen, S. Li, and X. Cai. Neural Information Processing:
     ics Conf. Visualization, pages 20151115–127, 2015.                                 13th International Conference, ICONIP 2006, Hong Kong, China, Oc-
[24] J. Mackinlay. Automating the design of graphical presentations of rela-            tober 3-6, 2006. Proceedings, Part II, chapter General Adaptive Trans-
     tional information. Acm Transactions On Graphics (Tog), 5(2):110–141,              fer Functions Design for Volume Rendering by Using Neural Networks,
     1986.                                                                              pages 661–670. Springer Berlin Heidelberg, Berlin, Heidelberg, 2006.
[25] R. MacLeod, C. Johnson, and M. Matheson. Visualizing bioelectric              [50] C. Ware. Color sequences for univariate maps: theory, experiments and
     fields. 13(4):10–12, 1993.                                                         principles. IEEE Computer Graphics and Applications, 8(5):41–49, Sept
[26] M. Mahy, L. Van Eycken, and A. Oosterlinck. Evaluation of uniform                  1988.
     color spaces developed after the adoption of cielab and cieluv. Color         [51] D. Watson. Contouring: a guide to the analysis and display of spatial
     Research & Application Application, 19(2):105–121, 1994.                           data. Elsevier, 2013.
[27] J. Matejka, M. Glueck, T. Grossman, and G. Fitzmaurice. The effect of         [52] M. Wijffelaars, R. Vliegen, J. J. Van Wijk, and E.-J. Van Der Linden.
     visual appearance on the performance of continuous sliders and visual              Generating color palettes using intuitive parameters. Computer Graphics
     analogue scales. In Proceedings of the 2016 CHI Conference on Human                Forum, 27(3):743–750, 2008.
     Factors in Computing Systems, pages 5421–5432. ACM, 2016.                     [53] A. Zeileis, K. Hornik, and P. Murrell. Escaping rgbland: Selecting col-
[28] S. Mittelstädt, D. Jäckle, F. Stoffel, and D. A. Keim. ColorCAT: Guided          ors for statistical graphics. Computational Statistics & Data Analysis,
     Design of Colormaps for Combined Analysis Tasks. In E. Bertini,                    53(9):3259 – 3270, 2009.
     J. Kennedy, and E. Puppo, editors, Eurographics Conference on Visu-           [54] L. Zhou and C. Hansen. A survey of colormaps in visualization.
     alization (EuroVis) - Short Papers. The Eurographics Association, 2015.            IEEE Transactions on Visualization and Computer Graphics, PP(99):1–
[29] S. Mittelstädt and D. A. Keim. Efficient contrast effect compensation with        1, 2015.

<a id="p010-b003"></a>

<!-- p010-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on November 13,2025 at 09:29:48 UTC from IEEE Xplore. Restrictions apply.
