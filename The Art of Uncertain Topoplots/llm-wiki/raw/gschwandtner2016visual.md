---
id: "gschwandtner2016visual"
title: "Visual Encodings of Temporal Uncertainty: A Comparative User Study"
source_file: "The Art of Uncertain Topoplots/papers/gschwandtner2016visual.pdf"
source_sha256: "182274795897879c73573dcd23f20fb0c610e95e0ad6a3bf8f8e55dd82200f83"
extraction_format: 1
---

# Visual Encodings of Temporal Uncertainty: A Comparative User Study — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
539                                                       IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 22, NO. 1, JANUARY 2016

<a id="p001-b002"></a>

<!-- p001-b002 -->
Visual Encodings of Temporal Uncertainty:
                                       A Comparative User Study
                               Theresia Gschwandtner, Markus Bögl, Paolo Federico, and Silvia Miksch

<a id="p001-b003"></a>

<!-- p001-b003 -->
Fig. 1: Six different visual encodings of start/end uncertainty of temporal intervals used in the user study: (a) gradient plot, (b)
        violin plot, (c) accumulated probability plot, (d) error bars, (e) centered error bars, and (f) ambiguation. We designed encodings
        (a)–(c) to encode statistical uncertainty and encodings (d)–(f) to encode bounded uncertainty. All encodings were used to estimate
        earliest start, latest start, earliest end, and latest end, as well as minimum, maximum, and average interval duration. Moreover,
        encodings (a)–(c) were used to estimate the probability that the interval has already started/ended at a marked position in time.

<a id="p001-b004"></a>

<!-- p001-b004 -->
Abstract—A number of studies have investigated different ways of visualizing uncertainty. However, in the temporal dimension, it is
        still an open question how to best represent uncertainty, since the special characteristics of time require special visual encodings and
        may provoke different interpretations. Thus, we have conducted a comprehensive study comparing alternative visual encodings of
        intervals with uncertain start and end times: gradient plots, violin plots, accumulated probability plots, error bars, centered error bars,
        and ambiguation. Our results reveal significant differences in error rates and completion time for these different visualization types
        and different tasks. We recommend using ambiguation – using a lighter color value to represent uncertain regions – or error bars for
        judging durations and temporal bounds, and gradient plots – using fading color or transparency – for judging probability values.
        Index Terms—Uncertainty, temporal intervals, visualization

<a id="p001-b005"></a>

<!-- p001-b005 -->
1     I NTRODUCTION
Many real world data sets contain some amount of uncertain informa-                         in the case of multiple granularities. For instance, the statement ‘Ac-
tion. Finding visualization techniques that communicate these uncer-                        tivity A started on June 14, 2009 and ended on June 17, 2009’ can be
tainties instead of neglecting them is, therefore, imperative to provide                    modeled by the beginning instant ‘June 14, 2009’ and the end instant
the user with correct information. In recent years, there has been a                        ‘June 17, 2009’ both at the granularity of days. If we look at this in-
lot of effort to design such visualization techniques which incorporate                     terval from a granularity of hours, the interval might begin and end at
uncertainty into the representation; in particular in the temporal do-                      any point in time between 0 a.m. and 12 p.m. of the specified day [2].
main, there are several approaches to visually communicate temporal
indeterminacy [11, 5, 16, 3, 9]. Information that is temporally inde-                       1.1     Types of Temporal Uncertainty
terminate can be characterized as ‘do not know when information’, or                        There are many ways to model time in information systems and time
more precisely, as ‘do not know exactly when information’. Examples                         is modeled differently for different applications depending on the par-
of this are inexact knowledge (e.g., ‘time when the earth was formed’),                     ticular problems. Aigner et al. [2] outline in detail major design as-
future planning data (e.g., ‘it will take 2-3 weeks’), or imprecise event                   pects and features which are particularly important when modeling
times (e.g., ‘one or two days ago’).                                                        time with respect to visualizations. They distinguish between three
   If there is no complete or exact information about time specifica-                       different time primitives: (1) instants, i.e., single points in time, (2) in-
tions or if time primitives are converted from one granularity to an-                       tervals, i.e., durations between two instants, as well as (3) spans, i.e.,
other, uncertainties are introduced and have to be dealt with. Inde-                        durations that are not anchored in time.
terminacy might be introduced by explicit specification (e.g., earliest                         Olston and Mackinlay [19] describe two different types of uncer-
beginning and latest beginning of an interval) or is implicitly present                     tainty: statistical uncertainty and bounded uncertainty. In case of sta-
                                                                                            tistical uncertainty, the probability of candidates within an uncertain
                                                                                            interval follows a statistical model, for instance, a normal distribution.
 • Theresia Gschwandtner, Markus Bögl, Paolo Federico, and Silvia Miksch                   In case of bounded uncertainty, on the other hand, no assumptions can
   are with Vienna University of Technology. E-mail: {last                                  be made about the probability distribution of possible values inside the
   name}@ifs.tuwien.ac.at.                                                                  interval, i.e., all candidates are equally likely. Be it that they actually
 Manuscriptreceived
Manuscript              31Mar.
               received31 Mar.2015;
                                2015;accepted
                                      accepted11Aug.    2015;date
                                                  Aug.2015;   dateofof                      are equally likely or that there is just not enough information available
publication 20
publication   xx Aug. 2015; date of current version 25 Oct. 2015.                           to make statistical assumptions.
For information
For information on obtaining reprints of this article, please send                              In addition, there may be dependencies between uncertain aspects
e-mail to:
e-mail      tvcg@computer.org.
       to: tvcg@computer.org.                                                               of time primitives. For points in time there can be only one uncertain
Digital Object Identifier no. 10.1109/TVCG.2015.2467752                                     aspect, which is the exact point in time when this event actually takes
    Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:38:00 UTC from IEEE Xplore. Restrictions apply.
                                       1077-2626 © 2015 IEEE. Personal use is permitted, but republication/redistribution requires IEEE permission.
                                           See http://www.ieee.org/publications_standards/publications/rights/index.html for more information.

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
540                                                 IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 22, NO. 1, JANUARY 2016

<a id="p002-b002"></a>

<!-- p002-b002 -->
place. For intervals the start time and the end time can be uncertain.        2.1   Temporal Uncertainty
There is a dependency between these two uncertainties when, in case           In 1765 Joseph Priestley created a graphical representation of the life
the interval starts early, it is more likely that it also ends early. For     spans of famous historical persons [22]. He introduced the use of a
instance, when a work package of a project starts earlier than expected,      horizontal line to represent an interval of time – which is a common
it is more likely that it also ends earlier than expected. However, this      method nowadays. Moreover, he also considered the visual represen-
is not always the case. For instance, if the uncertainty of start and end     tation of temporal uncertainties using dots. He even considered differ-
of an interval stems from a coarse granularity.                               ent levels of uncertainty by using solid lines, different amounts of dots
    This led us to categorize eight different types of temporal uncer-        before and after lines, as well as dots below lines.
tainty:                                                                           Program Evolution and Review Technique (PERT) charts have been
                                                                              developed by the US Navy in 1950 to facilitate the planning and man-
    • Bounded uncertainty of an instant (e.g., we know something took         agement of complex projects. PERT charts graphically depict the sin-
      place at May 14, 1988 but we do not have any information about          gle tasks of a project together with their temporal inter-task dependen-
      at what exact time it took place)                                       cies by using boxes to represent tasks and arrows to depict predeces-
                                                                              sors and successors of each task. Scheduling information and buffer
    • Statistical uncertainty of an instant (e.g., radiocarbon dating the     time of each tasks are given as numerical values within the boxes.
      time of death of a plant gives you an estimated age together with       These charts are especially useful when the exact duration or start and
      an error and confidence interval)                                       end times of tasks are hard to define. Often PERT Charts are used to
                                                                              identify critical time constraints (the critical path) within the project,
    • Bounded uncertainty of start and end of an interval (e.g., uncer-       i.e., if there is no buffer time between the single tasks of the critical
      tainties about start and end time stem from a coarse granularity)       path; as a consequence, the delay of one of these tasks would always
                                                                              lead to a delay of the whole project. However, PERT charts represent
    • Statistical uncertainty of start and end of an interval (e.g., pheno-   the crucial information rather in textual form than using visual means.
      logical seasons: an early start of winter does not imply an early           Sets Of Possible Occurrences (SOPO) diagrams were first described
      end of winter, but there is statistical probability for the time of     in a landmark paper by Jean-Francois Rit in 1986 [25]. Both the x-
      start and end)                                                          and y-axis represent time. The x-axis encodes the starting time of a
                                                                              process, while the y-axis encodes the finishing time. A diagram is cre-
    • Bounded uncertainty of start and end of an interval with depen-         ated by the limiting parameters of earliest and the latest start of the
      dency (e.g., an early start of a project plan makes an early end        process, the earliest and the latest end of the process, as well as the
      more likely; it is known when this plan has to start and when it        minimum and the maximum duration of the process. The resulting
      has to end, but no statistical assumptions can be made about start      area represents all possible intervals that fit the temporal constraints of
      and end time)                                                           the given process. This diagram has been used in the medical applica-
                                                                              tion SOPOView [16], which provided visualization of therapy plans.
    • Statistical uncertainty start and end of an interval with depen-        The conducted evaluation shows that most of the physicians found the
      dency (e.g., start and end time of studies of an individual; an         SOPO-diagram complex and confusing. They argued it would take too
      early start makes an early end more likely and there are statisti-      much time to get familiar with the visualization, which they could not
      cal assumptions on start and end age)                                   spare in their busy job. Furthermore, it was remarked that a lot of the
                                                                              test users could not identify the benefits of the visualization.
    • Bounded uncertainty of a span (e.g., I do not know if it took my            The TimeAnnotationGlyph (part of the AsbruView project [11]) is
      friend 5 or 10 hours to find the perfect present one day before my      focused on the communication of the exact temporal dimensions of
      birthday)                                                               clinical treatment plans. This is accomplished by using time-glyphs.
                                                                              A time-glyph consists of two bars; the first bar indicates the maximum
    • Statistical uncertainty of a span (e.g., the duration of pregnancy)     duration of the plan. Beneath this bar the earliest start, latest start, ear-
                                                                              liest end, and latest end are indicated by little arrows pointing towards
   These different types of temporal uncertainty require different types      these time points. On top of the maximum duration bar two diamonds
of visualizations. The visualization of statistical uncertainty of an in-     represent the latest start and the earliest end. The minimum duration of
stant could be similar to statistical uncertainty of any numerical value.     the plan is represented by a second bar on top of these two diamonds.
Corell and Gleicher [6] investigated different encodings to visually              Another method to visualize temporal uncertainty using metaphors
represent this type of uncertainty. Also the bounded uncertainty of           is Paint-Strips [5]. They are composed of a painted horizontal line
an instant may be visualized similar to the methods proposed in [19].         (represents definite time). However, at the end of the line there can be
However, other types of temporal uncertainty require more specific            a paint roller, attached to a weight. This roller can move freely until it
types of visualizations and the suitability of alternative visual encod-      hits a wall. This paint roller represents the earliest and latest finishing
ings of these has not been sufficiently evaluated yet. Thus, we have          time of the process. Additionally, several paint rollers can be attached
investigated different types of visual encodings to represent statisti-       to the same weight, implying dependencies between processes. This
cal and bounded uncertainty of start and end of an interval (without          technique is easy to understand. However, as a consequence of the
dependency between start and end time).                                       basic design it is limited in its expressiveness and not suitable to rep-
                                                                              resent complex constraints.
2     V ISUALIZATION OF U NCERTAINTY                                              PlanningLines [3] is a visualization method to communicate tem-
When it comes to a comprehensive categorization of different methods          poral uncertainties of processes and was designed to provide a more
to visually encode uncertainty, most existing work focuses on geospa-         efficient alternative to PERT-charts. The temporal representation of
tial data or spatio-temporal data (e.g., [20, 27]). According to these        processes was derived from the visualization of LifeLines [21]. A
findings, uncertainty can be mapped to visual attributes, such as color,      PlanningLines glyph allows for depicting complex temporal uncer-
transparency, line width, texture, and sharpness or focus; other visual-      tainties, like earliest start, latest start, earliest end, and latest end, as
ization methods include for instance, side-by-side displays of compet-        well as minimum and maximum duration. It consists of two encapsu-
ing results, side-by-side displays of data values and uncertainty values      lated bars representing the minimum and maximum duration, which
(adjacent maps), animation, additional transparent layers, additional         are bounded by two caps that represent the start and end intervals.
symbols, glyphs (most commonly error bars), contouring, confidence                Decision charts [9] are a graphical representation for depicting
intervals. There are also non-visual methods, like mapping uncertainty        future decisions and potential alternative outcomes along with their
to sound. However, the representation of complex temporal uncertain-          probabilities over time. In contrast to the other approaches which use
ties is quite often accomplished by glyphs.                                   an ordered time domain, decision charts use a branching time model.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:38:00 UTC from IEEE Xplore. Restrictions apply.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
GSCHWANDTNER ET AL.: VISUAL ENCODINGS OF TEMPORAL UNCERTAINTY: A COMPARATIVE USER STUDY                                                             541

<a id="p003-b002"></a>

<!-- p003-b002 -->
From these examples we can see that the visualization of com-                While two of these studies report on problems with error bars, al-
plex temporal uncertainties is quite often accomplished by specialized       though for different reasons, it is hard to nominate a definite winner to
glyphs. More general efforts have been made in investigating differ-         visualize uncertainty. However, we took these studies as an inspiration
ent types of visual encodings to represent uncertainty of data values in     to find a set of encodings that might be useful to represent uncertainties
other domains.                                                               of start and end times of intervals.

<a id="p003-b003"></a>

<!-- p003-b003 -->
2.2   Uncertainty of Data Values                                             2.3   Visual Encodings of Uncertain Intervals
In 2009 Sanyal et al. [26] conducted a study to examine the effec-           We formulated our design goals partly in accordance with [6] and
tiveness of four commonly used uncertainty visualization techniques          modified them for the representation of intervals:
– traditional error bars – somehow equivalent to our centered error
bars (see Section 2.3) but for line charts and surfaces, size of marks,        1. The visual encoding should clearly present the effect size – the
color of marks, and color of lines or surface areas. The visualizations           certain part of the interval should be clearly represented in com-
were based on either 1D or 2D data sets (which result in two- and                 bination with the uncertain start and end time.
three-dimensional visualizations). The study was conducted with 27
participants who had to solve four assignments which were divided              2. The visual encoding should be compatible with the well-known
equally into search and counting tasks. These were devised to simu-               representation of temporal intervals as horizontal bars on a tem-
late an exploratory navigation of the data set. Search tasks were aimed           poral axis.
at identifying locations of high or low uncertainty from within an area.
For counting tasks, the users had to count the different data features         3. Encodings of statistical uncertainty should explicitly map the un-
or uncertainty features in a visualization. The results showed some               derlying probability distribution to a continuous visual variable.
interesting observations. The results for using error bars to indicate
uncertainty stood out most. Users performed very poorly in the ques-           4. Encodings of bounded uncertainty should not provoke the inter-
tions where error bars were used, regardless of the data dimension                pretation of varying probabilities (i.e., no changes in the visual
(even though it took the most time to solve the tasks). They argued               variable).
that a possible reason could be the high density of the data sets which
made it hard to identify the single error bars. Another interesting result       Besides the studies mentioned in the previous section, a number of
is that there was a significant difference in user performance between       different ways of encoding uncertain information can be found in the
searching for locations of high uncertainty and searching for locations      literature. Bertin [4] defined these seven visual variables for visual
of low uncertainty. For 1D data, using the size of marks to indicate         representations: location, size, color hue, color value, grain, orien-
uncertainty had the best results for data values with high uncertainty.      tation, and shape. Morrison [17] added color saturation and arrange-
Mark color and surface color were the most successful techniques to          ment, and MacEachren [14, 13] suggested three more variables specif-
search for low uncertainty. For 2D data, surface coloring performed          ically for the visualization of uncertainty: clarity (fuzziness), resolu-
best overall, however, results for counting data features were not op-       tion (of boundaries and images), and transparency. However, some of
timal. In these cases (i.e., counting tasks) the other techniques were       these visual encodings are quite similar, thus we grouped them into
more successful, but they were all outperformed by surface coloring          (1) focus, contour crispness, fill clarity, fog, and resolution [13], fuzzi-
in the other disciplines. It should be noted that there is no clear winner   ness, clarity, and blur [13, 15], (2) fog obscuring uncertain items [13],
among the four visualization technique, just best choices for a specific     (3) color value [7, 15], (4) texture [7], (5) location [15], (6) orienta-
task. The results showed lower error rates for 1D data than for 2D           tion [13], (7) transparency [8] (MacEachren evaluated transparency as
data, even though the latter tasks took longer time to be solved.            being ‘acceptable’ [15]), (8) color hue [7, 13] (MacEachren refuted its
    Corell and Gleicher [6] presented a user study on the effectiveness      suitability [15]), (9) color saturation [13] (MacEachren refuted its suit-
of four different visual encodings of statistical uncertainty of data val-   ability [15]), (10) shape [13] (MacEachren refuted its suitability [15]).
ues, i.e., bar charts with error bars (again similar to our centered error       However, not all of these visual variables are applicable when rep-
bars), modified box plots, gradient plots, and violin plots. Their re-       resenting uncertainty of start and end times. One of our design goals
sults revealed some problems with error bars: (1) a ‘within-the-bar          was to preserve the well known representation of intervals as horizon-
bias’ which means that representing the mean value by a bar provides         tal bars (compare, for instance, [22, 21, 5, 3]). Thus, we came up
a false metaphor of containment and participants thought that values         with a set of six different visual encodings for uncertain start and end
within this bar are more likely than values outside this bar, and (2) a      of temporal intervals that go along with representing the certain part
‘binary interpretation’, which means that values are either within the       of the interval (i.e., the time span at which the event takes place for
margins of the error bars, or they are not, which leads to difficulties in   sure) by a horizontal bar along a time axis. Three of our encodings we
judging the correct probability.                                             designed for the representation of bounded uncertainty (1–3) and the
    In 2012 MacEachren et al. [15] conducted two connected studies, of       other three we designed for the representation of statistical uncertainty
which one targeted intuitiveness of abstract visual variables and iconic     (4–6). In Figure 1 we present these different types:
symbols in uncertainty visualizations. The second study focused on
performance while map reading tasks had to be solved using the most           (a) Gradient plots: using a color gradient form a solid color (e.g.,
intuitive abstract and iconic representations of uncertainty. It was lim-         blue) to white (in accordance to [6])
ited to the use of symbols to represent different items of discrete data
linked with uncertainty. The types of uncertainty used were accuracy,         (b) Violin plots: encoding the probability that a point in time falls
precision, and trustworthiness. These were mapped to three data types,            into the interval by the height of the bar (in accordance to [6])
namely space, time, and attribute, resulting in nine different condi-
tions for uncertainty. The symbols that were used can be split into           (c) Accumulated probability: similar to violin plots but represent-
two groups: abstract and iconic. The first group consisted of symbols             ing the uncertainty by accumulating the probability distribution
which vary only in one visual variable. The eleven abstract visual vari-          of the start and end times
ables have been designed in the works of Bertin [4], Morrison [17] and
MacEachren [14, 13]. The second group consisted of symbols which              (d) Error bars: as used in [19]
have an icon, a graphical metaphor for their represented value, for in-
stance, the picture of a clock to signify time. Some of their results         (e) Centered error bars: error bars that are centered around the
reflect that iconic symbols of uncertainty can be more intuitive and              most likely start and end times
more accurately judged when aggregated while abstract visual encod-
ings can lead to quicker judgments.                                            (f) Ambiguation: as used in [19]
  Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:38:00 UTC from IEEE Xplore. Restrictions apply.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
542                                                 IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 22, NO. 1, JANUARY 2016

<a id="p004-b002"></a>

<!-- p004-b002 -->
Fig. 2: We used EvalBench [1] for the evaluation session. This is a screenshot of one question of Task 2c.

<a id="p004-b003"></a>

<!-- p004-b003 -->
Although Olston and Mackinlay [19] used error bars to represent             tion (normal cdf) with µ = 0, σ = 1 and used these values to weight
statistical uncertainty, we assumed that our study participants would          the alpha level, width, or height respectively. Therefore, we used the
interpret them as representing bounded uncertainty, since they do not          range of µ ± 3σ to have a smooth transition from earliest and latest
explicitly encode the underlying probability function. In Figure 1 the         start/end with the µ at the mean start/end time point. We decided to
start and end of uncertain regions are marked by lines. These lines            not embed our questions within a use case or domain in order to not
were not given in the pictures presented in the user study.                    foster any domain-specific presumptions or interpretations.

<a id="p004-b004"></a>

<!-- p004-b004 -->
3     S TUDY D ESIGN                                                           3.2 Hypotheses
In the following subsections we give a detailed outline of our study           We formulated the following five hypotheses:
design, including the design goals, data and visualization preparation,         H1 Participants naturally interpret gradient plots, violin plots, and
our hypotheses, and how we conducted the user study session.                       accumulated probability plots to represent statistical uncertainty
                                                                                   while they interpret error bars, centered error bars, and ambigua-
3.1    Data                                                                        tion to represent bounded uncertainty.
The figures we presented to our subjects are based on generated artifi-
cial data that was then used to generate the visual representations. In a       H2 Error bars, centered error bars, and ambiguation are better suited
first step we generated the data using the R environment for statistical           (in terms of error and time) to represent earliest start, latest start,
computing [24]. We generated a day and a month in the year 2014                    earliest end, and latest end than gradient plots, violin plots, and
using the runif function to draw random deviates from a uniform dis-               accumulated probability plots.
tribution. Applying the same method, we added a random number of                H3 Error bars, centered error bars, and ambiguation are better suited
hours to the date to generate a time stamp for the earliest start and re-          (in terms of error and time) to judge minimum and maximum
peated adding hours for the latest start, earliest end, and latest end. We         duration of an interval.
limited the different intervals between the respective time points by
specifying the minimum and maximum number of hours of each inter-               H4 Gradient plots, violin plots, and accumulated probability plots
val. Based on these time stamps we calculated the mean start time (i.e.,           are better suited (in terms of error and time) than ambiguation
earliest start + (latest start - earliest start) / 2) and the mean end time        and error bars to judge the average duration of an interval.
accordingly. We chose the different parameters in a way that we could
provide a fixed time scale for all visualizations but still generate most       H5 Gradient plots, violin plots, and accumulated probability plots
possible combinations of uncertain start and end regions and interval              are equally suited (in terms of error and time) when judging the
durations. We did this to cover a wide range of possible occurrences               probability that a marked point in time falls into the represented
of uncertainty in real life. We used six labels for each of the six types          interval.
visual encodings and assigned the labels to the random data. For the
questions asking about the probability that the interval started or ended      3.3 Participants and Evaluation Session
at a specific time point (Task 4a and 4b), we generated time points in         We had 73 participants which we recruited from our bachelor students
the interval between earliest start and latest start as well as earliest end   in computer science (14 participants were female). All students were
and latest end. Therefore, we used the rnorm to draw random time               taking our course in information design and visualization which
points from a normal distribution and calculated the respective prob-          implies a certain knowledge about visual representations. To conduct
ability values. The resulting data frame containing all necessary data         the evaluation session we used EvalBench [1] (see Figure 2), a
was exported as a comma separated file and used to generate the visual         software library designed especially for evaluating visualizations
representations. For generating the figures out of the random data, we         and we conducted a pilot testing session with two participants. We
used Python [23] and matplotlib [10]. For the figures using a gradient,        decided for a within-subject study, so each participant had to solve the
violin, or accumulated probability transition between the earliest and         following tasks for all types of visual encodings:
latest start/end, we computed a normal cumulative distribution func-
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:38:00 UTC from IEEE Xplore. Restrictions apply.

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
GSCHWANDTNER ET AL.: VISUAL ENCODINGS OF TEMPORAL UNCERTAINTY: A COMPARATIVE USER STUDY                                                           543

<a id="p005-b002"></a>

<!-- p005-b002 -->
Fig. 3: This is a screenshot of one question of Task 1.

<a id="p005-b003"></a>

<!-- p005-b003 -->
Task 1 – Interpretation: We presented one picture of each
type with marked start and end intervals (labeled by ‘A’ and ‘B’; see
Figure 3). For each type the participants answered the question
   1 How would you interpret this type of visualization?
by choosing one of three possible answers: (•) Equal probabilities:
all starting points in A have the same probability and all end points        Fig. 4: Task 4b: judging the probability that the interval has already
in B have the same probability, (•) Unequal probabilities: the               ended at the marked point in time.
probability that the interval has already started is least likely at the
left border of A and most likely at the right border of A, and (•)
None of these options. This task was preceded by a detailed ex-              Task 4a and Task 4b were answered by picking a numeric value
planation of what we mean with this two different types of uncertainty.      between 0 and 100. To answer Task 4c, participants could choose one
                                                                             of three options: (•) the earlier point in time is more likely contained
Task 2 – Start and End Time: We presented one picture of                     in the interval, (•) the later point in time is more likely contained in
each visual encoding type for each of these subtasks:                        the interval, (•) both points in time are equally likely contained in the
                                                                             interval.
 2a What is the earliest possible start point of this interval?
 2b What is the latest possible start point of this interval?                Task 5 – Preferences: For the final task we presented one pic-
                                                                             ture of each type and asked the participants:
 2c What is the earliest possible end point of this interval?
                                                                                5 What are your personal preferences regarding this type of visu-
 2d What is the latest possible end point of this interval?                       alization?
Participants were asked to answer by selecting a date and time by            on a five point Likert scale from ‘I don’t like it’ to ‘I like it’.
means of a date picker tool (see Figure 2).
                                                                             For these tasks (except for Task 1 and Task 5) we measured the
Task 3 – Interval Duration: We presented one picture of each                 completion time and error, i.e., depending on the question type we
visual encoding type for each of these subtasks:                             measured right or wrong, or error magnitude (the absolute distance
                                                                             from the expected value). In order to balance our results with
 3a What is the maximum duration of the interval (in hours)?                 respect to fatigue and learning effects, questions within one task were
 3b What is the minimum duration of the interval (in hours)?                 presented to the participants in random order.

<a id="p005-b004"></a>

<!-- p005-b004 -->
3c What is the average duration of the interval (in hours)?                 4 R ESULTS
                                                                             We had 73 submissions from which we had to exclude one because
Participants were asked to answer by freely picking a numeric value          the logs of completion time and error rate were empty. Thus, we had
(number of hours).                                                           a total of 72 submissions. Given the varying numbers of pictures we
                                                                             presented for each type for different task we had different sample sizes
Task 4 – Probabilities: We presented three pictures of each of               for different tasks (see Table 1) with a minimum of n = 72.
the types gradient plot, accumulated probability plot, and violin plot
for each subtask and marked different positions in uncertain regions         4.1 Analysis Approach
with a red line (see Figure 4), or, in case of Task 4c, with two red lines   In order to analyze our results we used the R environment for statis-
(one in the uncertain start region and one in the uncertain end region).     tical computing [24]. We conducted one way analysis of variances
Again, this task session was preceded by an explanation about the            (ANOVA) for each task and subtask. Since our data does not always
underlying probability distribution and its representation.                  completely follow a normal distribution (which is a prerequisite for
                                                                             ANOVA), we backed up our results with the non-parametric Kruskal-
 4a What is the statistical probability (in %) that the interval has al-
                                                                             Wallis test [12], which led to similar but even more significant results
    ready started at the marked point in time (red line)?
                                                                             (see Table 2 and 3). ANOVA and Kruskal-Wallis tests give initial in-
 4b What is the statistical probability (in %) that the interval has al-     formation if there is a significant difference in the means and vari-
    ready ended at the marked point in time (red line)?                      ances (of error and time) of the different groups, i.e., the different
                                                                             visual encodings. To understand which of the groups differ signifi-
 4c Which of the two marked points in time (red lines) are more              cantly, we conducted Games-Howell post-hoc tests or Nemenyi post-
    likely to fall into the interval?                                        hoc tests [18] respectively. Moreover, we visually investigated boxplot
  Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:38:00 UTC from IEEE Xplore. Restrictions apply.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
544                                                       IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 22, NO. 1, JANUARY 2016

<a id="p006-b002"></a>

<!-- p006-b002 -->
Table 1: Sample Sizes for Different Tasks.                        comparison. For this second answer set we excluded answers that could not be
                                                                                 considered as a valid answer to the question for these two reasons: the given
                                                                                 answer, i.e., the point in time, is much too far away from the time we were
  task       # encoding     # pictures     # answers          # answers          looking for or the given answer points directly to one of the other start and
             types          per type       per type           after exclusion*   end points. Our exact algorithm was: (1) exclude points in time that are not
  Task 1     6              1              72                 72                 visible in the picture (outside the scale), (2) exclude answers that differ more
  Task 2a    6              1              72                 67                 than 18 hours from the point in time we were looking for, i.e., outside a 36
  Task 2b    6              1              72                 58                 hour interval around the point we were looking for (considering our overall
  Task 2c    6              1              72                 64                 time frame of 192 hours for the whole picture, these 36 hours seemed to be a
  Task 2d    6              1              72                 66                 rather conservative approach), and (3) exclude answers that point to an other
  Task 3     6              1              72                 72                 start or end time with a precision of 6 hours or less (6 hours are equivalent to
  Task 4a    3              3              216                216                one tick on the time scale of the provided pictures). This led to the exclusion
  Task 4b 3                 3              216                191                of 103 answers from 1728 answers (i.e., 17 earliest start, 39 latest start, 31
  Task 4c    3              3              216                216                earliest end, and 16 latest end answers). Leaving a minimum of 67 answers
  Task 5     6              1              72                 72                 for each visual encoding for Task 2a, 58 answers for Task 2b, 64 answers
  *we describe the exclusion of answers in Section 4.2                           for Task 2c, and 66 answers for Task 2d. However, we based our analysis
                                                                                 on the original answer set and used this second answer set only for comparison.

<a id="p006-b003"></a>

<!-- p006-b003 -->
Task 4b: Badly phrased question: Inspecting the answers to Task 4b,
representations of the results as well as mean and median values in or-          i.e., judging the probability to which the interval has already ended a marked
der to form our conclusions.                                                     position in time (in the uncertain end region), we again noticed some obvious
   However, before actually running these tests, we manually in-                 misunderstandings. In particular, there were many answers that gave us the
spected the results. Among a large majority of reasonable results, we            estimated probability to which the marked point in time falls into the interval
                                                                                 (i.e., indicated by the height of accumulated probability plots and violin plots,
also noticed some peculiarities.
                                                                                 and by the amount of transparency of the gradient plot). This is correct when
4.2 Problems and Observations                                                    asking for the probability to which the interval has already started at the
                                                                                 marked position. However, in case of the probability to which the interval has
In this section we provide a fair discussion of the problems we                  already ended at the marked position, this answer is the inverted probability of
encountered, the data cleansing we had to conduct at different tasks,            what we were looking for (i.e., 100%-given answer). Thus, we decided to still
and also of the mistakes we made. In particular, when inspecting the             use the original set of given answers for analysis, but also prepare two more
results we noticed different problems for different tasks:                       sets of answers for further investigation: one where we excluded the inverted
                                                                                 answers and one where we re-inverted these answers. Our exact algorithm
Task 2: Confusion of similar questions: When inspecting the                      to identify these inverted answers was: answers that deviate from the correct
answers for Task 2 it was obvious that the participants quite frequently         probability by more than 50% and the deviation of their inverted values from
confused earliest start, latest start, earliest end, and latest end. This        the correct value is less than 15%. This led to the exclusion/inversion of 62
is not surprising, since they had to go through a lot of questions and           answers out of 648 answers, which left a minimum of 191 answers for each
may have gotten less careful over time. To deal with this problem, we            visualization type when excluding them. However, these three data sets of
prepared a second data set from the original set of answers for                  different degrees of preparation led to only minor changes in outcome.

<a id="p006-b004"></a>

<!-- p006-b004 -->
Task 4c: Unequal conditions: We prepared pictures of gradient plots,
 Table 2: P-Values of ANOVA and Kruskal-Wallis Tests for Errors.                 violin plots, and accumulated probability plots (three different pictures for
                                                                                 each type) where two points in time were marked – one in the uncertain
                                                                                 start region and one in the uncertain end region – and asked the participants
 task                      < ANOVA p-value           < Kruskal-Wallis p-value
                                                                                 which point is more likely to fall into the interval or if they are both equally
 earliest start            < 0.892                   < 0.001 ***                 likely. However, the results showed very bad scoring for gradient plots which
 latest start              < 0.130                   < 0.001 ***                 does not go along with the results of the other tasks. We believe we made a
 earliest end              < 0.008 **                < 0.001 ***                 mistake in presenting two out of three gradient plots with equal probabilities
 latest end                < 0.274                   < 0.001 ***                 of the two marked positions to fall into the interval (in contrast to much more
 together                  < 0.097                   < 0.001 ***                 easily distinguishable probability settings for the other plots). We decided to
 minimum duration          < 0.001 ***               < 0.001 ***                 not present these results, because we believe they only reflect our mistake
 average duration          < 0.188                   < 0.001 ***                 in not preparing pictures of balanced distinguishability for the three visual
 maximum duration          < 0.047 *                 < 0.001 ***                 encodings. On the other hand, we already tested the effectiveness of these
 together                  < 0.002 **                < 0.001 ***                 visual encodings in communicating probabilities in Task 4a and Task 4b.
 probability (deleted)     < 0.001 ***               < 0.001 ***
 probability (all)         < 0.001 ***               < 0.001 ***                 4.3   Outcome
 Significance levels: p-value<0.001: ***, p-value<0.01: **, p-value<0.05: *
                                                                                 In this section we evaluate our results and reflect on our hypotheses.

<a id="p006-b005"></a>

<!-- p006-b005 -->
H1 – Interpretation of visual encodings: Hypothesis 1 is partly con-
  Table 3: P-Values of ANOVA and Kruskal-Wallis Tests for Time.
                                                                                 firmed. There are very clear results for most visual encodings and these
                                                                                 match our assumptions, that accumulated probability plots, violin plots,
 task                      < ANOVA p-value           < Kruskal-Wallis p-value    and gradient plots are interpreted as statistical probability and the others as
 earliest start            < 0.005 **                < 0.001 ***                 bounded probability (see Figure 5). However, centered error bars present an
 latest start              < 0.046 *                 < 0.001 ***                 outlier here. Our results do not show a clear winner: 47% expected this visual
 earliest end              < 0.217                   < 0.001 ***                 encoding to represent bounded uncertainty and 36% expected it to represent
 latest end                < 0.995                   < 0.029 *                   statistical uncertainty. Moreover, 17% of the participants thought it represents
 together                  < 0.931                   < 0.139                     neither of them. This is by far the highest percentage value of the category
 minimum duration          < 0.001 ***               < 0.001 ***                 ‘other’ among all visual encoding types, which we believe also represents the
 average duration          < 0.383                   < 0.211                     participants confusion with this type of visualization.
 maximum duration          < 0.001 ***               < 0.001 ***                 Another notable finding is that error bars as well as centered error bars
 together                  < 0.004 **                < 0.001 ***                 are usually quite often used to represent statistical uncertainty [19], but
 probability (deleted)     < 0.048 *                 < 0.006 **                  we assumed that participants would consider them to represent bounded
 probability (all)         < 0.043 *                 < 0.003 **                  uncertainty because they do not explicitly encode the probability distribution.
 Significance levels: p-value<0.001: ***, p-value<0.01: **, p-value<0.05: *      This assumption was backed up by the study results, which show that 89%
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:38:00 UTC from IEEE Xplore. Restrictions apply.

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
GSCHWANDTNER ET AL.: VISUAL ENCODINGS OF TEMPORAL UNCERTAINTY: A COMPARATIVE USER STUDY                                                                           545

<a id="p007-b002"></a>

<!-- p007-b002 -->
Fig. 5: Ad-hoc interpretation of the different visualization types. Centered error bars led to confusion: 47% expected this them to represent
bounded uncertainty, 36% expected them to represent statistical uncertainty, and 17% of thought they represent either of which.

<a id="p007-b003"></a>

<!-- p007-b003 -->
Fig. 6: Time and error rates for judging earliest start, latest start, earliest end, and latest end. Ambiguation, centered error bars, and error bars
lead to significantly (p<0.001) better error rates than accumulated probability plots, gradient plots, and violin plots. Gradient plots, however,
score significantly (p<0.001) better than accumulated probability plots and violin plots.

<a id="p007-b004"></a>

<!-- p007-b004 -->
of the participants expected error bars to represent bounded uncertainty, and        other visual encodings, especially when assessing latest start and earliest end.
besides the general confusion with centered error bars there are still more votes    Participants estimated the latest start too early and the earliest end too late.
for bounded uncertainty than for statistical uncertainty.                            Moreover, even in the cleansed comparison data set we found many outliers
                                                                                     for centered error bars, most of them pointing to either the beginning or the
H2 – Effectiveness in representing start and end time: Hypothesis 2                  end of the bar that represents the actual interval. Thus, we assume that the
can be confirmed. We assumed that ambiguation, error bars, and centered              visual encodings of centered error bars led to confusion.
error bars are better suited to represent start and end times.
Error: In Table 2 we see that there is a big difference between p-values of          H3 – Effectiveness in representing minimum and maximum dura-
the ANOVA test and p-values of the Kruskal-Wallis test because this answer           tion: Again, hypothesis 3 can be confirmed only partly. We assumed that
set did not meet the preconditions of the ANOVA test. Thus, we used the              error bars, centered error bars, and ambiguation are better suited to represent
Kruskal-Wallis test in combination with the Nemenyi post-hoc test. The               minimum and maximum duration of intervals. Since the answer data set did
Nemenyi post-hoc test showed that, as expected, ambiguation, error bars,             not meet all constraints of the ANOVA test, we again used the Kruskal-Wallis
and centered error bars lead to significantly (p<0.001) better error rates than      test in combination with the Nemenyi post-hoc test.
accumulated probability plots, violin plots, and gradient plots. When looking        Error: Accumulated probability and violin plots have significantly (p<0.001)
at the comparison answer set (from which we excluded obviously misguided             worse error rates than all the other visual encodings for judging the minimum
answers), we find very similar results with no difference in significance levels.    and maximum duration. Again, gradient plots score better than expected and
Time: Considering the completion time there are significant differences for          do not significantly differ from ambiguation, error bars, and centered error
the single subtasks, but not when looking at all four cases together, so these       bars (see Figure 7). The mean error of gradient plots even makes the second
differences are distributed among the different visualization types and cancel       place after error bars and the median error of gradient plots is second best after
each other out.                                                                      centered error bars.
Other observations: While there are no significant differences between am-           Time: There are also significant differences in completion time. Error bars
biguation, error bars, and centered error bars, gradient plots score significantly   score significantly (p<0.001) better than accumulated probability plots,
(p<0.001) better than the two other encodings of statistical uncertainty (i.e.,      ambiguation, and centered error bars. In addition, gradient plots and violin
accumulated probability plots and violin plots). The results show that violin        plots score significantly (p<0.001) better than accumulated probability plots.
plots and accumulated probability plots have a much higher error rate than all
  Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:38:00 UTC from IEEE Xplore. Restrictions apply.

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
546                                                      IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 22, NO. 1, JANUARY 2016

<a id="p008-b002"></a>

<!-- p008-b002 -->
Fig. 7: Time and error rates for judging the minimum and maximum duration of intervals. Accumulated probability plots and violin plots
have significantly (p<0.001) worse error rates than all other visual encodings.

<a id="p008-b003"></a>

<!-- p008-b003 -->
H4 – Effectiveness in representing average duration: We thought that
the visual encodings intended to represent statistical uncertainty are better
suited to judge the average duration of an interval than the visual encodings
for bounded uncertainty, since they give visual hints of the probability of
start and end times. However, hypothesis 4 must be rejected since they score
slightly worse in terms of median errors (see Figure 8). In addition, centered
error bars lead to significantly better error rates than gradient plots (p<0.001),
accumulated probability plots (p<0.01), and violin plots (p<0.05). This seems
legitimate, given that the mean start time lies in the middle between earliest
start and latest start and the same is true for the mean end point for all types of
visual encodings. Thus, the interval bar of centered error bars encodes exactly
the average duration of the interval.
Time: There are no significant differences in terms of completion time.
Other observations: Considering the combined results of error rates for
minimum, maximum, and average duration, violin plots and accumulated
probability plots score significantly (p<0.001) worse than all other visual
encodings, and gradient plots score only significantly (p<0.05) worse than
centered error bars and error bars.

<a id="p008-b004"></a>

<!-- p008-b004 -->
H5 – Effectiveness in representing probability of start and end time:
We assumed that gradient plots, violin plots, and accumulated probability plots
are equally suited to represent the probability of which a marked point in time
falls into the represented interval.
Error: Considering the original answer set of Task 4 (no cleansing), gradient
plots have a significantly (p<0.001) lower error rate than violin plots (see          Fig. 9: Time and error rates for judging probability values. Gradient
Figure 9). Also accumulated probability plots lead to better error rates than         plots lead to significantly better error rates than violin plots (p<0.001)
violin plots (but not significantly: p=0.06). When deleting or correcting the         and accumulated probability plots (p<0.01).
inverted answers – both measures lead to very similar results – this picture
becomes more clear: gradient plots have a significantly lower error rate than
violin plots (p<0.001) and accumulated probability plots (p<0.01). And
again, accumulated probability plots lead to slightly better error rates than         ing the probability to which a point in time falls into the interval (i.e., gradient
violin plots.                                                                         plots, accumulated probability plots, and violin plots) to those visual encodings
Time: Considering completion time, there are no significant differences, but          which do not (i.e., ambiguation, error bars, and centered error bars) in their ef-
interestingly, gradient plots lead to the longest median completion times.            fectiveness for judging these probabilities. It would be important to understand
From this results, we draw the conclusion that hypothesis 5 must also be re-          if the explicit visual mapping of these probabilities actually provide a signifi-
jected, since gradient plots are significantly better suited to represent the prob-   cant benefit. Moreover, we had to exclude Task 4c (i.e., which of two marked
ability of which a marked point in time falls into the represented interval – at      positions is more likely to fall into the interval) because of mistakes in the task
least in terms of error rates.                                                        design. It would be interesting to find out if this analysis leads to additional
                                                                                      insights. Another aspect which should be considered is that we have based our
5     L IMITATIONS AND F URTHER W ORK                                                 visualizations of probabilities on normal probability distributions. It is not clear
Our study had some limitations that could be interesting aspects of further           if the same visual encodings are equally suited to communicate other types of
work. For instance, we did not compare the visual encodings explicitly show-          probability distributions. Also, the visualizations tested in this study were lim-
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:38:00 UTC from IEEE Xplore. Restrictions apply.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
GSCHWANDTNER ET AL.: VISUAL ENCODINGS OF TEMPORAL UNCERTAINTY: A COMPARATIVE USER STUDY                                                                             547

<a id="p009-b002"></a>

<!-- p009-b002 -->
Fig. 8: Time and error rates for judging average duration. Centered error bars lead to significantly better error rates than accumulated
probability plots (p<0.01), gradient plots (p<0.001), and violin plots (p<0.05).

<a id="p009-b003"></a>

<!-- p009-b003 -->
Fig. 10: Preferences about the different visualization types. We asked our study participants to express their personal preferences regarding the
different visualization techniques on a five point Likert scale from -2 (‘I don’t like it’) to 2 (‘I like it’).

<a id="p009-b004"></a>

<!-- p009-b004 -->
ited to very simplistic, non-interactive representations of one interval at a time.     ACKNOWLEDGMENTS
More complex settings and interactions are relevant to be addressed in further          We wish to thank Peter Filzmoser and Margit Pohl for their counseling regard-
work.                                                                                   ing the statistical analysis. Moreover, the research leading to these results has
In general there is still a need to investigate other types of temporal uncertain-      received funding from the Centre for Visual Analytics Science and Technol-
ties, for instance, different types of visual encodings to represent (bounded and       ogy CVAST, funded by the Austrian Federal Ministry of Science, Research,
statistical) uncertainties with dependencies (see Section 1.1). There are some          and Economy in the exceptional Laura Bassi Centres of Excellence initiative
approaches to represent these dependencies (e.g., [11, 3]), however, no com-            (#822746).
prehensive comparative study of these approaches has been conducted.

<a id="p009-b005"></a>

<!-- p009-b005 -->
6     C ONCLUSION
We have conducted a comprehensive user study comparing six different ways
of encoding temporal uncertainty (i.e., uncertain start and end times of inter-
vals) in terms of error and completion time. Our results show that centered
error bars led to confusion on how to interpret them even though we gave an
explanation marking earliest start, latest start, earliest end, and latest end in the
beginning of the evaluation session. Other studies have already reported on
problems with error bars [26, 6], however for different reasons. As usual, the
best suited visual encoding depends on the task. For representing earliest start,
latest start, earliest end, and latest end, as well as minimum, maximum, and av-
erage duration of intervals, error bars and ambiguation scored best. However, if
also a statistical probability distribution should be represented, we recommend
gradient plots, since they not only score best in representing these probabili-
ties (in terms of error rates) but are also significantly superior to accumulated
probability plots and violin plots regarding the other tasks. Interestingly, par-
ticipants liked gradient plots the least when reporting on their preferences (see
Figure 10).
    Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:38:00 UTC from IEEE Xplore. Restrictions apply.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
548                                                     IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 22, NO. 1, JANUARY 2016

<a id="p010-b002"></a>

<!-- p010-b002 -->
R EFERENCES                                                                         [26] J. Sanyal, S. Zhang, G. Bhattacharya, P. Amburn, and R. Moorhead. A
                                                                                         user study to compare four uncertainty visualization methods for 1D and
 [1] W. Aigner, S. Hoffmann, and A. Rind. Evalbench: A software library for              2D datasets. IEEE Transactions on Visualization and Computer Graph-
     visualization evaluation. Computer Graphics Forum, 32(3):41–50, 2013.               ics, 15(6):1209–1218, 2009.
 [2] W. Aigner, S. Miksch, H. Schumann, and C. Tominski. Visualization of           [27] H. Senaratne and L. Gerharz. An assessment and categorisation of quan-
     time-oriented data. Human-Computer Interaction. Springer-Verlag, 1st                titative uncertainty visualisation methods for geospatial data. In Proceed-
     edition, 2011.                                                                      ings of the 14th AGILE International Conference on Geographic Infor-
 [3] W. Aigner, S. Miksch, B. Thurnher, and S. Biffl. PlanningLines: Novel               mation Science, 2011.
     glyphs for representing temporal uncertainties and their evaluation. In
     Proceedings of the 9th International Conference on Information Visuali-
     sation (IV 2005), pages 457–463. IEEE Computer Society Press, 2005.
 [4] J. Bertin. Semiology of graphics: diagrams, networks, maps (translated
     by William J. Berg). University of Wisconsin Press, 1967/1983.
 [5] L. Chittaro and C. Combi. Visual definition of temporal clinical abstrac-
     tions: A user interface based on novel metaphors. In S. Quaglini, P. Bara-
     hona, and S. Andreassen, editors, Proceedings of the 8th Conference on
     Artificial Intelligence in Medicine in Europe (AIME 2001), Lecture Notes
     in Computer Science, pages 227–230. Springer-Verlag, 2001.
 [6] M. Correll and M. Gleicher. Error bars considered harmful: Exploring al-
     ternate encodings for mean and error. IEEE Transactions on Visualization
     and Computer Graphics, 20(12):2142–2151, 2014.
 [7] T. J. Davis and C. Keller. Modelling and visualizing multiple spatial un-
     certainties. Computers & Geosciences – Special issue on exploratory car-
     tographic visualization, 23(4):397–408, 1997. Exploratory Cartograpic
     Visualisation.
 [8] I. Drecki. Visualisation of uncertainty in geographical data. In W. Shi,
     P. Fisher, and M. F. Goodchild, editors, Spatial Data Quality, Chapter 10,
     pages 140—159. Taylor & Francis, London, UK, 2002.
 [9] R. L. Harris. Information Graphics: A Comprehensive Illustrated Refer-
     ence. Oxford University Press, Inc., 1999.
[10] J. D. Hunter. Matplotlib: A 2d graphics environment. Computing In
     Science & Engineering, 9(3):90–95, 2007.
[11] R. Kosara and S. Miksch. Metaphors of movement: A visualization and
     user interface for time-oriented, skeletal plans. Artificial Intelligence in
     Medicine (AIIM), Special Issue: Information Visualization in Medicine,
     22(2):111–131, 2001.
[12] W. H. Kruskal and W. A. Wallis. Use of ranks in one-criterion variance
     analysis. Journal of the American Statistical Association, 47(260):583–
     621, 1952.
[13] A. M. MacEachren. Visualizing uncertain information. Cartographic
     Perspectives, (13):10–19, 1992.
[14] A. M. MacEachren. How maps work: representation, visualization, and
     design. Guilford Press, 1995.
[15] A. M. MacEachren, R. E. Roth, J. O’Brien, B. Li, D. Swingley, and
     M. Gahegan. Visual semiotics & uncertainty visualization: An empiri-
     cal study. IEEE Transactions on Visualization and Computer Graphics,
     18(12):2496–2505, 2012.
[16] P. Messner. Time Shapes – A visualization for temporal uncertainty in
     planning. MSc thesis in Business Informatics, Vienna University of Tech-
     nology, Institute of Software Technology and Interactive Systems, April
     2000.
[17] J. L. Morrison. A theoretical framework for cartographic generalization
     with the emphasis on the process of symbolization. International Year-
     book of Cartography, 14:115–127, 1974.
[18] P. Nemenyi. Distribution-free multiple comparisons. Master’s thesis,
     Princeton University, supervised by J.W. Tukey, 1963.
[19] C. Olston and J. D. Mackinlay. Visualizing data with bounded uncer-
     tainty. In Proceedings of the IEEE Symposium on Information Visualiza-
     tion (InfoVis’02), pages 37–41. IEEE Computer Society Press, 2002.
[20] A. T. Pang, C. M. Wittenbrink, and S. K. Lodha. Approaches to uncer-
     tainty visualization. The Visual Computer, 13(8):370–390, 1997.
[21] C. Plaisant, R. Mushlin, A. Snyder, J. Li, D. Heller, and B. Shneider-
     man. Lifelines: Using visualization to enhance navigation and analysis
     of patient records. In Proceedings of the AMIA Symposium (AMIA 1998),
     pages 76–80. Hanley & Belfus, Inc., 1998.
[22] J. Priestley. A Chart of Biography. Johnson, J., 1765.
[23] Python Software Foundation. Python Language Reference, version 2.7,
     2015.
[24] R Core Team. R: A Language and Environment for Statistical Computing.
     R Foundation for Statistical Computing, Vienna, Austria, 2013.
[25] J.-F. Rit. Propagating temporal constraints for scheduling. In Proceedings
     of the 5th National Conference on Artificial Intelligence (AAAI-86), pages
     383–388. AAAI Press, 1986.
Authorized licensed use limited to: UNIVERSITAETSBIBL STUTTGART. Downloaded on October 26,2026 at 13:38:00 UTC from IEEE Xplore. Restrictions apply.
