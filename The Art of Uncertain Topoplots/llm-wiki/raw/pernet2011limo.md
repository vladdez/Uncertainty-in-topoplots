---
id: "pernet2011limo"
title: "LIMO EEG: A Toolbox for Hierarchical LInear MOdeling of ElectroEncephaloGraphic Data"
source_file: "The Art of Uncertain Topoplots/papers/pernet2011limo.pdf"
source_sha256: "2e518cf5609009086464610191f9fc820114c7e5182180d25e2350c8895bead6"
extraction_format: 1
---

# LIMO EEG: A Toolbox for Hierarchical LInear MOdeling of ElectroEncephaloGraphic Data — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
Hindawi Publishing Corporation
Computational Intelligence and Neuroscience
Volume 2011, Article ID 831409, 11 pages
doi:10.1155/2011/831409

<a id="p001-b002"></a>

<!-- p001-b002 -->
Research Article
LIMO EEG: A Toolbox for Hierarchical LInear MOdeling of
ElectroEncephaloGraphic Data

<a id="p001-b003"></a>

<!-- p001-b003 -->
Cyril R. Pernet,1 Nicolas Chauveau,2, 3 Carl Gaspar,4 and Guillaume A. Rousselet4
          1
            Division of Clinical Neurosciences, SFC Brain Imaging Research Centre, SINAPSE Collaboration, University of Edinburgh,
            Western General Hospital, Edinburgh EH4 2XU, UK
          2 Inserm; Imagerie Cérébrale et Handicaps Neurologiques UMR 825, 31059 Toulouse, France
          3
            Université de Toulouse, UPS, Imagerie Cérébrale et Handicaps Neurologiques UMR 825, 31059 Toulouse, France
          4
            Centre for Cognitive Neuroimaging (CCNi), Institute of Neuroscience and Psychology, University of Glasgow,
            Glasgow G12 8QB, UK

<a id="p001-b004"></a>

<!-- p001-b004 -->
Correspondence should be addressed to Cyril R. Pernet, cyril.pernet@ed.ac.uk

<a id="p001-b005"></a>

<!-- p001-b005 -->
Received 21 September 2010; Revised 23 November 2010; Accepted 31 December 2010

<a id="p001-b006"></a>

<!-- p001-b006 -->
Academic Editor: Sylvain Baillet

<a id="p001-b007"></a>

<!-- p001-b007 -->
Copyright © 2011 Cyril R. Pernet et al. This is an open access article distributed under the Creative Commons Attribution License,
          which permits unrestricted use, distribution, and reproduction in any medium, provided the original work is properly cited.

<a id="p001-b008"></a>

<!-- p001-b008 -->
Magnetic- and electric-evoked brain responses have traditionally been analyzed by comparing the peaks or mean amplitudes
          of signals from selected channels and averaged across trials. More recently, tools have been developed to investigate single trial
          response variability (e.g., EEGLAB) and to test diﬀerences between averaged evoked responses over the entire scalp and time
          dimensions (e.g., SPM, Fieldtrip). LIMO EEG is a Matlab toolbox (EEGLAB compatible) to analyse evoked responses over all
          space and time dimensions, while accounting for single trial variability using a simple hierarchical linear modelling of the data. In
          addition, LIMO EEG provides robust parametric tests, therefore providing a new and complementary tool in the analysis of neural
          evoked responses.

<a id="p001-b009"></a>

<!-- p001-b009 -->
1. Introduction                                                              The toolbox oﬀers a comprehensive range of statistical
                                                                         tests (Table 1), including many popular designs (ANOVAs,
LIMO EEG (https://gforge.dcn.ed.ac.uk/gf/project/limo eeg/)              linear regressions, ANCOVAs). Some of the statistical meth-
is a toolbox for the statistical analysis of physiological data.         ods, that is, massive univariate general linear analyses [2,
The main goal of the toolbox is the analysis and formal                  3] and spatiotemporal clustering for multiple comparisons
testing for experimental eﬀects at all electrodes/sensors and            correction [4–6] have existed for several years whereas others
all time points of magneto- and electro encephalography                  like bootstrapping were introduced only recently [7–9].
(MEEG) recordings. This contrasts with traditional                           Contrary to other toolboxes dedicated to the analysis
approaches that select peaks or mean amplitudes of                       of event related potentials (ERPs), LIMO EEG deals both
averaged evoked responses. The toolbox is implemented                    with within-subject variance (i.e., single trial analyses) and
in Matlab (http://www.mathworks.com/) and requires                       between-subject variance (like in e.g., SPM [2, 3]). Using
the Matlab statistical toolbox (free alternative to these                LIMO EEG, data are analyzed using a hierarchical general
functions can be found on the LIMO EEG server and                        linear model where parameters of a GLM are estimated
corresponds to adapted version of Octave functions (http://              for each subject at each time point and each electrode
www.gnu.org/software/octave/). The data structure and                    independently (1st level analyses). Estimated parameters
visualization makes use of the EEGLAB Matlab toolbox                     from the first level analyses are then integrated across
[1] (http://sccn.ucsd.edu/eeglab/); therefore LIMO EEG is                subjects (2nd level analysis—Figure 1). This hierarchical
better used as a plug-in of EEGLAB, although the statistical             modelling of the data is similar to the one used to analyze
analyses can be performed independently. Similarly, the                  PET/fMRI data (SPM, FSL, BrainVoyager, etc.). Our general
toolbox is primarily designed for EEG data although both                 linear approach of analyzing MEEG data thus complements
EEGLAB and LIMO EEG can process MEG data.                                others which also rely on linear modeling but focus on

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
2                                                                                        Computational Intelligence and Neuroscience

<a id="p002-b002"></a>

<!-- p002-b002 -->
Table 1: Summary of statistical tests available in LIMO EEG via the GUI with the bootstrap procedures used at the univariate (one time
frame on one electrode) and cluster levels.

<a id="p002-b003"></a>

<!-- p002-b003 -->
Statistical tests
                          Hypothesis tested at the univariate level using           Multiple comparisons correction
available via the
                          bootstrap (non corrected P values/significance testing)   (accounts for doing many tests) using cluster statistics
general user interface
One sample t-test                                                                   H0 (center data then resample subjects and use
                          H1 (resample subjects and use bootstrapped T values)
(Student T test)                                                                    bootstrapped T values)
Paired t-test             H1 (resample subjects paired observations and use         H0 (center data per condition then resample subjects
(Student T test)          bootstrapped T values)                                    and use bootstrapped T values)
Two samples t-test        H1 (resample subjects in each group and use               H0 (center data per group then resample subjects and
(Student T test)          bootstrapped mean diﬀerences between groups)              use bootstrapped T values)
Regressions                                                                         H0 (resample subjects and fit to the original design
                          H1 (resample subjects and use regression coeﬃcients)
(Fisher F test)                                                                     matrix and use bootstrapped F values)
One way ANOVA             H0 (center data per group then resample subjects and      H0 (center data per group then resample subjects and
(Fisher F test)           use bootstrapped F values)                                use bootstrapped F values)
One way ANCOVA            H0 (resample subjects and fit to the original design      H0 (resample subjects and fit to the original design
(Fisher F test)           matrix and use bootstrapped F values)                     matrix and use bootstrapped F values)
Repeated measures
                          H0 (center data per conditions then resample subjects     H0 (center data per conditions then resample subjects
ANOVA
                          and use bootstrapped F values)                            and use bootstrapped F values)
(Hotelling T 2 test)

<a id="p002-b004"></a>

<!-- p002-b004 -->
averaged event related data [2] rather than single trials, or            condition is coded in one column of X), F or T tests are exact,
factorize time [3, 8], or both, rather than using time as a              that is, they give identical results to that obtained by applying
natural dimension.                                                       a standard inverse to a full rank matrix.

<a id="p002-b005"></a>

<!-- p002-b005 -->
2. Method                                                                2.2. Hierarchical General Linear Model for MEEG Data:
                                                                         2nd Level. At the second level of analysis, beta coeﬃcients
2.1. Hierarchical General Linear Model for MEEG Data: 1st                from the diﬀerent conditions (or their linear combinations)
Level. MEEG data form 3 dimensional matrices. Following                  obtained from each subject are analyzed across subjects to
the EEGLAB convention, the 1st dimension is space (elec-                 test for statistical significance. Several robust methods have
trodes or sensors), the 2nd dimension is time and the 3rd and            been implemented in LIMO EEG at this stage. Most of
last dimension is trials. The analysis is performed electrode            the techniques described below can be found in Wilcox
per electrode such that the data Y form a 2-dimensional                  [13] and correspond to tests performed under H1 to
p ∗ n matrix with p trials and n time frames (or time                    compute confidence intervals and under H0 to control
points). For each trial we define the experimental conditions            for multiple comparisons. Compared to standard methods,
by a 2 dimensional p ∗ m design matrix X with p rows                     robust methods provide better probability coverage for the
(for trials) and m columns; each column codes for one                    confidence intervals and a tighter control of the type I error.
condition or a covariate. In the current implementation, we              Computations presented in this section are used in LIMO
consider each trial to be unique and therefore the model                 EEG to provide robust confidence intervals and uncorrected
is similar to running a one-way ANOVA or ANCOVA. The                     P values or a binary decision on significance. Computations
model therefore follows (1) with B the estimated regression              for multiple comparisons correction are presented in the next
parameters (a m ∗ n matrix) and E the error term (a p ∗ n                section.
matrix). The solution of the normal equations is given by
inverting X. In practice we estimate the parameters following
(2), by fitting simultaneously all frames, one electrode at a            2.2.1. One-Sample t-Test. Whereas most ERP studies aim at
time, to obtain the parameters of the univariate model on                comparing diﬀerent experimental conditions, the GLM also
the diagonal of the B matrix. Combining the columns of X                 allows testing for the covariation of single-trial ERPs with
(contrast weighting) allows testing for various eﬀects at the            stimuli and cognitive factors (see e.g., Rousselet et al. [7]
individual level (t-tests, F-tests—for details see, e.g., [10])          who tested the eﬀect of image phase coherence across trials
                                                                         during a face discrimination task). A bootstrap-t approach
                            Y = XB + E,                          (1)     in which subjects are drawn randomly with replacement
                              −1                                   is implemented in LIMO EEG. For each bootstrap, a one-
         B = diag        XT X         XT Y = diag (X)∼∗ Y .      (2)     sample t-test is performed on the bootstrap sample and the
                                                                         T value is stored. These T values provide an approximation
In LIMO EEG, the solution is given by (2) using a generalized            of the T distribution under H0 and are used to estimate
Moore-Penrose pseudoinverse (pinv default function in                    the alpha/2 and 1-alpha/2 quantiles. The P values are then
Matlab [11, 12]). Thus, although the design matrices made                simply the average number of times the T values obtained
up by LIMO EEG are almost always rank deficient (each                    from the original data are above or below the bootstrapped

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
Computational Intelligence and Neuroscience                                                                                                                                                            3

<a id="p003-b002"></a>

<!-- p003-b002 -->
Epoched data
                                                                             1st level analysis                                                                     Adjusted ERP stimulus 1 and 2
             Trial 1

<a id="p003-b003"></a>

<!-- p003-b003 -->
Amplitude (μV)
             Trial 4 Trial 3 Trial 2

<a id="p003-b004"></a>

<!-- p003-b004 -->
Design matrix
                                                                                   (ANCOVA)
                                                                                                                                                                                  Time (ms)

<a id="p003-b005"></a>

<!-- p003-b005 -->
Model of ERP by covariate
             Trial 7 Trial 6 Trial 5

<a id="p003-b006"></a>

<!-- p003-b006 -->
(μV)
                                                                                                                                                                  Tr
                                                                                                                                                                     ial
                                                                                                                                                                                             (   ms)

<a id="p003-b007"></a>

<!-- p003-b007 -->
s
                                                                                                                                                                                        Time
                                               ···

<a id="p003-b008"></a>

<!-- p003-b008 -->
β parameters
                                                               Stimulus 1

<a id="p003-b009"></a>

<!-- p003-b009 -->
Stimulus 2

<a id="p003-b010"></a>

<!-- p003-b010 -->
Noise level

<a id="p003-b011"></a>

<!-- p003-b011 -->
Constant
           n−2
           Trial

<a id="p003-b012"></a>

<!-- p003-b012 -->
Amplitude (μV/std)
           n−1
           Trial
            Trial n

<a id="p003-b013"></a>

<!-- p003-b013 -->
Time (all electrodes)                                                                                                                      Time (ms)
                                          β parameters                      2nd level analysis
                                                                                                                                               Electrodes                    Significant F values
             Subject 1

<a id="p003-b014"></a>

<!-- p003-b014 -->
Design matrix
                                                                              (simple regression)

<a id="p003-b015"></a>

<!-- p003-b015 -->
Time (ms)
                                                                                                                                                                        140 ms           150 ms
              Subject 2

<a id="p003-b016"></a>

<!-- p003-b016 -->
160 ms           170 ms
                                                                               Subject variable

<a id="p003-b017"></a>

<!-- p003-b017 -->
Constant
                                                ···

<a id="p003-b018"></a>

<!-- p003-b018 -->
Regression slope and 95% CI
                                                                                                                                               Amplitude (a.u.)
             Subject n

<a id="p003-b019"></a>

<!-- p003-b019 -->
Time (all electrodes)                                                                                                                      Time (ms)
Figure 1: Illustration of the hierarchical procedure. At the 1st level of analysis (top), epoched data of each subject, comprising all trials, are
analyzed to obtain the estimated beta parameters reflecting the eﬀect of the various experimental conditions coded in the design matrix.
Here the design is simplified from [7] and codes for the eﬀect of stimulus 1, stimulus 2, and the noise level across all stimuli. At the 2nd level
of analysis (bottom), the beta parameter(s) of experimental condition(s) coded at the 1st level are analyzed to test for significance across
subjects. Here the 2nd level design matrix coded the subjects’ age thus performing a regression of age on the estimated parameters that
reflected the eﬀect of noise level on visual evoked responses.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
4                                                                                Computational Intelligence and Neuroscience

<a id="p004-b002"></a>

<!-- p004-b002 -->
quantiles. Finally, confidence intervals around the mean can      intervals are defined for each regressor as [β(a+1) β(c) ],
be computed following (3):                                        with
                                                                                  
               
                                                                                      alpha ∗ number of bootstraps
                                                                             a=                                   ,
                                              s                                          2 ∗ number of regressors            (4)
         CI = Sample Mean − T(U) ∗                 ;
                                           sqrt(n)
                                                           (3)                    c = number of bootstraps-a.
                                                   
                                              s
                   Sample Mean − T(L) ∗            ,              No P value can be computed with this technique but a
                                           sqrt(n)
                                                                  binary decision on the statistical significance is obtained: a
                                                                  regression coeﬃcient is significant if the confidence interval
where CI is the confidence interval, T(L) and T(U) are the        does not contain 0. Compared to other techniques, the
critical T values obtained from the sorted bootstrapped T         modified bootstrap has been shown to perform well under
values with, L = (alpha ∗ number of bootstraps/2) rounded         heteroscedasticity but also if the data (subjects) are sampled
to the nearest integer, U = (number of bootstraps − L), s is      from a nonnormal distribution [13].
sample standard deviation, sqrt(n) is the square root of the
number of observations.                                           2.2.5. ANOVA. Contrary to the other designs, only boot-
                                                                  straps under H0 are used to compute P values. The analysis
                                                                  relies on standard ordinary least squares (OLS) and, for
2.2.2. Two-Samples t-Test. To compare ERPs from two inde-
                                                                  repeated measure ANOVAs, sphericity is accounted for by
pendent groups of subjects, we use a percentile bootstrap in
                                                                  a multivariate approach (Hotelling T 2 test for repeated
which subjects from each group are sampled independently
                                                                  factors and Hotelling generalized T 2 for within by between
with replacement. For each bootstrap, we obtain 2 new
                                                                  interactions; both transformed into F values). In a first
independent samples and the mean diﬀerence between
                                                                  analysis we obtain the observed F values. Then we build
the two groups is computed. This method therefore tests
                                                                  a data driven F table under H0. First we centre the data,
diﬀerences under H1, that is, it tests that the mean of gp1
                                                                  independently for each group (N -way ANOVA) or condition
is diﬀerent from the mean of gp2. After sorting these D
                                                                  (repeated measure ANOVA), so that each cell of the ANOVA
diﬀerences in ascending order, confidence intervals take the
                                                                  has a mean of zero. Second, we use the centred data to
values, D(L+1) and D(U) with L and U defined as above. If
                                                                  estimate the F distributions under H0. We sample subjects
0 is included in the CI, the diﬀerence between samples is
                                                                  with replacement, independently for each cell for N -ways
not significant. Finally, the P value is the smallest value of
                                                                  ANOVAs, or keeping the association between observations
either the averaged number of times the observed diﬀerence
                                                                  in repeated measure ANOVAs. P values are obtained by
is above zero or, one minus this average.
                                                                  sorting the bootstrap F values and counting how many times
                                                                  the observed F values are above the F(U) value. Using the
2.2.3. Paired t-Test. The comparison of two sets of estimated     same resampling as above but using the original data (i.e.,
parameters from the same group of subjects follows the            under H1) we also compute the average diﬀerence between
procedure described for the two-sample t-test. However,           conditions allowing to construct robust confidence intervals
because data are now paired, we sample subjects with              using the techniques described for t-tests.
replacement, to keep pairs of ERPs together and therefore
preserve the intrasubject variance.                               2.2.6. ANCOVA. The analysis of covariance follows the
                                                                  same strategy as the regression analysis: subjects’ indices
2.2.4. Regression Analysis. Regression analyses of ERP data       are sampled with replacement to keep data, group mem-
allow assessing the inter-subject variability. Such variability   bership and predictors together. This resampling allows us
is useful to test hypotheses about cognitive development,         to build robust confidence intervals around the predictors.
aging, various impairments, and individual diﬀerences in          Significance tests for the group diﬀerences and the covariate
general (see e.g., Rousselet et al. [8, 9] for an example         eﬀects are obtained under H0. In this case, ERP data are
in normal aging). The method consists in sampling with            sampled with replacement and fit to the original design
replacement n matrices of ERPs (electrodes × time frames),        matrix, thus breaking the relationship between the data
n being the number of subjects. The link between subjects         and the predictors. We use this technique to estimate the
and predictors is maintained, so for simplicity we sample         distributions of the F values of group diﬀerences and
trial indices. The estimated regression parameters βs are         covariates under H0. The P values are then obtained as for
computed for each bootstrap and sorted in ascending order.        ANOVAs.
For a simple regression, 599 bootstraps are performed
and the 95% confidence interval is [β(a+1) β(c) ], with a         3. Multiple Comparisons Correction
and c taking special values depending on the number of
observations. For this simple case, 599 bootstraps have been      Because tests are performed at many electrodes and time
shown to be enough to control the type I error rate [13]. For     frames, multiple testing will give rise to a high number of
multiple regressions, a percentile bootstrap is used in con-      false positives (type I error—see, e.g., Figure 2). This multi-
junction with the Bonferroni inequality, and the confidence       ple comparison problem is independent of the type I error

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
Computational Intelligence and Neuroscience                                                                                       5

<a id="p005-b002"></a>

<!-- p005-b002 -->
rate obtained independently at one electrode and one time           that at variance with the maximum statistics, the correction
frame using the techniques describe above. Computations             only applies to clusters already declared significant, making
described above were performed mainly under H1 and used             the cluster correction less conservative. Finally, because in
for robust confidence intervals and uncorrected P values.           MEEG a large eﬀect in, for example, size (e.g., a P300
These techniques are complemented here by computations              event) can mask a smaller one (e.g., N170), the control is
performed under H0, the null hypothesis of no eﬀect, to             not performed on the cluster size itself but on the sum
correct for multiple testing.                                       of the F (or t2 ) values inside each cluster [6]. The cluster
    This multiple testing problem is controlled in LIMO             sum statistics takes into account spatial extent and height
EEG using three methods, all relying on the same bootstrap          information. Therefore, a spatially narrow cluster of eﬀects
procedure. For each technique described in the previous             around, for example, the N170, can survive the test by a
section (t-tests, regression, ANOVA, ANCOVA), we sample             greater density of F values.
subjects with replacement under a true (t-tests, ANOVAs)
or estimated (regression, ANCOVA) H0. This process is               Method 3 (temporal clustering—1D). Combines the cluster
repeated B times and for each bootstrap we record (1) the           and maximum statistic approaches. For each bootstrap
maximum F value (= t 2 for t-tests) among all electrodes            obtained under H0 we first take the largest temporal cluster
and time frames and (2) the maximum sum of significant              value (sum of t2 or F values) for each electrode and then
temporal or spatial-temporal F clusters. These distributions        only retain the largest one (Figure 2). By doing this for each
of maximum Fs (Method 1) and maximum F clusters                     bootstrap, we create an empirical distribution of temporal
(Methods 2 and 3) under H0 can then be used to control the          cluster values corrected in space. Again, an observed cluster
type I error rate across the entire data space [14].                will be significant if its sum is significantly bigger than the
                                                                    bootstrap threshold sum observed under H0. The advantage
Method 1 (maximum statistics). Uses the distribution of             of this method over spatial-temporal clustering is the
maximum bootstrap F (or t 2 ) values. The critical F value          increased likelihood to reveal more spatially localized eﬀects
of the observed sample is corrected for multiple tests by           because temporal eﬀects do not have to appear on groups
using a probability distribution of the strongest F values          of electrodes. It is also a convenient technique to test small
obtained under H0 across all tests (across all electrodes           groups of electrodes not necessarily spatially contiguous.
and all time frames). This technique has the advantage of
having an exact type I error rate [14]. However, this height        3.1. Bootstrap Computations under H0 for Multiple Compar-
threshold technique is conservative, similarly to Bonferoni         isons Correction. The bootstrap procedures described here
and other familywise error corrections, because it is based         used the same resampling as before but often on centered
on all the tests performed. One disadvantage of being too           data (H0 is thus true) and results are used to produce
conservative is that, for instance, the size of a cluster of        a corrected distribution (Method 1) or cluster distributions
significant consecutive time frames will be smaller after           (Methods 2 and 3).
correction (assuming extrema of a cluster have the lowest
significant values before correction—see Figure 2) therefore
                                                                    3.1.1. One-Sample t-Test. The bootstrap procedure used to
possibly losing interesting information about the onsets and
                                                                    adjust the individual type I error and construct robust
oﬀsets of experimental eﬀects. Another possibility is that this
                                                                    confidence intervals for each electrode and each frame is
correction splits a cluster into smaller pieces because it does
                                                                    performed under H1. The H0 version of this bootstrap
not take into account the spatial-temporal structure of the
                                                                    consists in centering the data and then performing one-
data. The second and third approaches use a correction based
                                                                    sample t-tests on centred data sampled with replacement.
on cluster statistics and therefore overcomes this problem.
                                                                    Because centered data have a zero mean, resampling allows
                                                                    us to measure variations around 0, the null hypothesis.
Method 2 (spatial-temporal clustering—2D). Uses the distri-
bution of bootstrap clusters defined simultaneously in space
and time (Figure 2). This clustering technique follows the          3.1.2. Two-Samples and Paired t-Tests. As for the one-sample
philosophy presented in [6] and uses functions implemented          t-test, the control of the individual type I error rates and CIs
in Fieldtrip (http://fieldtrip.fcdonders.nl/). An observed          are calculated under H1 by computing diﬀerences between
spatial-temporal cluster of F values is statistically significant   bootstrap group or pair samples. Therefore complementary
if the sum of F values contained in the cluster is bigger           tests under H0 are carried-out for each bootstrap. For each
than the threshold bootstrap cluster sum obtained under             group or pair, data are centered and next resampled and t-
H0 (see e.g., [15, 16] for a similar approach with PET and          tests computed. Because data are centered, no diﬀerences are
fMRI data). Under H0, one can observe by chance clusters            expected (therefore testing under H0).
of significant electrodes and time frames. By recording the
largest sum of cluster F values for each bootstrap, we can          3.1.3. Regression Analysis and ANCOVA. Subjects are ran-
construct the distribution of the spatial-temporal cluster          domly sampled with replacement and data are fitted to
values under H0 and therefore test the significance of an           same the design matrix. This procedure thus breaks the link
observed cluster value. Because the H0 distribution is not          between the data (subjects) and the model (design matrix),
specific to a particular location in space and time, this           and therefore allows estimating the slope(s) of the various
technique automatically controls for multiple testing. Note         regressors under H0. The F values for the diﬀerent regressors

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
6                                                                                                                                     Computational Intelligence and Neuroscience

<a id="p006-b002"></a>

<!-- p006-b002 -->
Corrected P values using F max statistics                                                   Regression coeﬃcient and 95% robust CI
                                                                                                                      0
                                   T-values

<a id="p006-b003"></a>

<!-- p006-b003 -->
10

<a id="p006-b004"></a>

<!-- p006-b004 -->
Amplitude (a.u.)
                                                                                                                     −1
                 Electrodes

<a id="p006-b005"></a>

<!-- p006-b005 -->
0
                                  −10

<a id="p006-b006"></a>

<!-- p006-b006 -->
−20
                                                                                                                     −2

<a id="p006-b007"></a>

<!-- p006-b007 -->
(a)
                           Corrected P values using spatial-temporal clustering                                               Regression coeﬃcient and 95% robust CI
                                                                                                                      0

<a id="p006-b008"></a>

<!-- p006-b008 -->
Amplitude (a.u.)
                 Electrodes

<a id="p006-b009"></a>

<!-- p006-b009 -->
−1

<a id="p006-b010"></a>

<!-- p006-b010 -->
−2

<a id="p006-b011"></a>

<!-- p006-b011 -->
(b)
                                  Corrected P values using temporal clustering                                                Regression coeﬃcient and 95% robust CI
                                                                                                                      0
                                                                                                Amplitude (a.u.)
                 Electrodes

<a id="p006-b012"></a>

<!-- p006-b012 -->
−1

<a id="p006-b013"></a>

<!-- p006-b013 -->
−2

<a id="p006-b014"></a>

<!-- p006-b014 -->
(c)
                                               Bootstrap P values                                                             Regression coeﬃcient and 95% robust CI
                                                                                                                      0
                                                                                            Amplitude (a.u.)

<a id="p006-b015"></a>

<!-- p006-b015 -->
−1
              Electrodes

<a id="p006-b016"></a>

<!-- p006-b016 -->
−2

<a id="p006-b017"></a>

<!-- p006-b017 -->
0         50    100   150   200       250   300   350                                       0      50     100   150   200   250   300     350
                                                     Time (ms)                                                                                Time (ms)
                                                                                      (d)

<a id="p006-b018"></a>

<!-- p006-b018 -->
Figure 2: Illustration of the diﬀerent multiple comparisons corrections (alpha 5%). At the top data are thresholded using a F max statistics
(Method 1). In the middle, the same data are thresholded using spatial-temporal clustering (Method 2) or temporal clustering (Method 3).
At the bottom, data are presented without any correction but a strict type I error rate (5%) for each electrode and frame separately is applied.
Note that each method gives slightly diﬀerent results.

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
Computational Intelligence and Neuroscience                                                                                     7

<a id="p007-b002"></a>

<!-- p007-b002 -->
or for the group eﬀect in ANCOVAs are recorded for each          address many problems in psychology [13]. For instance, it
bootstrap and used to compute the empirical distributions        is not clear how to implement a permutation test for an
used to correct for multiple comparisons.                        ANCOVA design; whereas a bootstrap test is easy to imple-
                                                                 ment. Hence, bootstrap techniques oﬀer more possibilities
3.1.4. ANOVAs. Here only H0 computations are performed           to MEEG researchers. However, bootstrap techniques, and
by centering each “cell” (each group or each condition—see       their capacity to control the type I error rate, have not yet
above). Again, recording the F values for each eﬀect at each     been validated in MEEG research, which is a limitation of
bootstrap allows correcting for multiple comparisons using       our toolbox. Nevertheless, we report encouraging prelimi-
one of the methods described above.                              nary results suggesting that bootstrap techniques perform
                                                                 similarly to permutation in some conditions. We compared
                                                                 the familywise type I error rate of permutation and two
4. Validation                                                    bootstrap techniques associated with max cluster statistics in
                                                                 t-tests for independent samples.
4.1. Low-Level Functions. In order to test the validity of           Our simulation uses the 18 subjects of the dataset
the code, all statistical functions (except bootstrap and        provided with LIMO and each subject was used as a
multiple comparison procedures) have been tested against         “population” of about 1000 trials. This dataset is ideal to
Statistica and the relevant information to use each function     validate tests of diﬀerences under H0, because it contains
by itself is available in a downloadable document (valida-       ERP amplitudes spanning the whole continuum from face
tion of the stats.pdf) on the LIMO EEG server. For each          responses to noise responses. Thus, for each subject, we
statistical test, several low dimentional data sets have been    sampled with replacement from the total number of trials
generated and analyzed using both LIMO EEG and Statistica        for that subject 100 trials twice to form fake condition 1
to ensure that LIMO EEG returns the correct T, F, and P          and fake condition 2 (level 1). Then we applied 3 tests on
values. Because of the high dimensionality of MEEG data,         these 2 fake conditions. Each test involved 1000 random
such analysis can not be easily carried out by standard pack-    samples. In the first two tests, the 200 trials were pulled
ages and the need for multiple comparisons correction does       together and two sets of 100 trials were created either by
change the statistical significance of the eﬀects. However,      random partitioning (permutation test), or by sampling
this simple testing allowed us and future users to easily        with replacement (bootstrap test). Both tests estimate H0 by
test the low-level statistical functions of the toolbox and be   random resampling. In the third test, each group of 100 trials
certain of our implementation. Of importance, some tests         was mean centred and bootstrap samples with replacement
return slightly diﬀerent results. The main diﬀerence can         drawn independently from each of them (technique imple-
be observed for the 2 sample t-test. Most software (e.g.,        mented in LIMO and validated in [13]). For each test, and
Statistica & SPSS) assume variance homogeneity by default,       for each random sample, a t-test was performed to compare
which is fallacious because independent groups are likely to     the groups of trials, followed by spatial-temporal clustering
have diﬀerent variances. LIMO EEG always assumes variance        of F values (squared t values). We cluster the F values because
inhomogeneity thus returning slightly lower t values. The        a t-test is a special case of linear contrast, which is evaluated
alternative ANOVA (limo old rep anova.m) which is not            using an F statistics. Also, an F statistics is used for all the
accessible via the interface also returns slightly diﬀerent      other GLM designs. Then we saved the maximum F cluster
values. By default, LIMO EEG computes repeated measures          sum, and obtained a distribution of max cluster sums under
ANOVA using a Hotelling T 2 test to account for sphericity.      H0, which was used to assess the significance of the original t-
However, a standard F test can also be computed by changing      tests. So far we have conducted level 1 H0 analyses 200 times
one parameter when calling the random robust.m function.         on each subject. The average number of positive tests is the
In this case, sphericity is accounted for by a Hyund-Feld        type I error rate, after correction for multiple comparisons
correction. The correction value is diﬀerent from that of        using cluster statistics. Across 18 subjects, and using 200
Statistica or SPSS, which use the initial formulation [17],      simulations, the type I error rate for permutation is 0.0506,
whereas our implementation follows the modified, corrected       with minimum 0.025 and maximum 0.085 across subjects.
formula [18].                                                    The type I error rate for the bootstrap test is 0.0489, min =
                                                                 0.025, max = 0.08. The type I error rate for the bootstrap test
4.2. Multiple Comparisons Correction. Permutation com-           with data centering is 0.0453, min = 0.025, max = 0.08. These
bined with max cluster statistics have been shown to             results are very close to the nominal alpha results of 0.05.
control in theory for multiple comparisons, maintaining the      More simulations and more situations will need to be tested
probability to commit a least one type I error across the        to compare precisely the behaviour of these techniques.
entire search space at the nominal alpha level [6]. However,
permutation has not yet been validated systematically in         5. Graphical User Interface
MEEG research. Thus, despite indications that permuta-
tion performs well under certain conditions involving the        LIMO EEG can be called directly in the Matlab command
comparison of two groups [6], its performance remains to         window or via the EEGLAB menu. It comes as a fully func-
be tested more generally, and its application extended to        tional graphical user interface (GUI). Each of the main steps
other experimental designs. Bootstrap techniques are more        have there own GUI: General GUI (Figure 3(a)), import
versatile than permutation and have been developed to            of epoched data and 1st level analysis (Figure 3(b)), 2nd

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
8                                                                                    Computational Intelligence and Neuroscience

<a id="p008-b002"></a>

<!-- p008-b002 -->
(b)

<a id="p008-b003"></a>

<!-- p008-b003 -->
(a)

<a id="p008-b004"></a>

<!-- p008-b004 -->
(d)                                          (c)

<a id="p008-b005"></a>

<!-- p008-b005 -->
Figure 3: The four main GUI of LIMO EEG. All functions and plots are available via these user interfaces.

<a id="p008-b006"></a>

<!-- p008-b006 -->
level analysis (Figure 3(c)), and visualization (Figure 3(d)).       significant eﬀects, P = .05 corrected with spatial-temporal
User do not have to call functions or type anything in the           clustering) by entering into the analysis the estimated beta
command window, everything can be obtained via interface.            parameters for face A and face B from all subjects. As
Each time a help button is also available for a description of       illustrated in Figure 4 (panel A), face stimuli evoked a
each option in each GUI. In addition, we made available a            typical ERP (A1, tools are provided to plot robust ERPs
data set on the LIMO EEG server which comes with a tutorial          across subjects, here the average of 20% trimmed mean
explaining how to analyse the data using there interfaces. A         ERPs with 95% CI obtained using the bootstrap standard
short example of results is given in the next section.               error) and no significant diﬀerences can be observed (A2).
                                                                     Second, we investigated a possible eﬀect of the stimulus
                                                                     phase coherence on the visual evoked response. This was
6. Application to EEG Data and                                       performed using a one-sample t-test (P = .05 corrected with
   Visualization Tools                                               spatial-temporal clustering) by entering the estimated beta
In this section, we present some results from an analysis            parameters corresponding to this predictor. As illustrated
performed on 18 subjects to illustrate the various formats           (Figure 4—panel B), image phase coherence aﬀects the
in which group data can be explored and presented. This              evoked brain responses from 80 ms onward (full space/time
data set is downloadable as a tutorial for LIMO EEG and              map—B1) mainly over posterior lateral and central elec-
results represent simplified analyses of what is presented in        trodes (topographic plot of F values—B2) with the strongest
[8]. In short, subjects of various ages discriminated between        eﬀect observed on electrode C1 between 110 ms poststimulus
pictures of two faces, face A and face B; the noise level in the     onset and 290 ms (B3). Finally, we also investigated an eﬀect
images was varied parametrically (actually a manipulation of         of age on ERP phase sensitivity by performing a simple
the phase of the image). Using such design one can therefore         regression with age as covariate (Figure 4 panel C, P = .05
test for diﬀerences between ERP to the two faces using a             corrected with spatial-temporal clustering). This analysis
paired t-test, test for an eﬀect of the noise level using a one-     could be performed over the whole scalp by taking the
sample t-test, or test for an age eﬀect on ERP noise sensitivity     same physical electrodes across subjects (data are presented
using regression analysis.                                           Figure 2). The analysis can also be performed using an
                                                                     optimized electrode [19]. This strategy consists in selecting
                                                                     the electrode that shows the strongest model fit, so that we
6.1. 1st Level Analysis. For each subject we create a design         compare functionally similar electrodes across subjects. In
matrix including face A, face B and the level of image noise         this case, the analysis of the age eﬀect on ERP sensitivity
(see Figure 1 top). The data are thus modelled as a weighted         to noise was performed on the electrode that best modelled
sum of three predictors (face A, face B and phase coherence          the data in each subject, as defined by the strongest R2 (C1).
eﬀect) plus a constant and an error term.                            This feature of LIMO EEG allows more flexibility in the way
                                                                     one combines data for group analyses. Here, results show
6.2. 2nd Level Analysis. Using the estimated parameters from         the ERP sensitivity to image phase coherence is significantly
each subject one can test several eﬀects. First, we looked for       modulated by age from 200 ms to 330 ms post stimulus onset
diﬀerences between faces A and B using a paired t-test (no           (C2).

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
Computational Intelligence and Neuroscience                                                                                                                                                                                                         9

<a id="p009-b002"></a>

<!-- p009-b002 -->
Panel A: paired t-test
                                                           Robust ERP-faces A and B                                                                               Bootstrap diﬀerence and 95% CI face A versus face B

<a id="p009-b003"></a>

<!-- p009-b003 -->
10                                                                                                                           0.5
                                           [A1]                                                                                                                       [A2]

<a id="p009-b004"></a>

<!-- p009-b004 -->
Amplitude (μV per std)
                                   8
                                   6
          Amplitude (μV)

<a id="p009-b005"></a>

<!-- p009-b005 -->
4
                                   2
                                                                                                                                                             0
                                   0
                           −2
                           −4
                                           Face A
                           −6              Face B
                                                                                                                                                       −0.5
                                             10      20      30     40 50 60          70    80        90                                                          0                    50             100     150    200      250     300     350
                                                                     Time (ms)                                                                                                                                  Time (ms)

<a id="p009-b006"></a>

<!-- p009-b006 -->
Panel B: one sample t-test                                                                                              [B2]
                                                                                                                                                       120 ms
                                                          [B1] Significance T map                                                                                                                     [B3] Bootstrap mean β and 95% CI

<a id="p009-b007"></a>

<!-- p009-b007 -->
15                                                                                             [B3]
                                                                                                                                                                                                 2
                                                                                                       10

<a id="p009-b008"></a>

<!-- p009-b008 -->
Amplitude (μV/std)
                                                                                                                                                       160 ms
                                                                                                       5                                                                                        1.5
                      Electrodes

<a id="p009-b009"></a>

<!-- p009-b009 -->
0                                                                                         1
                                                                                                       −5
                                                                                                                                                                                                0.5
                                                                                                       −10                                             200 ms
                                                                                                                                                                                                 0
                                                                                                       −15

<a id="p009-b010"></a>

<!-- p009-b010 -->
0      50       100        150   200     250   300       350                                                                                                   0     50 100 150 200 250 300 350
                                                                    Time (ms)
                                                                                                                                                                                                               Time (ms)

<a id="p009-b011"></a>

<!-- p009-b011 -->
Evolution of the regression slope of the
                               Panel C: regression analysis
                                                                                                                                                                          eﬀect of phase coherence per age
                                                    [C1] optimized electrode

<a id="p009-b012"></a>

<!-- p009-b012 -->
1     [C2]
                                                                                            5
                                                                                                           Amplitude (a.u.)

<a id="p009-b013"></a>

<!-- p009-b013 -->
0
                                                                                            4

<a id="p009-b014"></a>

<!-- p009-b014 -->
3                                         −1

<a id="p009-b015"></a>

<!-- p009-b015 -->
2                                         −2

<a id="p009-b016"></a>

<!-- p009-b016 -->
1
                                                                                                                                      −3

<a id="p009-b017"></a>

<!-- p009-b017 -->
0         50                        100       150    200    250     300     350
                                                                                                                                                                                                            Time (ms)
Figure 4: Examples of analyses/results obtain with LIMO EEG. Panel A presents results from a paired t-test between Face A and Face B (A1:
average of the 20% trimmed means ERPs for face A and face B; A2: mean diﬀerence of estimated beta parameters and robust 95% confidence
intervals). Panel B presents results from a one-sample t-test performed on the phase coherence regressor (B1: map of significance over all
electrodes and frames; B2 topographic projection of the T values around the N170 event, B3: mean beta parameter (phase coherence) and
robust 95% confidence interval for the electrode showing the strongest eﬀect). Panel C presents results from the regression analysis of age on
the phase coherence regressor (C1 map for the optimized electrode, that is, the map represents the location of the electrode chosen for each
subject and the number of subjects; C2 results of the regression analysis, that is, plot the regression slope of the eﬀect of phase coherence
(estimated beta parameters) per subject age).

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
10                                                                                 Computational Intelligence and Neuroscience

<a id="p010-b002"></a>

<!-- p010-b002 -->
7. Discussion                                                      of the covariance matrix. If one wants to properly estimate
                                                                   how trials/conditions (1st level) or subjects/conditions (2nd
7.1. Pros and Cons of a Massive Univariate Approach in             level) covary, new methods must be investigated in order to
MEEG. LIMO EEG relies on a massive univariate approach             account for the spatial and temporal link between data points
in which, like PET or fMRI, all possible measurements              and not merely the covariation between conditions/subjects
(voxels or electrode/time frames) are analyzed. This provides      at each time point separately. Until such a method is
many advantages but also elicits some problems. On the             available, an OLS solution seems the safest option.
positive side, the massive univariate approach is relatively
easy to understand as it uses standard statistics, it is fully
                                                                   7.3. Current Limits and Future Development. There is no real
automatic, accommodates any design, and provides a full
                                                                   limit to the current implementation of LIMO EEG because it
picture of electromagnetic events without having to hand
                                                                   allows analyzing almost all kinds of designs. Limits are only
pick electrodes or time frames. On the negative side, strict
                                                                   related to various statistical aspects that deserve consider-
controls of statistical tests need to be implemented because
                                                                   ation. One current limit concerns the 1st level of analysis:
of the multiple tests performed. Also, because analyses are
                                                                   all conditions are treated independently, which eﬀectively
performed on independent electrodes and time frames, one
                                                                   corresponds to a 1 way ANOVA or a 1 way ANCOVA.
can miss more subtle eﬀects that might develop over time
                                                                   However, experimental conditions could also be grouped in
or space, and would be picked up by multivariate [20] or
                                                                   order to create a factorial design, thus pooling some variances
multidimensional [21] approaches. However, the down side
                                                                   together to account for interaction eﬀects. Although our
of these latter approaches is that they are much harder to
                                                                   approach is valid because the estimated parameters of each
interpret.
                                                                   condition can be combined via contrasts to reflect main
                                                                   eﬀects and interactions as in a factorial design, it is likely
7.2. Robust and Parametric. In LIMO EEG, as in any                 to limit some analyses. Therefore, future versions of the
parametric statistics package, we assume data come from a          toolbox will incorporate factorial variance pooling. A second
type of probability distribution, and makes inferences about       limitation is the use of OLS. As mentioned above (Robust
the parameters of these distributions. In LIMO EEG, we             and parametric section) one would ideally use a WLS solution
assume that data come from a normal or nearly normal               to allow non independence and heteroscedasticity between
distribution, and make an inference about the mean values.         conditions. However current mathematical solutions do not
Another important feature of LIMO EEG is the use of                exist to properly estimate the covariance matrix and until
robust statistics. Here “robust” is used in the sense that the     then the 1st level estimates will not be “robust”.
techniques implemented in LIMO EEG show overall more
power than traditional tests when assumptions (e.g., nor-
mality) are violated and when experiment eﬀects exist (H1)
                                                                   8. Conclusion
thus providing better probability coverage, especially when        Overall LIMO EEG provides a set of statistical tools allowing
estimating confidence intervals. Using those techniques, we        the analysis of many designs via GUI. It provides robust
also ensure a tighter control of the type I error rate (H0). Our   results which are unbiased by the selection of peaks or
preliminary simulation results (18 times 200 Monte-Carlo)          components. It also provides a new way to analyze data
show that using 1000 bootstraps, the mean type I error rate of     with an emphasis on eﬀect size (robust confidence intervals),
our 2 samples t-test is 0.0453, demonstrating that the cluster     which we hope will help moving the field toward a more
technique for multiple comparison correction oﬀers a good          quantitative analysis of evoked neural responses [7].
control on false positives. Further simulations are needed
to adequately test the type I error rate in various situations
(designs/population) but this demonstrate, in principle, the       Acknowledgments
validity of our method.                                            This work is partially funded by ESRC: ESRC Grant RES-
    In LIMO EEG we limited the scope of most analyses to           000-22-3209 supported G. A. Rousselet, ESRC Grant RES-
samples’ means via bootstrap. In fact, robust statistics allow     062-23-1900 supported C. R. Pernet and G. A. Rous-
analyzing data using various distribution estimators other         selet. Cyril R. Pernet is also funded by the SINAPSE
than the mean. The mean is not necessarily a good estimator        collaboration—http://www.sinapse.ac.uk, a pooling initia-
of the central tendency of the data, and trimmed means,            tive funded by the Scottish Funding Council and the Chief
median, and M-estimators can provide more satisfactory             Scientist Oﬃce of the Scottish Executive.
results [22, 23] (there are trimmed means options in LIMO
EEG and a few stand-alone functions to do, for example, t-
tests on trimmed means). However, none of these estimators         References
have been validated for MEEG data yet, hence the restriction
                                                                    [1] A. Delorme and S. Makeig, “EEGLAB: an open source
to samples’ means.                                                      toolbox for analysis of single-trial EEG dynamics including
    One current limitation of our parametric approach is                independent component analysis,” Journal of Neuroscience
that first level analyses, and the GLM designs at the second            Methods, vol. 134, no. 1, pp. 9–21, 2004.
level, currently rely on an OLS solution. Ideally, one can          [2] S. J. Kiebel and K. J. Friston, “Statistical parametric mapping
make regressions more robust using weighted least squares               for event-related potentials: I. Generic considerations,” Neu-
(WLS). However, the problem of WLS is the computation                   roImage, vol. 22, no. 2, pp. 492–502, 2004.

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
Computational Intelligence and Neuroscience                                                                                              11

<a id="p011-b002"></a>

<!-- p011-b002 -->
[3] S. J. Kiebel and K. J. Friston, “Statistical parametric mapping     [21] J. Onton and S. Makeig, “Why use ICA to decompose EEG/
     for event-related potentials (II): a hierarchical temporal               MEG data?” in Event-Related Dynamic of Brain Oscillations,
     model,” NeuroImage, vol. 22, no. 2, pp. 503–520, 2004.                   C. Neuper and W. Klimesch, Eds., Progress in Brain Research,
 [4] J. M. Kilner, S. J. Kiebel, and K. J. Friston, “Applications             159, Elsevier, 2006.
     of random field theory to electrophysiology,” Neuroscience          [22] R. R. Wilcox and H. J. Keselman, “Modem robust data
     Letters, vol. 374, no. 3, pp. 174–178, 2005.                             analysis methods: measures of central tendency,” Psychological
 [5] J. Kilner and K. J. Friston, “Topological Inference for EEG and          Methods, vol. 8, no. 3, pp. 254–274, 2003.
     MEG,” Annals of Applied Statistics, vol. 4, pp. 1272–1290, 2010.    [23] G. A. Rousselet, J. S. Husk, P. J. Bennett, and A. B. Sekuler,
 [6] E. Maris and R. Oostenveld, “Nonparametric statistical testing           “Time course and robustness of ERP object and face diﬀer-
     of EEG- and MEG-data,” Journal of Neuroscience Methods, vol.             ences,” Journal of Vision, vol. 8, no. 12, 2008.
     164, no. 1, pp. 177–190, 2007.
 [7] G. A. Rousselet, C. R. Pernet, P. J. Bennett, and A. B. Sekuler,
     “Parametric study of EEG sensitivity to phase noise during
     face processing,” BMC Neuroscience, vol. 9, article 98, 2008.
 [8] G. A. Rousselet, J. S. Husk, C. R. Pernet, C. M. Gaspar, P. J.
     Bennett, and A. B. Sekuler, “Age-related delay in information
     accrual for faces: evidence from a parametric, single-trial EEG
     approach,” BMC Neuroscience, vol. 10, article 1471, p. 114,
     2009.
 [9] G. A. Rousselet, C. M. Gaspar, C. R. Pernet, J. S. Husk, P. J.
     Bennett, and A. B. Sekuler, “Healthy aging delays scalp EEG
     sensitivity to noise in a face discrimination task,” Frontiers in
     Perception Science, vol. 19, no. 1, 2010.
[10] K. J. Friston, J. Ashburner, S. J. Kiebel, T. E. Nichols, and
     W. D. Penny, Statistical Parametric Mapping: The Analysis of
     Functional Brain Images, Academic Press, New York, NY, USA,
     2007.
[11] E. H. Moore, “On the reciprocal of the general algebraic
     matrix,” Bulletin of the American Mathematical Society, vol. 26,
     pp. 394–395, 1920.
[12] R. Penrose, “A generalized inverse for matrices,” Proceedings
     of the Cambridge Philosophical Society, vol. 51, pp. 406–413,
     1955.
[13] R. R. Wilcox, Introduction to Robust Estimation and Hypothesis
     Testing, Academic Press, New York, NY, USA, 2nd edition,
     2005.
[14] T. Nichols and S. Hayasaka, “Controlling the familywise
     error rate in functional neuroimaging: a comparative review,”
     Statistical Methods in Medical Research, vol. 12, no. 5, pp. 419–
     446, 2003.
[15] J. B. Poline and B. M. Mazoyer, “Analysis of individual positron
     emission tomography activation maps by detection of high
     signal-to-noise-ratio pixel clusters,” Journal of Cerebral Blood
     Flow and Metabolism, vol. 13, no. 3, pp. 425–437, 1993.
[16] J. B. Poline, K. J. Worsley, A. C. Evans, and K. J. Friston,
     “Combining spatial extent and peak intensity to test for
     activations in functional imaging,” NeuroImage, vol. 5, no. 2,
     pp. 83–96, 1997.
[17] H. Huynh, “Some approximate tests for repeated measure-
     ment designs,” Psychometrika, vol. 43, no. 2, pp. 161–175,
     1978.
[18] R. S. Chen and W. P. Dunlap, “A Monte Carlo study on
     the performance of a corrected formula for ε suggested by
     Lecoutre,” Journal of Educational and Behavioural Statistics,
     vol. 19, no. 2, pp. 119–126, 1994.
[19] J. J. Foxe and G. V. Simpson, “Flow of activation from V1 to
     frontal cortex in humans: a framework for defining ”early”
     visual processing,” Experimental Brain Research, vol. 142, no.
     1, pp. 139–150, 2002.
[20] K. J. Friston, K. M. Stephan, J. D. Heather et al., “A
     multivariate analysis of evoked responses in EEG and MEG
     data,” NeuroImage, vol. 3, no. 3, pp. 167–174, 1996.
