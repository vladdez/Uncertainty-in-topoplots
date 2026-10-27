---
id: "kay2024ggdist"
title: "ggdist: Visualizations of Distributions and Uncertainty in the Grammar of Graphics"
source_file: "The Art of Uncertain Topoplots/papers/kay2024ggdist.pdf"
source_sha256: "9120101bd416a4f7a6ece08bec8eb94e914e83c6e2c0e5b36932e3c6e1ae8ae2"
extraction_format: 1
---

# ggdist: Visualizations of Distributions and Uncertainty in the Grammar of Graphics — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
ggdist: Visualizations of Distributions and
                               Uncertainty in the Grammar of Graphics
                                                                                         Matthew Kay
       A. Some combinations of slabs and pointintervals     B. Multiple lineribbons with varying probability mass                          C. Anthropomorphic dotplots using the dots
                                                                           35                                                                 geometry and the Wee People font
                                                                                                                        Cylinders
                                                                           30                                               4    6     8             bJmQs
                                                                                                                                                   TqPBfhjRg
                                                                           25                                                                    GHmrycLyBccqFPp
                                                                                                                                            x sMidvdEIEGvJNtSkEzo s
                                                                           20                                                                    −1       0       1        2       3

<a id="p001-b002"></a>

<!-- p001-b002 -->
15
                                                                                                                                           E. Raincloud plots created by combining slab,
                                                           10mpg                                                                              pointinterval, and dots geometries
                                                                                         100hp            200                   300

<a id="p001-b003"></a>

<!-- p001-b003 -->
D. Logit dotplot using lineribbon and dots geoms
                                                                           1.0
                                                          Pr(sex = male)

<a id="p001-b004"></a>

<!-- p001-b004 -->
0.5

<a id="p001-b005"></a>

<!-- p001-b005 -->
0.0
                                                                                 4000g      4500      5000        5500          6000
                                                                                             Body mass of Gentoo penguins

<a id="p001-b006"></a>

<!-- p001-b006 -->
Fig. 1: Examples from the three major classes of geometries in ggdist: (A) slabintervals, such as density plots, CDFs, intervals,
       and gradient plots; (B) lineribbons, such as uncertainty bands and fan charts; and (C) dots, such as dotplots and beeswarm charts.
       Myriad combinations of these are possible, leading to charts like (D) logit dotplots and (E) raincloud plots [1].

<a id="p001-b007"></a>

<!-- p001-b007 -->
Abstract—The grammar of graphics is ubiquitous, providing the foundation for a variety of popular visualization tools and toolkits. Yet
       support for uncertainty visualization in the grammar graphics—beyond simple variations of error bars, uncertainty bands, and density
       plots—remains rudimentary. Research in uncertainty visualization has developed a rich variety of improved uncertainty visualizations,
       most of which are difficult to create in existing grammar of graphics implementations. ggdist, an extension to the popular ggplot2
       grammar of graphics toolkit, is an attempt to rectify this situation. ggdist unifies a variety of uncertainty visualization types through the
       lens of distributional visualization, allowing functions of distributions to be mapped to directly to visual channels (aesthetics), making it
       straightforward to express a variety of (sometimes weird!) uncertainty visualization types. This distributional lens also offers a way to
       unify Bayesian and frequentist uncertainty visualization by formalizing the latter with the help of confidence distributions. In this paper, I
       offer a description of this uncertainty visualization paradigm and lessons learned from its development and adoption: ggdist has existed
       in some form for about six years (originally as part of the tidybayes R package for post-processing Bayesian models), and it has evolved
       substantially over that time, with several rewrites and API re-organizations as it changed in response to user feedback and expanded to
       cover increasing varieties of uncertainty visualization types. Ultimately, given the huge expressive power of the grammar of graphics
       and the popularity of tools built on it, I hope a catalog of my experience with ggdist will provide a catalyst for further improvements to
       formalizations and implementations of uncertainty visualization in grammar of graphics ecosystems.
       A free copy of this paper is available at https://osf.io/2gsz6. All supplemental materials are available at https://github.com/mjskay/ggdist-
       paper and are archived on Zenodo at doi:10.5281/zenodo.7770984.
       Index Terms—Uncertainty visualization, probability distributions, confidence distributions, grammar of graphics

<a id="p001-b008"></a>

<!-- p001-b008 -->
1   I NTRODUCTION
The grammar of graphics [54] is ubiquitous, providing the foundation                                   uncertainty representations, often designed to address shortcomings
for a variety of visualization toolkits. Yet support for uncertainty                                   in those existing visualization types. Examples include, but are not
visualization in grammar graphics systems, generally speaking, remains                                 limited to, quantile dotplots [14, 31], gradient error bars [11], gradient
rudimentary. Popular implementations like ggplot2 [48, 49] and Vega-                                   plots [6,25], fan charts [25], and innumerable variations on eye plots [4,
lite [44] typically provide versions of error bars (for points), uncertainty                           18, 31, 45]. Yet, most of these alternative representations are—simply
bands (for lines), boxplots, and density plots. However, research in                                   put—painful to convince existing grammar of graphics implementations
uncertainty visualization has developed a rich variety of alternative                                  to produce.
                                                                                                          ggdist [29] is an attempt to rectify this situation. It started under
                                                                                                       the guise of tidybayes [30]—an R package I wrote for post-processing
 • Matthew Kay is with Northwestern University. E-mail:                                                Bayesian models for use with ggplot2—in 2016. tidybayes slowly
   mjskay@northwestern.edu                                                                             gained usage in the Bayesian statistics community, but the package
 Manuscript received xx xxx. 201x; accepted xx xxx. 201x. Date of Publication                          always had two complementary, but not perfectly aligned, uses: post-
xx xxx. 201x; date of current version xx xxx. 201x. For information on                                 processing Bayesian model output for visualization, and creating un-
obtaining reprints of this article, please send e-mail to: reprints@ieee.org.                          certainty visualizations in the grammar of graphics. The latter is bigger
Digital Object Identifier: xx.xxxx/TVCG.201x.xxxxxxx                                                   than just Bayesian statistics: everyone needs to visualize uncertainty!
                                                                                                       And, contrary to popular opinion—as we’ll see later—Bayesian and

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
frequentist uncertainty visualization can be done within the same frame-              display. I like this notation because it emphasizes that we are creating
work. Recognizing this broader need, in 2020 I spun off the uncertainty               functions from data space to aesthetic (display) space; in grammar
visualization components of tidybayes into a new package, ggdist, and                 of graphics parlance these are scale functions which can themselves
published it to CRAN [21]. Since then it has steadily grown in use inside             be specified (e.g., to use log scales, to pick how colors are assigned,
and outside the Bayesian statistics community in R, and now averages                  etc). Other notations obscure this key insight into the structure of the
about 14,000 downloads per month (modest for an R package).                           grammar of graphics by, e.g., placing the aesthetic first and “assigning”
   ggdist aims to be (1) a coherent extension to the grammar of graph-                data variables to it. In fact, let’s see that now: here is a translation of
ics that makes it easy to create a variety of uncertainty visualizations,             the above into ggplot2 and Vega-lite6 code, assuming cars is a data
and (2) an implementation of a particular formalism for describing                    frame with weight and mpg columns:
uncertainty visualizations: mappings of functions of distributions (e.g.               ggplot2:                        Vega-lite:
densities, CDFs, quantiles) onto aesthetics (e.g. height, color, opacity).
                                                                                        ggplot(cars) +                  vl.data("path/to/cars.json")
That formalism is the primary focus and contribution of this paper. My                    aes(                            .encode(
ambition is that not only should that formalism be able to express a va-                    x = weight,                     vl.x().fieldQ("weight"),
riety of uncertainty visualizations through a single coherent framework,                    y = mpg                         vl.y().fieldQ("mpg")
but that that framework should be complete enough that someone else                       ) +                             )
can wander along and use it to express new uncertainty visualization                      geom_point()                    .markPoint()
types I’ve never thought of before.1 Naturally this is hard to demon-                 This shows the close correspondence between the abstract notation
strate, but I will attempt to do so by giving a tour of ggdist through                above and the particulars of code in actual grammar of graphics imple-
recreations of a variety of uncertainty visualizations in the literature.             mentations. Throughout the rest of this paper, I’ll stick to the abstract
Along the way, I’ll discuss lessons I’ve learned in how to effectively                notation and corresponding ggplot2 + ggdist code for some particulars.
integrate uncertainty visualization into the grammar of graphics.
   Ultimately, in the spirit of recent retrospectives on visualization                2.2 Uncertainty visualization in the grammar of graphics,
system design [43], I hope to distill down some of what I’ve learned                      as she is spoke
developing a moderately-well-used uncertainty visualization toolkit.2
                                                                                      Speaking of existing implementations of the grammar of graphics, how
Given the huge expressive power of the grammar of graphics and
                                                                                      do they implement uncertainty visualization? Rudimentarily, I think.
the popularity of tools built on it, I hope a systematic approach to
integrating uncertainty into the grammar of graphics might provide a                      One natural approach to uncertainty visualization is to use a Gaussian
catalyst for improved implementations of uncertainty visualization to                 approximation: to represent all estimates and their uncertainty as a
flourish in existing grammar of graphics ecosystems, and ultimately for               mean and standard deviation. This makes specification easy: instead
even better formal descriptions of uncertainty visualization to arise.                of mapping a single value onto the x aesthetic, say, we map a point
                                                                                      estimate onto x and provide an aesthetic for its standard deviation; call
                                                                                      it xSD . Say we had a point estimate µ and had quantified its standard
2     S ETTING THE STAGE
                                                                                      error (i.e. the standard deviation of its sampling distribution) as σ , we
2.1    A simplified notation for the grammar of graphics                              might plot a point with an error bar using a composite pointinterval
As I would like to talk more generally than a specific grammar of                     geometry as follows, yielding a 95% interval calculated from a Normal
graphics implementation—that is, I am more concerned with the for-                    distribution with mean µ and standard deviation σ :
malism underlying ggdist than with the idiosyncrasies of its API—I’ll
need a formal way of writing down visualization specifications sepa-                            µ →x                                            m
rated from a particular implementation. I’ll adopt here a notation that                         σ → xSD
I’ve used when teaching ggplot2, Vega-lite, Altair, and Tableau. I’ve
found students pick it up handily, which is at least some evidence for                       GEOM = pointinterval                                   s
its understandability. The core notation describes a visualization in
terms of its data variables, aesthetic mappings, and geometries. We                   This is one approach taken by Vega-lite: it provides an errorbar7
create a scatterplot of the infamous mtcars dataset [19], for example,                mark (analogous the interval portion of pointinterval) and an xError
by mapping one variable onto the x aesthetic and another onto the y                   channel (analogous to xSD ). I’ll refer to this as the {x, xSD } approach.
aesthetic:3                                                                              The problem, fundamentally, is that not all uncertainty is well-
                                               35
                                                                                      represented by a Gaussian distribution. Consider uncertainty in a
                                               30
                                                                                      proportion (bounded at 0 and 1, thus as estimates approach the bound-
                                               25                                     ary the interval becomes asymmetric—yet Gaussian intervals must be
                                         mpg

<a id="p002-b002"></a>

<!-- p002-b002 -->
weight → x                                                                 symmetric) or uncertainty in a variance parameter (bounded below at
                                               20
             mpg → y                                                                  0). Or, consider the ubiquitous Student-t confidence interval: as the de-
                                               15                                     grees of freedom go to ∞, a Student-t distribution is well-approximated
           GEOM = point
                                               10                                     by the Normal, but with low degrees of freedom (incidentally common
                                                     2      3       4      5          in small-n studies—like at VIS), the tails of the distribution become
                                                             weight                   fatter, and the Normal distribution is a poor approximation. Thus, a
                                                                                      more general approach is needed.
This notation sets up two aesthetic mappings:4 a mapping from the                        The obvious alternative, at least for interval representations, is to
weight variable onto the x aesthetic, and a mapping from the mpg                      simply specify the interval endpoints; e.g. for a 95% Gaussian interval:
variable onto the y aesthetic. It then employs a point geometry5 for
                                                                                          6 I use the Vega-lite API instead of its JSON form, as JSON is a horrifying
    1 Emphasis on I—I think a formalism and its corresponding API truly shows
                                                                                      mess of visual noise that no sane human should want to read or write. The
its power when people make things with it that its creator did not conceive.          Vega-lite API is a notable improvement, though without R’s facility for capturing
    2 In the spirit of this being a retrospective, I’m keeping the tone informal. I
                                                                                      and re-writing abstract syntax trees, it doesn’t quite reach the succinctness
think that’s more honest; besides, after two years of a pandemic, I at least need a   of ggplot2. This seems to be a fundamental limitation when writing domain-
break from stilted academic writing. I hope you do too! If not, my condolences.       specific languages in JavaScript, though the Vega-lite authors have done an
    3 I am aware it is traditional to slap a number on each figure and float it off
                                                                                      excellent job with the language they’ve been given.
into a random corner of the page. I violate that norm throughout this paper               7 errorbar is, in my view, a misnomer, as is xError: fundamentally, the
without remorse.                                                                      mark calculates a Gaussian interval, which might be being used to represent
    4 Or in Vega-lite parlance, encodings
                                                                                      error in an estimate, but might not. Error is not the generic notion at play, a
    5 Vega-lite-ese: mark                                                             standard deviation is; and the generic mark is an interval, not an error bar.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
µ →x                                                                      median(M) → x
                                                              m
      µ − 1.96 · σ → xMIN                                                                          
                                                                                                1−γ
      µ + 1.96 · σ → xMAX                                                                FM−1         → xMIN
                                          m - 1.96 × s                 m + 1.96 × s              2                                    γ = 0.95
           GEOM = pointinterval                                                                    
                                                                                                1+γ
                                                                                         FM−1         → xMAX
Here, the magic values −1.96 and +1.96 are the (1 − 95%)/2 = 2.5%                                2
                                                                                                                                             γ = 0.66
and (1 + 95%)/2 = 97.5% quantiles of the standard Normal distribu-                                  γ → linewidth
tion, thus yielding a 97.5% − 2.5% = 95% interval. This is generic                              GEOM = pointinterval
in the sense that any interval can be represented, but unsatisfying in
the sense that we have lost some level of abstraction that was present                              γ ∈ {0.66, 0.95}
when we were just thinking in terms of estimates and their variances.
This approach also requires that the user knows how to make these                     This is a not-uncommon approach that tries to avoid dichotomous
calculations. Both ggplot2 (with geom_pointrange) and Vega-lite                       thinking by showing multiple intervals of different masses. It also has
(with the x and x2 channels supplied to errorbar) offer a variant of                  the nice grammar-of-graphics-ish property of mapping the mass (γ)
this solution for pre-calculated intervals.                                           onto the width of the line, instead of creating two explicit, separate
   I will offer a different solution: to instead represent intervals as prop-         layers, each specifying a different interval—it makes the mass into
erties of a distribution, allowing us to neatly handle both the simple case           data.9 This also makes it easy to generalize to other visualizations, e.g.
of Gaussian error and more complex cases. Centering distributions—                    by modifying the previous specification to map mass onto color instead
not standard deviations or intervals—in the specification of uncertainty              of linewidth:
will also allow us to build a richer set of uncertainty representations.
                                                                                                                                                           mass
                                                                                             γ → color
3     U NCERTAINTY VISUALIZATION AS                                                                                                                             0.95
      DISTRIBUTIONAL VISUALIZATION                                                        GEOM = pointinterval                                                  0.8

<a id="p003-b002"></a>

<!-- p003-b002 -->
3.1     Intervals                                                                            γ ∈ {0.50, 0.80, 0.95}                                             0.5

<a id="p003-b003"></a>

<!-- p003-b003 -->
Imagine we represent an uncertain value generically as a distribution,
or a random variable, M. Importantly, I do not consider this a probabil-              On the other hand, these are still a bit low-level: they require the user
ity distribution necessarily: it could be a probability distribution, but             to know how to calculate interval endpoints from the quantile func-
it could also be a confidence distribution, which is a frequentist gen-               tion. This also limits us specifically to quantile intervals, when other
eralization of sampling distributions and bootstrap distributions [55].               intervals types, such as highest-density intervals [24] or shortest inter-
Its defining characteristic will be that it has a cumulative distribution             vals [34], might be preferable. Thus, ggdist also supplies a stat version
function (CDF), FM (x), which is:                                                     of pointinterval, which bundles up some statistical calculations and
                                                                                      default aesthetic mappings with the pointinterval geometry.10 All stats
    • For a probability distribution, FM (x) = Pr(M ≤ x), the probability
                                                                                      in ggdist support the xDIST and yDIST aesthetics, onto which objects that
      that M is less than or equal to x.
                                                                                      represent distributions can be mapped. They also allow the user to spec-
    • For a confidence distribution, FM (x) = γ is the confidence γ at                ify the type of point and interval used, and generate the corresponding
      which x would be the upper limit of a one-sided γ% confidence                   values and mappings for x, xMIN , xMAX , and linewidth. This changes
      interval, [−∞, x], for M.                                                       the specification to something like:
   For either representation, we may also be interested in other func-
tions of the distribution. These include the derivative of the cumulative                         M → xDIST
distribution function, i.e. the density function (or the mass function, if                     STAT = pointinterval
the distribution is discrete), fM (x), as well as the inverse of the CDF                                                                         M
                                                                                             POINT = median
(also known as the quantile function), FM−1 (x). Given these functions,
we can generate a variety of uncertainty representations, including but                 INTERVAL = quantile interval
not limited to density plots and intervals.                                                        γ ∈ {0.66, 0.95}
   For example, a median and γ% quantile interval could be defined
generically on any distribution M as follows:
                                                                                      The representation of the distribution M could be a sample-based rep-
      median(M) → x                                                                   resentation, e.g. a bunch of draws from a Bayesian posterior or from
                                                        median(M )                  a bootstrap distribution, or it could be an object representing a theo-
           1−γ
    FM−1         → xMIN                                                               retical distribution in terms of its parameters, such as a Normal distri-
            2                                                                         bution with a defined mean and standard deviation. Point estimates
              
           1+γ                                   ⎡1− γ⎤                   ⎡1+γ⎤
                                                                                      and interval types can be defined by arbitrary functions of distributions,
    FM−1         → xMAX                   F M−1 ⎢⎢    ⎥            F M−1 ⎢⎢    ⎥      and predefined functions for mean, median, and mode, and quantile,
            2                                    ⎢ 2 ⎥⎥                   ⎢ 2 ⎥⎥
                                                 ⎣    ⎦                   ⎣    ⎦      highest-density, and shortest intervals are provided. This generalizes
           GEOM = pointinterval
                                                                                      the {x, xSD } approach used by Vega-lite to any distribution type while
If M is a probability distribution, this is a Bayesian credible interval,             abstracting over the specifics of how points and intervals are calculated.
and if M is a confidence distribution, this is a frequentist confidence                  In implementation, ggdist allows distributions to be represented
interval. This lets us abstract over the petty battles between this or
                                                                                          9 I learned at least two useful things from a relational databases class in
that statistical camp and get to the meaningful business of visualizing
uncertainty. This also allows us something not present in other attempts              undergrad: (1) it’s always better to put data into rows than into column names of
so far: to make it easy to specify multiple interval sizes, and to map                tables—an insight that stems from database normal forms [10] (distinctions be-
interval size itself onto an aesthetic. For example, if we8 wanted to                 tween which I have long forgotten) or what some statisticians call tidy data [50];
show two intervals, a 95% and a 66%, where the smaller interval is                    and (2) you are rarely at Google scale, so you’re probably better off with a
                                                                                      relational database with proper transactions than some dumb old key–value
shown as a thicker line, we could write:
                                                                                      store. The latter lesson each of my students refuses to learn until they build a
    8Yes yes, I am using both “I” and “we” in this paper. “I” is me, and “we”         web app to collect data from 300 people using some newfangled database they
is the conspiratorial “we”: I’d like to hope you’ll come along with me on this        aren’t the target users for, and end up with garbage. Kids these days, etc.
exciting journey of trying to sort out reasonable ways to visualize uncertainty.         10 See Sec. 5, or Wickham [48], for more on stats and geoms.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
by numeric vectors (a sample-based representation), objects from the             modeling package, and preds is a data frame of weight values to predict
distributional R package [39] (which supports theoretical distributions          on, we can add a column to preds that contains a random variable rep-
as well as samples), and rvar objects from the posterior R package [7]           resentation of p(mpg | weight) using brms::posterior_predict [8]
(a sample-based representation that mimics numeric arrays in R). For             and the posterior::rvar data type [7]. The latter is a data type I
example, if we re-create the {x, xSD } representation abstractly thus:           created specifically to wrap large samples that represent distributions
                                                                                 into objects that mimic R vectors and arrays, and which can be added
Normal(µ, σ ) → xDIST                                                            to data frames:
       STAT = pointinterval
                                                    Normal(m, s)
                                                                                    preds$mpg_given_weight = rvar(posterior_predict(fit, preds))
      POINT = median
                                                                                 This creates a new column, mpg_given_weight, containing rvar
   INTERVAL = quantile interval
                                                                                 objects representing p(mpg | weight) for the weight on each row of
           γ ∈ {0.66, 0.95}                                                      the preds data frame. Given this data frame, the code equivalent of
                                                                                 the abstract specification above is:
In ggdist, using distributional::dist_normal, the specification                               ggplot(preds) +
is quite similar:                                                                               aes(x = weight, ydist = mpg_given_weight) +
                                                                                                stat_lineribbon()
                ggplot(data) +
                  aes(xdist = dist_normal(mu, sigma)) +                          stat_lineribbon defaults to .width = c(.5, .8, .95) and
                  stat_pointinterval(                                            maps the resulting .width onto the fill aesthetic, so we do not need
                    point_interval = median_qi,
                                                                                 to specify the .width or fill mappings. Once we have a multiple-
                    .width = c(.66, .95)
                  )
                                                                                 ribbon geometry, it is easy to create other visualization types, like
                                                                                 gradient fan charts [6, 25]. For example, we could use a large number of
These are the default values for point_interval and .width (γ),11                intervals, say k = 50 or 100, with masses between 0 and 1 (exclusive):
so just stat_pointinterval() also works here. To demonstrate gen-
eralizing this approach, consider the common need to place uncertainty
                                                                                                                              40
intervals on the results of a t-test, which can be derived from a tν (µ, σ )          γ → fill
distribution with ν degrees of freedom, location µ (e.g. an estimated                                                         30

<a id="p004-b002"></a>

<!-- p004-b002 -->
mpg
                                                                                   STAT = lineribbon
mean), and scale σ (e.g. a standard error). Given these three values in                                        
                                                                                            i − 0.5                         20
a data frame, a visualization specification might be:                                 γ∈               i ∈ 1...k
                                                                                               k     
                                                                                                                              10
                                                         t n (m, s)
      tν (µ, σ ) → xDIST                                                                k = 100                                    2      3      4      5
          STAT = pointinterval                                                                                                             weight

<a id="p004-b003"></a>

<!-- p004-b003 -->
This set of k γ values is the same sequence generated by the
In ggdist code, the aesthetic specification closely matches this abstract        ppoints(k) function in R, so we can pass .width = ppoints(100)
notation: aes(xdist = dist_student_t(nu, mu, sigma)).                            to stat_lineribbon to get a gradient fan chart with 100 intervals.
                                                                                 This stems directly from the choice to make γ into data that can be
3.2   Ribbons                                                                    mapped onto aesthetics, and is one example of support for a chart type
Once we have pointinterval representations, it is straightforward to             that was a happy accident of ggdist’s design.12
develop uncertainty band representations by generalizing points to lines
and intervals to ribbons—thus, lineribbon. Imagine a regression that
models car miles per gallon based on weight (the details of the function         3.3   Slabs
g are not important):                                                            Speaking of gradients, the obvious other direction to go for uncertainty—
                                                                                 if we are to move beyond intervals—is density plots. Most grammar of
                   log(mpg) ∼ Normal (g(weight), σ )                             graphics implementations support density plots, but these are typically
                                                                                 designed only for sample-based representations: they calculate a kernel
Such a model could provide a predictive distribution for a car’s miles           density estimate (KDE) from a sample and allow this to be visualized.
per gallon conditional on its weight: p(mpg | weight), which we might            Given ggdist’s core abstraction of distributions, we can take this a step
want to plot alongside the raw data. If a lineribbon is a geometry               further, visualizing both sample-based representations and theoretical
combining a line with an arbitrary number of uncertainty bands around            distributions.13
it, abstractly, we want something like this:
                                                                                     However, stopping at just densities seems the wrong level of abstrac-
                                               40                                tion:14 many useful uncertainty visualizations can be created through
         weight → x                                                              the whole suite of distributional functions: CDFs, densities, and quan-
                                               30                                tiles. Thus, ggdist instead has a notion of a slab geometry, which has
                                         mpg

<a id="p004-b004"></a>

<!-- p004-b004 -->
p(mpg | weight) → yDIST                                                          a thickness onto which arbitrary functions of the distribution can be
              γ → fill                         20
                                                                                 mapped. For example, imagine two groups, a and b, each with uncer-
          STAT = lineribbon                                                      tainty in its mean represented by a random variable M | group. We
                                               10
                                                                                 could specify a density plot of these distributions as:
              γ ∈ {0.50, 0.80, 0.95}                 2          3     4   5
                                                                weight              12 This happy accident was discovered in my response to a user’s question in

<a id="p004-b005"></a>

<!-- p004-b005 -->
(I also show the raw data as a separate point layer, for comparison.)            tidybayes issue #103.
                                                                                    13 You may be tempted to say: but Matthew, of course you could easily
Assuming fit is a Bayesian version of this model fit using the brms
                                                                                 pre-calculate densities from a theoretical density function and plot them, e.g.
   11 For historical reasons that have to do with a combination of a very long   using ggplot2::stat_function. Unfortunately, once you add non-linear
discussion with a bunch of people on the Stan probabilistic programming lan-     axis transformation into the mix, this is a recipe for silent errors caused by
guage forums [28] and naming conventions in some R APIs for fixed arguments      failing to adjust the density by the derivative of the transformation—an error
to functions with variable argument lists [47], γ in ggdist is spelled .width.   ggdist prevents. See Sec. 6.3.
Reflecting on my past mistakes, a better name would be mass.                        14 See earlier footnote7 about error bars versus intervals.

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
max f M (x )       This translates naturally to aes(alpha = !!p_(x)). Fine fine, but
                                                                                       let’s get weird. Back in 2014, the inimitable Michaels Correll and
                                                                     thickness         Gleicher—arguing that error bars should be considered harmful [11]—
             M → xDIST
                                                                                       proposed instead a visualization which has a solid bar inside the 95%
         group → y

<a id="p005-b002"></a>

<!-- p005-b002 -->
group
                                                  b                           0
                                                                    max f M (x )       interval and gradient tails that fade out beyond the interval, to emphasize
         fM (x) → thickness                                                            the arbitrariness of the 95% confidence level. We can use the CDF to
          STAT = slab                                                                  construct a function with these properties, and map it to alpha:

<a id="p005-b003"></a>

<!-- p005-b003 -->
a                           0                             
                                                                                                |2FM (x) − 1|                                       b
                                                                                         − max                 → alpha

<a id="p005-b004"></a>

<!-- p005-b004 -->
group
(I also include a pointinterval with a median and 66% interval above—                               0.95
and elsewhere in this section—for reference.) The slabs have a subscale                                      STAT = slab                            a
for thickness,15 which is an orientation-aware aesthetic (if the distribu-
tions were mapped onto yDIST , thickness would act as a width instead of
height) with a fixed baseline: values of 0 on the thickness scale always               In ggdist this function is either:
correspond to the base of the slab. This makes it appropriate for both                    • -pmax(abs(2*after_stat(cdf) - 1), .95) or
probability densities and CDFs, both of which have a natural 0 point.
In the above example, the density fM (x) is mapped onto thickness,                         • -pmax(abs(2*!!Pr_(X <= x) - 1), .95), using the proba-
creating a traditional density plot. Importantly, because the geometries                     bility expression mini-DSL.
use the same scale, both subscales have the same overall maximum                          Thus, ggdist can create this particularly weird uncertainty visualiza-
thickness, which ensures that the area under both densities is equal.16                tion without breaking the bonds of its core abstraction. Importantly, the
    This is the default output of stat_slab() in ggdist, which maps                    function I’ve used to construct the tails is not arbitrary; it is meaningful
densities onto the thickness aesthetic. If desired, the mapping fM (x) →               in itself: 1 − |2FM (x) − 1| is the consonance curve [2], which (in the
thickness can be translated to code in one of two ways:                                frequentist interpretation) is the two-sided p-value for the null hypoth-
                                                                                       esis M = x. Horizontal slices through this curve at a height of α are
  1. aes(thickness = after_stat(pdf)): This maps the pdf                               (1 − α)% quantile intervals:
     computed variable onto thickness. Computed variables in gg-
                                                                                                                                                        1
     plot2 are calculated by stats and made accessible in aesthetic

<a id="p005-b005"></a>

<!-- p005-b005 -->
1 - 2F M (x ) - 1
     mappings via after_stat(). ggdist stats provide several com-
     puted variables, including pdf, cdf, and .width. See Sec. 5.                         1 − |2FM (x) − 1| → thickness                                     0.50   50% CI

<a id="p005-b006"></a>

<!-- p005-b006 -->
2. aes(thickness = !!p_(x)): This uses a small domain-                                              STAT = slab
     specific language for probability expressions I added to ggdist,                                                                                       0.05      95% CI
     and is intended to more closely mimic a mapping like p(x) →                                                                                        0
     thickness in code. The !! pseudo-operator comes from the
                                                                                       Fair enough, but let’s get weirder: in 2021, Helske et al [18], inspired
     rlang meta-programming R package [20] and performs unquota-
                                                                                       by Correll and Gleicher, proposed combining their gradient tail with a
     tion [51]: it inserts the expression returned by p_(x), which in
                                                                                       violin plot. We can do that by adding back in the density-to-thickness
     this case is after_stat(pdf), into the aes call.17
                                                                                       mapping, and use the SIDE parameter, which specifies if the slab should
   Slab geometries have several useful properties designed to make it                  be drawn on the top side (default), bottom side, or both. I’ll also adjust
easy to create a variety of uncertainty visualizations. One important                  the tails to fade outside the 85% interval, since otherwise the fading is
property is that the alpha (opacity), fill, and outline color aesthetics of            hard to see in the skinny tails of the violin:
the slabs can have data values mapped onto them at a sub-geometry
level.18 This functionality, combined with the ability to map arbitrary                                fM (x) → thickness
                                                                                                                                                  b
distribution functions, means we can easily recreate a bunch of visual-                       |2FM (x) − 1|
                                                                                       − max                  → alpha
                                                                                                                                group

<a id="p005-b007"></a>

<!-- p005-b007 -->
izations from the literature. The obvious first example would be a color                          0.85
gradient plot [25], by mapping density onto alpha:
                                                                                                           STAT = slab                              a
               M → xDIST                                                                                   SIDE = both
                                                  b
           group → y
                                          group

<a id="p005-b008"></a>

<!-- p005-b008 -->
Okay fine, but let’s get even weirder: Helske et al [18] further suggested
           fM (x) → alpha                                                              using discrete intervals for the colors instead of a gradient, to aid
                                                  a
            STAT = slab                                                                discriminability. We can do that too! A key feature of the slab stat is
                                                                                       that it also computes intervals, and for each point along the slab, retains
   15 Grammar of graphics aficionados might ask: why not use faceting instead of       a column indicating the mass (γ) of the smallest requested interval
creating a new positional subscale? Experience has shown many situations where         containing that point.19 This means that we can integrate intervals
faceting doesn’t cut it: for example, a thickness subscale easily handles complex      directly into the slab by mapping γ onto alpha or fill:
plot layouts with multiple estimates as grouped or even possibly-overlapping
densities (even combined with layers showing raw data)—combinations difficult               fM (x) → thickness
or impossible to create with facets.                                                                                                                b
   16 This default is, most of the time, what you want, as it ensures each distribu-
                                                                                                 γ → fill
                                                                                                                                group

<a id="p005-b009"></a>

<!-- p005-b009 -->
tion integrates to 1. For exceptions to this rule, ggdist provides a normalize                   γ ∈ {0.5, 0.8, 0.95, 1}
option and a scale_thickness_shared function which allow finer control                       STAT = slab                                            a
over how thickness scales are shared across groups, panels, and geometries.                  SIDE = both
   17 I added this syntax when ggplot2 deprecated stat(), which was a synonym

<a id="p005-b010"></a>

<!-- p005-b010 -->
for after_stat(). This (1) made expressions with after_stat needlessly                 Helske describes these violin-interval plots as “more challenging to cre-
verbose and (2) replaced a declarative verb, stat—which indicates the type of          ate”; ggdist supports them naturally through a combination of its core
expression but not when it is computed—with a procedural verb, after_stat.
I feel that this change violates the declarative foundations of ggplot2, and the          19 This can also be done by discretizing the CDF , and that was the recom-

<a id="p005-b011"></a>

<!-- p005-b011 -->
mini-DSL for probabilistic expressions is my small protest against it.                 mended approach in earlier versions of ggdist; see the cut_cdf_qi function.
   18 Just as an implementation note, this happens to be an incredible pain in the     However, that does not generalize to other kinds of intervals, like highest-density
ass. See the description of geom_slab rendering in Sec. 5.                             intervals—hence the approach described here.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
features: making interval mass (γ) into data and allowing distribution                                                                                                     |x| < 2
functions and intervals to be mapped to aesthetics within a single slab.
                                                                                                                                                                           TRUE
   Another variation on violin plots is the raindrop plot of Barrowman                                                                                                     FALSE
                                                                                               fM (x) → thickness

<a id="p006-b002"></a>

<!-- p006-b002 -->
group
and Myers [4], which maps log-density instead of density onto thickness                                                               b
inside a desired interval, say 95%:                                                           |x| < 2 → fill
                                                                                                STAT = slab
                         
 log fM (x) if γ ≤ .95                               b                                                                                a
                             → thickness
 ∅          otherwise                                                                                                                     -2   0   2   4       6       8    10 12

<a id="p006-b003"></a>

<!-- p006-b003 -->
group
                     STAT = slab                                                     For each distribution, Pr(|X| < 2)—the probability the value is in the
                                                     a
                      SIDE = both                                                    ROPE of ±2—is directly encoded by the proportion of the slab high-
                                                                                     lighted in blue. Because logical conditions can be mapped directly onto
                                                                                     aesthetics, we can write aes(fill = after_stat(abs(x) < 2))
The rationale here is that some distributional features, such as fat tails           to create this chart.
(kurtosis), can be easier to see in log-density than density [4]. In ggdist,
the above spec is written:
                                                                                     3.4    Dotplots
      aes(thickness = ifelse(.width <= .95, log(!!p_(x)), NA)) +
      stat_slab(side = "both", normalize = "groups")
                                                                                     These days, when every other uncertainty visualization paper is about
                                                                                     frequency framing or discrete outcome displays—spaghetti plots [12,
Where normalize = "groups" is needed to tell the slab to normalize                   33] hypothetical outcome plots [22, 27], quantile dotplots [14, 31] and
thickness on a per-group basis, as log-density does not have a natu-                 so on—I would be remiss to write a whole uncertainty visualization
ral zero point. Without this, the endpoints of the arcs defining the                 toolkit that can’t make one measly discrete outcome visualization.25
“raindrops” may not reach the thickness baseline.                                    The natural counterpart to the continuous encoding of the slab geometry
                                                                                     is ggdist’s dots geometry, which can create Wilkinson dotplots [53] (for
   Another interesting2021 uncertainty visualization is Haber and                    raw data)26 and quantile dotplots (to show uncertainty).
Wilkinson’s [16] fuzzygram, i.e. fuzzy histogram. We can general-                       Quantile dotplots were designed for uncertainty communication, and
ize it to a fuzzy bar chart. This chart type has what I would call a                 depict quantiles of a continuous distribution using a dotplot, to help
compelling generative story: an explanation for how the uncertainty                  the viewer reason about that distribution as a set of discrete possible
encoding in the chart arises based on a generative process. Imagine we               outcomes [31]. Put another way, they discretize the density function,
want to add uncertainty to a bar chart, and we have a distribution for the           and allow reasoning about intervals through counting: e.g., in a 100-dot
uncertainty in the value of each bar. Now say we sample a large number               quantile dotplot, Pr(X < 2) translates to the question, how many dots
of semi-transparent bar charts from these distributions, and plot them               out of 100 are less than 2? Continuing our example from the slab
all on top of each other. As the number of charts approaches ∞ and the               geometries, here are two quantile dotplots using 100 dots each:
opacity of any given chart goes to 0, the stack of overlapping bars for
each value will begin to resemble the complementary CDF, 1 − F(x),
of that distribution.22 That insight leads to the following encoding:                               M → xDIST

<a id="p006-b004"></a>

<!-- p006-b004 -->
group
                                                                                                 group → y                            b

<a id="p006-b005"></a>

<!-- p006-b005 -->
b                                                STAT = dots
         1 − FM (x) → alpha
                                         group

<a id="p006-b006"></a>

<!-- p006-b006 -->
QUANTILES = 100                          a
              STAT = slab
                                                 a                                                                                        -2   0   2       4       6         8    10

<a id="p006-b007"></a>

<!-- p006-b007 -->
It is worth noting that ggplot2 has a dotplot geometry already, but that
I would describe this chart type as theoretically interesting but inter-             it is often awkward to use: as it uses a bin width specified by the user,
pretationally problematic. Anecdotally, without the overlaid reference               there is no guarantee the dotplot fits inside the available space, often
point and interval, folks I show this to often do not correctly identify             leading to dots running outside the plot region. By contrast, the dots
the mean, believing the darker parts of the bar are more likely (a not-              geometry in ggdist uses numerical optimization to automatically find a
unreasonable misinterpretation).23 On the other hand, I do like the idea             shared bin width across all dotplots in the geometry that ensures they
of generative stories in uncertainty visualization; e.g., I’ve used Plinko           fit in the available space (notice I did not specify bin width above).27
boards to depict uncertainty in election forecasts, which try to capital-                One property of dotplots is the opportunity to encode additional
ize on a physical process—one that might intuitively24 feel random to                information in the dots themselves. For example, we could take ad-
people—to depict uncertainty through a form of sedimentation [23].                   vantage of Unicode support in the shape aesthetic (which determines
   Another advantage to being able to map arbitrary data values onto                 how points are drawn) to use emoji to encode just how we feel about
slab aesthetics is that we can map the results of logical conditions onto            possible effect sizes in a distribution:28
those aesthetics. A common procedure in Bayesian estimation is to use                   25 Plus it would be a bit silly for me to develop a whole-ass visualization
regions of practical equivalence (ROPEs) [32]. Say you are interested in
                                                                                     toolkit that can’t at least make quantile dotplots, since I came up with them in
whether an estimate is “practically” equal to 0. You define a ROPE of                the first place [31].
0± some small effect size that you consider so close to 0 it is effectively             26 And minor variations thereof, like beeswarm plots, which can be created by
indistinguishable from it. Then you ask: what is the probability the                 setting SIDE = both and (optionally) adjusting the LAYOUT parameter; see the
value is in the ROPE—i.e., practically equivalent to 0? We can visualize             dotsinterval vignette for examples.
this probability by highlighting the ROPE on a density:                                 27 It also allows constraints on minimum and maximum bin width, and has

<a id="p006-b008"></a>

<!-- p006-b008 -->
various options for what to do if those constraints are exceeded, such as com-
                                                                                     pressing the layout so that dots may overlap. Anecdotally, automatic dotplot
  20 AKA weird.
                                                                                     layout is one of the most popular features of ggdist, as it relieves the intense
  21Yes, there are a lot of footnotes. No, I don’t care.
                                                                                     frustration of the endless tweaking necessary to get the dot size right.
  22 Assuming additive blending and opacities that sum to 1.                            28 This example was inspired by a tweet from Michael Correll suggesting
  23 I don’t know if this is an example of within-the-bar bias [38] or not.
                                                                                     effect sizes at VIS might be best described with a dotplot of poop emojis. I was
   24 As this is an uncertainty visualization paper, I am professionally obligated   delighted to find that ggdist could replicate it, but have spared the literature a
to use “intuitive” at least once without defining it.                                faithful rendering of the poopmoji plot by opting for smiley faces here.

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
Of the 169 issues on Github, 79 (47%) were opened by someone
               M → xDIST                                                               other than me; there were 45 unique authors, excluding me. A further
                                                                                       16 issues were opened by me in direct response to some user need,
            x > 0 → shape                                                              either flowing from a comment on another issue or from a conversation
             STAT = dots                                                               on another platform, often Twitter.30 Thus, just over half of all issues
        QUANTILES = 50                                                                 on ggdist’s tracker stem from user engagement—and from a variety of
                                                                                       users. I roughly categorized issues (with some overlap) as follows:

<a id="p007-b002"></a>

<!-- p007-b002 -->
This plot does require us to specify what the shape scale function                        • 38%: A request that did (or would) result in a new feature.
is. Abstractly, if we assume each aesthetic mapping foo has a scale                       • 20%: A user asking for help, usually with a particular plot they
function sfoo , we might define the scale function for shape as:                            are trying to create.
                                                                                         • 17%: A bug.
                                             if x                                         • 16%: Internal issues, such as code refactoring, cleanup, or TODOs.
                     sshape (x) : x →
                                             if ¬x                                        • 9%: Documentation.
In ggplot2 this is:                                                           Currently, 34 issues (20%) remain open; only one of these is a bug
                                                                           (recently-reported). I have been fortunate to get a wide variety of
    scale_shape_manual(values = c("TRUE" = " ", "FALSE" = " "))            engagement from users, which has lead to substantive improvement
                                                                           to ggdist. It is hard for me to summarize that engagement, but I’ll
This may seem manifestly silly, but there’s something to the idea of highlight two instances that had a salient impact on the overall design
making discrete outcomes more concrete—or at least more memorable— of ggdist, and which also carry some useful lessons for uncertainty
through graphic depictions, whether it be with emoji or other icons [17]. visualization in the grammar of graphics.
Since arbitrary fonts can be used with ggplot2 shapes, it is one avenue       First, issue #83 involves an extensive discussion about how to refac-
to creating more expressive dotplots: for example, inspired by a tweet tor ggdist to merge two classes of stats. Older versions of ggdist
from Gabe Bassett, I once used Alberto Cairo’s Wee People font [9] with distinguished between stats designed to summarize distributions repre-
geom_dots to create dotplots with anthropomorphic icons (Fig. 1C).         sented as vectors of samples (mapped onto x or y) and those designed
                                                                           to represent distribution objects (mapped onto a now-superceded dist
3.5 Further examples                                                       aesthetic). My experience answering user issues led me to conclude
My hope in the preceding sections was to whet your appetite for the that this distinction was confusing, so I opened this issue as an attempt
expressive power of an uncertainty visualization grammar grounded in to find a better solution.
distributions, both of probability and of confidence. It was not intended     Two expert users joined in the discussion, and together we consid-
as a tutorial (hence the paucity of code), but to give a taste for the ered a variety of options, including (1) creating a new distribution
underlying formalism of ggdist, how it can help us think about uncer- subtype of x and y scales, similar to the way that continuous values,
tainty visualizations, and how it extends the grammar of graphics in a discrete values, dates, and times are handled by ggplot2; or (2) creating
principled way to support fluid specification of a variety of uncertainty new aesthetics, like xDIST and yDIST . I prototyped an implementation of
visualizations. For more examples, and specifically for examples with the former, realizing some shortcomings: distributions cannot easily be
code, the interested reader can check out the vignettes in the ggdist treated as subtypes of positional scales like continuous or discrete vari-
documentation, which include a slew of examples not covered here, and ables are, because distributions themselves have subtypes (like being
the vignettes in the tidybayes documentation, which include examples continuous or discrete). After further discussion, I settled on the xDIST
of the use of ggdist with Bayesian models.                                 and yDIST design, which also makes it easy to intermix distributional
                                                                           objects with non-distributional objects along the same positional scale.
4 U SE IN THE WILD                                                         This has proven to be a good choice, as I have received feedback from
I sometimes wonder if the best way to validate visualization ideas is to users that the new xDIST and yDIST aesthetics are much easier to use.
deploy them into the world and wait to see what happens (as Munzner           Second, issue #19—to automatically detect discrete theoretical dis-
puts it: to see what users do of their own accord [36]). Yet, given the tributions and render them correctly as histograms—had been a long-
vagaries of research project timelines, most systems in VIS do not have standing wishlist item. About 9 months after I opened it, prompted
this luxury—understandably so, lest we wait 10 years to graduate a by a conversation on Twitter, a ggdist user posted some examples of
PhD student. While there are examples of wildly successful systems plots they might be able to create if the issue were resolved. After a
that came out of visualization research (e.g. d3 [5], Vega-lite [44]), few productive brainstorming about the design of discrete distribution dis-
systems have both the generality and reach of those exemplars. I think plays, I implemented a feature in ggdist whereby histograms of discrete
ggdist falls somewhere in the middle: it has been deployed for several theoretical distributions are treated as a type of density plot: a stepped
years and enjoys a modest following. This gives me the opportunity to version of their probability mass function is available through the same
look at some coarse—but naturalistic—data on usage.                        mappings used for density functions of continuous distributions. This
   ggdist currently sees about 14,000 downloads per month from integrates discrete distributions into the same broader framework used
CRAN [13] (up from just a few thousand on original launch in 2020,         to construct other visualization types in ggdist, meaning I was able
piggy-backing on tidybayes’ already-established community). Per to resolve the issue without creating new special cases for handling
Google Scholar, it has been cited 46 times (and tidybayes 236 times).29 discrete distributions from the users’ perspective.
Its Github project has been starred ~620 times, putting it in the com-        Several other issues and features have stemmed from interactions
pany of popular packages like cowplot (~640), ggalt (~630), and ggtext of this kind, including interactions with other R package authors who
(~600) in the ggplot2 extension gallery. It has 169 issues in its Github make use of ggdist (18 other packages, not including tidybayes, depend
issue tracker, not counting the 305 issues in tidybayes (many of which on ggdist). Overall, I think ggdist has garnered a modest following, and
are ggdist-related issues from before ggdist and tidybayes split). Issues I owe a great debt to community for contributing to its development.
especially can be a sign of user engagement, because projects without
broader engagement will have issues opened only by the author. To 5 H OW DOES ALL THIS WORK , ANYWAY ?
better understand that engagement, I exported all issues from ggdist
(see Github or the supplement) and read back through them, engaging Interested implementers might ask: whither the implementation de-
in a light tagging process based on what I recalled about those issues.    tails? The glib response, of course, is the ggdist source code, which is
  29 These are all citations of the software itself: neither package has had a paper     30 I spend possibly too much time on #rstats Twitter/Mastodon/Bluesky

<a id="p007-b003"></a>

<!-- p007-b003 -->
written about it—yet.                                                                  engaging with data scientists around visualization problems.

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->

                     

 
 
 

<a id="p008-b002"></a>

<!-- p008-b002 -->


   

    
      






 
  

                              


<a id="p008-b003"></a>

<!-- p008-b003 -->


<a id="p008-b004"></a>

<!-- p008-b004 -->


 γ
                                               
  
          b
        ν μσ→

<a id="p008-b005"></a>

<!-- p008-b005 -->

→ 
                                         
                                                      ­­
 

<a id="p008-b006"></a>

<!-- p008-b006 -->
→                      ­
 

          γ→ 



<a id="p008-b007"></a>

<!-- p008-b007 -->


<a id="p008-b008"></a>

<!-- p008-b008 -->

                                                                                                                                                 a

<a id="p008-b009"></a>

<!-- p008-b009 -->
        ν    μ      σ                

<a id="p008-b010"></a>

<!-- p008-b010 -->
         
   
        γ                                 −3   0   3   6   9   12

<a id="p008-b011"></a>

<!-- p008-b011 -->
               

<a id="p008-b012"></a>

<!-- p008-b012 -->
                                                 
                                                                                                                

<a id="p008-b013"></a>

<!-- p008-b013 -->

     
           



<a id="p008-b014"></a>

<!-- p008-b014 -->

                                                                                                                    
                                                                                                                

<a id="p008-b015"></a>

<!-- p008-b015 -->
Fig. 2: Flow of data through the visualization construction pipeline for a Helske [18]-style interval+density plot using ggdist::stat_slab. The
layer, part of ggplot2, applies initial aesthetic mappings, translating input data into columns understood by stat_slab, which then constructs a
larger data frame containing evaluations of distribution functions over an x grid for each distribution (the user can specify the grid size if needed;
the default size is 501). Then, layer applies a second set of aesthetic mappings, and geom_slab uses the final data frame to construct the plot.

<a id="p008-b016"></a>

<!-- p008-b016 -->
well-tested (with near-100% test coverage), available on Github, and                           allowing them to support a variety of uncertainty visualizations through
archived on Zenodo. The less glib response is: this section of the paper.                      a distributional approach.
    Space being artificially scarce,31 I’ll outline the data processing
pipeline (Fig. 2) for just the slab statistic/geometry; the others follow                      6         R EFLECTIONS AND LESSONS LEARNED
similar principles. The basic implementation of slabs relies on two enti-                      6.1        Distributional notation makes uncertainty
ties: stat_slab and geom_slab. Both of these objects are contained                                        visualization much less annoying
inside a ggplot2 layer, which amongst other things is responsible for
                                                                                               The core use of distributional visualization to enable a variety of uncer-
applying aesthetic mappings and scale functions. For more details on
                                                                                               tainty visualization types was inspired by my work with Xiaoying Pu
how stats, geoms, and layers work in ggplot2, see Wickham [48].
                                                                                               developing a Probabilistic Grammar of Graphics (PGOG) [40], which
    To render a slab layer, first, the layer applies an initial set of                         tackled the problem of specifying area and unit visualizations of condi-
aesthetic mappings (Fig. 2A), defining (at least) positional variables                         tional probability distributions by integrating probability notation into
like x/y and distribution mappings like xDIST /yDIST . Then, stat_slab                         the grammar of graphics. PGOG focused mainly on product plots [52],
(Fig. 2B) evaluates the distributional functions (the density and CDF)                         icon arrays [3], and dotplots [53], while ggdist expands the expres-
and the intervals for each distribution in the xDIST (or yDIST ) aesthetic.                    siveness of a distributional visualization syntax to cover visualization
It determines reasonable limits within which to draw each distribution                         types that are not just functions of density and mass functions, but also
(the exact limits if finite, and the 0.1% or 99.9% quantile by default if                      functions of CDFs and intervals.33
infinite) and creates a grid of x (or y) values to evaluate the functions at.
                                                                                                  A key insight from working on both PGOG and ggdist is that bringing
Several special cases must be handled, including constant distributions
                                                                                               notation for probability distributions into the grammar of graphics is a
(rendered as a point mass) and discrete distributions (as a histogram;
                                                                                               powerful, expressive way to create visualizations of distributions and
see the end of Sec. 4). It then creates a data frame containing values of
                                                                                               uncertainty. Iterating on that syntax through user feedback (Sec. 4) has
x, f (x) (in a column named pdf),32 F(x) (cdf), and γ (.width—the
                                                                                               lead to, I think, an approachable but flexible abstraction for uncertainty
mass of the smallest interval containing x). These new columns are
                                                                                               visualization. A crucial insight—that frequentist uncertainty visual-
called computed variables in ggplot2.
                                                                                               ization can be brought into that same framework under the remit of
    The layer then applies a second set of aesthetic mappings (Fig. 2C):                       confidence distributions [55]—frees us from multiple tyrannies: (1)
those which depend on computed variables (as indicated by wrapping                             endless battles about whether one should be a frequentist or Bayesian
them in after_stat() or by using the probability expression mini-                              when you just want to get on with visualizing your uncertainty; (2)
DSL ; see Footnote 17). Then, geom_slab (Fig. 2D) renders each slab
                                                                                               memorizing silly little formulas for this or that test statistic; (3) im-
using one of two algorithms, depending on its fill_type parameter:                             plementing different, mutually incompatible, and wholly brittle code
segments or gradient. Prior to R 4.1, the R graphics engine did                                paths for visualizing uncertainty under different statistical paradigms.
not have proper gradient support, so the only available algorithm was                          A better world is possible!
segments (depicted in Fig. 2D), which sub-divides slabs into blocks
of consecutive x (or y) values with the same appearance, interpolating                         6.2        Balancing abstraction and learnability
x, y, and thickness values at cutpoints between blocks. This algorithm
                                                                                               A continual source of tension in the design of ggdist has been the
remains well-suited for fills with sharp cuts, such as ROPEs or small
                                                                                               balance between abstraction and learnability. At its base, ggdist actually
numbers of intervals. Alternatively, as of R 4.1, with proper gradient
                                                                                               only has three geometries, all of which are composite meta-geometries:
support in some R graphics output formats (e.g. SVG and PDF) [37],
                                                                                               (1) a slabinterval geometry, consisting of a slab, point, and interval;
ggdist can output high-quality color gradients. The gradient algo-
                                                                                               (2) a lineribbon geometry, consisting of a line and ribbon; and (3) a
rithm does this by rendering each slab as a polygon with a linear gra-
                                                                                               dotsinterval geometry, consisting of dots, a point, and an interval. All
dient fill, using the x (or y) positions as control points on the gradient.
                                                                                               other geometries in ggdist are shortcut geometries, constructed using
This algorithm is best-suited to color gradient density plots.
                                                                                               some combination of default parameters and/or aesthetic mappings
    In support of the above pipeline, ggdist includes extensive utilities
                                                                                               applied to one of those three meta-geometries.
for manipulating distributions (some of which are exposed in its API),
                                                                                                  In principle, ggdist could have only those three geometries; in prac-
including functions for calculating various interval types, for detecting
                                                                                               tice, this would not be as usable. First, certain combinations of options
discrete and constant distributions, and for determining distribution
limits. As the basic structure of the pipeline in ggplot2 should be                               33 On the other hand, ggdist still does not implement the conditional probabil-

<a id="p008-b017"></a>

<!-- p008-b017 -->
similar to other grammar of graphics systems, my hope is that such                             ity syntax we had in PGOG—though the mini-DSL for probability expressions
systems could easily adopt a formalism like the one I’ve described,                            was inspired by it—and it does not support product plots or stacked densities.
                                                                                               In a way, ggdist has to be more conservative at integrating crazier ideas from
    31 Perhaps one day we’ll throw off the shackles of the IEEE .
                                                                                               research since it has actual users; also, while the conditional syntax in PGOG
  32 This is also where corrections to the density must be made, depending on                  is elegant for specifying a general class of probabilistic visualizations, its use
the x (or y) scale function; see Sec. 6.3.                                                     cases for uncertainty specifically are a little less clear to me. So we’ll see.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
are often used together to create useful geometries; shortcuts for these                               correctly transform densities. It uses a combination of symbolic and (as
save time. Second, many users will not delve into the depths of ggdist’s                               a fallback) numerical methods to calculate derivatives of ggplot2 scale
options to learn how to create each combination they need, so short-                                   transformations to adjust densities.36 As a result, we can visualize a
cuts aid learnability and discoverability. ggdist’s shortcut geometries                                log-transformed log-Normal density and get the correct result:
include ones for intervals, eye plots (mirrored slabs with a pointinter-                                                                                               median is here :)
val), complementary CDF plots, and gradient plots (See Fig. 1A). I                                     ggplot() +
have found users appreciate these shortcuts, and often ask for more: a                                   aes(xdist = dist_lognormal(0,1)) +
raincloud plot shortcut (Fig. 1E) is a common request, for example.34                                    stat_slab() +
   I have found it productive to hold off on implementing every re-                                      scale_x_log10()
quested shortcut. I usually wait until I can figure out how solving a                                                                            0.01     0.1      1        10       100
particular problem (e.g., creating Helske-esque violin-interval plots)
                                                                                                       This emphasizes the need for uncertainty visualization systems to be
can be done within the distributional framework in a way that ex-
                                                                                                       scale-aware: it is not possible to comprehensively implement uncer-
pands the expressiveness of ggdist (e.g., allowing interval masses to
                                                                                                       tainty visualization purely as a data pre-processing step.37 This is one
be mapped onto slab aesthetics). Meanwhile, extensive documentation
                                                                                                       example of what Xiaoying Pu and I termed a tight coupling in a study
and examples tempers the need for quite so many explicit shortcuts; an
                                                                                                       of ggplot2 users [41]: data pre-processing (calculating the density) is
easy-to-adapt example in the documentation acts as a sort of shortcut
                                                                                                       tightly coupled with the visualization specification (the scale transfor-
itself. ggdist has extensive long-form vignettes that showcase myriad
                                                                                                       mation), and these must be kept in sync. Moving the calculation of
plot types with simple examples. This tension between abstraction
                                                                                                       densities into the visualization specification itself is one way to ensure
and learnability is common to grammar of graphics toolkits: if the
                                                                                                       this, eliminating a whole class of potential errors.
“purest” form of the grammar of graphics has no chart types at all (per
Wilkinson [54]), but designers often think in terms of chart types [41],                               6.4    Where to go from here
how do we best meet them in the middle?
                                                                                                       I would hardly deign to pretend ggdist has solved all of uncertainty
6.3   Uncertainty visualization is tightly coupled                                                     visualization. In truth, it’s stuck to a well-defined corner of it:
      with grammar of graphics scales                                                                  largely univariate uncertainty visualization (although lineribbon sup-
                                                                                                       ports some multivariate chart types: besides being able to visualize
As an earlier footnote alluded,13 we must be very careful when vi-                                     many conditional distributions at once as ribbons, when used with the
sualizing density functions. A naïve implementation of stat_slab                                       curve_interval function lineribbons can visualize joint uncertainty
might simply pass x values through the density function of the distri-                                 bands in the style of functional boxplots [26, 35, 46]).38 Obvious ex-
bution mapped to xDIST . However, if a non-linear scale transformation                                 tensions include two-dimensional densities, for which support exists
is applied, this will result in incorrect densities. This is because, for a                            in ggplot2, but that support is not built around the same framework
random variable Y = g(X), the density function fY is:                                                  of distributional functions and objects that ggdist is. Thus, ripe for
                                                 ′                                                     integration and extension.
                       fY (y) = fX g−1 (y) · g−1 (y)
                                                  
                                                                                                          Thinking further afield, there are other types of uncertainty visualiza-
                                                                                                       tions not well-supported in ggdist, or which ggdist’s abstractions are not
In other words, if we have a random variable X that we transform via                                   relevant to. One obvious example is spaghetti plots [12, 33]—though,
the function g to get Y , we must adjust its density values by the factor                              if you already have a joint sample from a distribution of paths in a
     ′
|g−1 (y)|, the absolute value of the derivative of the inverse of g. For ex-                           long-format data frame, ggplot2 makes it trivial to construct these plots.
ample, if X is drawn from a log-Normal(0, 1) distribution, we could plot                               Similarly, animated hypothetical outcome plots (HOPs) [22, 27] are
this distribution in base ggplot2 by using ggplot2::stat_function                                      straightforward to construct using ggplot2 with the gganimate package.
combined with R’s built-in log-Normal density function, dlnorm:                                        A more interesting question might be: if one designed a new uncertainty
                                                    median
                                                                                                       visualization grammar from the ground up to support all of the visual-
ggplot() +                                                                                             izations in ggdist and PGOG, plus static sample-based visualizations
  stat_function(                                                                                       like spaghetti plots and animated sample-based HOPs, what would it
    fun = \(x) dlnorm(x, 0, 1)                                                                         look like? Can a coherent framework bring all of these ideas together,
  )                                                                                                    and suggest new ideas too? I am hopeful it can.
                                           0    1    2         3   4   5    6   7        8   9   10
                                                                                                       7     C ONCLUSION
If we plot this on a log scale, i.e. plot Y = log(X), we should hope to
see a Gaussian density with a median of 100 = 1 (since medians are                                     ggdist has been a six-year journey in implementing a distributional,
preserved under transformation). However, because ggplot2 has no                                       petty-statistics-camp-agnostic approach to uncertainty visualization in
way to know this function is a density (nor if it did, does it know the                                the grammar of graphics. While there remain many interesting future
derivative of the scale function), the resulting density will be incorrect:                            challenges to integrating further classes of uncertainty visualizations
                                                                                                       under one umbrella, the flexibility and expressiveness of ggdist thus far
ggplot() +                                                                 median should               demonstrates the power of its underlying abstractions. Taking a step
                                                                           be here???
  stat_function(                                                                                       back, it also shows the value of continuing to push more aspects of vi-
    fun = \(x) dlnorm(x, 0, 1)                                                                         sualization specification into the formal description of the visualization
  ) +                                                                                                  itself, both by enabling a wider range of visualization types to be easily
  scale_x_log10()                                                                                      created and by reducing the potential for certain classes of errors.39
                                         0.01            0.1           1            10           100

<a id="p009-b002"></a>

<!-- p009-b002 -->
36 Specifically, ggdist applies R’s built-in D [42] function to get the symbolic
The line at 1 does not divide the area into two regions with equal mass,
as it would if it were the median. I have no doubt this has led to                                     derivative of the expression defining the scale function and, if that fails, uses
errors amongst ggplot2 users.35 Fortunately, ggdist does know how to                                   numDeriv::jacobian [15]. In the future, if my pull request #341 to the scales
                                                                                                       package is accepted, derivatives of scale functions will be offloaded into the
   34 A request I am unlikely to fulfill, as the complexity of specifying options                      guts of ggplot2 and simultaneously be made more reliable.
                                                                                                          37 It also suggests that grammar of graphics systems should implement deriva-
and aesthetics for such a bloated composite geometry—with point, interval, slab,
and dots sub-geometries!—means the shortcut is unlikely to be much easier to                           tives as part of their scale transformation functions.
use than just specifying a slabinterval alongside a dots geometry.                                        38 See examples at the end of the lineribbon vignette.
   35 For example, ggplot2 issue #4783 is written by a user asking why a theoreti-                        39 Potential we also saw in reducing errors with incorrect normalization of con-

<a id="p009-b003"></a>

<!-- p009-b003 -->
cal density and samples from a distribution do not line up under transformation—                       ditional probability distributions in PGOG [40] or in keeping data transformation
a less attentive user may never have noticed.                                                          and visualization specification code in sync more generally in ggplot2 [41].

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
S UPPLEMENTAL M ATERIALS                                                           [14] M. Fernandes, L. Walls, S. Munson, J. Hullman, and M. Kay. Uncertainty
                                                                                        displays using quantile dotplots or CDFs improve transit decision-making.
Supplemental materials, released under a CC-BY 4.0 license, are avail-
                                                                                        In Proceedings of the 2018 CHI Conference on Human Factors in Com-
able on GitHub (github.com/mjskay/ggdist-paper) and archived on Zen-
                                                                                        puting Systems, CHI ’18, p. 144:1–144:12. Association for Computing
odo (doi:10.5281/zenodo.7770984). Materials include: (1) an RMark-                      Machinery, New York, NY, USA, 2018. doi: 10.1145/3173574.3173718
down file that generates the figures in the paper; (2) generated figure                 1, 6
images; (3) a tagged archive of ggdist Github issues; (4) an RMark-                [15] P. Gilbert and R. Varadhan.               numderiv:      Accurate numeri-
down file calculating some descriptive statistics of ggdist Github isses;               cal derivatives.       R package version 2016.8-1.1. https://CRAN.R-
and (5) the full source of this paper.                                                  project.org/package=numDeriv, 2019. 9
   The full source of ggdist, released under a GPL 3.0 license, is                 [16] R. N. Haber and L. Wilkinson. Perceptual components of computer
available on GitHub (github.com/mjskay/ggdist) and archived on Zen-                     displays. IEEE Computer Graphics and Applications, 2(03):23–35, March
odo (doi:10.5281/zenodo.3879620). ggdist may also be installed from                     1982. doi: 10.1109/MCG.1982.1674217 6
CRAN [21] via the R command install.packages("ggdist").                            [17] S. Haroz, R. Kosara, and S. L. Franconeri. ISOTYPE visualization: Work-
                                                                                        ing memory, performance, and engagement with pictographs. In Proceed-
F IGURE C REDITS                                                                        ings of the 33rd Annual ACM Conference on Human Factors in Computing
                                                                                        Systems, CHI ’15, p. 1191–1200. Association for Computing Machinery,
All figures were created by Matthew Kay and are released under a                        New York, NY, USA, 2015. doi: 10.1145/2702123.2702275 7
CC-BY 4.0 license.                                                                 [18] J. Helske, S. Helske, M. Cooper, A. Ynnerman, and L. Besançon. Can
                                                                                        visualization alleviate dichotomous thinking? Effects of visual representa-
ACKNOWLEDGMENTS                                                                         tions on the cliff effect. IEEE Transactions on Visualization and Computer
I would like to thank various folks who have used, given feedback on,                   Graphics, 27(8):3397–3409, 2021. doi: 10.1109/TVCG.2021.3073466 1,
or contributed to ggdist over the years (this list is neither exhaustive                5, 8
nor in any particular order): Xiaoying Pu, Alex Kale, Abhraneel Sarma,             [19] H. V. Henderson and P. F. Velleman. Building multiple regression models
Fumeng Yang, Hyeok Kim, Matti Vuorre, Dominique Makowski, TJ                            interactively. Biometrics, 37(2):391–411, 1981. doi: 10.2307/2530428 2
                                                                                   [20] L. Henry and H. Wickham. rlang: Functions for base types and core
Mahr, Tim Mastny, Aki Vehtari, Brenton M. Wiernik, Arthur Albu-
                                                                                        R and Tidyverse features. R package version 1.1.1. https://CRAN.R-
querque, A. Solomon Kurz, Gabe Bassett, Mitchell O’Hara-Wild, Steve
                                                                                        project.org/package=rlang, 2023. 5
Haroz, Jarrett Byrnes, Dylan H. Morris, Dmytro Perepolkin, Cédric                  [21] K. Hornik. The comprehensive R archive network. Wiley Interdisciplinary
Scherer, Isabella Ghement, Teun van den Brand, and Jonas Kristoffer                     Reviews: Computational Statistics, 4(4):394–398, 2012. doi: 10.1002/
Lindeløv. This work was supported in part by NSF award 2126598.                         wics.1212 2, 10
                                                                                   [22] J. Hullman, P. Resnick, and E. Adar. Hypothetical outcome plots outper-
R EFERENCES                                                                             form error bars and violin plots for inferences about reliability of variable
 [1] M. Allen, D. Poggiali, K. Whitaker, T. R. Marshall, and R. A. Kievit. Rain-        ordering. PLOS ONE, 10(11):e0142444, 2015. doi: 10.1371/journal.pone.
     cloud plots: a multi-platform tool for robust data visualization. Wellcome         0142444 6, 9
     open research, 4(63), 2019. doi: 10.12688/wellcomeopenres.15191.1 1           [23] S. Huron, R. Vuillemot, and J.-D. Fekete. Visual sedimentation. IEEE
 [2] V. Amrhein and S. Greenland. Discuss practical importance of results               Transactions on Visualization and Computer Graphics, 19(12):2446–2455,
     based on interval estimates and p-value functions, not only on point esti-         2013. doi: 10.1109/TVCG.2013.227 6
     mates and null p-values. Journal of Information Technology, 37(3):316–        [24] R. J. Hyndman. Computing and graphing highest density regions. The
     320, 2022. doi: 10.1177/02683962221105904 5                                        American Statistician, 50(2):120–126, 1996. doi: 10.1080/00031305.1996
 [3] J. S. Ancker, Y. Senathirajah, R. Kukafka, and J. B. Starren. Design               .10474359 3
     features of graphs in health risk communication: a systematic review.         [25] C. H. Jackson. Displaying uncertainty with shading. The American
     Journal of the American Medical Informatics Association, 13(6):608–618,            Statistician, 62(4):340–347, 2008. doi: 10.1198/000313008X370843 1, 4,
     2006. doi: 10.1197/jamia.M2115 8                                                   5
 [4] N. J. Barrowman and R. A. Myers. Raindrop plots: a new way to display         [26] J. L. Juul, K. Græsbøll, L. E. Christiansen, and S. Lehmann. Fixed-time
     collections of likelihoods and distributions. The American Statistician,           descriptive statistics underestimate extremes of epidemic curve ensembles.
     57(4):268–274, 2003. doi: 10.1198/0003130032369 1, 6                               Nature Physics, 17(1):5–8, 2021. doi: 10.1038/s41567-020-01121-y 9
 [5] M. Bostock, V. Ogievetsky, and J. Heer. D3 data-driven documents. IEEE        [27] A. Kale, F. Nguyen, M. Kay, and J. Hullman. Hypothetical outcome
     Transactions on Visualization and Computer Graphics, 17(12):2301–2309,             plots help untrained observers judge trends in ambiguous data. IEEE
     2011. doi: 10.1109/TVCG.2011.185 7                                                 Transactions on Visualization and Computer Graphics, 25(1):892–902,
 [6] A. W. Bowman. Graphics for uncertainty. Journal of the Royal Statistical           2019. doi: 10.1109/TVCG.2018.2864909 6, 9
     Society Series A: Statistics in Society, 182(2):403–418, 01 2019. doi: 10.    [28] M. Kay. Unifying names of output columns in bayesplot / tidybayes /
     1111/rssa.12379 1, 4                                                               etc. The Stan Forums. https://discourse.mc-stan.org/t/unifying-names-of-
 [7] P.-C. Bürkner, J. Gabry, M. Kay, and A. Vehtari. posterior: Tools for work-        output-columns-in-bayesplot-tidybayes-etc/4577, Jun 2018. 4
     ing with posterior distributions. R package version 1.4.1. https://CRAN.R-    [29] M. Kay. ggdist: Visualizations of distributions and uncertainty. R package
     project.org/package=posterior, 2022. 4                                             version 3.3.0. https://CRAN.R-project.org/package=ggdist, 2023. doi: 10.
 [8] P.-C. Bürkner. brms: An R package for Bayesian multilevel models                   5281/zenodo.3879620 1
     using Stan. Journal of Statistical Software, 80(1):1:1–1:28, 2017. doi: 10.   [30] M. Kay. tidybayes: Tidy data and geoms for Bayesian models. R package
     18637/jss.v080.i01 4                                                               version 3.0.4. https://CRAN.R-project.org/package=tidybayes, 2023. doi:
 [9] A. Cairo and S. Klein. Our font is made of people. OpenNews – Source.              10.5281/zenodo.1308151 1
     https://source.opennews.org/articles/our-font-made-people/, Feb 2018. 7       [31] M. Kay, T. Kola, J. R. Hullman, and S. A. Munson. When (ish) is my bus?
[10] E. F. Codd. The Relational Model for Database Management: Version 2.               user-centered visualizations of uncertainty in everyday, mobile predictive
     Addison-Wesley Longman Publishing Co., Inc., USA, 1990. 3                          systems. In Proceedings of the 2016 CHI Conference on Human Factors in
[11] M. Correll and M. Gleicher. Error bars considered harmful: Exploring al-           Computing Systems, CHI ’16, p. 5092–5103. Association for Computing
     ternate encodings for mean and error. IEEE Transactions on Visualization           Machinery, New York, NY, USA, 2016. doi: 10.1145/2858036.2858558
     and Computer Graphics, 20(12):2142–2151, 2014. doi: 10.1109/TVCG.                  1, 6
     2014.2346298 1, 5                                                             [32] J. K. Kruschke. Rejecting or accepting parameter values in bayesian
[12] J. Cox, D. House, and M. Lindell. Visualizing uncertainty in pre-                  estimation. Advances in Methods and Practices in Psychological Science,
     dicted hurricane tracks. International Journal for Uncertainty Quantifica-         1(2):270–280, 2018. doi: 10.1177/2515245918771304 6
     tion, 3(2):143–156, 2013. doi: 10.1615/Int.J.UncertaintyQuantification.       [33] L. Liu, L. Padilla, S. H. Creem-Regehr, and D. H. House. Visualizing
     2012003966 6, 9                                                                    uncertain tropical cyclone predictions using representative samples from
[13] G. Csárdi. cranlogs: Download logs from the RStudio CRAN mirror.                   ensembles of forecast tracks. IEEE Transactions on Visualization and
     R package version 2.1.1. https://CRAN.R-project.org/package=cranlogs,              Computer Graphics, 25(1):882–891, 2019. doi: 10.1109/TVCG.2018.
     2019. 7                                                                            2865193 6, 9

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
[34] Y. Liu, A. Gelman, and T. Zheng. Simulation-efficient shortest probability
     intervals. Statistics and Computing, 25:809–819, 2015. doi: 10.1007/
     s11222-015-9563-8 3
[35] M. Mirzargar, R. T. Whitaker, and R. M. Kirby. Curve boxplot: Gen-
     eralization of boxplot for ensembles of curves. IEEE Transactions on
     Visualization and Computer Graphics, 20(12):2654–2663, 2014. doi: 10.
     1109/TVCG.2014.2346455 9
[36] T. Munzner. A nested model for visualization design and validation. IEEE
     Transactions on Visualization and Computer Graphics, 15(6):921–928,
     2009. doi: 10.1109/TVCG.2009.111 7
[37] P. Murrell.            Vectorised pattern fills in R graphics.
     https://www.stat.auckland.ac.nz/ paul/Reports/GraphicsEngine/vecpat/vecpat.html,
     May 2022. doi: 10.17608/k6.auckland.19945787 8
[38] G. E. Newman and B. J. Scholl. Bar graphs depicting averages are percep-
     tually misinterpreted: The within-the-bar bias. Psychonomic Bulletin &
     Review, 19:601–607, 2012. doi: 10.3758/s13423-012-0247-5 6
[39] M. O’Hara-Wild, M. Kay, and A. Hayes. distributional: Vectorised
     probability distributions. R package version 0.3.1. https://CRAN.R-
     project.org/package=distributional, 2022. 4
[40] X. Pu and M. Kay. A probabilistic grammar of graphics. In Proceedings
     of the 2020 CHI Conference on Human Factors in Computing Systems,
     CHI ’20, p. 339:1–339:13. Association for Computing Machinery, New
     York, NY, USA, 2020. doi: 10.1145/3313831.3376466 8, 9
[41] X. Pu and M. Kay. How data analysts use a visualization grammar in
     practice. In Proceedings of the 2023 CHI Conference on Human Factors
     in Computing Systems, CHI ’23, pp. 840:1–840:22. Association for Com-
     puting Machinery, New York, NY, USA, 2023. doi: 10.1145/3544548.
     3580837 9
[42] R Core Team. R: A language and environment for statistical computing.
     R Foundation for Statistical Computing, Vienna, Austria. https://www.R-
     project.org/, 2022. 9
[43] A. Satyanarayan, B. Lee, D. Ren, J. Heer, J. Stasko, J. Thompson,
     M. Brehmer, and Z. Liu. Critical reflections on visualization author-
     ing systems. IEEE Transactions on Visualization and Computer Graphics,
     26(1):461–471, 2020. doi: 10.1109/TVCG.2019.2934281 2
[44] A. Satyanarayan, D. Moritz, K. Wongsuphasawat, and J. Heer. Vega-lite:
     A grammar of interactive graphics. IEEE Transactions on Visualization
     and Computer Graphics, 23(1):341–350, 2017. doi: 10.1109/TVCG.2016.
     2599030 1, 7
[45] D. J. Spiegelhalter. Surgical audit: statistical lessons from Nightingale
     and Codman. Journal of the Royal Statistical Society: Series A (Statistics
     in Society), 162(1):45–58, 1999. doi: 10.1111/1467-985X.00120 1
[46] Y. Sun and M. G. Genton. Functional boxplots. Journal of Computational
     and Graphical Statistics, 20(2):316–334, 2011. doi: 10.1198/jcgs.2011.
     09224 9
[47] Tidyverse Team.           Dot prefix.         Tidyverse Design Guide.
     https://design.tidyverse.org/dots-prefix.html, 2020. 4
[48] H. Wickham. A layered grammar of graphics. Journal of Computational
     and Graphical Statistics, 19(1):3–28, 2010. doi: 10.1198/jcgs.2009.07098
     1, 3, 8
[49] H. Wickham. ggplot2. Wiley Interdisciplinary Reviews: Computational
     Statistics, 3(2):180–185, 2011. doi: 10.1002/wics.147 1
[50] H. Wickham.          Tidy data.        Journal of Statistical Software,
     59(10):10:1–10:23, 2014. doi: 10.18637/jss.v059.i10 3
[51] H. Wickham. Advanced R, Second Edition. CRC Press, 2019. https://adv-
     r.hadley.nz/. 5
[52] H. Wickham and H. Hofmann. Product plots. IEEE Transactions on
     Visualization and Computer Graphics, 17(12):2223–2230, 2011. doi: 10.
     1109/TVCG.2011.227 8
[53] L. Wilkinson. Dot plots. The American Statistician, 53(3):276–281, 1999.
     doi: 10.1080/00031305.1999.10474474 6, 8
[54] L. Wilkinson. The Grammar of Graphics. Statistics and Computing.
     Springer, New York, NY, USA, 2005. 1, 9
[55] M.-g. Xie and K. Singh. Confidence distribution, the frequentist distribu-
     tion estimator of a parameter: A review. International Statistical Review,
     81(1):3–39, 2013. doi: 10.1111/insr.12000 3, 8
