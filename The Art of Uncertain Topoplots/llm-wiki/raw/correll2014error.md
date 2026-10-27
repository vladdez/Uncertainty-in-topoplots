---
id: "correll2014error"
title: "Error Bars Considered Harmful: Exploring Alternate Encodings for Mean and Error"
source_file: "The Art of Uncertain Topoplots/papers/correll2014error.pdf"
source_sha256: "348e8a39f340384cfc571d8910fb7b464eaa226b736bafe1322ca4ecbb484e0d"
extraction_format: 1
---

# Error Bars Considered Harmful: Exploring Alternate Encodings for Mean and Error — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
2142                                                            IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,                                    VOL. 20,        NO. 12,    DECEMBER 2014

<a id="p001-b002"></a>

<!-- p001-b002 -->
Error Bars Considered Harmful:
                                Exploring Alternate Encodings for Mean and Error
                                       Michael Correll Student Member, IEEE, and Michael Gleicher Member, IEEE
                                                                                                                                                     
          

<a id="p001-b003"></a>

<!-- p001-b003 -->
 

<a id="p001-b004"></a>

<!-- p001-b004 -->
 

<a id="p001-b005"></a>

<!-- p001-b005 -->
 
                                                                                                                                                                

<a id="p001-b006"></a>

<!-- p001-b006 -->
                                                                                                                                         

<a id="p001-b007"></a>

<!-- p001-b007 -->
                                                                                                                                         

<a id="p001-b008"></a>

<!-- p001-b008 -->
                                                                                                                                         
         

<a id="p001-b009"></a>

<!-- p001-b009 -->


<a id="p001-b010"></a>

<!-- p001-b010 -->


<a id="p001-b011"></a>

<!-- p001-b011 -->

                                                                                                                                                                    
                                                                                                                                                      
                            

<a id="p001-b012"></a>

<!-- p001-b012 -->


<a id="p001-b013"></a>

<!-- p001-b013 -->
!" #                                  

<a id="p001-b014"></a>

<!-- p001-b014 -->


<a id="p001-b015"></a>

<!-- p001-b015 -->
!" #                          

<a id="p001-b016"></a>

<!-- p001-b016 -->


<a id="p001-b017"></a>

<!-- p001-b017 -->
!" #                          

<a id="p001-b018"></a>

<!-- p001-b018 -->


<a id="p001-b019"></a>

<!-- p001-b019 -->
!" #

<a id="p001-b020"></a>

<!-- p001-b020 -->
(a) Bar chart with error bars: the                   (b) Modiﬁed box plot: The whiskers are       (c) Gradient plot: the transparency          (d) Violin plot: the width of the col-
       height of the bars encodes the sample                the 95% t-conﬁdence interval, the box is     of the colored region corresponds to         ored region corresponds to the probabil-
       mean, and the whiskers encode a 95% t-               a 50% t-conﬁdence interval.                  the cumulative density function of a t-      ity density function of a t-distribution.
       conﬁdence interval.                                                                               distribution.

<a id="p001-b021"></a>

<!-- p001-b021 -->
Fig. 1. Four encodings for mean and error evaluated in this work. Each prioritizes a different aspect of mean and
        uncertainty, and results in different patterns of judgment and comprehension for tasks requiring statistical inferences.

<a id="p001-b022"></a>

<!-- p001-b022 -->
Abstract— When making an inference or comparison with uncertain, noisy, or incomplete data, measurement error and conﬁdence
        intervals can be as important for judgment as the actual mean values of different groups. These often misunderstood statistical
        quantities are frequently represented by bar charts with error bars. This paper investigates drawbacks with this standard encoding,
        and considers a set of alternatives designed to more effectively communicate the implications of mean and error data to a general
        audience, drawing from lessons learned from the use of visual statistics in the information visualization community. We present
        a series of crowd-sourced experiments that conﬁrm that the encoding of mean and error signiﬁcantly changes how viewers make
        decisions about uncertain data. Careful consideration of design tradeoffs in the visual presentation of data results in human reasoning
        that is more consistently aligned with statistical inferences. We suggest the use of gradient plots (which use transparency to encode
        uncertainty) and violin plots (which use width) as better alternatives for inferential tasks than bar charts with error bars.
        Index Terms—Visual statistics, information visualization, crowd-sourcing, empirical evaluation

<a id="p001-b023"></a>

<!-- p001-b023 -->
1      I NTRODUCTION
For judgments and comparisons in real world settings, the uncertainty                                        In this paper we investigate how differences in the presentation of
associated with the data can be as important as the difference in data                                    mean and error data result in differing interpretations of viewer conﬁ-
values. Big differences in data values may not be signiﬁcant or in-                                       dence and accuracy for judgment tasks. We investigate the drawbacks
teresting if there is too much error: for instance too much noise, un-                                    of the standard encoding for mean and error, bar charts with error bars.
certainty, or spread. Techniques from inferential statistics (including                                   We investigate standard practices for depicting mean and errors. We
comparison of interval estimates, null hypothesis signiﬁcance testing,                                    present and evaluate alternative encoding schemes for this data (see
and Bayesian inference) address this issue, but can be complicated,                                       Fig. 1). Lastly, we present the results of a crowd-sourced series of
counter-intuitive, or equivocal. Careful design could produce visu-                                       experiments that show that bar charts with error bars, the standard
alizations which convey the general notion of varying levels of error                                     approach for visualizing mean and error, do not accurately or con-
even when the viewer does not have a deep statistical background.                                         sistently convey uncertainty, but that changes in design can promote
   The most common encoding for sample means with associated er-                                          viewer judgments and viewer certainty that is more in line with statis-
ror is a bar chart with error bars. Despite their ubiquity, many ﬁelds                                    tical expectations, even among a general audience.
(including perceptual psychology, risk analysis, semiotics, and statis-                                      Contributions: We present a series of issues with how the standard
tics) have suggested severe shortcomings with this encoding, which                                        encoding for mean and error, bar charts with error bars, are interpreted
could result in decisions which are not well-aligned with statistical ex-                                 by the general audience. We adapt established encodings for distribu-
pectations. While alternate encodings for mean and error have been                                        tional data — violin plots[13] and gradient plots[17] — for tasks in
proposed, to our knowledge none have been rigorously evaluated with                                       inferential statistics. We validate the performance of these encodings
respect to these shortcomings.                                                                            with a series of crowd-sourced experiments.

<a id="p001-b024"></a>

<!-- p001-b024 -->
2 BACKGROUND
 • Michael Correll is with the Department of Computer Sciences, University                                Issues with the presentation of mean and error, especially with bar
   of Wisconsin-Madison. Email: mcorrell@cs.wisc.edu                                                      charts with error bars, have been studied by multiple ﬁelds, includ-
 • Michael Gleicher is with the Department of Computer Sciences,                                          ing psychology, statistics, and visualization. We present a summary of
   University of Wisconsin-Madison. Email: gleicher@cs.wisc.edu                                           these ﬁndings. We provide evidence that, while visualizations of mean
 Manuscript received 31 Mar. 2014; accepted 1 Aug. 2014. D ate of                                         and error are valuable, care must be taken in how they are designed and
publication 11 Aug. 2014; date of current version 9 Nov. 2014.                                            presented, especially to a general audience. We show with an analysis
For information on obtaining reprints of this article, please send                                        of practices in information visualization and elsewhere that audiences
e-mail to: tvcg@computer.org.                                                                             with a wide range of expected statistical backgrounds are nevertheless
Digital Object Identiﬁer 10.1109/TVCG.2014.2346298                                                        presented with mean and error data in similar ways. Despite the draw-

<a id="p001-b025"></a>

<!-- p001-b025 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:33:26 UTC from IEEE Xplore. Restrictions apply.
                                                  1077-2626 © 2014 IEEE. Personal use is permitted, but republication/redistribution requires IEEE permission.
                                                       See http://www.ieee.org/publications_standards/publications/rights/index.html for more information.

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
CORRELL AND GLEICHER: ERROR BARS CONSIDERED HARMFUL: EXPLORING ALTERNATE ENCODINGS FOR MEAN AND ERROR                                                2143

<a id="p002-b002"></a>

<!-- p002-b002 -->
backs we present, we conﬁrm that bar charts with error bars are the           the lead is greater than twice the margin of error (in practice this is
modal encoding for presentation of this sort of data in the information       an α value of less than .01). The existence of these guidelines (and
visualization community.                                                      the similar reporting and summarization of model and measurement
                                                                              uncertainty in popular, general audience websites such as http://
2.1   Visualization of Mean and Error                                         fivethirtyeight.com and http://www.pollster.com),
Mean and error, as in conﬁdence intervals or error bars, has been pro-        indicates that the display and interpretation of inferential statistics is a
posed as a solution for some of the perceived deﬁciencies in traditional      problem that extends beyond the academic community.
signiﬁcance testing [25], both for pedagogy and in analysis [27]. Un-
fortunately, while inferential statistics might offer techniques for ap-      2.3   Mean and Error in InfoVis
proaching complex problems, human reasoning (especially in matters            The information visualization community contains members with het-
of statistics and probability) operates via a series of heuristics that may   erogeneous backgrounds who have different internal statistical prac-
or may not arrive at the “right” answer. Tversky and Kahneman [32]            tices but nonetheless must report inferential statistics in a mutually
offer examples of systematic errors these heuristics generate for de-         intelligible way. We believed that the visualization of mean and error
cision problems based on uncertain data. An example as applied to             within the community would offer both an example of statistical com-
the information visualization community is the “fallacy of availabil-         munication meant for general audiences, as well as provide a diverse
ity” — we remember dramatic or remarkable events with greater ease            set of potential visual designs for communicating statistics. To that end
than ordinary ones, skewing our perception of base rates. For exam-           we analyzed the visual display of sample mean and error in the past
ple, a technique which provides good results in most cases but fails          proceedings of accepted IEEE VisWeek papers in the InfoVis track,
catastrophically for a particular case might be seen as more unreliable       2010-2013. In the 163 papers available, 46 had some visual display of
than a technique that has more frequent, but less severe, failures. In-       sample means (usually in the context of evaluating the performance of
bar [16] provides evidence that how we visually encode uncertainty            a new visualization tool). Of these 46 papers, 36 (approx. 78%) used
and probability can work to “de-bias” data which would ordinarily fall        error bars to encode some notion of error or spread. The modal en-
prey to an otherwise inaccurate set of heuristics (by comparison to an        coding was a bar chart with error bars, which occurred in 26 (approx.
outcome maximizing classical statistical view) . Designing visualiza-         56%) of the papers. Boxplots were also common (7 papers, approx.
tions to support decision-making and perform de-biasing is not trivial,       15%), as were dot plots with error bars (5 papers, approx. 10%).
and how the task is laid out in text can conﬂict with attempts to de-            There was a heterogeneous use of error bars across papers. In many
bias [23]. Even so, the visual presentation of uncertainty can promote        cases the error bars were unlabeled (22 papers, approx. 48%). This is
better understanding than textual presentation [20].                          despite the fact that error bars can be used to represent many different
    Error bars, the common way of encoding uncertainty or error, have         quantities. In the papers we found, error bars were labeled as range,
a number of additional biases, some in concert with other common en-          95% conﬁdence intervals, 80% conﬁdence intervals, standard error,
codings types. One is ambiguity — an error bar can encode any num-            standard deviation, or 1.5× the interquartile range (IQR). Should one
ber of values, from range to standard error. In many cases the error bars     wish to use these error estimates to estimate statistical signiﬁcance (a
are not explicitly labeled, or are labeled in text that is visually distant   practice which is controversial [28]), each of these interpretations of
from the chart in question. This ambiguity, combined with widespread          error would necessitate a different heuristic for “inference by eye” —
misconceptions about inferential statistics, means that even experts in       that is, a different way to determine the relative signiﬁcance of dif-
ﬁelds that frequently use error bars have difﬁculty perceiving how they       ferent effects [9]. Given this ambiguity, a common practice was to
are connected to statistical signiﬁcance, estimating p values that are in-    denote statistically signiﬁcant differences with an asterisk; however as
correct by orders of magnitude [2]. For error bars with bar charts, the       the number of sample means increases, the number of glyphs required
most common combination of mean and error, since bars are large,              to explicitly encode all statistical signiﬁcant pooled sample t-tests in-
graphically salient objects that present the visual metaphor of “con-         creases exponentially. Even if the number of comparisons is small, the
taining” values, values visually within the bar are perceived as likelier     link between graphical overlap of conﬁdence intervals and the results
data points than values outside of the bar [24]. Lastly, by presenting        of signiﬁcance testing decays, and the probability of Type I errors in-
error bars as discrete visual objects, designers emphasize an “all or         creases (cf. techniques such as the Benferroni correction that attempts
nothing” approach to interpretation —values are either within the bar         to correct for the increased likelihood of Type I errors as the number
or they are not. By only showing information about one kind of sta-           of comparisons increases).
tistical inference, viewers are unable to draw their own conclusions
for their own standards of proof, exacerbating existing problems with         3 A LTERNATIVES TO BAR C HARTS WITH E RROR BARS
null-hypothesis signiﬁcance testing [6, 18, 28].                              There are many potential designs for mean and uncertainty. Poten-
                                                                              tially any visual channel can be combined with another encoding to
2.2   Mean and Error in General Practice                                      unite a “data map” and an “uncertainty map” [21]. We chose two po-
Since mean and error are critical for decision-making based on un-            tential encodings for this data based on current practices for displaying
certain data, different communities have codiﬁed different approaches         probability distributions, tweaked for the speciﬁc use-case of inferen-
to communicating these values, while highlighting the importance of           tial statistics: the gradient plot (which uses α transparency to encode
communicating both mean and error to audiences. This is true of both          uncertainty), and violin plots (which use width). Neither encoding is
the psychology community, where the audience is assumed to have               particularly common in the information visualization community —
at least a basic understanding of statistical inference, and also in the      only a version of the violin plot, in the form of a vertically-oriented
journalism and mass communication community, where statistical ex-            histogram, was found in our search of InfoVis conference papers. We
pertise cannot be assumed.                                                    believe this rarity is beneﬁcial for this problem setting, since exist-
   The American Psychological Association recommends that point               ing semantic interpretations might interfere with our intended use and
estimates “should also, where possible, include conﬁdence intervals”          meaning of these encodings for this problem (which is similar to, but
or other error estimates. Furthermore, they should allow the reader           sufﬁciently different from the standard visualization problem of visu-
to “conﬁrm the basic reported analyses” and also to “construct some           alizing distributions). That is, we do not want viewers to confound
effect-size estimates and conﬁdence intervals beyond those supplied”          visualizations of the distribution of error and the distribution of data.
[1]. More recently, the APA has pushed for the greater use and report-           Processing code for generating all of the plots seen in the paper is
ing of intervals, as opposed to signiﬁcance testing [34].                     available in the supplementary materials.
   The Associated Press also recommends reporting the margin of er-
ror in polling data (in practice, the 95% t-conﬁdence interval) [11].         3.1 Design Goals
Since p-values are not common concepts for a general audience, they           The recommendation of style manuals designed for the presentation of
recommend stating that one candidate is leading if and only if the            results to diverse audiences, combined with the heterogeneity of real

<a id="p002-b003"></a>

<!-- p002-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:33:26 UTC from IEEE Xplore. Restrictions apply.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
2144                                          IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,            VOL. 20,   NO. 12,   DECEMBER 2014

<a id="p003-b002"></a>

<!-- p003-b002 -->
interval are fully opaque. Outside of the margin of error, the α value
                                                                             decays with respect to the cumulative probability for the absolute value
                                                                             of the y coordinate based on an underlying t-distribution. That is, the
                                                                             α value of a particular y coordinate is linearly related to the size of the
                                                                             t-conﬁdence interval needed to reach that value — a 95% conﬁdence
                                                                             interval is fully opaque, and the (ﬁctional) 100% conﬁdence interval
                                                                             would be fully transparent. In practice, since the inverse cumulative
                                                                             probability function decays so rapidly, there is a block of solid color
                                                                             surrounded by “fuzzy” edges. Figure 2 shows a sample gradient plot in
                                                                             more detail. Viewers are not very proﬁcient at extracting precise α val-
                                
                                                                             ues, and perhaps can only distinguish only a few different “levels” of
                                                                             transparency [3]. Issues with interpreting α values are exacerbated by
Fig. 2. The alternate plots we propose for encoding mean and
                                                                             the non-standard ways in which tone and transparency are reproduced
error. From left to right gradient plots, violin plots, and modiﬁed
                                                                             between displays. Nonetheless, we believe that this imprecision is a
box plots. The colored bars on the right are standard error, a
                                                                             “beneﬁcial difﬁculty” [14] as it discourages artiﬁcially precise com-
95% t-conﬁdence interval, and a 99% conﬁdence interval, for
                                                                             parisons where there is a great deal of uncertainty associated with the
reference.
                                                                             data. In general we believe the gradient plot is superior to the standard
                                                                             bar chart with error bars for a number of reasons:

<a id="p003-b003"></a>

<!-- p003-b003 -->
world uses of mean and error data, led us to formulate a series of goals        • A visual metaphor that aligns with expected behavior: minimal
for any proposed encoding of mean and error:                                      transparency (and so uncertainty) within the 95% conﬁdence in-
                                                                                  terval, quickly decaying certainty outside of that region. This
   • The encoding should clearly present the effect size — that is,               extends to comparison: if two samples are very statistically sim-
     accuracy at visualizing error should not come at the expense of              ilar than their “fuzzy” regions will overlap.
     clear visualization of the mean.
                                                                                • Use of a continuous but imprecise visual channel provokes a
   • The encoding should promote “the right behavior” from view-                  “willingness to critique” [35] in a way that discrete but precise
     ers (such as refraining from judgment if means are dissimilar but            encodings or styles do not.
     error is very high), even if the viewers lack extensive statisti-
     cal training. Likewise, viewer conﬁdence in judgments ought to             • Visual symmetry about the mean, mitigating “within-the-bar”
     correlate with power of the relevant statistical inferences. These           bias (the tendency to see values visually contained by the bar
     effects should apply to different problem domains and framings.              chart as being likelier than values outside the bar).
   • The encoding should afford the estimation or comparison of sta-         3.3   Violin Plots
     tistical inferences that have not been explicitly supplied.
                                                                             Hintze & Nelson proposed “violin plots” for displaying distributional
   • The encoding should avoid “all or nothing” binary encodings —           data [13]. In the canonical implementation a density trace is mirrored
     the encodings should permit different standards of proof other          about the y axis, and then a box plot is displayed inside the region,
     than (for instance) an α of 0.05. This will likely require en-          forming a smooth, violin-like shape with interior glyphs. “Bean plots”
     codings which display conﬁdence continuously, rather than as            replace the interior box plot with lines representing individual obser-
     discrete levels.                                                        vations [19]. In either case the additional level of detail affords a quick
                                                                             judgment about the general shape of the distribution (cf. a unimodal
   • The encoding should mitigate known biases in the interpretation         and a bimodal distribution which might have identical box plots but
     of error bars (such as within the bar bias, and mis-estimation of       would have vastly different violin plots). Width and height are both
     error bars due to the presence of central glyphs). This will likely     positional encodings of distributional data: position as a visual chan-
     require encodings which are visually symmetric about the mean.          nel has higher precision than color for viewer estimation tasks. Ibrekk
                                                                             & Granger [15] conﬁrm this inequality for the case of violin plots of
   To fulﬁll these goals we adapted two existing encodings (usually          probability distributions speciﬁcally.
used for visualizing distributional information), violin plots and gradi-       Our version of the violin plot for inferential statistics discards the
ent plots, for use in inferential tasks. Box plots, as a standard encoding   interior glyphs and encodes the probability density function rather than
for distributional data, are discussed as a separate case. We believe that   the sample distribution. We believe that the distribution used to make
these encodings fulﬁll the design goals presented above. In addition,        inferences is more valuable for these tasks than the distribution of the
since they both adapt general techniques for the visualization of distri-    data themselves. Figure 2 shows a sample violin plot of the design
butions, they can be adapted to many different error statistics beyond       used in our study. The pdf is not intrinsically relevant to a signiﬁcance
the t-conﬁdence intervals presented here.                                    test, which tends to rely on the cumulative distribution function, or cdf.
                                                                             Initial piloting with the symmetric cdf version of violin plots (where
3.2 Gradient Plots                                                           the width of the violin encoded the likelihood that the absolute value of
Jackson [17] argues for using color to encode data such as probability       the y position is greater than or equal to the mean) were confusing for
distributions functions (pdf). In that technique, and in similar tech-       the general audience compared to the relatively straightforward pdf
niques, a sequential color ramp is used to encode likelihood or density,     violin plots. The general visual metaphor, namely that as we move
usually varying the α, brightness, or saturation. Low saturation and         away from the mean, values become less likely, is maintained even in
low α values have a strong semiotic connection with uncertainty [22],        the pdf version. Additionally, previous work has shown that viewers
and thus are a commonly used visual metaphor for conveying uncer-            are capable of aggregating regions of a line graph with some precision
tain data [10]. Recent research has shown that using gradients in this       [7], affording both cdf- and pdf-reliant judgments. We believe that
manner affords robust understandings of uncertainty even for general         violin plots used in the way we propose have a number of beneﬁts
audiences [30]. We call this speciﬁc technique a “gradient plot.”            over standard bar charts with error bars:
   Our version of the gradient plot differs slightly from the standard
approach, which is to take the density trace and map each value to a            • Affordance of comparison of values beyond the discrete “within
color. We wished to keep some connection with the discreteness of                 the margin of error/outside of the margin of error” judgments
error bars, and so all values within the 95% two-tailed t-conﬁdence               afforded by bar charts with error bars.

<a id="p003-b004"></a>

<!-- p003-b004 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:33:26 UTC from IEEE Xplore. Restrictions apply.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
CORRELL AND GLEICHER: ERROR BARS CONSIDERED HARMFUL: EXPLORING ALTERNATE ENCODINGS FOR MEAN AND ERROR                                                 2145

<a id="p004-b002"></a>

<!-- p004-b002 -->
• Use of a strong, high ﬁdelity visual encoding (position) to afford
     precise readings of the pdf.

<a id="p004-b003"></a>

<!-- p004-b003 -->
• Visual symmetry about the mean, mitigating within-the-bar bias.

<a id="p004-b004"></a>

<!-- p004-b004 -->
3.4 Box Plots
There are several classes of visualizations of distributions which are
more common than the two we propose, such as box plots, or dot plots
with error bars. While we have included box plots in our evaluation,
and they meet many of the design goals above, we believe they are
unsuitable for our task. The largest problem is that they are both com-
monly and popularly used to encode the actual distribution of data.
                                                                                                (b) Experiment 2:
For this problem we do not encode the distribution of data, but (in this
                                                                              (a) Experiment 1: How likely is the
case) the distribution of a potential population mean given a sample          How likely is the outcome where can-
                                                                                                                   (c) Experiment 3: How likely is candi-
and certain statistical assumptions. Most commonly used probability                                                date B to win the election?
                                                                              red outcome?      didate A gets 55%
distributions (including the Student’s t distribution, the normal dis-                          of the vote?
tribution, &c.) are unimodal and have inﬁnite extent, while the data
about which we are making inferences may not. A box plot as com-             Fig. 3. Example stimuli from our experiments. Each presents
monly used to depict the distribution of the data is thus several an-        tasks which are similar in concept, but deal with different as-
alytical steps removed from a conﬁdence interval. Standard choices           pects of the visual presentation of statistical inference. The
in box plots also conﬂict with our desire to visualize a distribution of     graphs are presented as violin plots, bar charts with error bars,
population means — whiskers are a form of error bars, but in a box           and gradient plots, respectively, but all experiments tested mul-
plot whiskers usually denote range or 1.5× the interquartile range (al-      tiple graph types.
though there are exceptions to this convention, see 2.3). If the ﬁrst
convention is used, then the whiskers of a t-distribution would extend
inﬁnitely far along the y-axis. Lastly, there is a perceptual illusion in
                                                                               • Our experiment with textual one-sample judgments evaluates
box plots where large boxes make viewers underestimate the length of
                                                                                 another potential approach to mitigating within-the-bar bias,
error bars, and overestimate the length when boxes are small [29].
                                                                                 which is to abstract some of the information from the bar chart
   Nonetheless, box plots are a popular encoding for distributional
                                                                                 itself into text (that does not have the metaphor of visual con-
data, with many extensions to show a wide variety of higher order
                                                                                 tainment). Our hypothesis was that this approach would be in-
statistics [26]. In order to adapt box plots to an inferential rather than
                                                                                 effective, and would introduce unacceptable inaccuracy in com-
descriptive role we made several modiﬁcations. The ﬁrst is that we
                                                                                 parisons.
chose to visualize the pdf of interest rather than the data. The whiskers
are the margins of error, in this case the 95% t-conﬁdence interval. We        • Our ﬁnal experiment with two-sample judgments evaluates our
calculate the extent of the box (normally bound by the ﬁrst and third            alternative encodings in a setting that resembles how these vi-
quartiles of the data) by calculating the inverse cdf at points 0.25 and         sualizations are frequently used in practice: to compare samples
0.75 (i.e. the locations which are equivalent to 25 and 75% of the of the        and make predictive inferences about the differences in mean,
indeﬁnite integral of the pdf, which is analogous to quartile locations).        given the error. Our hypothesis was that viewers with limited
The center line of the box is the mean. Figure 1 shows an example of             statistical backgrounds would be able to make assessments in a
a box plot modiﬁed in this fashion. We believe that this modiﬁcation             way that resembles statistical expectation, but that our alternate
captures the “spirit” of box plots while still being relevant to the task        encodings would provide a better pattern of performance.
at hand. We believe that even these modiﬁed box plots will have the
following advantages over bar charts with error bars:                        4.1   General Methods
   • Additional levels of comparison — while for bars charts with            We conducted a series of experiments using Amazon’s Mechanical
     error a y location is either inside the error bar or is not, for box    Turk to evaluate the performance of different graphical encodings for
     plots there are three such levels (outside the error bar, inside the    inferential tasks. Participants were recruited solely from the North
     error bar, inside the box). A point inside the box is within a 50%      American Turker population. Participants were exposed to a series of
     t-conﬁdence interval from the sample mean.                              different graphs and asked to complete a set of tasks per graph. Since
                                                                             domain knowledge and presuppositions can alter the visual interpre-
   • Visual symmetry about the mean, mitigating “within-the-bar”             tation of graphs [31], another factor was the framing of the problem:
     bias.                                                                   samples were represented as either polling data (“Voter preference for
                                                                             Candidate A”), weather forecast data (“Snowfall predicted in City A”),
4 E VALUATION                                                                or ﬁnancial prediction data (“Payout expected by Fund A”). The exper-
The goals of our evaluation were three-fold: to see if general audiences     iments were a mixed model design, where the type of encoding seen
would make decisions that were informed by both mean and error, to           and the framing problem were both between-subjects factors (each
assess how certain biases which affect how bar charts with error bars        participant saw only one encoding type, and one problem wording),
are impacted by our proposed alternate encodings, and to assess other        but the distances between means and size of margins of error were
strategies for mitigating these biases. Our results conﬁrmed that our        within-subjects (participants saw multiple, balanced levels of different
proposed encodings offered concrete beneﬁts over bar charts with error       sample means and margins of error). In all experiments where we var-
bars. We report on three experiment sets here:                               ied the problem framing, it was a signiﬁcant effect, so it was included
                                                                             as a covariate in our analyses. Including piloting (which includes the
   • Our experiment with one-sample judgments presents partici-              results presented in [8], which had a slightly different study design)
     pants with a single sample mean, postulates a potential outcome         we recruited 368 total participants. A total of 240 participants were
     (in the form of a red dot), and asks participants to reason about       involved in the presented experiments, of which 102 (42.5%) were
     the relationship of this potential outcome to the sample. Our hy-       male, 138 female, (average age = 33.3, σ = 10.2). Of the involved par-
     pothesis was that bar charts are subject to “within-the-bar” bias       ticipants, 90 had some college education, 110 were college graduates,
     (where points contained by the bar are seen as likelier than points     and 31 had post-graduate degrees — the remainder were high school
     outside the bar), even for inferential tasks, but that alternate en-    graduates with no college experience. Each participant for each exper-
     codings (violin plots and gradient plots) would mitigate this bias.     iment saw a total of 36 graphs in sequence. Participants were given

<a id="p004-b005"></a>

<!-- p004-b005 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:33:26 UTC from IEEE Xplore. Restrictions apply.

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
2146                                                                         IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,               VOL. 20,   NO. 12,   DECEMBER 2014

<a id="p005-b002"></a>

<!-- p005-b002 -->

                                                                                                                different levels of margin of error {2.5, 5.0, 7.5,10.0,12.5,15.0}. Each
                                                                                                                participant saw 36 graphs, 6 per margin of error. There were 3 differ-
         
                                 
                                                                                                                ent levels of the between-subjects encoding factor (violin plot, gradi-
                                                                                                             ent plot, or bar chart). There were also three levels of problem frame
                                                                                                                (election, weather, or ﬁnancial data). The wording of task questions
                                                                                                             were slightly altered to ﬁt the problem frame. The participants had
                                                                                                                three main task questions. Verbatim from the election problem frame:
                                 

<a id="p005-b003"></a>

<!-- p005-b003 -->
                                                                              1. How do you think the candidate will perform in the actual elec-
                                                                                                              tion, compared to the red potential outcome? (Fewer votes, more
                                             
  

    
 !
" 
 #
                                                                                                                     votes)
      (a) Aggregate cdf values of all the stimuli that participants associated with a par-
      ticular prediction conﬁdence level. A dot on the sample mean would have a cdf
                                                                                                                  2. How conﬁdent are you about your prediction for question 1, from
      of 0.5, representing the zero point.                                                                           1=Least Conﬁdent, 7=Most Conﬁdent?
                                
           

<a id="p005-b004"></a>

<!-- p005-b004 -->
3. How likely (or how surprising) do you think the red potential
                                                                                                                     outcome is, given the poll? From 1=Very surprising (not very
                                                                                                                  likely) to 7=Not very surprising (very likely)

<a id="p005-b005"></a>

<!-- p005-b005 -->
The expected behavior (based on statistical expectations) for question
                                                                                                            1 is to predict that the sample mean is an accurate estimate of the actual
                                                                                                                mean (so if the red dot is above the sample mean, you would expect
       

<a id="p005-b006"></a>

<!-- p005-b006 -->
that candidate A would receive fewer votes in the actual election). If
       

<a id="p005-b007"></a>

<!-- p005-b007 -->
                                                                             this strategy is followed, then question 2 (which is contingent on the
                                                                               

<a id="p005-b008"></a>

<!-- p005-b008 -->

    !"#     $ $%
"#   $
$&
                                                                                                                guess for question 1) is somewhat analogous to a question about the
                                                                                                                cumulative density function: what proportion of the probability space
      (b) Aggregate pdf value of all stimuli that participants associated with a particular                     is above (or below, depending on the answer to question 1) the red
      outcome likelihood.                                                                                       dot? Question 3 by the same reasoning is somewhat analogous to a
                                                                                                                question about the probability density function. Our hypotheses were:
Fig. 4. Gradient plots of our results from the one-sample judg-
ments experiment ( §4.2). Participants were shown a sample                                                      H1 Participant responses would generally follow expected behavior.
mean with error, and a red dot representing a proposed out-                                                         That is, participant responses to question 1 would “follow the
come. They were asked to predict whether or not the population                                                      sample mean” — if the red dot is above the sample, assume the
outcome was likely to be lower or higher than the red dot, and                                                      real election will be lower than the red dot, and vice versa. The
then asked for their conﬁdence in this prediction. This response                                                    answers to question 2 should correlate with the cdf of the t dis-
is analogous to a question about the cdf of the t-distribution (4a).                                                tribution given the data, and the answers to question 3 should
They were also asked how likely the red dot was, given the sam-                                                     correlate with the pdf. Both cdf and pdf are modulated by both
ple mean. This response is analogous to a question about the                                                        the difference in value between the predicted outcome and the
pdf of the t-distribution (4b).                                                                                     sample mean, and the margin of error of the sample.

<a id="p005-b009"></a>

<!-- p005-b009 -->
H2 The non-symmetric encoding (bar charts) would exhibit within-
                                                                                                                    the-bar bias — proposed outcomes within the bar would be seen
no explicit time limit to complete the experimental task, but the me-                                               as likelier than outcomes outside of the bar. Symmetric encod-
dian participant took approximately 8 minutes (approx. 14 seconds                                                   ings (box, violin, and gradient plots) would not have this bias.
per graph) to complete the task. We used ColorBrewer [12] to select
colors for the stimuli. Figure 3 shows example stimuli and tasks from                                           H3 The proposed encodings, which encoded the t-distribution in a
each of the three experiment sets we present.                                                                       non-binary way (gradient and violin plots), would provide more
   We include data tables, example stimuli, and screenshots of our ex-                                              accurate and more conﬁdent judgments about the t-distribution
perimental setup online at http://graphics.cs.wisc.edu/                                                             than the binary encodings (bar charts and box plots).
Vis/ErrorBars. F and p-values reported in the results sections are
from two-way analyses of covariance (ANCOVAs) unless otherwise                                                  4.2.1 Results
stated.                                                                                                         We recruited 96 participants, 8 for each combination of problem frame
                                                                                                                and graph type. We determined signiﬁcance through two sets of two-
4.2                   One-sample judgments                                                                      way ANCOVAs, testing for the effect of different encodings and data
“Within-the-bar” bias as originally proposed is a bias dealing with de-                                         values on conﬁdence in estimating cumulative probability, and esti-
scriptive statistics: a sample mean is made up of points, points far                                            mating the probability density. We included whether the red dot was
from the mean are less likely to be members of the sample, but the vi-                                          above or below the mean as a factor as well, and its interaction with
sual area of a bar in a bar chart creates a region of false certainty. We                                       the graph type, to explicitly test for “within-the-bar” bias. Inter- and
believed that due to visual metaphor of bar charts, something similar                                           intra- participant variance in performance was included as a covariate,
would occur for tasks involving statistical inferences. We believed our                                         as was problem frame.
alternate encodings, by using a different visual metaphor, would not                                               Our results generally support H1: We expected participant an-
create this bias.                                                                                               swers on question 1 to follow the sample mean, and in general this
   In this experiment, participants were shown a series of 200x400                                              strategy was followed in 87.1% of trials (but see H3 results below).
pixel graphs, each with one sample value and an associated margin of                                               We expected participant answers on question 2 (reported conﬁ-
error. For each graph a red dot was plotted at some set distance from                                           dence) to follow the cdf. That is, the perceived conﬁdence that the
the mean (± 5,10, or 15 units in a 100 unit y-axis). The experimental                                           election would have results below a certain proposed result would be
task dealt only with the interaction between the red dot, the difference                                        correlated with the cdf of the t-distribution, and the perceived conﬁ-
from the mean, and the margin of error. Piloting conﬁrmed no signif-                                            dence that the election would have results higher than a certain value
icant effect of sample mean on task response, so sample means were                                              would be 1- the cdf at that location. Indeed, the relevant value (the
randomly selected from the set {35,40,45,50,55,60,65}. There were 6                                             cdf if the participant predicted the real outcome would be less than the

<a id="p005-b010"></a>

<!-- p005-b010 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:33:26 UTC from IEEE Xplore. Restrictions apply.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
CORRELL AND GLEICHER: ERROR BARS CONSIDERED HARMFUL: EXPLORING ALTERNATE ENCODINGS FOR MEAN AND ERROR                                                                             2147

<a id="p006-b002"></a>

<!-- p006-b002 -->


<a id="p006-b003"></a>

<!-- p006-b003 -->


<a id="p006-b004"></a>

<!-- p006-b004 -->
    
                                                     

<a id="p006-b005"></a>

<!-- p006-b005 -->


<a id="p006-b006"></a>

<!-- p006-b006 -->


<a id="p006-b007"></a>

<!-- p006-b007 -->

                            

<a id="p006-b008"></a>

<!-- p006-b008 -->

                                                          

<a id="p006-b009"></a>

<!-- p006-b009 -->
    

<a id="p006-b010"></a>

<!-- p006-b010 -->
                   

<a id="p006-b011"></a>

<!-- p006-b011 -->
           

<a id="p006-b012"></a>

<!-- p006-b012 -->

                                                            
 
 
 !                    "  !                 #
                                                                            
 !  $ 
     %
!

<a id="p006-b013"></a>

<!-- p006-b013 -->
Fig. 5. A gradient plot of results from our one-sample judgments experiment (§4.2). Participants were shown a red dot representing
a potential outcome and judged how likely this outcome was given the sample mean and the margin of error. Statistical expectation
is that likelihood would be symmetric about the mean — that is, red dots above the sample mean would be perceived as just as
likely as those below the mean. For bar charts this is not the case — points visually contained by the glyph of the bar (below the
sample mean)were seen as likelier than those not contained by the bar. Visually symmetric encodings mitigate this issue.

<a id="p006-b014"></a>

<!-- p006-b014 -->
proposed outcome, 1-cdf otherwise) was a signiﬁcant main effect on
reported conﬁdence (F(1,3359) = 55.6, p < 0.0001). Participant’s average
reported conﬁdence was positively correlated with the relevant value
of the cdf (R2 = 0.805, β = 6.78). Figure 4a shows the relationship
between answers on question 2 (how conﬁdent are you in your predic-
tion?) and the actual cdf values of responses.
   We expected participant answers on question 3 (reported likelihood
of the proposed outcome) to follow the pdf. That is, the perceived
likelihood of a dot plotted on the graph should correlate to the value of
the probability distribution at that point. The value of the pdf was only
a marginal effect across all results (F(1, 3359)=3.05, p = 0.081), but was a
signiﬁcant effect for trials where the participant followed the correct
strategy for question 1 (F(1,3361)=30.2, p < 0.0001). Participant’s average
judgments about the likelihood of outcomes was positively correlated
with the pdf values of the stimuli presented (R2 = 0.842, β = 5.70).
Fig 4b shows the relationship between responses on question 3 (“how
likely is this proposed outcome?”) and the actual pdf values.
   Our results support H2: We observed a signiﬁcant interaction be-
tween the position of the dot (above or below the mean) and encod-
ing (F(2,2)=21.3, p < 0.0001) on the perceived likelihood of the dot as an
outcome. A Tukey’s test of Honest Signiﬁcant Difference (HSD) con-                                      (a) Potential outcome in text, mar- (b) Both potential outcome and mar-
ﬁrmed that participants in the bar chart condition considered red dots                                  gins of error are visual.           gin of error in text.
below the mean (and so within the visual area of the bar) signiﬁcantly
more likely than those above the bar. This effect was not signiﬁcant                         Fig. 6. The stimuli for the textual one-sample judgments exper-
for any of the remaining, symmetric encodings. Figure 5 summarizes                           iment (§4.3). Unlike in the ﬁrst experiment, where participants
these results.                                                                               were presented with a red dot representing a potential outcome,
   Our results generally support H3: A Tukey’s HSD conﬁrmed that                             here the outcome was presented in text (e.g. “how likely is can-
participants more consistently followed the expected strategy for ques-                      didate A to receive 45% of the vote?”). In the second condition
tion 1 (following the sample mean) with symmetric encodings (violin:                         the margin of error was also presented textually rather than with
89.2% of trials, gradient: 88.5%, box: 87.4%) than with bar charts                           explicit error bars.
(83.2%). Graph type was also a signiﬁcant main effect on conﬁdence
(F(3,2982)=7.46, p < 0.0001). A Tukey’s HSD conﬁrmed that participants
were signiﬁcantly more conﬁdent with the alternate encoding types
which provided more detail about the probability distribution (gradi-                        and can be severe enough to not just impact the perceived likelihood of
ent: M = 5.12, violin: M = 5.06) than with the bar charts and box                            different outcomes, but even the direction of inference. Our proposed
plots (M = 4.86 for both encodings).                                                         encodings, by virtue of being symmetric about the mean, mitigate this
                                                                                             bias, for a pattern of judgment that is better aligned with statistical ex-
4.2.2   Discussion                                                                           pectations. The alternate encodings also offer more information about
                                                                                             the probability distribution than a bar with errors, allowing viewers
This experiment shows that a lay audience, even exposed to encodings                         to reason more conﬁdently at tasks beyond “this value is within the
that are unfamiliar, and with no expectation of particular training, can                     conﬁdence interval” or “this value is beyond the conﬁdence interval.”
perform judgments that are correlated with inferential statistics: points
that are far away from the mean are seen as more unlikely, but smaller
                                                                                             4.3        Textual One-sample judgments
margins of error also reduce the perceived likelihood of distant points.
However, this study shows that within the bar bias (where points con-                        If within-the-bar bias is a visual bias (a red dot is visually contained
tained by the visual boundaries of the bar are seen a likelier members                       within a bar), then it is possible that simply encouraging comparisons
of a sample than those outside it) is present even for inferential tasks,                    to be done with only partial assistance of the visualization might mit-

<a id="p006-b015"></a>

<!-- p006-b015 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:33:26 UTC from IEEE Xplore. Restrictions apply.

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
2148                                                              IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,         VOL. 20,   NO. 12,   DECEMBER 2014

<a id="p007-b002"></a>

<!-- p007-b002 -->

                                                                                                     tion 1 will align with the direction of the proposed outcome to the

<a id="p007-b003"></a>

<!-- p007-b003 -->
    
                                                                                                    sample mean, question 2 will correlate with the cdf, and question
                                                                                                     3 with the pdf.
                                   

<a id="p007-b004"></a>

<!-- p007-b004 -->
                                                         H2 Removing the proposed outcome from the plot and placing it in
                                   
                                                                                                 text will mitigate within the bar bias, since the visual metaphor
                                                                                                 of containment is broken.
                                   

<a id="p007-b005"></a>

<!-- p007-b005 -->
4.3.1     Results
          

<a id="p007-b006"></a>

<!-- p007-b006 -->

                                        

<a id="p007-b007"></a>

<!-- p007-b007 -->
    

<a id="p007-b008"></a>

<!-- p007-b008 -->
       

<a id="p007-b009"></a>

<!-- p007-b009 -->

                                                                                             We recruited 48 participants, 24 for each graph type. We conducted

<a id="p007-b010"></a>

<!-- p007-b010 -->

  
  !" #
" #
                                                                                             similar ANCOVAs as in the previous experiment, testing how different
   (a) Within-the-bar bias when information is moved from the graph to text. If only         encodings, potential outcome placement, and margin of error affected
   the proposed outcome is moved from graph to text, values within the bar are seen          both cdf and pdf tasks.
   as likelier than values outside the bar. Only when both outcome and margin of                Our results only partially support H1. Our expected strategy
   error are removed is the bias mitigated.                                                  for question 1 was that participants would follow the sample mean.
                                                                                            A Student’s t-test conﬁrmed that the participants followed the ex-
                                                                                             pected strategy signiﬁcantly more with bar charts with visual error
           

<a id="p007-b011"></a>

<!-- p007-b011 -->

                                                                                             bars (91.6% of trials) than with bar charts with only textual margins
                                                                                          of error (62.2%). Figure 7 summarizes this result. Despite this poor
                                                                                             performance, participants were signiﬁcantly more conﬁdent in their
                                                                                          judgments with the graphs with no visual error bars than in the stan-
                                                                                             dard graphs (F(1,1717)=64.8, p < 0.0001, M = 5.4 with no visual error bars,
                               
                                                                                             M = 4.9 with visual error bars).
        

<a id="p007-b012"></a>

<!-- p007-b012 -->

                                                                                                Our results only partially support H2. There was a signiﬁcant
                                          
      


<a id="p007-b013"></a>

<!-- p007-b013 -->
        
           interaction between the graph type and whether or not the proposed
                                                                                             outcome was above or below the mean (F(1,1717)=15.3, p < 0.0001). A
   (b) Changes in adherence to expectation maximizing strategy when information
                                                                                             post-hoc Tukey’s HSD conﬁrmed that only for graphs with explicit vi-
   is moved from the graph to text. Removing both margin of error and proposed
   outcome to text results in a signiﬁcant drop in participant accuracy.
                                                                                             sual error bars was there a signiﬁcant difference in conﬁdence between
                                                                                             values above or below the mean (M = 3.9 and M = 3.1 respectively)
Fig. 7. Gradient plots of our results of our textual one sample                              – that is, within the bar bias was mitigated by moving both margin of
judgments experiment §4.3). When asked to consider poten-                                    error and proposed outcome to text, but not otherwise.
tial outcomes, the expected behavior is that viewers will “trust”
the sample mean – if a potential outcome is higher than the                                  4.3.2     Discussion
sample mean, then the “real” outcome will likely by lower than                               This experiment shows that the visual metaphor of the bar is sufﬁcient
the potential outcome. Participants largely adhered to this strat-                           to create within the bar bias even if the actual values to be considered
egy throughout experiments. While moving information from the                                are conveyed in text rather than plotted. Removing both margins of
graph to the text does mitigate within the bar bias, it signiﬁcantly                         error and the proposed value from the graph and to text mitigates this
affects alignment with expected strategy. Since viewers must                                 bias, but does so at the expense of making the chart sufﬁciently con-
mentally project the potential outcomes and margins of error to                              fusing to interpret that participants are highly inaccurate (or at least
the graph space, the relationship between the potential outcome                              unpredictable) even at simple tasks, and additionally they are unjusti-
and the sample mean becomes more difﬁcult to analyze.                                        ﬁably more conﬁdent in their incorrect judgments.

<a id="p007-b014"></a>

<!-- p007-b014 -->
4.4     Two-sample judgments
igate the bias. That is, by moving both the potential outcome and                            In many real world visualizations of mean and error, the primary task
the margins of error to text, judgments might be better aligned with                         is comparison of multiple groups with uncertain values. In order to
statistical accuracy. This scenario also represents how polling data                         recommend our alternate encodings for general use, it was important
is frequently depicted in practice, with information about poll size                         to both conﬁrm that general audiences could generally perform com-
and margin of error written in a legend, but the chart itself display-                       parison tasks with patterns of uncertainty that were based on statistical
ing the sample means. We wished to evaluate this potential solution,                         expectation.
as we speculated that it would introduce a great deal of inaccuracy to                          In this experiment participants were shown 400x400 graphs de-
judgments and comparisons involving sample means (since it seemed                            picting sample means from two populations (A and B), and asked to
likely that viewers would have to mentally project the text values into                      make judgments comparing the likely performance of the two. Sam-
the space of the graph).                                                                     ple means were normalized such that A+B = 100 units. There were
   This experiment had the same factor levels and task questions as                          six different sample means for A, {75,60,55,45,40,25}. As with the
the previous experiment (and so each participant saw 36 stimuli), with                       ﬁrst experiment, there were six different different margins of error,
three differences. The ﬁrst is that instead of plotting a red dot on the                     {2.5,5.0,7.5,10.0,12.5,15.0} (of which the participant saw a total of
graph itself, the red potential outcome was displayed in colored text                        six per level, for 36 total stimuli), three different between-subjects
under the graph. The second is that we presented only two graph types                        graph types (bar with error bars, violin plot, or gradient plot), and
as a between-subjects factor: a bar chart with error bars, and a bar chart                   three between-subjects problem frames (polling, weather, and ﬁnan-
without error bars (in both cases the margin of error was displayed in                       cial frames). The participants were presented with three main task
text below the graph). That is, the conditions reﬂected moving some                          questions, with wording slightly altered to ﬁt the problem frame (here
portion of the information to text from the graph, either the proposed                       from the polling frame):
outcome or both the proposed outcome and the margin of error. This
experiment used only one problem frame (the election phrasing).                                1. If forced to guess, which candidate do you predict will win the
   Our hypotheses were:                                                                           actual election?

<a id="p007-b015"></a>

<!-- p007-b015 -->
H1 Participant responses will be similarly connected with statistical                          2. How conﬁdent are you about your prediction for question 1, from
    expectation as in the previous experiment — responses to ques-                                1=Least Conﬁdent, 7=Most Conﬁdent?

<a id="p007-b016"></a>

<!-- p007-b016 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:33:26 UTC from IEEE Xplore. Restrictions apply.

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
CORRELL AND GLEICHER: ERROR BARS CONSIDERED HARMFUL: EXPLORING ALTERNATE ENCODINGS FOR MEAN AND ERROR                                                                                                                                                                                                              2149

<a id="p008-b002"></a>

<!-- p008-b002 -->
                                                                                                                                                                                                                                              

<a id="p008-b003"></a>

<!-- p008-b003 -->
        

<a id="p008-b004"></a>

<!-- p008-b004 -->
        

<a id="p008-b005"></a>

<!-- p008-b005 -->
        
                                                                                                                                                                                                                                                                  

<a id="p008-b006"></a>

<!-- p008-b006 -->
                                                                                                                                                                                                                                   

<a id="p008-b007"></a>

<!-- p008-b007 -->
                                                                                                                                                                                                                                      

<a id="p008-b008"></a>

<!-- p008-b008 -->
                                                                                                                                                                                                                                   

<a id="p008-b009"></a>

<!-- p008-b009 -->
                                                                                                                                                                                                                                      

<a id="p008-b010"></a>

<!-- p008-b010 -->
                                                                                                                                                                                                                                   
 

<a id="p008-b011"></a>

<!-- p008-b011 -->


<a id="p008-b012"></a>

<!-- p008-b012 -->


<a id="p008-b013"></a>

<!-- p008-b013 -->

                                                                                                                                                                                                                                                                         
                                                                      

<a id="p008-b014"></a>

<!-- p008-b014 -->
                  

<a id="p008-b015"></a>

<!-- p008-b015 -->
                 

<a id="p008-b016"></a>

<!-- p008-b016 -->
                   

<a id="p008-b017"></a>

<!-- p008-b017 -->
 

<a id="p008-b018"></a>

<!-- p008-b018 -->
  
  !"#                   
"$%                                      

<a id="p008-b019"></a>

<!-- p008-b019 -->
  
  !"#   
"$%                                     

<a id="p008-b020"></a>

<!-- p008-b020 -->
  
  !"#   
"$%                                     

<a id="p008-b021"></a>

<!-- p008-b021 -->
  
  !"#    
"$%

<a id="p008-b022"></a>

<!-- p008-b022 -->
(a) Bar Charts                                                             (b) Box Plots                                                            (c) Gradient Plots                                                       (d) Violin Plots

<a id="p008-b023"></a>

<!-- p008-b023 -->
Fig. 8. Violin plots of the participant’s perceived conﬁdence in their judgment between sample means (i.e. “which of two candidates
will win the election, given the polling data?”), plotted against the actual average p-value of the relevant 2-sample t-test. While, for
across all presented graph types, participants’ average conﬁdence was negatively correlated with p-value (R2 = 0.66, β = −8.30),
unlike in statistical practice (where we would reject as not statistically signiﬁcant differences with p-values of 0.05 or higher),
participants in general become gradually more conﬁdent on average with decreases in p-value.
                                   

<a id="p008-b024"></a>

<!-- p008-b024 -->

                                                                                                                                                                                                    polls then that candidate will likely lead in the actual election.
                                                                                                                                                                                                    The participant answers to question 2 should align with p value,
                                    

<a id="p008-b025"></a>

<!-- p008-b025 -->

                                                                                                                                                                                                    and the answers to question 3 ought to align with effect size.

<a id="p008-b026"></a>

<!-- p008-b026 -->

                                                                                                                                                                       H2 Encodings that encode margin of error in a binary way (bar charts
                                                       
                                                                                                                                                                           and box plots) will have different patterns of performance than
                                    

<a id="p008-b027"></a>

<!-- p008-b027 -->
continuous encodings (violin and gradient plots), predicting big-
                                                                                                                                                                           ger effects with more (perhaps even unjustiﬁed) conﬁdence.
                                                       

<a id="p008-b028"></a>

<!-- p008-b028 -->

                                                                                                                                                                       4.4.1                             Results
                                                                                                                                           

<a id="p008-b029"></a>

<!-- p008-b029 -->


 

<a id="p008-b030"></a>

<!-- p008-b030 -->
                          
!"                                  We recruited 96 participants, 8 for each combination of problem frame
                                  

<a id="p008-b031"></a>

<!-- p008-b031 -->
and graph type. We conducted two sets of one-way ANCOVAs, test-
Fig. 9. A violin plot of results from our two-sample judgments ex-                                                                                                     ing for different encodings, framings, and data values on conﬁdence
periment (§4.4). Participants were asked to predict the severity                                                                                                       in predicted “winners,” and predicted effect size. Inter- and intra-
of the outcome based on the sample. For instance, in the elec-                                                                                                         participant variance in performance was included as a covariate.
tion problem frame, they were asked whether the election will be                                                                                                          Our results supported H1: We expected answers to question 1 to
very close or one candidate will win in a landslide. This question                                                                                                     generally match statistical expectation, which is that the candidate
is analogous to an estimation of effect size. We display the ag-                                                                                                       leading in the sample will also lead in the population. This strategy
gregate effect size (calculated here as the difference between                                                                                                         was followed in 95.4% of trials. A Tukey’s HSD showed no signiﬁ-
means in terms of the margin of error) for all stimuli that partic-                                                                                                    cant difference in strategy adherence among different encodings.
ipants associated with a particular level of one-sidedness. Par-                                                                                                          We expected the answers to question 2 to correspond to the p-value
ticipants’ average estimation of one-sidedness were positively                                                                                                         of the relevant two sample t-test. Large p-values ought to be asso-
correlated with effect size (R2 = 0.567, β = 2.10).                                                                                                                    ciated with low conﬁdence in the predictions of winners in the pop-
                                                                                                                                                                       ulation based on the sample. Indeed, p-value was a main effect on
                                                                                                                                                                       conﬁdence (F(1,3424)= 49.4, p < 0.0001). Figure 8 shows the connection
             3. Which outcome do you think is the most likely in the actual elec-                                                                                      between reported participant conﬁdence in predictions and actual p-
                tion, from 1=Outcome will be most in favor of A, 7=Outcome                                                                                             value in detail.
                will be most in favor of B? (This was measured internally as a                                                                                            We expected the answers to question 3 to correspond to the effect
                value from -3,3, with the “predicted effect size” being the abso-                                                                                      size. We calculated effect size in terms of number of margins of error
                lute value of the response to this question.)                                                                                                          between the two sample values (a scalar multiple of Cohen’s d). Effect
                                                                                                                                                                       size was a signiﬁcant main effect on predicted magnitude of outcome
The expected strategy based on statistical expectation for question 1                                                                                                  (F(1,3424) = 1210, p < 0.0001). Figure 9 shows this result in detail.
is to choose the group with the highest sample mean. Question 2 is                                                                                                        Our results partially supported H2. For the predicted effect size,
then analogous to a two-sample t-test (or, if it is known or assumed                                                                                                   graph type was a signiﬁcant main effect (F(3,3424)=23.1, p < 0.0001). A
that the sample means will always be 100, a one-sample t-test with                                                                                                     post-hoc Tukey’s HSD conﬁrmed that participants using bar charts
the null hypothesis that μ=50). Question 3 is then a question about                                                                                                    predicted outcomes that were signiﬁcantly larger than with other en-
effect size. Since the prediction task was isomorphic to a t-test, we                                                                                                  codings (bar: M = 1.65, box and gradient: M = 1.54, violin: M =
calculated p-values internally for each sample mean comparison. The                                                                                                    1.43). This was also the case for conﬁdence in predictions (F(3,3424)=
median p-value was 0.05 by design, however the p-values were not                                                                                                       3.38, p = 0.018): participants were signiﬁcantly more conﬁdent in pre-
equally distributed among different margins (i.e. where the margins of                                                                                                 dictions made by bar charts (M = 5.21) than for other encodings, but
error were 2.5 or 5.0, there were no stimuli which would fail a t-test at                                                                                              conﬁdence in the other three charts was not statistically signiﬁcantly
the α = 0.05 level).                                                                                                                                                   different (gradient: M = 5.07, box and violin: M = 5.02). This gap
   Our hypotheses were:                                                                                                                                                was even more signiﬁcant for stimuli which fail to pass a t-test at the
                                                                                                                                                                       0.05 level of signiﬁcance (M = 4.42 for bar charts vs. M = 4.15 for
H1 In general, reported conﬁdences and effect sizes will generally                                                                                                     other encodings). That is, the elevated participant conﬁdence was in a
    follow statistical expectation. That is, participants will “follow                                                                                                 sense unjustiﬁed, occurring whether differences were statistically sig-
    the sample” with question 1 — if one candidate is leading in the                                                                                                   niﬁcant or not.

<a id="p008-b032"></a>

<!-- p008-b032 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:33:26 UTC from IEEE Xplore. Restrictions apply.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
2150                                       IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS,                 VOL. 20,   NO. 12,   DECEMBER 2014

<a id="p009-b002"></a>

<!-- p009-b002 -->
4.4.2    Discussion                                                          and used [33], especially for issues of trust and uncertainty. In the
Our results show again that the right choice of visualization can al-        future we hope to modify or extend our set of proposed encodings to
low even a general audience to make decisions that are aligned with          cover a wider range of inferential scenarios, including the perception
statistical expectation, but that these decisions are sensitive to how in-   of outlier values, regression, and multi-way comparison, and to deal
formation is presented. We also show that the alternate encodings, by        with additional known biases in human reasoning.
conveying more detailed information about unlikely outcomes outside             Our data and experimental design also did not reveal many signif-
of the margin of error, encourage more appropriate doubt about infer-        icant differences between our two proposed encodings. Our data do
ences from samples to populations.                                           not support the use of one over the other for decisions tasks, however
                                                                             paper authors, reviewers, and colleagues have stated differing pref-
5      S UMMARY                                                              erences between the two on aesthetic and theoretical grounds. We
                                                                             present both in this paper to promote critique, but further work re-
Our experiments show that even the general audience is capable of            mains to assess both encodings in a principled way.
making nuanced statistical inferences from graphical data, taking into          We also did not investigate how performance might differ with dif-
account both margin of error and effect size. However, the most com-         ferent design decisions. For instance, we colored the gradient chart to
mon method of visualizing mean and error, bar charts with error bars,        make the region within the margin of error fully opaque, but we could
have several issues that negatively affect viewer judgments.                 have encoded the pdf of the t-distribution directly. We chose a sin-
   Bar charts suffer from:                                                   gle set of color ramps for our encodings, but it is possible that other
                                                                             choices might bias viewer judgments (for instance, viewers might
    • Within-the-bar bias: the glyph of a bar provides a false metaphor      overestimate the likelihood of outcomes in red violin plots [4]).
      of containment, where values within the bar are seen as likelier
      than values outside the bar.                                           5.2 Conclusion
    • Binary interpretation: values are within the margins of error, or      In this paper we illustrate that the most common encoding for display-
      they are not. This makes it difﬁcult for viewers to conﬁdently         ing sample mean and error — bar charts with error bars — has a num-
      make detailed inferences about outcomes, and also makes view-          ber of design ﬂaws which lead to inferences which are not very well
      ers overestimate effect sizes in comparisons.                          correlated with statistical expectation. We show that simple redesigns
                                                                             of these encodings which take into account the semiotics of the visual
   We can mitigate these problems by choosing encodings that are vi-         display of uncertain data can improve viewer performance for a wide
sually symmetric and visually continuous. Gradient plots and violin          range of inferential tasks, even if the viewer has no prior background
plots are example solutions. Our experiments conﬁrm that these pro-          in statistics. We show that the general audience can achieve good per-
posed encodings mitigate the biases above, and that modiﬁcation of           formance on measurable decision tasks with encodings which are less
bar charts (for instance by moving margins of error to text rather than      well-known than the standard bar chart.
graphing them explicitly) address these biases only at the expense of
                                                                             ACKNOWLEDGMENTS
introducing inaccuracy and complexity to inferential tasks.
   Our experiments show that the general audience can robustly rea-          This work was supported in part by NSF award IIS-1162037, NIH
son about mean and error. However, the issues we described above do          award R01 AI077376, and ERC Advanced Grant “Expressive.”
occur in practice, and affect how the general audience reasons about
uncertain information. The experiments also suggest that these issues        R EFERENCES
can be mitigated with alternate encodings. Moreover, the cost of using        [1] A. P. Association. Concise rules of APA style. American Psychological
alternate encodings appears to be low: even though the ones tested are            Association, 2005.
unfamiliar, they still offer performance advantages to a general audi-        [2] S. Belia, F. Fidler, J. Williams, and G. Cumming. Researchers misunder-
ence. The performance improvements of the alternate encodings are                 stand conﬁdence intervals and standard error bars. Psychological Meth-
measurable in our experiments, but the practical effect of these dif-             ods, 10(4):389–96, Dec. 2005.
ferences is difﬁcult to determine. Other experimental methodology             [3] N. Boukhelifa, A. Bezerianos, T. Isenberg, and J. Fekete. Evaluating
                                                                                  sketchiness as a visual variable for the depiction of qualitative uncer-
might better assess the impact on decision making, for example an ex-
                                                                                  tainty. IEEE Transactions on Visualization and Computer Graphics,
periment where stakes are higher might more clearly show differences
                                                                                  18(12):2769–2778, 2012.
between encodings. While our experiments show that encodings that             [4] W. S. Cleveland and R. McGill. A color-caused optical illusion on a
follow our design guidelines provide advantages over bar charts with              statistical graph. The American Statistician, 37(2):101–105, 1983.
error bars, we have not fully explored the space of designs of mean           [5] W. S. Cleveland and R. McGill. Graphical perception: Theory, exper-
and error encodings. We believe other designs that ﬁt our guidelines              imentation, and application to the development of graphical methods.
should also have these advantages. Our experiments suggest that some              Journal of the American statistical association, 79(387):531–554, 1984.
encoding other than bar charts with error bars should be used, but are        [6] J. Cohen. The earth is round (p < .05). The American Psychologist,
less speciﬁc in recommending the best replacement.                                49(12):997, 1994.
   This is not to say that bar charts do not have utility. There are tasks    [7] M. Correll, D. Albers, S. Franconeri, and M. Gleicher. Comparing aver-
where asymmetric encodings outperform symmetric encodings; for in-                ages in time series data. In Proceedings of the 2012 ACM annual confer-
stance, comparing ratios can be done quickly and more accurately with             ence on Human Factors in Computing Systems, pages 1095–1104. ACM,
bar charts as compared to dot plots or other encodings where area un-             May 2012.
der the bar is more difﬁcult to estimate [5]. There are also cultural         [8] M. Correll and M. Gleicher. Error bars considered harmful. In IEEE
costs involved in adopting non-standard encodings — viewers might                 Visualization Poster Proceedings. IEEE, Oct 2013.
prefer to see familiar but known suboptimal encodings.                        [9] G. Cumming and S. Finch. Inference by eye: conﬁdence intervals and
                                                                                  how to read pictures of data. The American Psychologist, 60(2):170–80,
5.1     Limitations and Future Work                                               2005.
                                                                             [10] N. Gershon. Visualization of an imperfect world. IEEE Computer Graph-
One area not well-covered by our experimental tasks was decision-                 ics and Applications, 18(4):43–45, 1998.
making: does the presentation of different sorts of statistical graphs       [11] N. Goldstein. The Associated Press Stylebook and Libel Manual. Fully
result in different actions (beyond mere predictions)? Assessing this             Revised and Updated. ERIC, 1994.
facet of inferential behavior would require a more involved series of        [12] M. Harrower and C. A. Brewer. Colorbrewer. org: an online tool for
experiments, with real-world stakes. Likewise, our experiments did                selecting colour schemes for maps. The Cartographic Journal, 40(1):27–
not collect a great deal of qualitative data such as viewer preferences           37, 2003.
for the different chart types: the aesthetics of information visualiza-      [13] J. Hintze and R. Nelson. Violin plots: a box plot-density trace synergism.
tions can be an important consideration for how data are perceived                The American Statistician, 1998.

<a id="p009-b003"></a>

<!-- p009-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:33:26 UTC from IEEE Xplore. Restrictions apply.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
CORRELL AND GLEICHER: ERROR BARS CONSIDERED HARMFUL: EXPLORING ALTERNATE ENCODINGS FOR MEAN AND ERROR                                             2151

<a id="p010-b002"></a>

<!-- p010-b002 -->
[14] J. Hullman, E. Adar, and P. Shah. Beneﬁtting infovis with visual dif-
     ﬁculties. IEEE Transactions on Visualization and Computer Graphics,
     17(12):2213–2222, 2011.
[15] H. Ibrekk and M. G. Morgan. Graphical communication of uncertain
     quantities to nontechnical people. Risk Analysis, 7(4):519–529, 1987.
[16] O. Inbar. Graphical representation of statistical information in situations
     of judgment and decision-making. Phd. thesis, Ben-Gurion University of
     the Negev, 2009.
[17] C. H. Jackson. Displaying uncertainty with shading. The American Statis-
     tician, 62(4):340–347, 2008.
[18] D. H. Johnson. The insigniﬁcance of statistical signiﬁcance testing. The
     Journal of Wildlife Management, pages 763–772, 1999.
[19] P. Kampstra. Beanplot: A boxplot alternative for visual comparison of
     distributions. Journal of Statistical Software, 28(1):1–9, 2008.
[20] I. M. Lipkus and J. G. Hollands. The visual communication of risk.
     Journal of the National Cancer Institute. Monographs, 27701(25):149–
     63, Jan. 1999.
[21] A. MacEachren. Visualizing uncertain information. Cartographic Per-
     spective, 13(3):10–19, 1992.
[22] A. M. MacEachren, R. E. Roth, J. O’Brien, B. Li, D. Swingley, and
     M. Gahegan. Visual semiotics & uncertainty visualization: An empiri-
     cal study. IEEE Transactions on Visualization and Computer Graphics,
     18(12):2496–2505, 2012.
[23] L. Micallef, P. Dragicevic, and J.-D. Fekete. Assessing the effect of visu-
     alizations on bayesian reasoning through crowdsourcing. IEEE Transac-
     tions on Visualization and Computer Graphics, 18(12):2536–2545, 2012.
[24] G. E. Newman and B. J. Scholl. Bar graphs depicting averages are per-
     ceptually misinterpreted: The within-the-bar bias. Psychonomic Bulletin
     & Review, 19(4):601–607, 2012.
[25] R. S. Nickerson. Null hypothesis signiﬁcance testing: a review of an old
     and continuing controversy. Psychological Methods, 5(2):241–301, June
     2000.
[26] K. Potter, J. Kniss, R. Riesenfeld, and C. R. Johnson. Visualizing sum-
     mary statistics and uncertainty. Computer Graphics Forum, 29(3):823–
     832, 2010.
[27] F. L. Schmidt. Statistical signiﬁcance testing and cumulative knowledge
     in psychology: Implications for training of researchers. Psychological
     Methods, 1(2):115–129, 1996.
[28] F. L. Schmidt and J. Hunter. Eight common but false objections to the
     discontinuation of signiﬁcance testing in the analysis of research data. In
     L. L. Harlow, S. A. Mulaik, and J. H. Steiger, editors, What if there were
     no signiﬁcance tests?, pages 37–64. Psychology Press, 2013.
[29] W. A. Stock and J. T. Behrens. Box, line, and midgap plots: Effects of
     display characteristics on the accuracy and bias of estimates of whisker
     length. Journal of Educational and Behavioral Statistics, 16(1):1–20,
     1991.
[30] A. Toet, J. van Erp, and S. Tak. The perception of visual uncertainty
     representation by non-experts. IEEE Transactions on Visualization and
     Computer Graphics, 20(6):935–943, 2014.
[31] J. G. Trafton, S. P. Marshall, F. Mintz, and S. B. Trickett. Extracting
     explicit and implict information from complex visualizations. In Pro-
     ceedings of the Second International Conference on Diagrammatic Rep-
     resentation and Inference, pages 206–220. Springer-Verlag, 2002.
[32] A. Tversky and D. Kahneman. Judgment under Uncertainty: Heuristics
     and Biases. Science, 185(4157):1124–31, Sept. 1974.
[33] T. van der Geest and R. van Dongelen. What is beautiful is useful-visual
     appeal and expected information quality. In IEEE International Profes-
     sional Communication Conference, pages 1–5. IEEE, 2009.
[34] L. Wilkinson. Statistical methods in psychology journals: Guidelines and
     explanations. American Psychologist, 54(8):594, 1999.
[35] J. Wood, P. Isenberg, T. Isenberg, J. Dykes, N. Boukhelifa, and
     A. Slingsby. Sketchy rendering for information visualization. IEEE
     Transactions on Visualization and Computer Graphics, 18(12):2749–
     2758, 2012.

<a id="p010-b003"></a>

<!-- p010-b003 -->
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:33:26 UTC from IEEE Xplore. Restrictions apply.
