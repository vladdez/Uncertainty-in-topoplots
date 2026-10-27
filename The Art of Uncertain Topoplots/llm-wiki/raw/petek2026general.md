---
id: "petek2026general"
title: "A General Approach to Visualizing Uncertainty in Statistical Graphics"
source_file: "The Art of Uncertain Topoplots/papers/petek2026general.pdf"
source_sha256: "83da5539b44112aa2863d11cecf719bcc9869ae3512ea38d202a77723877b6f8"
extraction_format: 1
---

# A General Approach to Visualizing Uncertainty in Statistical Graphics — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
1

<a id="p001-b002"></a>

<!-- p001-b002 -->
A G ENERAL A PPROACH TO V ISUALIZING U NCERTAINTY IN
                                                              S TATISTICAL G RAPHICS

<a id="p001-b003"></a>

<!-- p001-b003 -->
Bernarda Petek                                                        David Nabergoj
                                                               University of Ljubljana                                               University of Ljubljana
                                                    Faculty of Computer and Information Science                           Faculty of Computer and Information Science
                                                      Večna pot 113, 1000 Ljubljana, Slovenia                              Večna pot 113, 1000 Ljubljana, Slovenia
arXiv:2508.00937v4 [stat.ME] 1 Jul 2026

<a id="p001-b004"></a>

<!-- p001-b004 -->
bernarda.petek@fri.uni-lj.si                                          david.nabergoj@fri.uni-lj.si

<a id="p001-b005"></a>

<!-- p001-b005 -->
Erik Štrumbelj
                                                                                                  University of Ljubljana
                                                                                       Faculty of Computer and Information Science
                                                                                         Večna pot 113, 1000 Ljubljana, Slovenia
                                                                                           erik.strumbelj@fri.uni-lj.si

<a id="p001-b006"></a>

<!-- p001-b006 -->
A BSTRACT
                                                     We present a general approach to visualizing uncertainty in static 2-D statistical graphics. If we
                                                     treat a visualization as a function of its underlying quantities, uncertainty in those quantities induces
                                                     a distribution over images. We show how to aggregate these images into a single visualization
                                                     that represents the uncertainty. The approach can be viewed as a generalization of sample-based
                                                     approaches that use overlay. Notably, standard representations, such as confidence intervals and
                                                     bands, emerge with their usual coverage guarantees without being explicitly quantified or visualized.
                                                     As a proof of concept, we implement our approach in the IID setting using resampling, provided as
                                                     an open-source Python library. Because the approach operates directly on images, the user needs only
                                                     to supply the data and the code for visualizing the quantities of interest without uncertainty. Through
                                                     several examples, we show how both familiar and novel forms of uncertainty visualization can be
                                                     created. The implementation is not only a practical validation of the underlying theory but also an
                                                     immediately usable tool that can complement existing uncertainty-visualization libraries.

<a id="p001-b007"></a>

<!-- p001-b007 -->
Keywords Visualization, uncertainty, statistics, statistical graphics, confidence intervals, confidence bands.

<a id="p001-b008"></a>

<!-- p001-b008 -->
1    Introduction
                                          Communicating uncertainty is integral to modern quantitative data analysis, and visualization is the predominant
                                          mechanism for doing so (see Figure 1 for illustrative examples). However, despite their importance, communicating
                                          uncertainty in general and uncertainty visualization in particular remain underutilized. This stems from both challenges
                                          in quantifying uncertainty and challenges in designing effective visual representations [9, 18, 43]. With a lack of general
                                          approaches, an uncertainty visualization scenario typically requires a specific method for quantifying the uncertainty of
                                          interest and a specific method for visualizing it. This not only restricts most practitioners to uncertainty visualizations
                                          that are supported by popular software, but also leads to teaching-by-recipe and a limited understanding of uncertainty.
                                          In this paper, we propose a general approach for visualizing uncertainty in statistical graphics. The central idea is that
                                          a visualization of a quantity of interest, when treated without uncertainty, can be interpreted as a function applied to
                                          the distribution that represents uncertainty in that quantity. Evaluating this function over the underlying uncertainty
                                          distribution yields a distribution over images. For example, the code used to plot a sample mean can be viewed as a
                                          function of its sampling distribution. Applied to that distribution, it produces a corresponding distribution of mean plots.
                                          As demonstrated in Section 3, aggregating sample images drawn from this distribution produces a new visualization
                                          that directly represents the uncertainty in the quantity of interest.
                                              © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
                                              media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                                                                 redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                                                                IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
2

<a id="p002-b002"></a>

<!-- p002-b002 -->
Our approach simplifies the process of visualizing uncertainty both conceptually and in terms of practical application.
It requires only two components: a distribution that represents our uncertainty (hereafter, base distribution) and the
visualization that produces an image of the uncertain quantity of interest given one possible realization of its uncertainty
(hereafter, base visualization). In other words, the user needs only to specify the base distribution and to plot the
quantity of interest. Uncertainty of the quantity of interest is never explicitly computed or visualized. Instead, it is
implicitly determined by how the quantity of interest is encoded in the base visualization and manifests in the final
image through the variability of the base visualization outputs. For example, we do not have to compute the confidence
interval (CI) from the base distribution or explicitly encode it in the visualization.
At first glance, the approach may appear to be just another sample-based method. However, the distinction lies in how
the samples are incorporated. Sample-based techniques typically extend a base visualization by overlaying multiple
sample realizations, animating them, or presenting them as small multiples. In contrast, our approach aggregates the
images produced by the base visualization itself, treating that visualization as a black box and requiring no modification
to how individual samples are rendered. Although the resulting visualizations may look similar when both approaches
apply, the underlying principles differ in important ways. Notably, our method provides coverage guarantees that
sample-based techniques have traditionally lacked. In this sense, our approach can be viewed as a generalization of
sample-based methods that rely on overlayed samples. A more detailed discussion of how our approach relates to prior
work is provided in Section 6.1.
To summarize, the main contributions of our work are:

<a id="p002-b003"></a>

<!-- p002-b003 -->
• A novel and general approach to visualizing uncertainty, offering a fundamentally different perspective on
          uncertainty in statistical graphics.
        • Theoretical coverage guarantees for the resulting visualizations, which also illuminate properties of existing
          sample-based methods that rely on overlay.
        • A reference implementation of the proposed approach for independent and identically distributed (IID) data,
          serving both as a versatile tool and as a foundation for developing new uncertainty visualizations.

<a id="p002-b004"></a>

<!-- p002-b004 -->
2     Background on Uncertainty Visualization

<a id="p002-b005"></a>

<!-- p002-b005 -->
The focus of our work is on communicating probabilistically describable uncertainty using static two-dimensional (2-D)
visualizations, which remain the dominant form of uncertainty visualization. For a comprehensive review of uncertainty
visualization, we refer the reader to related work [2, 5, 10, 13, 19, 23, 25, 31, 40, 43, 52].
We organize our review of static 2-D visualizations of uncertainty according to the domain of the base distribution
and focus on the most popular approaches. This structure later facilitates discussion of the generality of our approach,
which can generate suitable uncertainty visualizations for every common domain, as well as its limitations, since it
cannot produce every type of visualization.

<a id="p002-b006"></a>

<!-- p002-b006 -->
2.1     Four Common Scenarios

<a id="p002-b007"></a>

<!-- p002-b007 -->
2.1.1    Univariate Distribution
The most common scenario involves an uncertain quantity represented by a single number (see Figure 1a), for example,
the mean age. A standard approach is to represent uncertainty using a quantile-based interval, while the boxplot remains
a popular alternative, particularly for empirical distributions. Entire univariate distributions can be visualized through
their probability mass function by using bar charts or dot plots, or their probability density function, using density plots,
histograms, or violin plots. Quantile dot plots, in contrast, simplify a probability distribution by discretizing it into
evenly spaced quantile intervals and representing each interval with dots [27]. Density strips offer a compact alternative,
conveying density through gradients [22].

<a id="p002-b008"></a>

<!-- p002-b008 -->
2.1.2    Bivariate Distribution
Another common scenario is that our uncertain quantity is a 2-D coordinate (see Figure 1b), for example, a location on
a map or the slope and intercept of our simple linear model. In 2-D density plots, uncertainty is typically represented
with color (hue, intensity, gradient). A common alternative is a contour plot, where contour lines indicate regions of
constant density. Instead of a smooth density transition, the data can be binned to produce a 2-D histogram or heatmap.
There also exist many different versions of bivariate boxplots, which differ in what summary statistics are used, for
example, the bagplot [46].
    © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
    media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                       redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                      IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
3

<a id="p003-b002"></a>

<!-- p003-b002 -->
Error bar              Violin plot            Beeswarm plot             Density heatmap            Contour plot          Scatterplot with
                                                                                                                                   rug plot

<a id="p003-b003"></a>

<!-- p003-b003 -->
(a) univariate distribution                                                 (b) bivariate distribution

<a id="p003-b004"></a>

<!-- p003-b004 -->
Band around the         Functional box plot   Hypothetical Outcome            Bar chart with       Ambiguous pie chart           Jitter plot
    function                                           Plots                     error bar

<a id="p003-b005"></a>

<!-- p003-b005 -->
(c) distribution over functions                                    (d) distribution over a probability simplex
                    Figure 1: Illustrative examples of uncertainty visualizations in four common scenarios.

<a id="p003-b006"></a>

<!-- p003-b006 -->
2.1.3    Distribution Over Functions
Another widely encountered scenario is when an uncertain quantity represents a functional relationship between two
variables (see Figure 1c), for example, population growth over time or a dose-response curve. The most popular
approaches are confidence bands and functional boxplots [48].

<a id="p003-b007"></a>

<!-- p003-b007 -->
2.1.4    Distribution Over a Probability Simplex
When our response of interest is a categorical variable but the probabilities of the categories are themselves uncertain, we
have to visualize a distribution over a probability vector (see Figure 1d). With two and three categories, the probability
simplex is a line segment and a triangle, respectively, so corresponding univariate and bivariate techniques can be used.
With four or more categories, we have to resort to representing the probability and corresponding uncertainty of each
category separately. Because probabilities are bounded, this is typically done with a bar chart or a dot plot (with a
guideline) and with error bars representing uncertainty.

<a id="p003-b008"></a>

<!-- p003-b008 -->
2.2     Other Scenarios and Approaches

<a id="p003-b009"></a>

<!-- p003-b009 -->
The four scenarios described above encompass most cases of uncertainty visualization and the most commonly used
approaches within them. Nevertheless, other techniques and less common, more complex scenarios also exist [5, 44].
While we do not attempt a comprehensive review, Section 5 presents several uncertainty visualizations generated by
our approach that extend beyond these scenarios, including representations of uncertainty in text, vectors, trajectories,
flows, and multivariate data.

<a id="p003-b010"></a>

<!-- p003-b010 -->
2.3     Sample-Based Approaches

<a id="p003-b011"></a>

<!-- p003-b011 -->
Following the taxonomy in [52], the visualizations discussed above either represent uncertainty by explicitly showing
the entire distribution or by visualizing summary statistics. The remaining options are to combine different visualization
techniques or, as emphasized in this section, to visualize uncertainty implicitly via samples. We treat sample-based
approaches separately for two reasons: (1) they can be applied across any of the previously discussed scenarios, and (2)
they are closely related to our own work. The central idea of sample-based methods is to visualize multiple samples,
typically ensuring that they are representative of the underlying distribution. Common strategies for combining these
samples include overlay [11], animation [20, 24], and small multiples [1, 30, 37].
Our approach uses overlay. While the concept of visualizing uncertainty by overlaying samples in a single visualization
is not new, it has primarily been applied to specific cases. For univariate distributions, this typically results in variations
   © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
4

<a id="p004-b002"></a>

<!-- p004-b002 -->
of the scatterplot, such as strip plots, jitter plots, bee swarm plots, or rug plots. Functions or trajectories are often
visualized as overlays, commonly referred to as line ensembles or spaghetti plots [42], including variants based on
representative samples [29]. Similarly, a Multiple Forecast Visualization (MFV) chart displays multiple forecasts in the
same visual space [41]. Although the idea of generalizing overlay beyond these special cases may seem straightforward,
it has not been systematically explored. It is implicitly suggested in [24] that such an overlay could be thought of
as a static analogue of a Hypothetical Outcome Plot (HOP), but this notion is not further developed. We extend the
concept of sample-based overlay methods by demonstrating that it can be generalized in several ways: (1) only the base
visualization and distribution are required, eliminating the need to explicitly determine how samples are overlaid, (2)
the resulting visualizations come with statistical guarantees, and (3) the range of useful uncertainty visualizations that
can be produced is broad. Taken together, these generalizations are conceptually novel. In Sections 6.1 and 5.3, we
broaden the discussion by further comparing our approach to more specific approaches.

<a id="p004-b003"></a>

<!-- p004-b003 -->
3     Visualizing a Distribution over Statistical Graphics

<a id="p004-b004"></a>

<!-- p004-b004 -->
In this section, we define our approach to visualizing uncertainty. It requires only samples from the base distribution
and a base visualization that produces an image of the quantity of interest for each sample. Combined, they result in a
distribution over images that we aggregate into a single static 2-D visualization.
No further assumptions are made about the base distribution, making the approach agnostic to the method used to
quantify uncertainty. Consequently, it can be applied to a wide range of outcomes, including those derived from Monte
Carlo simulations, sensitivity analyses, classical statistical inference, and Bayesian inference. Likewise, we make
no additional assumptions about the base visualization. Therefore, the approach can, in principle, be applied to any
base visualization, treating it as a black box. In practice, however, not every base visualization will yield a useful
visualization of uncertainty, a point we discuss in more detail in Sections 4 and 5.

<a id="p004-b005"></a>

<!-- p004-b005 -->
3.1    A Visualization as a Statistical Functional

<a id="p004-b006"></a>

<!-- p004-b006 -->
First, we formalize the key terms of quantity of interest, base distribution, and base visualization. In a visualization
of uncertainty, the quantity of interest θ is uncertain and we define it to be a random variable. The uncertainty is
represented by the base distribution of θ, which we represent with its cumulative distribution function F with support
                                                                 2
S. Finally, the base visualization is a map M : S → {0, 1}|R| . That is, the sample is mapped to an image, where
each point (x, y) ∈ R × R is a binary pixel.
This definition of the base visualization is sufficient for our formal investigation of the approach. In practice, however,
we must contend with color, finite pixel resolution, and the presence of multiple statistical functionals in a single
visualization, to name just a few challenges. We address these practical issues in our reference implementation in
Section 4. Note also that it is immaterial whether the support S consists of numbers, coordinates, probability vectors,
functions, or any other type of object, as long as there exists a base visualization that maps that object to an image.
When we combine the mapping M with the distribution F , we obtain a distribution over images, denoted FM . If we
can sample θ from F and apply M to that sample, we can thereby sample M(θ) from the image distribution FM .
Observe how the base visualization M is treated as a black box, so no understanding of its internal workings is required
by the approach.
Figures 2a and 2b illustrate the base distribution, base visualization, and the resulting distribution over images for
two common practical scenarios. Note that in the case of linear regression, the quantity of interest is a coordinate of
slope and intercept, but the base visualization is a line. That is, it is not uncommon that the visual representations are
non-trivial transformations of the underlying quantity of interest.

<a id="p004-b007"></a>

<!-- p004-b007 -->
3.2    Visualizing a Distribution over Images

<a id="p004-b008"></a>

<!-- p004-b008 -->
We now have all the necessary components to define our approach to visualizing the uncertainty associated with a
distribution over images FM . Given a sequence M (1) , M (2) ,. . . , M (n) of independent samples from FM , we define a
new image Mres in a point-wise manner:

<a id="p004-b009"></a>

<!-- p004-b009 -->
n
                                                       1 X (i)
                                         Mres (x, y) =       M (x, y), ∀(x, y) ∈ R × R.
                                                       n i=1
    © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
    media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                       redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                      IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
5

<a id="p005-b002"></a>

<!-- p005-b002 -->
Base distribution                                       Distribution of images                                     Uncertainty
          (n = 3 samples)                                                                                                    visualization

<a id="p005-b003"></a>

<!-- p005-b003 -->
(a) univariate

<a id="p005-b004"></a>

<!-- p005-b004 -->
Base distribution                                       Distribution of images                                     Uncertainty
          (n = 3 samples)                                                                                                    visualization

<a id="p005-b005"></a>

<!-- p005-b005 -->
(b) slope-intercept coordinate in simple regression
                             Figure 2: Two examples of our approach to uncertainty visualization.

<a id="p005-b006"></a>

<!-- p005-b006 -->
We produce a new image by averaging the intensities of the sample images, for each pixel separately. The main
advantage of this approach is that it maintains the black-box treatment of M. While the approach is very simple, it is
versatile and comes with formal guarantees in many standard uncertainty visualization tasks.

<a id="p005-b007"></a>

<!-- p005-b007 -->
3.3     Relationship between Sample Size and Coverage

<a id="p005-b008"></a>

<!-- p005-b008 -->
Figure 2 illustrates the approach on n = 3 samples. As n increases, more extreme samples are produced. For a formal
investigation, two cases are of interest: a set value of n and as n approaches infinity. We focus on the former, which is
of more practical interest.

<a id="p005-b009"></a>

<!-- p005-b009 -->
3.3.1    A Point Varying in One Dimension
First, we investigate the coverage of the interval observed in Mres in the case where the map M is such that the
realizations of θ always map to a single point and that point varies across θ along a single axis. An example would be
the point estimation in Figure 2a. That is, we limit ourselves to M where
                                                       
                                                         1, for point (f (θ), 0)
                                       M(θ)(x, y) =
                                                         0, otherwise,

<a id="p005-b010"></a>

<!-- p005-b010 -->
for some f : S → R. Note that we assume, without loss of generality, that we vary along the x-axis.
This simplifies the investigation to the univariate random variable f (θ). Let X1 , X2 , . . . , Xn be independent samples
from the same distribution. We further introduce the extreme observations and the range
                                                     Ln = min{X1 , X2 , . . . , Xn },
                                                     Un = max{X1 , X2 , . . . , Xn },
                                                     Rn = [Ln , Un ].

<a id="p005-b011"></a>

<!-- p005-b011 -->
© 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
6

<a id="p006-b002"></a>

<!-- p006-b002 -->
The range R communicates the uncertainty associated with the random variable. The key question is, what is its
coverage P (X ∈ Rn |X1 , . . . , Xn ), where X is an independent sample from the same distribution.
The question falls into the theory of order statistics, but for our needs, a combinatorial argument will suffice:
                                 P (X ∈ Rn |X1 , . . . , Xn ) =
                                 = 1 − P (X ∈/ Rn |X1 , . . . , Xn )
                                 = 1 − P (X > Un |X1 , . . . , Xn ) − P (X < Ln |X1 , . . . , Xn ).

<a id="p006-b003"></a>

<!-- p006-b003 -->
There are (n + 1)! possible orderings of the n + 1 random variables (X and the n variables in the sample). If ties are
not possible, there are n! possible orderings where the X is strictly the highest. If ties are possible, there are fewer than
n! such orderings. It follows that
                                                                       n!          1
                                     P (X > Un |X1 , . . . , Xn ) ≤          =          .
                                                                    (n + 1)!   n+1

<a id="p006-b004"></a>

<!-- p006-b004 -->
With a symmetric argument for the lower part, we get:
                                                                                    2    n−1
                                         P (X ∈ Rn |X1 , . . . , Xn ) ≥ 1 −            =     .
                                                                                   n+1   n+1
Without ties, equality holds. Note that this result is independent of the distribution of X!
In the case of the visualization of a point that varies along an axis, this means that the coverage of the range formed by
the two most extreme points that appeared in the images has coverage n−1    n+1 , where n is the number of images. Solving
                                                      c+1
for a desired coverage c, we have the cutoff n ≥ 1−c , with c ∈ [0, 1). Furthermore, commonly used coverages 80%,
90%, 95%, 99%, and 99.9% all have integer solutions (see Table 1). The practical implication is that the coverage
required by the user can be achieved by setting the corresponding sample size n. This case of a single point varying
along an axis also applies to collections of points that vary identically along an axis, for example, a bar in a bar plot.

<a id="p006-b005"></a>

<!-- p006-b005 -->
3.3.2   Points Varying in One Dimension
Next, we investigate Mres for a set of points that vary along parallel (but unique) axes. An example would be the
regression lines in Figure 2b. Without loss of generality, we can assume that the axes are parallel to the y-axis. That is,
each point has its own x-coordinate and the points vary in their y-coordinate depending on the value of θ:
                                               
                                                 1, for points (x, fθ (x)), x ∈ A ⊂ R
                               M(θ)(x, y) =
                                                 0, otherwise,

<a id="p006-b006"></a>

<!-- p006-b006 -->
for some fθ : A → R. In essence, we are visualizing a random function.
Given a sequence M (1) , M (2) ,. . . , M (n) of images and their corresponding functions fθ(1) , fθ(2) , . . . , fθ(n) , define the
functions
                                         fmax (x) = max{fθ(1) (x), fθ(2) (x), . . . , fθ(n) (x)},
                                         fmin (x) = min{fθ(1) (x), fθ(2) (x), . . . , fθ(n) (x)},

<a id="p006-b007"></a>

<!-- p006-b007 -->
for all x ∈ A. These are the upper and lower bound functions for a sequence of n images.
The coverage analysis for a single point from the previous section applies in a point-wise manner to a set of points.
That is, the region bounded by the upper and lower bound functions fmax (x) and fmin (x) is a point-wise confidence
band with coverage at least n−1
                            n+1 .

<a id="p006-b008"></a>

<!-- p006-b008 -->
3.3.3   Inference for a Predetermined Region
Imagine a region of the uncertainty visualization that is determined before observing the data. If we then observe that
the graphical representation of the quantity of interest does not appear in that region in the aggregate image (and thus
not in any of the sample images), then we can infer about the quantity of interest being in that region. Typical examples
would be whether the quantity exceeds a threshold of interest.
Formally, let R ⊂ R2 be a region of the image that is independent of the sequence of images M (1) , . . . , M (n) . We
introduce the indicator variables
                                        Ii = {M (i) has no points with value 1 in region R}
   © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
7

<a id="p007-b002"></a>

<!-- p007-b002 -->
Table 1: Samples’ sizes and corresponding implied coverage.
                                             n 1 − α = n−1n+1
                                                                  n+0.5
                                                                   n+1     QBeta (n, 0.05)
                                             9      0.800        0.9500       0.8126
                                            19      0.900        0.9750       0.9051
                                            39      0.950        0.9875       0.9522
                                          199       0.990        0.9975       0.9904
                                         1999       0.999        0.9998       0.9990

<a id="p007-b003"></a>

<!-- p007-b003 -->
Pn
and their sum Z =           i=1 Ii .
Z is Binomial(n, p), with unknown probability p. Therefore, inference about the quantity of interest lying in the region
reduces to inference about the proportion of a Binomial distribution.
We utilize Jeffreys interval, which is a Bayesian approach but also has strong frequentist properties [6]. Jeffreys interval
is based on the Binomial likelihood and a Beta( 12 , 12 ) prior. If we limit ourselves to the case Z = n, the α-level interval
is [QBeta (n, α), 1], where QBeta (n, α) is the quantile function of Beta(n + 21 , 21 ) at α.
Note that the theory does not require us to limit ourselves to the extreme case of Z = n, that no images has an
observation in the region. The same process applies to any observed proportion, but accurately counting the number of
observations in a region of the aggregate image is typically impossible.
Finally, we provide some coverage guarantees as a function of sample size n. Under the Binomial-Beta model with
                            n+ 1
Jeffreys prior, the mean is n+12 , which converges from above to n−1
                                                                  n+1 , the coverage implied by n (see Section 3.3.1).
Furthermore, the Jeffreys interval lower bound QBeta (n, 0.05) approximates well the implied coverage for that n (see
Table 1).
The above results have the following practical implication. As demonstrated in Section 3.3.1, the number of samples
n can be chosen to achieve the desired coverage of observed confidence intervals and bands. We further show that
this coverage also serves as a lower bound for inferences regarding whether the quantity of interest lies within a
predetermined region. The practical application of these theoretical guarantees is in Section 5.5.

<a id="p007-b004"></a>

<!-- p007-b004 -->
4     bootplot: A Reference Implementation

<a id="p007-b005"></a>

<!-- p007-b005 -->
To further validate our approach and to demonstrate that it has not only theoretical but also practical utility, we provide
a reference implementation.
We limit the reference implementation to IID cases. However, this should not be interpreted as a limitation of the
approach itself. In principle, the method can be trivially extended to more general sampling schemes, since it is agnostic
to how the base distribution is generated. In practice, though, specifying and managing more complex sampling schemes
significantly complicates the interface. This reflects the same fundamental challenge that prevents inference libraries
from being both simple and general. A practical solution is to provide specialized libraries tailored to specific scenarios,
such as generalized linear models, structural equation modeling, time series, etc.
The IID assumption simplifies obtaining the base distribution, as it allows the use of a straightforward resampling
scheme: individual data points are sampled with replacement to create a resampled dataset of the same size, to which the
base visualization is then applied. This procedure is analogous to a non-parametric bootstrap, with the key distinction
that the functional of interest is an image rather than a scalar or vector. By leveraging this approach, we can focus on
exploring the role of the base visualization while still addressing a wide range of practical scenarios.
The reference implementation is available as a Python library (https://github.com/davidnabergoj/bootplot),
with documentation and code for all examples that appear in the remainder of the paper. The user only has to provide the
code for the base visualization, which takes data as an argument and visualizes the quantity of interest. Other parameters,
including the number of samples n, have meaningful default values and do not need to be specified manually, but can
be optionally adjusted by the user. Figure 3 shows example code with the corresponding output image.

<a id="p007-b006"></a>

<!-- p007-b006 -->
4.1    Practical Considerations and Limitations

<a id="p007-b007"></a>

<!-- p007-b007 -->
The implementation of the theoretical approach presents additional challenges due to how visualization is handled, both
in Python and in computer graphics generally.
    © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
    media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                       redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                      IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
8

<a id="p008-b002"></a>

<!-- p008-b002 -->
1 # statistical graphic
  2 def p o i nt _ e s t i m a t e _ p l o t ( data_subset , data_full , ax ) :
  3     ax . scatter ( np . mean ( data_subset ) , 0 , color = ’ black ’)
  4     ax . set ( xlim =( -2 , 4) , ylim =( -1 , 1) )
  5     ax . get_figure () . s e t _ c o n s t r a i n e d _ l a y o u t ( True )
  6
  7 # call bootplot
  8 bootplot (
  9     point_estimate_plot ,
 10     dataset ,
 11     m =39 , # for 95% coverage
 12     ou tpu t _ i m a g e _ p a t h = ’ p o i n t _ e s t i m a t e _ p l o t . png ’ ,
 13     output_size_ px =(900 , 450)
 14 )

<a id="p008-b003"></a>

<!-- p008-b003 -->
Figure 3: This code snippet illustrates bootplot’s use. The dataset is just an array of numbers, and the quantity of interest
is the mean. The user provides code for visualizing the mean (the base visualization), following a prescribed signature,
and passes it to a bootplot call, together with the rest of the parameters, including the number of samples, set to 39 in
this example. Both the left-hand and right-hand images are the result of the proposed method of generating images of
multiple samples from the target distribution and then combining them. The only difference is that for the right-hand,
the axes were not set (we removed line 4). Instead, the axes are set automatically and vary across samples, resulting in
unwanted variability. The left-hand image shows 95% confidence interval.

<a id="p008-b004"></a>

<!-- p008-b004 -->
4.1.1    Color
We accommodate color by working in the RGB color space and aggregating each channel separately. This results in
alpha blending.

<a id="p008-b005"></a>

<!-- p008-b005 -->
4.1.2    Implied Intervals and Bands
Due to the sample-based nature of the approach, the interior of the interval (band) might not be completely filled. This
is particularly common when the variability is large and n is small. Examples of this can be seen in the confidence
bands on the left-hand side of Figure 7 and in the first error bar in Figure 8. This does not invalidate the theoretical
coverage guarantees, which still apply to the interval implied by the two most extreme observations. However, visible
gaps may still be a perceptual limitation (see Section 7.1).

<a id="p008-b006"></a>

<!-- p008-b006 -->
4.1.3    Anti-aliasing
Anti-aliasing results in the quantity of interest being visualized with multiple and usually lighter shades along its border.
As a result, the borders in the aggregate image may become less visible. In most cases, this is barely noticeable, but we
recommend disabling anti-aliasing.

<a id="p008-b007"></a>

<!-- p008-b007 -->
4.1.4    Resolution
The output image resolution matches that of the base visualization. Our approach does not require higher resolution
than necessary to display the base visualization adequately. We adopt a default of 300 DPI, consistent with standard
practices for high-quality, publication-ready figures. Note that the method is limited to creating raster images and is
fundamentally incompatible with creating vector images, due to pixel-level aggregation.

<a id="p008-b008"></a>

<!-- p008-b008 -->
4.1.5    Intensity and Visibility
Averaging across images introduces a normalization issue that is not present in sampling-based estimation theory. If
the visual representation has a small area (a point, a line), but the area over which it varies is relatively large, this
   © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
9

<a id="p009-b002"></a>

<!-- p009-b002 -->
can result in very low average intensity. This is not a theoretical issue, because the intensities will still represent the
distribution. However, it is a practical issue due to the limitations of perceiving such low intensities. Untreated, it
leads to a counter-intuitive phenomenon where increasing n leads to less uncertainty in the final image. Note that some
statistical graphics do not suffer from this issue, because the area representing the quantity of interest is always the
same (pie chart, stacked bar chart, icon chart).
We deal with this issue by moving extreme intensities to a value where they can be perceived and interpolating the
values in between to preserve the ordering. We transform the colors using a horizontally compressed CDF of the Beta
distribution. We apply the same transformation to each RGB channel of each pixel, so we limit our discussion to one
pixel and one channel. Given n sample images, we have n channel values for our pixel. If there is only one unique
value that appears n times, no transformation is necessary, as there is no variability and the channel value should be that
unique value. Assume that there are m ≥ 2 unique values and let x = [x1 , . . . , xm ], 0 < xi < 1, be the probability
vector of length m representing the relative frequencies of the m unique values. Our approach is based on adjusting
these relative frequencies using the transformation

<a id="p009-b003"></a>

<!-- p009-b003 -->
f (x, k, τ ) = (1 − 2τ )Ix (k, k) + τ,

<a id="p009-b004"></a>

<!-- p009-b004 -->
where k > 0 and 0 ≤ τ ≤ 0.5 are tunable parameters and Ix (α, β) is the regularized incomplete beta function (the
CDF of the Beta distribution). See Figure 4 for an illustrative example of this transformation.
We chose this CDF because it is monotonic from (0,0) to (1,1) and has a rotational symmetry about point ( 12 , 12 ). We
require monotonicity because we are transforming relative frequencies into relative frequencies while preserving order.
We require rotational symmetry, because the effect must be symmetrical for x and 1 − x. Furthermore, this CDF is
flexible enough, with a single parameter, to express slow-then-fast ascent, fast-then-slow ascent, and linear ascent from
(0, 0) to ( 21 , 12 ) (the other half from ( 12 , 21 ) to (1, 1) is determined by rotational symmetry).
First, we identify the largest frequency c = arg max xi . If c is not unique, we select it at random among the indices that
                                                             i
maximize xi . The transformed relative frequencies x̂i are then

<a id="p009-b005"></a>

<!-- p009-b005 -->
(
                                                             f (xc , k, τ )             i=c
                                                 x̂i =                           xi
                                                             f (1 − xc , k, τ ) 1−x c
                                                                                        i ̸= c.

<a id="p009-b006"></a>

<!-- p009-b006 -->
The transformation is most easily understood in the case of two unique values (m = 2), which is also the most common
practical case, as we have the fixed background and the varying visualization of the quantity of interest (see Figure 4 for
an illustrative example). In the case of more than 2 unique values, we first transform the sum of the relative frequencies
of all the values (except the maximal c) and then allocate the result proportionately to the original relative frequencies
xi . This ensures that the transformed relative frequencies are again a probability simplex.
Users can adjust the threshold τ to improve visibility, and the slope k to control the gradient of the visualized uncertainty
(see Figure 5). However, from our experience, adjustments are rarely necessary and all visualizations in this paper use
the default settings of τ = 0.3 and k = 2.5.

<a id="p009-b007"></a>

<!-- p009-b007 -->
4.1.6   Consistency of Layout

<a id="p009-b008"></a>

<!-- p009-b008 -->
Creating base visualizations requires careful attention to layout consistency. For example, if the axis bounds are
determined automatically, each sample image may have different limits, resulting in misalignment and an unusable
aggregate image (see Figure 3). Common examples are axis bounds, axis tick positions and labels, order of variables,
color mappings, and anchoring (first slice of pie chart, vectors in PCA/Factor Analysis; see Figure 9 and Figure 11l). To
ensure consistent alignment of digits, a monospaced font should be used, and numbers should be aligned on the decimal
point (see Figure 7).
These considerations are rarely made when preparing a statistical visualization. Instead, we rely on the software to make
these choices automatically. However, allowing such inconsistencies in our visualizations is poor practice. Automated
choices can reduce semantic control, compromise reproducibility (since underlying software may change), and decrease
transparency (because we do not know how the software made the choice). These issues most often go unnoticed
because visualization code is rarely reused. However, when the same base visualization is applied repeatedly, as is the
case in our approach, these issues become apparent. This is conceptually similar to the use of metamorphic testing for
evaluating visualizations [36], although in this work the approach primarily serves to visualize uncertainty.
   © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
10

<a id="p010-b002"></a>

<!-- p010-b002 -->
τ = 0.3, k = 2.5
                               1.00

<a id="p010-b003"></a>

<!-- p010-b003 -->
0.75
                                         x 2̂ ≈ 0.65

<a id="p010-b004"></a>

<!-- p010-b004 -->
0.50
                                         x 1̂ ≈ 0.35

<a id="p010-b005"></a>

<!-- p010-b005 -->
0.25

<a id="p010-b006"></a>

<!-- p010-b006 -->
0.00                           x 1 = 14                           x 2 = 34
                                        0.00             0.25             0.50              0.75             1.00
       Figure 4: An illustrative example of the transformation of the intensities in the case of two unique values.

<a id="p010-b007"></a>

<!-- p010-b007 -->
1
            (a) τ = 0, k = 1                                  (b) τ = 10 , k = 12                                         1
                                                                                                                 (c) τ = 10 , k = 32

<a id="p010-b008"></a>

<!-- p010-b008 -->
1
          (d) τ = 10 , k = 106                                 (e) τ = 12 , k = 1                              (f) τ = 0, k = 10−6
Figure 5: The top-left image is the unaltered aggregate image (τ = 0 and k = 1 is the identity transform). The
bottom-middle image results in a uniform color (τ = 12 is a constant function). A uniform color also appears when the
slope parameter k is taken to either extreme, as shown in the bottom-left and bottom-right images. Intermediate values
of k control the gradient, as seen in the top-middle and top-right images.

<a id="p010-b009"></a>

<!-- p010-b009 -->
In addition, because sampling from the base distribution can yield different visualizations for identical data, this process
violates the invariance principle [28]. The resulting non-determinism in the visualization may negatively affect the user.
To mitigate this issue, a fixed random seed should be specified.

<a id="p010-b010"></a>

<!-- p010-b010 -->
5    Examples
All examples use Matplotlib [21] for creating the base visualization. Most of the examples in this section use the Palmer
penguins dataset [17]. Two examples use a simple dataset consisting of 59 air mass trajectories. All examples have
n = 39 for 95% coverage. We provide additional examples in the supplementary material illustrating the applicability
and scalability of our approach to larger, real world datasets with more features and diverse underlying distributions.
Additionally, while each example in this section is produced separately, our approach also enables users to visualize
uncertainty in multiple statistical graphics simultaneously, which makes it easier to explore larger datasets. Importantly,
examples in the supplementary material also show that larger datasets do not necessarily lead to fundamentally different
visual outputs, but to greater certainty in the visualized quantities.
    © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
    media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                       redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                      IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
11

<a id="p011-b002"></a>

<!-- p011-b002 -->
Figure 6: Both images show a statistical graphic with 95% confidence intervals for mean bill length for each species
separately. The image on the left was created with bootplot having n = 39 samples (the base visualization visualizes
each mean with a point). The image on the right was created with Seaborn.

<a id="p011-b003"></a>

<!-- p011-b003 -->
5.1   Introductory Examples

<a id="p011-b004"></a>

<!-- p011-b004 -->
First, we reiterate the main properties of the proposed approach and further illustrate how the reference implementation
is used. We illustrate this with two of the most common scenarios: visualizing uncertainty in a point estimate and in a
functional relationship between two variables.
Figure 6 shows a typical visualization of uncertainty in a point estimate using CIs represented by an error bar. The
image on the right was created with Seaborn [51], a visualization library built on top of Matplotlib. Most of the elements
of the visualization are specified in Matplotlib, while Seaborn provides support for visualizing 95% CIs. Internally,
Seaborn computes the CIs using bootstrap resampling and renders the corresponding error bars.
The image on the left was created with bootplot. The base visualization is a Matplotlib visualization that has its certain
elements (see Section 5.2) identical to the one used for Seaborn, except that each point estimate is visualized. This base
visualization, the data, and the desired coverage are the only inputs the user must provide. The visualization is then
combined in our approach with the base distribution, which is obtained by resampling the IID data. The number of
resamples is uniquely determined by the desired coverage. Note that apart from the aesthetics and the presence of three
estimates instead of one, this example is the same as the one in Figure 3.
Figure 7 shows a typical visualization of uncertainty in a functional relationship. The image on the right is created using
Seaborn, which computes the CIs and renders the corresponding band. The image on the left is created using bootplot.
The base visualization is again identical in the certain parts to the one used for Seaborn, except that each regression
fit is visualized as a function of the resampled data, as are the corresponding root mean squared errors (RMSE). This
example demonstrates that the approach works with more than one quantity of interest in the same image, even when
the graphical representations overlap. It also introduces the concept of uncertain text (the RMSE), which is discussed in
more detail in Section 5.3
The intervals (bands) implied in the bootplot visualizations are similar to those in the Seaborn visualizations. This
demonstrates the theoretical coverage guarantees of the approach, even though the intervals (bands) are never explicitly
computed or explicitly visualized! Instead, they manifest in the aggregate image as a consequence of the uncertainty
in the base visualization. It is important to note that these guarantees are not limited to these particular quantities of
interest (mean, regression) or to the use of the bootstrap. They apply to any point varying along an axis, regardless of the
statistical functional, the base distribution, or the method used to obtain it. Statistical inference using the visualizations
created by our approach is discussed in Section 5.5.

<a id="p011-b005"></a>

<!-- p011-b005 -->
5.2   Certain and Uncertain Elements of the Base Visualization

<a id="p011-b006"></a>

<!-- p011-b006 -->
In any base visualization, some visual elements, possibly none, are independent of the base distribution, while others,
also possibly none, depend on it. For example, in the point estimates visualization shown in Figure 6, all elements except
the three point estimates of the mean (axes, labels, gridlines, etc.) are independent of the resampled data. Similarly, in
the regression example in Figure 7, only the regression lines and the RMSE depend on the resampled data.
By distinguishing between certain elements (independent of the base distribution) and uncertain elements (dependent
on the base distribution), we can better understand the types of visualizations that can be generated using the proposed
approach. Examples in Figure 8 and Figure 9 further illustrate how certain and uncertain elements may appear in the
foreground or background of a visualization.
In the extreme case where the base visualization contains only certain elements, the resulting aggregate image will be
identical to every base visualization. In other words, the expressive power of our approach is at least as great as that
of the tool used to create the base visualization. When uncertain elements are present, the aggregate image typically
includes additional visual features that do not appear in any individual base visualization.
   © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
12

<a id="p012-b002"></a>

<!-- p012-b002 -->
Figure 7: Both images show a statistical graphic with 95% point-wise confidence bands for the linear and polynomial
regression fit of the relationship between bill length and bill depth. The image on the left was created with bootplot
having n = 39 samples (the base visualization visualizes the linear fit, the polynomial fit, and the RMSE of the two).
The image on the right was created with Seaborn.

<a id="p012-b003"></a>

<!-- p012-b003 -->
Figure 8: When bootplot is applied to a base visualization of a bar chart, where the height of the bars is uncertain,
representing proportions of penguin species, it results in an ambiguated bar chart [39] (left-hand side image). If we
instead keep the bars certain in the base visualization (a function of the data, not the resampled data) and add an
uncertain point estimate to this base visualization, we create a bar chart with error bars (right-hand side image). Both
images are created with bootplot having n = 39 samples.

<a id="p012-b004"></a>

<!-- p012-b004 -->
Figure 9: When bootplot is applied to a base visualization of a pie chart, where the slices are uncertain, representing
proportions of penguin species, it results in an ambiguated pie chart [39] (left-hand side image). Adding a certain
smaller pie chart overlay to the base visualization of a pie chart further emphasizes the uncertainty (right-hand side
image). Both images are created with bootplot having n = 39 samples.

<a id="p012-b005"></a>

<!-- p012-b005 -->
5.3   Uncertain Text

<a id="p012-b006"></a>

<!-- p012-b006 -->
Tables and text, when presented visually, also constitute static 2-D visualizations. Figure 10 illustrates the application of
bootplot to numerical tabular data and compares it to a standard table representing the same data. When text functions
as an uncertain element, the resulting aggregate image conveys uncertainty through blurriness, as exemplified by the
RMSE estimate in Figure 1c.
Because digits vary in shape, the exact boundaries of intervals may be difficult to discern. Nevertheless, the visualization
still communicates the uncertainty associated with each digit: the more uncertain a digit, the less readable it becomes,
potentially to the point of being unreadable.
   © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
13

<a id="p013-b002"></a>

<!-- p013-b002 -->
Figure 10: Applying bootplot (n = 39 samples) to a base visualization of a table listing mean estimates of different pen-
guin features results in a blurry table (top image). For comparison, we include the standard approach of communicating
uncertainty with standard errors (bottom image).

<a id="p013-b003"></a>

<!-- p013-b003 -->
This approach directly prevents the reader from interpreting uncertain digits, unlike standard methods that provide
confidence intervals or standard errors. Traditional methods still rely on the user to correctly assess the magnitude
of statistical error, often restricting interpretation to digits unlikely to be affected. For instance, in the top table of
Figure 10, it is immediately apparent that the first decimal is largely noise and should likely not be reported if the goal
is to infer the mean. In contrast, discerning this from the bottom table is more difficult.
Decreasing the discriminability of marks in a visualization as a means of communicating uncertainty or discouraging
analysis in regions of high uncertainty is not new [10, 32, 44, 52]. Visual features such as blur, transparency, and
fuzziness naturally evoke perceptions of uncertainty and may be deliberately employed by designers [32]. Practical
applications include value-suppressing uncertainty palettes for bivariate maps, which allocate larger ranges of a visual
channel to data when uncertainty is low [8]; texture-based strategies for visualizing uncertainty in time-dependent
flows [3]; representing uncertainty in graphs [12, 50]; and sketchy or blurred trajectories [4]. However, the specific case
of blurred and ambiguous text that naturally emerges from our approach is novel and merits further investigation.
A notable related work from outside uncertainty visualization is FatFonts [38], a font for Arabic numerals in which the
amount of ink (dark pixels) used to render each digit is proportional to its quantitative value. In our approach, more
probable digits naturally appear more prominently. However, if a font is used in which each digit occupies the same
amount of ink, the resulting ink distribution would reflect the relative frequency of each digit. This implementation
would also require a font design with minimal overlap between digits.

<a id="p013-b004"></a>

<!-- p013-b004 -->
5.4   More Examples and a Summary of the Design Space

<a id="p013-b005"></a>

<!-- p013-b005 -->
Figure 11 presents additional visualizations generated using the proposed approach. Because uncertainty is encoded
implicitly, emerging from the way information is represented in the base visualization, an exhaustive catalog of all
possible outcomes is not feasible. To provide some insight, Table 2 summarizes the visual channels commonly used in
statistical graphics and describes the corresponding implicit uncertainty representations that arise when each channel is
employed in the base visualization.
We discuss several special and failure cases later in this section, but we first focus on situations in which the resulting
visualization exhibits few or no issues. When representing a single uncertain quantity, visual channels such as position (x
or y, or both), length, angle, area, and shape generally function without difficulty. Notable examples that extend beyond
confidence intervals and bands include uncertain decision boundaries (see Figure 11b), uncertain mean trajectories (see
Figure 11j), uncertain PCA loadings (see Figure 11l), and 2-D density regions for bivariate quantities of interest (see
Figure 11m).
For area (resulting in an uncertain region; see Figure 11a) and shape (resulting in a mixture of shapes; see the individual
icons in Figure 11d), it is more difficult to discern bounds for the uncertain variable. However, this difficulty primarily
arises from the fact that area and shape are typically less suitable for encoding a univariate variable. Note that icon
charts are commonly used to communicate risk in healthcare, and a visualization approach that replaces uncertain icons
with question marks has been proposed [35].
The above claims also hold when there is more than one uncertain quantity, even when they overlap, provided they are
independent. Examples include the regression curves in Figure 7 and the radar plot in Figure 11f.
   © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
14

<a id="p014-b002"></a>

<!-- p014-b002 -->
More complex behavior arises when multiple dependent quantities are present. A prototypical example is found in pie
charts or stacked bar charts, where the size of one slice (or bar) affects the position of the others (see Figures 9, 11i, and
11g). This interdependence makes it more difficult to discern the uncertainty associated with elements between the two
extreme, anchored elements. However, this issue is typically mitigated when the number of elements is small or when
the chart is overlaid on all data in the base visualization. A related example is the Sankey flow diagram (see Figure 11h).
Note that similar ambiguated pie and bar charts have been proposed [39], and a related gradient-based visualization has
been introduced specifically for representing uncertainty in Sankey diagrams [49].
Another type of interaction of visual channels can be observed when the base visualization is a bubble chart (see
Figure 11n). In a bubble chart, a circle represents three variables, two with position and the third with area (radius,
diameter). Therefore, both the position and the size of the bubble vary in the resulting uncertain bubble chart. The
resulting uncertainty is more difficult to discern. This could be mitigated for position by plotting the center of each
circle with a point, and for area by fixing the position on the data. This would result in an uncertain bubble chart that is
a combination of the uncertain means in Figure 11m and uncertain areas in Figure 11a.
The above observations highlight two considerations for bubble charts: (1) including a point at the center simplifies
reading the position of observations, and (2) making the visual representation of one variable (area) dependent on other
variables (position) can be problematic, as position may influence the interpretation of area. This again illustrates how
our approach can reveal potential issues in the techniques employed in the base visualization.
Finally, note that for all of the cases discussed in this section, it is straightforward to interpret the two extremes with
respect to the magnitude of uncertainty. When variability is very low, the result is practically identical to the base
visualization and the relevant visual features are easy to discern. Conversely, when variability is high, uncertain visual
features become impossible to distinguish, thereby not only conveying substantial uncertainty but also preventing
interpretation of highly uncertain features.

<a id="p014-b003"></a>

<!-- p014-b003 -->
5.4.1   Color

<a id="p014-b004"></a>

<!-- p014-b004 -->
When colors (including transparency and texture) are used to represent an uncertain quantity in the base visualization,
the resulting visualization will contain mixtures of those colors. When only two colors are used (typically for a binary
uncertain quantity), there are no inherent color mapping issues. An implicit continuous color scale emerges, with the
two colors at the extremes and the blends in between representing uncertainty (probability). Although not all values are
directly discernible, there is a bijective mapping between color and the base distribution, so the uncertainty of every
point in the resulting visualization is known. Examples include the waffle chart in Figure 11c and the binary (trajectory
hit/miss) heatmap in Figure 11k. The latter also illustrates how the implicit scale can be explicitly added as a certain
element, since the two base colors are known. In practice, the discernibility of values in the resulting continuous color
scale also depends on the choice of the two colors at the extremes, as in any color scale. In general, colors that are
further apart in color space produce more perceptually distinguishable intermediate values.
When three or more colors are used (typically for three or more categories, or for a numerical variable represented
with a gradient, transparency, or similar scale), there is an inherent issue: the mapping from the base distribution to
colors is not injective. In other words, two different distributions can map to the same color in the aggregate image. For
example, if a black-to-white grayscale gradient is used to represent a bounded continuous variable, a certain value of
0.5 (mid-gray) will appear identical to an uncertain value of 0.5, as long as the uncertainty is symmetric around 0.5 (an
even mixture of lighter and darker grays).
When the number of colors is small and they are well separated, the issue is less problematic, particularly if the
visualization can be anchored with a certain overlay or scale (see Figure 11i for an example of a pie chart with
many low-frequency categories). However, when colors continuously overlap and span a gradient, this represents a
fundamental limitation, preventing the discernment of uncertainty even in extreme cases of near-certainty or near-
complete uncertainty.
This issue highlights not only a limitation of our approach but also an inherent difficulty in representing uncertainty
when visualizations use color in this way. In statistical graphics, the use of more than two colors is typically reserved
for representing values over 2-D continuous or discrete support (2-D density plots, heatmaps, or value encoding in
correlograms). However, there are no straightforward methods to directly encode uncertainty in such visualizations.
For example, existing techniques for visualizing uncertainty in heatmaps are limited to the addition of auxiliary visual
elements [7, 16].
   © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-015"></a>

## PDF page 15

<a id="p015-b001"></a>

<!-- p015-b001 -->
15

<a id="p015-b002"></a>

<!-- p015-b002 -->
Table 2: A summary of how uncertainty in different base visualization channels implicitly creates uncertainty visual
encodings.
  base visualization            result (representation of un-            examples
  channel                       certainty)
  position (x or y)             interval (length); density rib-          Basic examples in Figures 3 and 5.
                                bon (length, opacity)                    Confidence intervals in Figure 6 and right-hand side im-
                                                                         age in Figure 8.
                                                                         The confidence bands in Figure 7 are composed of multi-
                                                                         ple intervals.
  position (x and y)            area (area); 2-D density (area,          Bivariate means in Figure 11m.
                                opacity)                                 Mean trajectory line results in an area in Figure 11j.
                                                                         Decision boundary lines result in an area in Figure 11b.
                                                                         Radar plot in Figure 11f.
                                                                         Bubble chart in Figure 11n.
  length                        (half) density ribbon (length,           Density strip bars in the left-hand side image in Figure 8.
                                opacity)                                 Stacked bar chart in Figure 11g.
                                                                         Uncertain Sankey diagram in Figure 11h.
                                                                         Density plot in Figure 11e, if we consider the heights.
  angle                         directional cone (area, opac-            Loadings in Figure 11l.
                                ity)                                     Pie charts in Figures 9 and 11i.
  area                          density region (area, opacity)           Circular area chart with fixed center in Figure 11a.
                                                                         Radar plot in Figure 11f if we consider the area as a
                                                                         whole.
                                                                         Size of bubbles in Figure 11n.
  shape                         mixture of shapes (shape,                Blurry text for RMSE in Figure 7 and in the top table in
                                blur/focus)                              Figure 10.
                                                                         Penguin icons in the icon chart in Figure 11d.
                                                                         Density plot in Figure 11e.
  color (2 colors)              mixture of colors (color)                Each individual square in the waffle chart in Figure 11c.
                                                                         Pie charts in Figures 9 and 11i.
                                                                         Stacked bar chart in Figure 11g.
  color (3 or more)             mixture of colors (color)                Pie chart in Figure 11i.

<a id="p015-b003"></a>

<!-- p015-b003 -->
5.4.2    Non-Expressible Visualizations of Uncertainty

<a id="p015-b004"></a>

<!-- p015-b004 -->
Some standard visualizations of uncertainty cannot be expressed as the result of a sample-based overlay of uncertainty
in base visualizations. A prototypical example is the one-dimensional (1-D) density plot. A 1-D density plot visualizes
uncertainty in a univariate variable, but it cannot be generated by tying that variable to a visual channel and representing
the uncertainty through overlay along that channel.
This type of non-expressibility does not imply that a density plot cannot be created directly with our approach. In fact, it
can be trivially created from a certain base visualization of a density plot by taking only one sample. All visualizations
can be created in this trivial way, but these non-expressible visualizations can only be created trivially, rendering our
approach unnecessary.
There are two important cases where our approach remains useful even for non-expressible visualizations. First, when
other uncertain elements are present in the plot (for example, an estimate of the mean), and second, when an uncertain
density plot is desired. In the latter case, when the density plot represents an empirical distribution, it is itself an
uncertain estimate of the underlying true distribution. While a standard density plot is non-expressible in our framework,
an uncertain density plot can be represented as a mixture of areas or shapes (see Figure 11e).
Other common visualizations of uncertainty fall into the same category as density plots, including contour plots,
violin plots, quantile dot plots, histograms, and boxplots. Visualizations based on displaying all samples are also
non-expressible. However, it is generally unnecessary to visualize uncertainty in these cases, since there is either no
variability (for example, scatterplots) or variability is introduced solely to improve visibility (for example, jitter plots,
beeswarm plots).
   © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-016"></a>

## PDF page 16

<a id="p016-b001"></a>

<!-- p016-b001 -->
16

<a id="p016-b002"></a>

<!-- p016-b002 -->
(a) circular area chart                 (b) decision boundary                       (c) waffle chart                      (d) icon chart

<a id="p016-b003"></a>

<!-- p016-b003 -->
(g) horizontal stacked bar chart

<a id="p016-b004"></a>

<!-- p016-b004 -->
(e) density plot                          (f) radar plot                                      (h) Sankey diagram

<a id="p016-b005"></a>

<!-- p016-b005 -->
(i) pie chart                                  (j) mean trajectory                         (k) binary heatmap

<a id="p016-b006"></a>

<!-- p016-b006 -->
(l) PCA loadings                                    (m) bivariate means                                   (n) bubble chart
Figure 11: More examples of visualizations of uncertainty created by applying the proposed approach to the base
visualization. The base visualization used in each case is indicated below the corresponding example, and the number
of samples used by the bootplot library is n = 39.

<a id="p016-b007"></a>

<!-- p016-b007 -->
© 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-017"></a>

## PDF page 17

<a id="p017-b001"></a>

<!-- p017-b001 -->
17

<a id="p017-b002"></a>

<!-- p017-b002 -->
5.5    Visual Inference

<a id="p017-b003"></a>

<!-- p017-b003 -->
We derive coverage guarantees for intervals, which extend to point-wise bands, and inference for predetermined regions
of the visualization, allowing our approach to support visual inference. The implied intervals for point estimates in our
examples correspond to CIs, providing a direct measure of uncertainty. Through the duality between CIs and hypothesis
tests, these intervals can be used for null-hypothesis significance testing. For example, suppose that we are interested in
testing the hypothesis that the Adelie penguin expected bill length is 40 (see Figure 6). Because the interval does not
overlap that value, we can reject the hypothesis with at least 2.5% confidence. Note that two-sided intervals can also be
used to construct one-sided bounds.
For visual inference, the method inherits the properties of the underlying procedure used to generate the base distribution.
In our examples, non-parametric resampling is used to produce percentile intervals, which are appropriate in most cases
when the data set is sufficiently large [55]. For more critical inference tasks, the base distribution could be obtained
using a more sophisticated method, or visual inference might not be applied at all. The interpretation also depends
on the inference framework. In a Bayesian setting, posterior samples would yield credible intervals and posterior
probabilities rather than frequentist confidence intervals.
We do not provide guarantees for general bivariate distributions, which include special cases such as convex hull
coverage and simultaneous confidence bands. These require knowledge of the dependency structure among quantities
of iterest, and deriving coverage even under known distributions is challenging. See, for example, [14] for a review of
simultaneous confidence bands for linear models, and [47] for derivations of convex hull coverage for some simple
distributions. Establishing guarantees under weaker assumptions is an open problem and would constitute a substantial
contribution to probability and statistics, beyond the scope of this work.
While general inference for regions observed in the image post-hoc is challenging, the inference for a predetermined
region, as we show in Section 3.3, is relatively simple. For example, suppose we are interested in testing the hypothesis
that the air mass trajectory will go over Western France (see Figure 11k). If this region is determined before creating
the visualization and because none of the 39 samples go over Western France, we can reject the hypothesis with at least
95% confidence.
It is worth noting that inference over more than one variable at a time is uncommon in practice, both because constructing
confidence areas (for example, confidence ellipses) is challenging and because interpreting them is difficult. Spatial
data analysis, such as in our trajectory example, is one of the few scenarios where confidence areas are both naturally
relevant and relatively easy to interpret. For these reasons, we do not consider the limitation to variation along a single
axis or predetermined regions to be a substantial impediment to practical applications.

<a id="p017-b004"></a>

<!-- p017-b004 -->
6     Discussion

<a id="p017-b005"></a>

<!-- p017-b005 -->
6.1    Relationship with Related Work

<a id="p017-b006"></a>

<!-- p017-b006 -->
The use of location and blur to communicate uncertainty is not new, and several visualizations produced by our approach
resemble previously explored techniques. Furthermore, any visualization generated with our method, including novel
forms, can also be implemented conventionally by explicitly encoding visual elements and specifying their locations,
transparency, and other relevant properties. The key distinction of our approach is in the process used to create the
visualization rather than in the visualization itself.
Similarly, the use of confidence intervals for quantifying uncertainty and supporting visual inference is well established.
What is novel in our approach is that uncertainty is not explicitly quantified or directly encoded. Only the base
visualization and underlying data are used. Despite this generalization, we maintain theoretical coverage guarantees,
providing a new perspective on the relationship between conventional uncertainty quantification and sample-based
visualization methods. A related idea are lineup tests [15, 54]. However, in lineup tests, the actual data visualization is
shown in a lineup with several visualizations from a null-hypothesis and the identification rate for one or across more
users is used to test the null-hypothesis. In our case, the samples either construct a rejection region, or their (lack of)
appearance in a predetermined region is used to test a hypothesis.
Sample-based approaches are closely related, as they also avoid explicit quantification of uncertainty, but they still
require the encoding and visualization of multiple samples. Our work extends these approaches in two ways. First, we
demonstrate that explicit encoding of samples is not necessary. Second, we provide theoretical coverage guarantees that
are not offered by traditional sample-based methods. This positions our approach as a generalization of sample-based
overlay techniques.
    © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
    media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                       redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                      IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-018"></a>

## PDF page 18

<a id="p018-b001"></a>

<!-- p018-b001 -->
18

<a id="p018-b002"></a>

<!-- p018-b002 -->
Table 3: Practical versatility of common visualization tools for reproducing the uncertainty visualization examples
from Section 5 that were produced by bootplot. “✓” indicates the existence of a wrapper that quantifies uncertainty
and designs its visual encoding, including overlay where relevant. “◦” means the user must quantify uncertainty, but
the wrapper provides the visual encoding by default. “×” indicates that the user must explicitly quantify uncertainty
and design the visual encoding themselves, including overlay choices when relevant. Grey rows indicate uncertainty
visualizations where bootplot is the only tool providing such practical versatility.
    visualization                                      matplotlib           ggplot2             ggdist            seaborn           ggdibbler*
    Confidence interval for mean                           ◦                  ✓                   ◦                  ✓                  ×
    Point-wise confidence band around re-                  ◦                  ✓                   ◦                  ✓                  ×
    gression line
    Bar chart with confidence interval for                   ◦                  ✓                  ◦                  ✓                   ×
    mean
    Ambiguous pie chart                                     ×                   ×                  ×                  ×                   ×
    Ambiguous bar chart                                     ×                   ×                  ×                  ×                   ×
    Overlaid numbers                                        ×                   ×                  ×                  ×                   ×
    Uncertain circular area chart                           ×                   ×                  ×                  ×                   ×
    Uncertain decision boundary                             ×                   ×                  ×                  ×                   ×
    Uncertain waffle chart                                  ×                   ×                  ×                  ×                   ×
    Uncertain icon chart                                    ×                   ×                  ×                  ×                   ×
    Uncertain radar plot                                    ×                   ×                  ×                  ×                   ×
    Uncertain density plot                                  ×                   ×                  ×                  ×                   ×
    Band around mean trajectory                             ×                   ×                  ×                  ×                   ×
    Uncertain binary heat map                               ◦                   ◦                  ×                  ◦                   ×
    Uncertain Sankey diagram                                ×                   ×                  ×                  ×                   ×
    Uncertain PCA vectors                                   ×                   ×                  ×                  ×                   ×
    Uncertain bivariate means                               ◦                   ◦                  ×                  ◦                   ×
    Uncertain bubble chart                                  ×                   ×                  ×                  ×                   ×
*
 To use ggdibbler, the user must first quantify uncertainty to be able to provide an uncertainty distribution, so we cannot mark it
“✓” by design. Although ggdibbler provides useful functionality beyond standard ggplot2, we mark it with “×” rather than “◦”
because the user must still explicitly manage the overlay rules needed to produce these visualizations.

<a id="p018-b003"></a>

<!-- p018-b003 -->
An additional advantage of our approach is practical and emerges when considering multiple scenarios rather than a
single one. Without our method, each scenario would require a scenario-specific base visualization along with explicit
encoding and visualization of multiple samples. In contrast, our approach only requires a different base visualization
for each scenario, simplifying the conceptual framework and reducing both code complexity and maintenance.
Our approach complements general visualization tools (Matplotlib, ggplot2 [53], etc.), since users need familiarity with
at least one such tool to flexibly create base visualizations. More specialized tools for visualizing uncertainty, whether
they provide wrappers to simplify uncertainty visualization (Seaborn) or delve deeper into its structure (ggdist [26],
PGoG [45]), still require explicit quantification and visual encoding of uncertainty. While these approaches offer
valuable insights, our approach is fundamentally different.
Recent work by Mason et al. [33] and the ggdibbler package [34] similarly argues for supplying distributions to
visualizations, leveraging the resulting noise to perceptually suppress weak signals. However, they limit their approach
to the Grammar of Graphics (ggplot2 in particular), forcing the user to explicitly manage distributions and overlay rules.
Our work diverges theoretically by operating entirely in the image space, treating the base visualization as a black-box
statistical functional. This allows our approach to naturally preserve complex joint distributions, apply to arbitrary
visual marks, and provide formal mathematical coverage guarantees for many of the resulting visualizations.
Furthermore, if versatility is important, then these tools support only a limited set of uncertainty visualizations. For
the rest, the user must both quantify the uncertainty and design its visual encoding manually in the coding pipeline.
To provide some insight, Table 3 summarizes the versatility of the above mentioned tools for producing uncertainty
visualization examples from Section 5 that were produced by bootplot. We exclude PGoG from the table because it is a
prototype.
     © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
     media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                        redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                       IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-019"></a>

## PDF page 19

<a id="p019-b001"></a>

<!-- p019-b001 -->
19

<a id="p019-b002"></a>

<!-- p019-b002 -->
6.2    Who are the Target Users?

<a id="p019-b003"></a>

<!-- p019-b003 -->
Our approach requires only basic coding skills and the ability to create base visualizations (without uncertainty), either
through custom code or using libraries such as Matplotlib or ggplot2. For users already familiar with tools like Seaborn,
ggdist, or similar packages, our method can serve as a complement: a base visualization created in Seaborn can be
extended to visualize uncertainty in scenarios not directly supported by these tools.
We hypothesize that the primary application of our approach is as a teaching tool in introductory courses on applied
statistics. Visualizing uncertainty and understanding how it is generated can facilitate a faster and deeper comprehension
of underlying statistical concepts. Additionally, we anticipate that the method would be a valuable addition to the toolkit
of quantitative data analysis professionals, enabling rapid prototyping of uncertainty visualizations for both standard
and non-standard scenarios.

<a id="p019-b004"></a>

<!-- p019-b004 -->
6.3    Computational Complexity and Runtime

<a id="p019-b005"></a>

<!-- p019-b005 -->
Our approach consists of three steps: obtaining the base distribution, applying the base visualization to n samples, and
aggregating the resulting images. Since any alternative method must also obtain the base distribution and produce
an image, the only additional factor is n. In practice, n is fixed based on the desired coverage and does not grow
with problem size. Asymptotically, aggregation of the images and repeated base visualizations dominate computation,
requiring O(n·K +n·Cbase ) operations, where K is the number of pixels and Cbase is the cost of a single visualization. In
most practical examples shown above, base visualizations take approximately tenths of a second and, with parallelization
of the image aggregation, making aggregate images computable in approximately 1 second. For larger images, such
as those shown in the supplementary material, image aggregation remains parallelized, and the total runtime is still
approximately n times the cost of rendering a single base visualization. Improvements in hardware will further reduce
any runtime differences compared to faster alternatives.

<a id="p019-b006"></a>

<!-- p019-b006 -->
7     Conclusion

<a id="p019-b007"></a>

<!-- p019-b007 -->
This work introduces a general approach for visualizing uncertainty that treats statistical graphics as random images
generated from a base distribution of the quantities of interest. By requiring only a base distribution and a base
visualization, the method produces uncertainty encodings implicitly through pixel-level aggregation, while providing
formal coverage guarantees for many common visual inference tasks, for example, null hypothesis significance testing,
interval based inference, and inference for predetermined regions of the visualization.
The approach generalizes sample-based overlay methods and demonstrates how uncertainty intervals and bands emerge
naturally from samples, without the need for explicit quantification or dedicated visualization routines. This establishes
an important connection between sample-based approaches and standard non-visual inference techniques. And, the
approach is a useful technique for identifying poor statistical graphics practices, flaws in the base visualization, and
which types of visualizations are more amenable to visualization of uncertainty.
A reference implementation, bootplot, although currently limited to IID cases, illustrates the versatility of the approach
and is already a useful substitute or complement to existing tools. It can generate uncertainty visualizations for
all common scenarios as well as many non-standard cases, including entirely novel representations. The reference
implementation can also be viewed as a generalization of the non-parametric bootstrap to image functionals.

<a id="p019-b008"></a>

<!-- p019-b008 -->
7.1    Directions for Future Work

<a id="p019-b009"></a>

<!-- p019-b009 -->
We leave the exploration of coverage guarantees for convex hulls and simultaneous confidence bands to future work.
This study focused exclusively on static 2-D visualizations of uncertainty. Nevertheless, because interactive visualiza-
tions, animations, and videos can be viewed as sequences of 2-D representations, our approach may be extendable to
non-static settings.
Several important questions remain that require user evaluation. In particular, it is unclear (1) whether this general
approach would serve as an effective teaching or practical tool, (2) how valuable, interpretable, and comparable
in practice the novel visualization techniques it produces, such as blurry text, are, and (3) whether users can still
meaningfully aggregate visually separated samples into intervals or bands when these are only implied, especially given
that formal coverage guarantees do not by themselves imply perceptual readability or effective decision support.
From the perspective of the bootplot reference implementation, it is also important to investigate how it can be adapted
to more complex scenarios, such as hierarchical sampling schemes, while preserving simplicity and usability.
    © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
    media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                       redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                      IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-020"></a>

## PDF page 20

<a id="p020-b001"></a>

<!-- p020-b001 -->
20

<a id="p020-b002"></a>

<!-- p020-b002 -->
Acknowledgments
This work was partially funded by the Slovenian Research Agency Grants No. P2-0442 and J5-60084. The authors
would also like to thank the anonymous reviewers of an earlier version of this paper for their constructive comments,
which have helped substantially improve the quality of this work.

<a id="p020-b003"></a>

<!-- p020-b003 -->
References
 [1] Theodore T Allen. Introduction to engineering statistics and lean six sigma: Statistical quality control and design
     of experiments and systems, volume 3. Springer, 2019.
 [2] Georges-Pierre Bonneau, Hans-Christian Hege, Chris R Johnson, Manuel M Oliveira, Kristin Potter, Penny
     Rheingans, and Thomas Schultz. Overview and state-of-the-art of uncertainty visualization. Scientific visualization:
     Uncertainty, multifield, biomedical, and scalable visualization, pages 3–27, 2014.
 [3] Ralf Peter Botchen, Daniel Weiskopf, and Thomas Ertl. Texture-based visualization of uncertainty in flow fields.
     In VIS 05. IEEE Visualization, 2005., pages 647–654. IEEE, 2005.
 [4] Nadia Boukhelifa, Anastasia Bezerianos, Tobias Isenberg, and Jean-Daniel Fekete. Evaluating sketchiness as a
     visual variable for the depiction of qualitative uncertainty. IEEE Transactions on Visualization and Computer
     Graphics, 18(12):2769–2778, 2012.
 [5] Ken Brodlie, Rodolfo Allendes Osorio, and Adriano Lopes. A review of uncertainty in data visualization.
     Expanding the frontiers of visual analytics and visualization, pages 81–109, 2012.
 [6] T Tony Cai. One-sided confidence intervals in discrete distributions. Journal of Statistical planning and inference,
     131(1):63–88, 2005.
 [7] Juntong Chen, Huayuan Ye, He Zhu, Siwei Fu, Changbo Wang, and Chenhui Li. Relmap: Reliable spatiotemporal
     sensor data visualization via imputative spatial interpolation. arXiv preprint arXiv:2508.01240, 2025.
 [8] Michael Correll, Dominik Moritz, and Jeffrey Heer. Value-suppressing uncertainty palettes. In Proceedings of the
     2018 CHI Conference on Human Factors in Computing Systems, pages 1–11, 2018.
 [9] Baruch Fischhoff. Communicating uncertainty fulfilling the duty to inform. Issues in Science and Technology,
     28(4):63–70, 2012.
[10] Christina Gillmann, Dorothee Saur, Thomas Wischgoll, and Gerik Scheuermann. Uncertainty-aware visualization
     in medical imaging-a survey. In Computer Graphics Forum, volume 40, pages 665–689. Wiley Online Library,
     2021.
[11] David Gotz, Wenyuan Wang, Annie T Chen, and David Borland. Visualization model validation via inline
     replication. Information Visualization, 18(4):405–425, 2019.
[12] Hua Guo, Jeff Huang, and David H Laidlaw. Representing uncertainty in graph edges: An evaluation of paired
     visual variables. IEEE transactions on visualization and computer graphics, 21(10):1173–1186, 2015.
[13] David Hägele, Christoph Schulz, Cedric Beschle, Hannah Booth, Miriam Butt, Andrea Barth, Oliver Deussen, and
     Daniel Weiskopf. Uncertainty visualization: Fundamentals and recent developments. it-Information Technology,
     64(4-5):121–132, 2022.
[14] Yang Han. Simultaneous confidence bands and simultaneous tolerance bands in linear regression. PhD thesis,
     University of Southampton, 2014.
[15] Heike Hofmann, Lendie Follett, Mahbubul Majumder, and Dianne Cook. Graphical tests for power comparison of
     competing designs. IEEE Transactions on Visualization and Computer Graphics, 18(12):2441–2448, 2012.
[16] Clemens Holzhüter, Alexander Lex, Dieter Schmalstieg, Hans-Jörg Schulz, Heidrun Schumann, and Marc Streit.
     Visualizing uncertainty in biological expression data. In Visualization and Data Analysis 2012, volume 8294,
     pages 251–261. SPIE, 2012.
[17] Allison M Horst, Alison P Hill, and Kristen B Gorman. Palmer penguins: Data for data exploration. Journal of
     Open Source Education, 3(18):548, 2020.
[18] Jessica Hullman. Why authors don’t visualize uncertainty. IEEE transactions on visualization and computer
     graphics, 26(1):130–139, 2019.
[19] Jessica Hullman, Xiaoli Qiao, Michael Correll, Alex Kale, and Matthew Kay. In pursuit of error: A survey of
     uncertainty visualization evaluation. IEEE transactions on visualization and computer graphics, 25(1):903–913,
     2018.
   © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-021"></a>

## PDF page 21

<a id="p021-b001"></a>

<!-- p021-b001 -->
21

<a id="p021-b002"></a>

<!-- p021-b002 -->
[20] Jessica Hullman, Paul Resnick, and Eytan Adar. Hypothetical outcome plots outperform error bars and violin
     plots for inferences about reliability of variable ordering. PloS one, 10(11):e0142444, 2015.
[21] J. D. Hunter. Matplotlib: A 2d graphics environment. Computing in Science & Engineering, 9(3):90–95, 2007.
[22] Christopher H Jackson. Displaying uncertainty with shading. The American Statistician, 62(4):340–347, 2008.
[23] Amit Jena, Ulrich Engelke, Tim Dwyer, Venkatesh Raiamanickam, and Cecile Paris. Uncertainty visualisation:
     An interactive visual survey. In 2020 IEEE Pacific Visualization Symposium (PacificVis), pages 201–205. IEEE,
     2020.
[24] Alex Kale, Francis Nguyen, Matthew Kay, and Jessica Hullman. Hypothetical outcome plots help untrained
     observers judge trends in ambiguous data. IEEE transactions on visualization and computer graphics, 25(1):892–
     902, 2018.
[25] Aasim Kamal, Parashar Dhakal, Ahmad Y Javaid, Vijay K Devabhaktuni, Devinder Kaur, Jack Zaientz, and
     Robert Marinier. Recent advances and challenges in uncertainty visualization: a survey. Journal of Visualization,
     24(5):861–890, 2021.
[26] Matthew Kay. ggdist: Visualizations of distributions and uncertainty in the grammar of graphics. IEEE
     Transactions on Visualization and Computer Graphics, 30(1):414–424, 2024.
[27] Matthew Kay, Tara Kola, Jessica R Hullman, and Sean A Munson. When (ish) is my bus? user-centered
     visualizations of uncertainty in everyday, mobile predictive systems. In Proceedings of the 2016 chi conference on
     human factors in computing systems, pages 5092–5103, 2016.
[28] Gordon Kindlmann and Carlos Scheidegger. An algebraic process for visualization design. IEEE transactions on
     visualization and computer graphics, 20(12):2181–2190, 2014.
[29] Le Liu, Alexander P Boone, Ian T Ruginski, Lace Padilla, Mary Hegarty, Sarah H Creem-Regehr, William B
     Thompson, Cem Yuksel, and Donald H House. Uncertainty visualization by representative sampling from
     prediction ensembles. IEEE transactions on visualization and computer graphics, 23(9):2165–2178, 2016.
[30] Le Liu, Lace Padilla, Sarah H Creem-Regehr, and Donald H House. Visualizing uncertain tropical cyclone
     predictions using representative samples from ensembles of forecast tracks. IEEE transactions on visualization
     and computer graphics, 25(1):882–891, 2018.
[31] Alan M MacEachren, Anthony Robinson, Susan Hopper, Steven Gardner, Robert Murray, Mark Gahegan, and
     Elisabeth Hetzler. Visualizing geospatial information uncertainty: What we know and what we need to know.
     Cartography and Geographic Information Science, 32(3):139–160, 2005.
[32] Alan M MacEachren, Robert E Roth, James O’Brien, Bonan Li, Derek Swingley, and Mark Gahegan. Visual
     semiotics & uncertainty visualization: An empirical study. IEEE transactions on visualization and computer
     graphics, 18(12):2496–2505, 2012.
[33] Harriet Mason, Dianne Cook, Sarah Goodwin, Emi Tanaka, and Susan VanderPlas. The noisy work of uncertainty
     visualisation research: A review. arXiv preprint arXiv:2411.10482v3, 2026.
[34] Harriet Mason, Dianne Cook, Sarah Goodwin, and Susan VanderPlas. ggdibbler: Add Uncertainty to Data
     Visualisations, 2026. R package version 0.6.5.9000.
[35] Michelle McDowell and Astrid Kause. Communicating uncertainties about the effects of medical interventions
     using different display formats. Risk Analysis, 41(12):2220–2239, 2021.
[36] Andrew McNutt, Gordon Kindlmann, and Michael Correll. Surfacing visualization mirages. In Proceedings of
     the 2020 CHI Conference on human factors in computing systems, pages 1–16, 2020.
[37] Francois Mercier, Nicola Consalvo, Nicolas Frey, Alex Phipps, and Benjamin Ribba. From waterfall plots to
     spaghetti plots in early oncology clinical development. Pharmaceutical statistics, 18(5):526–532, 2019.
[38] Miguel Nacenta, Uta Hinrichs, and Sheelagh Carpendale. Fatfonts: combining the symbolic and visual aspects of
     numbers. In Proceedings of the international working conference on advanced visual interfaces, pages 407–414,
     2012.
[39] Chris Olston and Jock D Mackinlay. Visualizing data with bounded uncertainty. In IEEE Symposium on
     Information Visualization, 2002. INFOVIS 2002., pages 37–40. IEEE, 2002.
[40] L. Padilla, Matthew Kay, and Jessica Hullman. Uncertainty Visualization. In Walter W. Piegorsch, Richard A.
     Levine, Hao Helen Zhang, and Thomas C. M. Lee, editors, Computational Statistics in Data Science, chapter 21,
     pages 405–421. Wiley, Oxford, 2022.
   © 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459

<a id="page-022"></a>

## PDF page 22

<a id="p022-b001"></a>

<!-- p022-b001 -->
22

<a id="p022-b002"></a>

<!-- p022-b002 -->
[41] Lace Padilla, Racquel Fygenson, Spencer C Castro, and Enrico Bertini. Multiple forecast visualizations (mfvs):
     Trade-offs in trust and performance in multiple covid-19 forecast visualizations. IEEE transactions on visualization
     and computer graphics, 29(1):12–22, 2022.
[42] Lace M. K. Padilla, Matthew Kay, and Jessica Hullman. Uncertainty visualization. In Computational Statistics in
     Data Science. John Wiley & Sons, Ltd., 2020.
[43] Georgia Panagiotidou, Houda Lamqaddam, Jeroen Poblome, Koenraad Brosens, Katrien Verbert, and An-
     drew Vande Moere. Communicating uncertainty in digital humanities visualization research. IEEE Transactions
     on Visualization and Computer Graphics, 29(1):635–645, 2022.
[44] Kristin Potter, Paul Rosen, and Chris R Johnson. From quantification to visualization: A taxonomy of uncertainty
     visualization approaches. In IFIP Working Conference on Uncertainty Quantification, pages 226–249. Springer,
     2011.
[45] Xiaoying Pu and Matthew Kay. A probabilistic grammar of graphics. In Proceedings of the 2020 CHI Conference
     on Human Factors in Computing Systems, pages 1–13, 2020.
[46] Peter J Rousseeuw, Ida Ruts, and John W Tukey. The bagplot: a bivariate boxplot. The American Statistician,
     53(4):382–387, 1999.
[47] Won Son, Chi Tim Ng, and Johan Lim. A new integral representation of the coverage probability of a random
     convex hull. Communications for Statistical Applications and Methods, 22(1):69–80, 2015.
[48] Ying Sun and Marc G Genton. Functional boxplots. Journal of Computational and Graphical Statistics, 20(2):316–
     334, 2011.
[49] Zana Vosough, Dietrich Kammer, Mandy Keck, and Rainer Groh. Visualization approaches for understanding
     uncertainty in flow diagrams. Journal of Computer Languages, 52:44–54, 2019.
[50] Yong Wang, Qiaomu Shen, Daniel Archambault, Zhiguang Zhou, Min Zhu, Sixiao Yang, and Huamin Qu.
     Ambiguityvis: Visualization of ambiguity in graph layouts. IEEE Transactions on Visualization and Computer
     Graphics, 22(1):359–368, 2015.
[51] Michael L. Waskom. seaborn: statistical data visualization. Journal of Open Source Software, 6(60):3021, 2021.
[52] Daniel Weiskopf. Uncertainty visualization: Concepts, methods, and applications in biological data visualization.
     Frontiers in Bioinformatics, 2:793819, 2022.
[53] Hadley Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York, 2016.
[54] Hadley Wickham, Dianne Cook, Heike Hofmann, and Andreas Buja. Graphical inference for infovis. IEEE
     transactions on visualization and computer graphics, 16(6):973–979, 2010.
[55] Urša Zrimšek and Erik Štrumbelj. Quantifying uncertainty: All we need is the bootstrap? Journal of Statistical
     Computation and Simulation, pages 1–19, 2025.

<a id="p022-b003"></a>

<!-- p022-b003 -->
© 2026 IEEE. Personal use of this material is permitted. Permission from IEEE must be obtained for all other uses, in any current or future
   media, including reprinting/republishing this material for advertising or promotional purposes, creating new collective works, for resale or
                      redistribution to servers or lists, or reuse of any copyrighted component of this work in other works.
                                                     IEEE DOI: 10.1109/TVCG.2026.3704459
