---
id: "kappenman2021erp"
title: "ERP CORE: An Open Resource for Human Event-Related Potential Research"
source_file: "The Art of Uncertain Topoplots/papers/kappenman2021erp.pdf"
source_sha256: "1bd34cc7718e94d205ce889f3f54dcf9850b0061200b0b25c9c82010717bc1ce"
extraction_format: 1
---

# ERP CORE: An Open Resource for Human Event-Related Potential Research — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
NeuroImage 225 (2021) 117465

<a id="p001-b002"></a>

<!-- p001-b002 -->
Contents lists available at ScienceDirect

<a id="p001-b003"></a>

<!-- p001-b003 -->
NeuroImage
                                                       journal homepage: www.elsevier.com/locate/neuroimage

<a id="p001-b004"></a>

<!-- p001-b004 -->
ERP CORE: An open resource for human event-related potential research
Emily S. Kappenman a,b,∗, Jaclyn L. Farrens a, Wendy Zhang a,b, Andrew X. Stewart c,
Steven J. Luck c
a
  San Diego State University, Department of Psychology, San Diego, CA, 92120, USA
b
  SDSU/UC San Diego Joint Doctoral Program in Clinical Psychology, San Diego, CA, 92120, USA
c
  University of California, Davis, Center for Mind & Brain and Department of Psychology, Davis, CA, 95616, USA

<a id="p001-b005"></a>

<!-- p001-b005 -->
a r t i c l e              i n f o                         a b s t r a c t

<a id="p001-b006"></a>

<!-- p001-b006 -->
Keywords:                                                  Event-related potentials (ERPs) are noninvasive measures of human brain activity that index a range of sensory,
Event-related potentials                                   cognitive, aﬀective, and motor processes. Despite their broad application across basic and clinical research, there
EEG                                                        is little standardization of ERP paradigms and analysis protocols across studies. To address this, we created ERP
Data quality
                                                           CORE (Compendium of Open Resources and Experiments), a set of optimized paradigms, experiment control
Open science
                                                           scripts, data processing pipelines, and sample data (N = 40 neurotypical young adults) for seven widely used ERP
Reproducibility
                                                           components: N170, mismatch negativity (MMN), N2pc, N400, P3, lateralized readiness potential (LRP), and error-
                                                           related negativity (ERN). This resource makes it possible for researchers to 1) employ standardized ERP paradigms
                                                           in their research, 2) apply carefully designed analysis pipelines and use a priori selected parameters for data
                                                           processing, 3) rigorously assess the quality of their data, and 4) test new analytic techniques with standardized
                                                           data from a wide range of paradigms.

<a id="p001-b007"></a>

<!-- p001-b007 -->
1. Introduction                                                                                  experimental design (such as a lack of counterbalancing) and analysis
                                                                                                 procedures that are now known to be ﬂawed or suboptimal (Luck, 2014).
    The event-related potential (ERP) technique is a widely used tool                            When improved protocols are developed, there are no widely accepted
in human neuroscience. ERPs are primarily generated in cortical pyra-                            methods for demonstrating their superiority or for disseminating them
midal cells, where extracellular voltages produced by thousands of                               so they become broadly adopted. In addition, many important method-
neurons sum together and are conducted instantaneously to the scalp                              ological details are often absent from published journal articles. As a
(Buzsáki et al., 2012; Jackson and Bolger, 2014). ERPs therefore pro-                            result, a researcher who wishes to start using a given ERP paradigm has
vide a direct measure of neural activity with the millisecond-level tem-                         no standardized protocol to use and no standardized method for assess-
poral resolution necessary to isolate the neurocognitive operations that                         ing whether the quality of the EEG data falls within normative values
rapidly unfold following a stimulus, response, or other event. Indeed,                           and whether the ERP components have been properly quantiﬁed.
many ERP components have been identiﬁed and validated as measures of                                 We addressed these issues by creating the ERP CORE (Compendium
sensory, cognitive, aﬀective, and motor processes (for an overview, see                          of Open Resources and Experiments), a freely available online resource
Luck and Kappenman, 2012). In recent years, the ERP technique has be-                            consisting of optimized paradigms, experiment control scripts, data from
come accessible to a broad range of researchers due to the development                           40 neurotypical young adults, data processing pipelines and analysis
of relatively inexpensive EEG recording systems and both commercial                              scripts, and a broad set of results (https://doi.org/10.18115/D5JW4R).
and open source software packages for processing ERP data.                                       Following extensive piloting and consultations with experts in the ﬁeld,
    Although some aspects of EEG recording and processing have be-                               we developed six 10-minute optimized paradigms that together iso-
come relatively standardized (Keil et al., 2014; Pernet et al., 2018),                           late seven ERP components spanning a range of neurocognitive pro-
many others vary widely across laboratories and even across studies                              cesses (see Fig. 1): 1) a visual discrimination paradigm for isolat-
within a laboratory. For example, the P3 component has been mea-                                 ing the face-speciﬁc N170 response (for reviews, see Eimer, 2011;
sured in thousands of studies using the oddball paradigm (Ritter and                             Feuerriegel et al., 2015; Rossion and Jacques, 2012); 2) a passive au-
Vaughan, 1969), but the task parameters, recording settings, and data                            ditory oddball paradigm for isolating the mismatch negativity (MMN;
processing methods vary widely across studies. In many cases, the pro-                           for reviews, see Garrido et al., 2009; Näätänen and Kreegipuu, 2012);
tocols are based on decades-old traditions that include confounds in the                         3) a visual search paradigm for isolating the N2pc component (for
                                                                                                 a review, see Luck, 2012); 4) a word-pair association paradigm for

<a id="p001-b008"></a>

<!-- p001-b008 -->
∗
        Corresponding author.
        E-mail address: emily.kappenman@sdsu.edu (E.S. Kappenman).

<a id="p001-b009"></a>

<!-- p001-b009 -->
https://doi.org/10.1016/j.neuroimage.2020.117465
Received 22 May 2020; Received in revised form 2 October 2020; Accepted 12 October 2020
Available online 21 October 2020
1053-8119/© 2020 The Author(s). Published by Elsevier Inc. This is an open access article under the CC BY license (http://creativecommons.org/licenses/by/4.0/)

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
E.S. Kappenman, J.L. Farrens, W. Zhang et al.                                                                               NeuroImage 225 (2021) 117465

<a id="p002-b002"></a>

<!-- p002-b002 -->
Fig. 1. Examples of a subset of the trials in each of the
                                                                                                 six tasks. The stimuli are not drawn to scale; see Sup-
                                                                                                 plementary Materials and Methods for actual sizes. (A)
                                                                                                 Face perception task used to elicit the N170. On each
                                                                                                 trial, an image of a face, car, scrambled face, or scram-
                                                                                                 bled car was presented in the center of the screen, and
                                                                                                 participants indicated whether a given stimulus was an
                                                                                                 “object” (face or car) or a “texture” (scrambled face
                                                                                                 or scrambled car). (B) Passive auditory oddball task
                                                                                                 used to elicit the mismatch negativity (MMN). Stan-
                                                                                                 dard tones (80 dB, p = .8) and deviant tones (70 dB,
                                                                                                 p = .2) were presented over speakers while partici-
                                                                                                 pants watched a silent video and ignored the tones.
                                                                                                 (C) Simple visual search task used to elicit the N2pc.
                                                                                                 Either pink or blue was designated the target color at
                                                                                                 the beginning of a trial block, and participants indi-
                                                                                                 cated whether the gap in the target color square was
                                                                                                 on the top or bottom. (D) Word pair judgment task used
                                                                                                 to elicit the N400. Each trial consisted of a red prime
                                                                                                 word followed by a green target word, and participants
                                                                                                 indicated whether the target word was semantically re-
                                                                                                 lated or unrelated to the prime word. (E) Active visual
                                                                                                 oddball task used to elicit the P3. The letters A, B, C,
                                                                                                 D, and E were presented in random order (p = .2 for
                                                                                                 each letter). One of the letters was designated the tar-
                                                                                                 get for a given block of trials, and participants indi-
                                                                                                 cated whether each stimulus was the target or a non-
                                                                                                 target for that block. Thus, the probability of the tar-
                                                                                                 get category was .2, but the same physical stimulus
                                                                                                 served as a target in some blocks and a nontarget in
                                                                                                 others. (F) Flankers task used to elicit the lateralized
                                                                                                 readiness potential (LRP) and the error-related nega-
                                                                                                 tivity (ERN). The central arrowhead was the target,
                                                                                                 and it was ﬂanked on both sides by arrowheads that
                                                                                                 pointed in the same direction (congruent trials) or the
                                                                                                 opposite direction (incongruent trials). Participants in-
                                                                                                 dicated the direction of the target arrowhead on each
                                                                                                 trial with a left- or right-hand buttonpress.

<a id="p002-b003"></a>

<!-- p002-b003 -->
isolating the N400 component (for reviews, see Kutas and Feder-            rors). We expect that data from hundreds of additional participants will
meier, 2011; Lau et al., 2008; Swaab et al., 2012); 5) an active vi-       be added to our current database of 40 participants by other laborato-
sual oddball paradigm for isolating the P3 component (for reviews, see     ries. We also anticipate the creation of experiment control scripts that
Dinteren et al., 2014; Polich, 2007; Polich, 2012); and 6) a ﬂankers       can be run with open source software (e.g., Peirce, 2019).
paradigm for isolating the lateralized readiness potential (LRP; for re-       We also developed optimized signal processing and data anal-
views, see Eimer and Coles, 2003; Smulders and Miller, 2012); and the      ysis pipelines for each component using the open source EEGLAB
error-related negativity (ERN; for reviews, see Gehring et al., 2012;      (Delorme and Makeig, 2004) and ERPLAB (Lopez-Calderon and
Olvet and Hajcak, 2008). Each of these ERP components can be iso-          Luck, 2014) MATLAB toolboxes. Archival copies of the analysis scripts,
lated from overlapping brain activity using the diﬀerence wave proce-      raw and processed data for all 40 participants (including BIDS-
dure (Kappenman and Luck, 2012; Luck, 2014).                               compatible data), and a broad set of results are available online on
    The ERP CORE paradigms were implemented in a widely used ex-           the Open Science Framework (https://doi.org/10.18115/D5JW4R). The
periment control package (Presentation; Neurobehavioral Systems) and       analysis scripts are also hosted on GitHub (https://github.com/lucklab/
have been extensively tested. They can be run with a free trial license,   ERP_CORE), where updated code can be provided and bugs can be re-
and many of the parameters can be adjusted from the user interface so      ported.
that researchers can create variations on the basic paradigms without          We anticipate that the ERP CORE will be used in at least eight ways.
editing the code (thus minimizing the potential for programming er-        First, researchers who are setting up a new ERP lab can use the stan-

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
E.S. Kappenman, J.L. Farrens, W. Zhang et al.                                                                               NeuroImage 225 (2021) 117465

<a id="p003-b002"></a>

<!-- p003-b002 -->
dardized CORE paradigms to test their laboratory set-up and data qual-      2.2. Stimuli and Tasks
ity. Second, researchers who are new to the ERP technique may use
the CORE paradigms and analysis scripts to enhance their understand-            Fig. 1 shows example trials in each of the six tasks. Here we provide
ing of ERP experimental design and analysis methods, which will serve       a brief overview of each task; details are provided in the Supplemen-
as a starting point for the development of new paradigms. Third, re-        tary Materials and Methods. The N170 was elicited in a face perception
searchers who would like to add a standardized ERP measure to a multi-      task modiﬁed from Rossion & Caharel (2011) using their stimuli (which
method study can take our experiment control scripts and data process-      are available in the online resource; see Fig. 1A). In this task, an image
ing pipelines and “plug them in” to their study with relative ease and      of a face, car, scrambled face, or scrambled car was presented on each
conﬁdence. Moreover, they could use the a priori analysis parameters        trial in the center of the screen, and participants responded whether the
that we provide (e.g., time windows for amplitude and latency quantiﬁ-      stimulus was an “object” (face or car) or a “texture” (scrambled face or
cation), reducing researcher degrees of freedom (Simmons et al., 2011).     scrambled car). The MMN was elicited using a passive auditory oddball
Fourth, we have provided a participant-by-participant quantiﬁcation of      task modeled on Näätänen et al. (2004; see Fig. 1B). Standard tones (pre-
the noise levels in the data, which both new and experienced researchers    sented at 80 dB, with p = .8) and deviant tones (presented at 70 dB, with
can use as a comparison against the noise levels in their data. ERP pa-     p = .2) were presented over speakers while participants watched a silent
pers rarely provide information about noise levels, making it diﬃcult to    video and ignored the tones. The N2pc was elicited using a simple visual
know which data collection protocols yield the cleanest data, and the       search task based on Luck et al. (2006; see Fig. 1C). Participants were
ERP CORE provides a ﬁrst step toward standardized reporting of noise        given a target color of pink or blue at the beginning of a trial block, and
levels.                                                                     responded on each trial whether the gap in the target color square was
    Fifth, researchers who would like to create a new variant of a stan-    on the top or bottom. The N400 was elicited using a word pair judgment
dard ERP paradigm could use our experiment control scripts and data         task adapted from Holcomb & Kutas (1990; see Fig. 1D). On each trial,
processing pipelines as a starting point, saving substantial time and re-   a red prime word was followed by a green target word. Participants re-
ducing uncertainty and error. Sixth, researchers could test new hypothe-    sponded whether the target word was semantically related or unrelated
ses by reanalyzing the existing data in novel ways. For example, because    to the prime word. The P3 was elicited in an active visual oddball task
we have data from seven diﬀerent ERP components in each participant,        adapted from Luck et al. (2009; see Fig. 1E). The letters A, B, C, D, and
it would be possible to ask how the timing and amplitude of one com-        E were presented in random order (p = .2 for each letter). One letter was
ponent is correlated with the timing and amplitude of other compo-          designated the target for a given block of trials, and the other 4 letters
nents. Seventh, newly developed data processing procedures could be         were non-targets. Thus, the probability of the target category was .2, but
applied to the ERP CORE data to test the eﬀectiveness of these proce-       the same physical stimulus served as a target in some blocks and a non-
dures across a broad range of paradigms. Finally, educators could use       target in others. Participants responded whether the letter presented on
these resources to teach students about the design, implementation, and     each trial was the target or a non-target for that block. The lateralized
analysis of ERP experiments. For example, the ERP CORE is already be-       readiness potential (LRP) and the error-related negativity (ERN) were
ing integrated into a formal curriculum for teaching human electrophys-     elicited using a variant of the Eriksen ﬂanker task (Eriksen and Erik-
iology (Bukach et al., 2019).                                               sen, 1974; see Fig. 1F). A central arrowhead pointing to the left or right
                                                                            was ﬂanked on both sides by arrowheads that pointed in the same di-
                                                                            rection (congruent trials) or the opposite direction (incongruent trials).
2. Materials and methods
                                                                            Participants indicated the direction of the central arrowhead on each
                                                                            trial with a left- or right-hand buttonpress.
   This study was approved by the Institutional Review Board
at the University of California, Davis, and all participants pro-
                                                                            2.3. EEG Recording
vided informed consent. All materials are freely available at
https://doi.org/10.18115/D5JW4R.
                                                                                The continuous EEG was recorded using a Biosemi ActiveTwo record-
                                                                            ing system with active electrodes (Biosemi B.V., Amsterdam, the Nether-
2.1. Participants                                                           lands). We recorded from 30 scalp electrodes, mounted in an elastic cap
                                                                            and placed according to the International 10/20 System (FP1, F3, F7,
    We tested 40 participants (25 female, 15 male; Mean years of            FC3, C3, C5, P3, P7, P9, PO7, PO3, O1, Oz, Pz, CPz, FP2, Fz, F4, F8, FC4,
age = 21.5, SD = 2.87, Range 18–30; 38 right handed) from the Uni-          FCz, Cz, C4, C6, P4, P8, P10, PO8, PO4, O2; see Supplementary Fig. S1).
versity of California, Davis community. Each participant had native En-     The common mode sense (CMS) electrode was located at PO1, and the
glish competence and normal color perception, normal or corrected-to-       driven right leg (DRL) electrode was located at PO2. The horizontal elec-
normal vision, and no history of neurological injury or disease (as indi-   trooculogram (HEOG) was recorded from electrodes placed lateral to the
cated by self-report). Participants received monetary compensation at a     external canthus of each eye. The vertical electrooculogram (VEOG) was
rate of $10/hour.                                                           recorded from an electrode placed below the right eye. Signals were in-
    In our research with typical young adults, we always exclude par-       cidentally also recorded from 37 other sites, but these sites were not
ticipants who exhibit artifacts on more than 25% of trials (Luck, 2014).    monitored during the recording and are not included in the ERP CORE
To maximize the amount of data we were able to retain in each ex-           data set. All signals were low-pass ﬁltered using a ﬁfth order sinc ﬁlter
periment, this criterion was applied separately for each task. We also      with a half-power cutoﬀ at 204.8 Hz and then digitized at 1024 Hz with
excluded participants from a task if their accuracy was below 75%, or if    24 bits of resolution. The signals were recorded in single-ended mode
fewer than 50% of trials remained in any single experimental condition.     (i.e., measuring the voltage between the active and ground electrodes
To ensure an adequate number of error trials for the ERN, participants      without the use of a reference), and referencing was performed oﬄine,
were excluded from the error-related negativity (ERN) analysis if fewer     as described below.
than 6 error trials remained after artifact rejection (Boudewyn et al.,
2018). These criteria resulted in the exclusion of 1–6 participants per     2.4. Signal Processing and Averaging
component. The ﬁnal sample size for each component is listed in Table 1.
Additional details of participant exclusions are available in the online       Signal processing and analysis were performed in MATLAB using
resource. All analyses were performed using the ﬁnal sample for each        EEGLAB toolbox (version 13_4_4b; Delorme and Makeig, 2004) and ER-
task, except where noted. The individual-participant data ﬁles for ex-      PLAB toolbox (version 8.001; Lopez-Calderon and Luck, 2014). Here we
cluded participants are provided in the online resource.                    provide a detailed conceptual description of the analysis procedures;

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
E.S. Kappenman, J.L. Farrens, W. Zhang et al.                                                                                                  NeuroImage 225 (2021) 117465

<a id="p004-b002"></a>

<!-- p004-b002 -->
Table 1
                              Sample size (after excluding subjects with too many artifacts), electrode site, time-locking event, epoch window,
                              and baseline period for each component

<a id="p004-b003"></a>

<!-- p004-b003 -->
ERP          Sample         Electrode          Time-Locking          Epoch Window        Baseline Period
                                 Component       Size (N)          Site               Event                  (ms)                 (ms)

<a id="p004-b004"></a>

<!-- p004-b004 -->
N170            37             PO8            Stimulus-locked          -200 to 800           -200 to 0
                                   MMN             39             FCz            Stimulus-locked          -200 to 800           -200 to 0
                                   N2pc            35           PO7/PO8          Stimulus-locked          -200 to 800           -200 to 0
                                   N400            39             CPz            Stimulus-locked          -200 to 800           -200 to 0
                                     P3            34              Pz            Stimulus-locked          -200 to 800           -200 to 0
                                    LRP            37            C3/C4           Response-locked          -800 to 200         -800 to -600
                                   ERN             36             FCz            Response-locked          -600 to 400         -400 to -200

<a id="p004-b005"></a>

<!-- p004-b005 -->
further details of each data processing step are provided in comments                    procedure was performed for the tasks examining stimulus-locked re-
within the online MATLAB scripts, which can be used to exactly repli-                    sponses to visual stimuli (i.e., N170, N2pc, N400, and P3). Speciﬁcally,
cate our analyses.                                                                       we excluded trials on which an eyeblink or horizontal eye movement
    The event codes were shifted to account for the LCD monitor delay,                   was present in the original (uncorrected) HEOG or VEOG signal during
and the EEG and EOG signals were downsampled to 256 Hz to increase                       the presentation of the stimulus.
data processing speeds (this decreased sampling rate is well within nor-                     Trials with incorrect behavioral responses were excluded from all
mative values for these paradigms). For analysis of the MMN, N2pc,                       analyses, except for the ERN. Trials with excessively fast or slow reaction
N400, P3, LRP, and ERN, the EEG signals were referenced oﬄine to the                     times (RTs) were also excluded from all analyses, with the acceptable
average of P9 and P10 (located adjacent to the mastoids); we ﬁnd that                    RT range determined by visual inspection of RT probability histograms
P9 and P10 provide cleaner signals than the traditional mastoid sites,                   averaged across participants for each task. This resulted in an accept-
but the resulting waveforms are otherwise nearly identical to mastoid-                   able response window of 200 to 1000 ms after the onset of the stimulus
referenced data. For analysis of the N170, the EEG signals were refer-                   in the N170, N2pc, P3, LRP, and ERN analyses, and an acceptable re-
enced to the average of all 33 sites (because the average reference is                   sponse window of 200 to 1500 ms after the onset of the target word in
standard in the N170 literature). A bipolar HEOG signal was computed                     the N400 analysis; the MMN task required no responses and therefore
as left HEOG minus right HEOG. A bipolar VEOG signal was computed                        no exclusions were made on the basis of RT. Accuracy was deﬁned as
as lower VEOG minus FP2.                                                                 the proportion of correct trials within the acceptable RT range prior to
    The DC oﬀsets were removed, and the signals were high-pass ﬁltered                   artifact rejection. Note that future studies with these tasks can use these
(non-causal Butterworth impulse response function, half-amplitude cut-                   time ranges as a priori windows (assuming that a similar population is
oﬀ at 0.1 Hz, 12 dB/oct roll-oﬀ). In preparation for artifact correc-                    being tested).
tion, portions of EEG containing large muscle artifacts, extreme volt-
age oﬀsets, or break periods longer than two seconds were identiﬁed by                   2.5. Component Isolation with Diﬀerence Waves
a semi-automatic ERPLAB algorithm and removed. Independent com-
ponent analysis (ICA) was then performed, and components that were                           The tasks were designed so that each ERP component could be iso-
clearly associated with eyeblinks or horizontal eye movements—as as-                     lated from overlapping brain activity by means of a diﬀerence wave-
sessed by visual inspection of the waveforms and the scalp distributions                 form. Although diﬀerence waves have limitations in some contexts
of the components—were removed (Jung, et al., 2000). Corrected bipo-                     (Meyer et al., 2017), they are often valuable because they eliminate any
lar HEOG and VEOG signals were computed from the ICA-corrected                           brain activity that is in common to the two conditions, allowing precise
data. The original (pre-correction) bipolar HEOG and VEOG signals were                   assessment of the time course and magnitude of the small set of pro-
also retained to provide a record of the ocular artifacts that were present              cesses that diﬀer between conditions (see Kappenman and Luck, 2012;
in the original data.                                                                    Luck, 2014). A diﬀerence waveform was created for each component us-
    The data were segmented and baseline-corrected for each trial using                  ing the procedures speciﬁed in the Supplementary Materials and Meth-
the time windows shown in Table 1. Channels with excessive levels of                     ods. All amplitude and latency measurements were then performed on
noise as determined by visual inspection of the data were interpolated                   the diﬀerence waves using measurement procedures described later.
using EEGLAB’s spherical interpolation algorithm. Note that interpola-
tion was not performed on any channels that were subsequently used to                    2.6. Quantiﬁcation of Signals and Noise
quantify the ERP components and only impacted the topographic maps
shown in Supplementary Fig. S2.                                                          2.6.1. Electrode site determination
    Segments of data containing artifacts that survived the correction                       For each component, we determined the electrode site at which that
procedure were ﬂagged and excluded from analysis using automated                         component was largest in the diﬀerence wave, and we used that site
ERPLAB procedures with individualized thresholds set on the basis of                     for all analyses. Data from the other electrode sites are provided in the
visual inspection of each participant’s data (see justiﬁcation for individ-              online resource. Table 1 shows the electrode site chosen to quantify each
ualized thresholds in Luck, 2014). This included excluding trials with                   component. The P3 showed similar amplitudes at CPz and Pz, and we
large voltage excursions in any channel. Because ICA does not always                     chose to quantify the P3 at Pz because this is the site most widely used
correct eye movements perfectly, especially in participants who rarely                   in the literature. We recommend the electrode sites in Table 1 as a priori
make eye movements, we also discarded any trials with evidence of large                  measurement sites for future research using these tasks.
eye movements (greater than 4° of visual angle) in the corrected HEOG.                       Ordinarily, it would be inappropriate to choose the site at which the
Because horizontal eye movements are more likely to occur in tasks that                  eﬀect is largest, because this “cherry picking” would bias the data in fa-
present stimuli away from ﬁxation, as in the visual search task we used                  vor of the presence of an eﬀect, inﬂating the Type I error rate (Luck and
to elicit the N2pc component, we also removed trials that contained hor-                 Gaspelin, 2017). However, the eﬀects examined in the present study are
izontal eye movements larger than 0.2° of visual angle that could have                   already known to exist, and our goal was to characterize these eﬀects
impacted the N2pc (i.e., that occurred between -50 and 350 ms relative                   rather than to test for their existence. Researchers often avoid cherry
to stimulus onset). To ensure that blinks and horizontal eye movements                   picking by averaging across a cluster of sites rather than choosing a sin-
did not interfere with perception of the visual stimuli, an additional                   gle site. This may also improve data quality (Luck, 2014). However, the

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
E.S. Kappenman, J.L. Farrens, W. Zhang et al.                                                                                            NeuroImage 225 (2021) 117465

<a id="p005-b002"></a>

<!-- p005-b002 -->
Table 2
                                  Time windows of statistically signiﬁcant diﬀerences (based on the mass univariate approach) and rec-
                                  ommended measurement windows, relative to stimulus onset (for N170, MMN, N2pc, N400, and P3) or
                                  response onset (for LRP and ERN).

<a id="p005-b003"></a>

<!-- p005-b003 -->
ERP Component    Statistically Signiﬁcant Time Windows (ms)   Recommended Measurement Windows (ms)

<a id="p005-b004"></a>

<!-- p005-b004 -->
N170                    105.47 to 148.44                              110 to 150
                                         MMN                     113.28 to 230.47                              125 to 225
                                         N2pc                    191.41 to 292.97                              200 to 275
                                         N400                    183.59 to 750.00                              300 to 500
                                           P3                    253.91 to 664.06                              300 to 600
                                          LRP                    -125.00 to 15.63                               -100 to 0
                                         ERN                     -27.34 to 109.38                                0 to 100

<a id="p005-b005"></a>

<!-- p005-b005 -->
cluster approach may decrease the size of the eﬀect, and we know of no                    would not be appropriate in most studies. However, the present eﬀects
formal analyses demonstrating which approach leads to the greatest sta-                   are known to exist, and our goal was to determine the best windows
tistical power. The ERP CORE data would provide an excellent test bed                     for future research. We recommend these as a priori time windows for
for assessing which approach is best across a range of components, but                    future studies using these speciﬁc tasks or other similar tasks (assuming
such an analysis is beyond the scope of the present paper. For the sake                   that a similar population is tested).
of simplicity, and to avoid arbitrary decisions about cluster sizes, the
present analyses are based on the single electrode site with the largest                  2.6.3. EEG amplitude spectrum quantiﬁcation
amplitude; data from the other sites (see Supplementary Fig. S1) are                         We computed amplitude spectra from the EEG. Speciﬁcally, fast
available in the online resource.                                                         Fourier transforms were computed on zero-padded 5-s segments of the
                                                                                          continuous high-pass ﬁltered EEG with 50% overlap. The data were an-
2.6.2. Time window determination                                                          alyzed separately for each of the seven components using the data from
    The present study also provided an opportunity to determine opti-                     the relevant task at the measurement site for that component. Break
mal time periods for each component that can be used as a priori mea-                     periods and segments containing large artifacts were excluded, and the
surement windows in future studies. To accomplish this, we used the                       amplitude spectra were averaged across segments and participants using
Mass Univariate Toolbox (Groppe et al., 2011) to ﬁnd a cluster of sta-                    the full sample (N = 40).
tistically signiﬁcant time points at the electrode site shown in Table 1.
Our procedure began by comparing the mean voltage from the relevant                       2.6.4. Noise quantiﬁcation
diﬀerence wave to zero using a separate one-sample t test at each time                        Our ﬁrst measure of noise focused on the baseline period (see
point. The algorithm then found the largest cluster of consecutive time                   Table 1) in the averaged ERP waveforms. To quantify the baseline noise,
points that were individually signiﬁcant and computed the mass of this                    we calculated the point-by-point SD of the voltage across the baseline
cluster (the sum of the single-point t values for the cluster). A permu-                  period in the averaged ERP waveform for each component, separately
tation test with 2,500 iterations was then used to verify that each of                    for each participant. Low-pass ﬁltering is often but not always applied
these cluster masses was larger than the 95th percentile of values that                   to ERPs prior to measuring components (see below), so we performed
would be expected by chance. The cluster obtained for each component                      these calculations before and after applying a 20 Hz low-pass ﬁlter (non-
greatly exceeded this 95th percentile (the lowest value was greater than                  causal Butterworth impulse response function, half-amplitude cut-oﬀ at
the 99.99th percentile). The time ranges of these clusters are provided                   20 Hz, 48 dB/oct roll-oﬀ). We quantiﬁed the baseline noise in both the
in Table 2.                                                                               parent waveforms and the diﬀerence waves. Note that some systematic
    Although the mass univariate approach does not provide strict con-                    activity was present during the baseline periods of the parent wave-
trol of the Type I error rate for individual time points (Groppe et al.,                  forms (reﬂecting preparatory activity and/or overlapping activity from
2011; Sassenhagen and Draschkow, 2019)—and using it to deﬁne time                         the previous trial), and this systematic activity also contributes to this
windows for subsequent analyses of the same data set would ordinarily                     measure of baseline noise. However, given our experimental designs,
be considered “double dipping” (Kriegeskorte et al., 2009)—our goal                       all systematic variation was eliminated during the baseline period in
was simply to provide a set of empirically justiﬁed time windows for                      the diﬀerence waves, so our baseline noise measure is a pure measure
use in subsequent studies. We used the resulting windows to measure                       of noise for the diﬀerence waves.
the amplitudes and latencies from the present study, which would gener-                       Our second measure of noise was analogous to the baseline noise
ally be inappropriate. However, our goal in these analyses was not to de-                 measure, but applied during the measurement period for each compo-
termine whether real diﬀerences between conditions were present (be-                      nent. The point-by-point SD during the measurement window would
cause these diﬀerences have already been widely replicated). Instead,                     ordinarily reﬂect both the signal and the noise, so we used plus-minus
the goal of these analyses was to provide amplitude and latency val-                      averaging (Schimmel, 1967) to eliminate the signal but retain the noise.
ues that can be used for comparison by future researchers. Note that,                     This method eliminates the signal by inverting the polarity of half the
because the data and analysis scripts are available online, researchers                   single-trial EEG epochs prior to averaging. Speciﬁcally, plus-minus av-
can easily measure the amplitudes and latencies in the CORE data using                    erages were computed by dividing the artifact-free EEG epochs for each
other time windows.                                                                       participant into even-numbered trials and odd-numbered trials sepa-
    In many studies, multiple components may be present in the same                       rately for each condition, and then applying an algorithm that was math-
diﬀerence wave, and a narrower time window may help isolate the com-                      ematically equivalent to inverting the polarity of the even-numbered
ponent of interest. We therefore performed an extensive literature re-                    trials and then averaging the odd-numbered trials together with the in-
view to determine the time windows that are most commonly used in                         verted even-numbered trials. To quantify the noise in the plus-minus
analysis of these components. For each component, we then chose a ﬁnal                    averages, we calculated the standard deviation (SD) of the plus-minus
time window that (a) was within the range of the statistically signiﬁcant                 waveforms for each participant during the measurement window for
cluster obtained from the mass univariate approach, and (b) was also                      each component. Note that this measure of noise includes trial-by-trial
within the range of commonly used values. The resulting time windows                      variability in the signal of interest, whereas the baseline noise measure
are shown in Table 2. As in the case of our procedure for determining                     does not. Thus, two these measures of noise provide complementary in-
the channel for measurement, this procedure for choosing time windows                     formation.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
E.S. Kappenman, J.L. Farrens, W. Zhang et al.                                                                                  NeuroImage 225 (2021) 117465

<a id="p006-b002"></a>

<!-- p006-b002 -->
Our ﬁnal measure of noise used the plus-minus averages to estimate      tocentral cortex for incorrect responses compared to correct responses.
the amount of noise at each individual time point in the waveforms.         Topographic maps of each eﬀect are provided in Supplementary Fig. S2.
In the absence of noise, the plus-minus average for a given participant
would be zero at all time points, and any deviation from zero reﬂects
                                                                            3.2. ERP Quantiﬁcation
variability (noise) in the data. However, the polarity of this deviation
is random, so one cannot quantify the noise by simply taking the mean
                                                                                We quantiﬁed the magnitude and timing of each component in sev-
across participants (which would have an expected value of zero). In-
                                                                            eral diﬀerent ways. All measurements were performed on the diﬀerence
stead, we computed the SD across participants at each time point. This
                                                                            waveforms, which was necessary for components that are only well de-
yielded a waveform showing noise level at each time point for each of
                                                                            ﬁned in diﬀerence waves (e.g., the N2pc and LRP components). Mean
the ERP components.
                                                                            amplitude measures for the parent waveforms are provided in Supple-
                                                                            mentary Table S2. The time windows used for measuring each compo-
2.6.5. Amplitude and latency measures                                       nent are listed in Table 2, and the procedures used for determining the
    Using the electrodes shown in Table 1 and the time windows shown        time windows are described in the Materials and Methods. The mean
in Table 2, we measured the mean amplitude, peak amplitude, peak la-        values for each component are provided in Table 3, along with stan-
tency, and 50% area latency (the time point that divides the area under     dard deviations (SDs) to quantify the variability across participants. His-
the curve into subregions of equal area) from each of the seven dif-        tograms of the single-participant values are provided in Supplementary
ference waves. We also quantiﬁed the onset latency of each diﬀerence        Fig. S3 so that future studies can compare their single-participant values
wave with the fractional peak latency measure (the time at which the        to the range observed in our data. The range, ﬁrst and third quartiles,
voltage reaches 50% of the peak amplitude; see Kiesel et al., 2008);        and the interquartile range are provided in Supplementary Table S3. As
the measurement windows were shifted 100 ms earlier for these onset         shown in Table 3 and Supplementary Fig. S3, the size and timing of the
measurements. As secondary analyses, we also quantiﬁed the mean am-         ERP eﬀects varied widely across participants, even within this relatively
plitude of the individual parent waveforms that were used to create the     homogenous sample of neurotypical young adults.
diﬀerence waveforms. The other measurements are typically valid only            We quantiﬁed the magnitude of the components using mean ampli-
for diﬀerence waveforms (see Luck, 2014), so these measures were not        tude and peak amplitude. The eﬀect sizes are provided in Table 3 (i.e.,
obtained from the parent waveforms. For example, it would be diﬃcult        Cohen’s dz for a one-sample comparison against zero) to aid future re-
to measure the peak latency of the MMN from the parent waveforms            searchers in performing a priori statistical power calculations. Both the
given that many other components are also present in the same time          mean amplitude and peak amplitude measures showed very large eﬀect
window. Because peak amplitude, peak latency, and fractional peak la-       sizes (dz > 1) for all components, demonstrating the robustness of the
tency are all sensitive to high-frequency noise, a low-pass ﬁlter (non-     CORE paradigms. Although the observed eﬀect sizes appear larger for
causal Butterworth impulse response function, half-amplitude cut-oﬀ at      peak than mean amplitude, it should be noted that using 0 μV as the
20 Hz, 48 dB/oct roll-oﬀ) was applied to the waveforms prior to obtain-     chance value would be expected to overestimate the true eﬀect size for
ing these measures.                                                         peak amplitude, because peaks are statistically biased away from zero
                                                                            (Luck, 2014). Future research is needed to establish the ideal method
3. Results                                                                  for quantifying eﬀect sizes for peak amplitude measures.
                                                                                We quantiﬁed the midpoint latency of each eﬀect using the peak la-
    Fig. 2 shows the grand average “parent” ERP waveforms from each         tency and the 50% area latency techniques. Peak latency is much more
relevant condition and the ERP diﬀerence waveforms between condi-           widely used to quantify midpoint latency, but 50% area latency has sev-
tions (including the standard error of the mean across participants). Be-   eral advantages (although it is mainly useful when a component is mea-
havioral data are summarized in Supplementary Table S1 in the supple-       sured from a diﬀerence wave; see Luck, 2014). For most components,
mentary materials. The experiment control scripts, raw data, analysis       there was close agreement between the means of these two measures,
scripts, processed data, and a broad set of results are available in the    but the standard deviations were substantially lower for the 50% area
online resource (https://doi.org/10.18115/D5JW4R).                          latency measure. We also calculated the onset latency1 of each eﬀect,
                                                                            using the fractional peak latency technique (see Kiesel et al., 2008). Fu-
                                                                            ture research could use the ERP CORE data to compare the eﬀect sizes
3.1. Basic ERP Eﬀects
                                                                            yielded by diﬀerent algorithms for quantifying ERP amplitudes and la-
                                                                            tencies.
    The ERP waveforms in Fig. 2 show that the expected experimental ef-
fects were observed for all seven components. The N170 component was
larger and earlier for faces than for cars, with a maximum eﬀect over       3.3. EEG Spectral Quantiﬁcation
right inferotemporal cortex; the latency diﬀerence may seem surpris-
ing, but it is commonly observed (Carmel, 2002; Itier, 2004; Sagiv and         Researchers who use the ERP CORE paradigms may wish to com-
Bentin, 2001). Auditory deviants in the MMN paradigm elicited a nega-       pare the frequency-domain characteristics of their data with the CORE
tivity peaking near 200 ms with a maximum over medial frontocentral         data (e.g., to compare alpha-band activity as an index of attentional en-
cortex. The N2pc paradigm yielded a more negative (less positive) volt-     gagement). We therefore computed the amplitude density of the EEG
age from 200–300 ms over the hemisphere contralateral to the target         signal at each frequency ranging from 1 to 100 Hz (see Materials and
compared to the ipsilateral hemisphere. In the N400 paradigm, the sec-      Methods for details). Fig. 3 (left panel) shows the amplitude spectra at
ond word in a pair elicited a larger negativity from approximately 200–     the electrode site of interest for each component, averaged across all
600 ms when it was semantically unrelated to the ﬁrst word than when        40 participants. As usual, the spectra exhibited a gradual falloﬀ as the
it was related, with a maximum over medial centroparietal cortex. The
visual P3 paradigm yielded a larger positive voltage for the rare stimu-      1
                                                                                Onset latencies can be distorted by low-pass ﬁlters (Luck, 2014;
lus category than for the frequent stimulus category, with a maximum
                                                                            Rousselet, 2012), which spread the signal in time (symmetrically for noncausal
eﬀect at the parietal midline electrode. In the ﬂankers paradigm, both      ﬁlters and asymmetrically toward longer latencies for causal ﬁlters). However,
the lateralized readiness potential (LRP) and the error-related negativ-    the measure of onset latency used in the present study is only minimally aﬀected
ity (ERN) were observed. The LRP was a more negative voltage over the       by low-pass ﬁltering (see Figure 12.8C in Luck, 2014). Extreme high-pass ﬁlters
motor cortex contralateral to the response hand compared to the ipsilat-    can also impact onset latencies, but the mild 0.1 Hz cutoﬀ frequency used here
eral side, and the ERN was a more negative voltage over midline fron-       has very little impact (Rousselet, 2012, Tanner et al., 2015).

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
E.S. Kappenman, J.L. Farrens, W. Zhang et al.                                                                                    NeuroImage 225 (2021) 117465

<a id="p007-b002"></a>

<!-- p007-b002 -->
Fig. 2. Grand average parent ERP waveforms (left) and diﬀerence waveforms (right). The shading surrounding the diﬀerence waveforms indicates the region that
fell within ± 1 SEM at a given time point (which reﬂects both measurement error and true diﬀerences among participants). A digital low-pass ﬁlter was applied
oﬄine before plotting the ERP waveforms (Butterworth impulse response function, half-amplitude cutoﬀ at 20 Hz, 48 dB/oct roll-oﬀ).

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
E.S. Kappenman, J.L. Farrens, W. Zhang et al.                                                                                                                                                                 NeuroImage 225 (2021) 117465

<a id="p008-b002"></a>

<!-- p008-b002 -->
Measurement Window
                                                  Amplitude Spectra                                                    Baseline Noise Level
                                                                                                                                                                                             Noise Level
                                                    5
                   Amplitude Density (µV/Hz1/2)             PO8                                                    1    PO8                                                               1   PO8
                                                  4.5                                                            0.9                 Faces                                              0.9                 Faces
                                                    4                                                            0.8                 Cars                                               0.8                 Cars
                                                                                                                                     Faces minus Cars                                                       Faces minus Cars

<a id="p008-b003"></a>

<!-- p008-b003 -->
Probability

<a id="p008-b004"></a>

<!-- p008-b004 -->
Probability
                                                  3.5                                                            0.7                                                                    0.7
                                                    3                                                            0.6                                                                    0.6
                                                  2.5                                                            0.5                                                                    0.5
       N170                                         2                                                            0.4                                                                    0.4
                                                  1.5                                                            0.3                                                                    0.3
                                                    1                                                            0.2                                                                    0.2
                                                  0.5                                                            0.1                                                                    0.1
                                                    0                                                              0                                                                      0
                                                        1                10          60 100 Hz                          0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4                                0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4
                                                                    Frequency (Hz)                                               SD Amplitude (µV)                                                       SD Amplitude (µV)
                   Amplitude Density (µV/Hz1/2)

<a id="p008-b005"></a>

<!-- p008-b005 -->
4.5       FCz                                                    1    FCz                                                               1   FCz
                                                    4                                                            0.9                 Standards                                          0.9                 Standards
                                                                                                                                     Deviants                                                               Deviants
                                                  3.5                                                            0.8                 Deviants minus Standards                           0.8                 Deviants minus Standards

<a id="p008-b006"></a>

<!-- p008-b006 -->
Probability

<a id="p008-b007"></a>

<!-- p008-b007 -->
Probability
                                                    3                                                            0.7                                                                    0.7
                                                  2.5                                                            0.6                                                                    0.6
                                                                                                                 0.5                                                                    0.5
       MMN                                          2
                                                  1.5
                                                                                                                 0.4                                                                    0.4
                                                                                                                 0.3                                                                    0.3
                                                    1                                                            0.2                                                                    0.2
                                                  0.5                                                            0.1                                                                    0.1
                                                    0                                                              0                                                                      0
                                                        1                10          60 100 Hz                          0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4                                0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4
                                                                    Frequency (Hz)                                                SD Amplitude (µV)                                                      SD Amplitude (µV)
                                                   3
                   Amplitude Density (µV/Hz1/2)

<a id="p008-b008"></a>

<!-- p008-b008 -->
PO7/PO8                                                1   PO7/PO8                                                            1   PO7/PO8
                                                                                                                 0.9                                                                    0.9
                                                  2.5
                                                                                                                 0.8                 Contralateral                                      0.8                 Contralateral
                                                                                                 Probability

<a id="p008-b009"></a>

<!-- p008-b009 -->
Probability
                                                   2                                                             0.7                 Ipsilateral                                        0.7                 Ipsilateral
                                                                                                                 0.6                 Contralateral minus Ipsilateral                    0.6                 Contralateral minus Ipsilateral
                                                  1.5                                                            0.5                                                                    0.5
       N2pc                                        1
                                                                                                                 0.4                                                                    0.4
                                                                                                                 0.3                                                                    0.3
                                                  0.5                                                            0.2                                                                    0.2
                                                                                                                 0.1                                                                    0.1
                                                   0                                                               0                                                                      0
                                                        1                10          60 100 Hz                          0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4                               0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4
                                                                    Frequency (Hz)                                                SD Amplitude (µV)                                                     SD Amplitude (µV)
                                                   4        CPz                                                    1    CPz                                                                   CPz
                   Amplitude Density (µV/Hz1/2)

<a id="p008-b010"></a>

<!-- p008-b010 -->
1
                                                  3.5                                                            0.9                 Related                                            0.9                 Related
                                                                                                                 0.8                 Unrelated                                                              Unrelated
                                                   3                                                                                 Unrelated minus Related                            0.8                 Unrelated minus Related
                                                                                                 Probability

<a id="p008-b011"></a>

<!-- p008-b011 -->
Probability
                                                                                                                 0.7                                                                    0.7
                                                  2.5                                                            0.6                                                                    0.6
                                                   2                                                             0.5                                                                    0.5
       N400                                       1.5                                                            0.4                                                                    0.4
                                                                                                                 0.3                                                                    0.3
                                                   1
                                                                                                                 0.2                                                                    0.2
                                                  0.5                                                            0.1                                                                    0.1
                                                   0                                                               0                                                                      0
                                                        1                10          60 100 Hz                          0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4                               0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4
                                                                    Frequency (Hz)                                                SD Amplitude (µV)                                                     SD Amplitude (µV)
                                                  3.5                                                              1
                   Amplitude Density (µV/Hz1/2)

<a id="p008-b012"></a>

<!-- p008-b012 -->
Pz                                                          Pz                                                                1   Pz
                                                   3                                                             0.9                                                                    0.9
                                                                                                                 0.8                 Rare                                               0.8                 Rare
                                                                                                 Probability

<a id="p008-b013"></a>

<!-- p008-b013 -->
2.5
                                                                                                                                                                        Probability

<a id="p008-b014"></a>

<!-- p008-b014 -->
0.7                 Frequent                                           0.7                 Frequent
                                                                                                                 0.6                 Rare minus Frequent                                0.6                 Rare minus Frequent
                                                   2
                                                                                                                 0.5                                                                    0.5
         P3                                       1.5                                                            0.4                                                                    0.4
                                                   1                                                             0.3                                                                    0.3
                                                                                                                 0.2                                                                    0.2
                                                  0.5
                                                                                                                 0.1                                                                    0.1
                                                   0                                                               0                                                                      0
                                                        1                10          60 100 Hz                          0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4                               0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4
                                                                    Frequency (Hz)                                                SD Amplitude (µV)                                                     SD Amplitude (µV)
                                                   4                                                               1
                   Amplitude Density (µV/Hz1/2)

<a id="p008-b015"></a>

<!-- p008-b015 -->
C3/C4                                                       C3/C4                                                             1   C3/C4
                                                  3.5                                                            0.9                                                                    0.9
                                                                                                                                     Contralateral                                                          Contralateral
                                                   3                                                             0.8                 Ipsilateral                                        0.8                 Ipsilateral
                                                                                                  Probability

<a id="p008-b016"></a>

<!-- p008-b016 -->
Probability

<a id="p008-b017"></a>

<!-- p008-b017 -->
0.7                 Contralateral minus Ipsilateral                    0.7                 Contralateral minus Ipsilateral
                                                  2.5                                                            0.6                                                                    0.6
                                                   2                                                             0.5                                                                    0.5
        LRP                                       1.5                                                            0.4                                                                    0.4
                                                                                                                 0.3                                                                    0.3
                                                   1
                                                                                                                 0.2                                                                    0.2
                                                  0.5                                                            0.1                                                                    0.1
                                                   0                                                               0                                                                      0
                                                        1                10          60 100 Hz                          0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4                                0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4
                                                                    Frequency (Hz)                                                SD Amplitude (µV)                                                      SD Amplitude (µV)
                                                    5
                   Amplitude Density (µV/Hz1/2)

<a id="p008-b018"></a>

<!-- p008-b018 -->
FCz                                                    1    FCz                                                               1   FCz
                                                  4.5                                                            0.9                  Correct                                           0.9                 Correct
                                                    4                                                            0.8                  Incorrect                                         0.8                 Incorrect
                                                                                                                                                                                                            Incorrect minus Correct
                                                                                                                                                                         Probability
                                                                                                   Probability

<a id="p008-b019"></a>

<!-- p008-b019 -->
3.5                                                            0.7                  Incorrect minus Correct                           0.7
                                                    3                                                            0.6                                                                    0.6
                                                  2.5                                                            0.5                                                                    0.5
       ERN                                          2                                                            0.4                                                                    0.4
                                                  1.5                                                            0.3                                                                    0.3
                                                    1                                                            0.2                                                                    0.2
                                                  0.5                                                            0.1                                                                    0.1
                                                    0                                                              0                                                                      0
                                                        1                10          60 100 Hz                          0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4                                0.2 0.6 1 1.4 1.8 2.2 2.6 3 3.4 3.8 >=4
                                                                    Frequency (Hz)                                                SD Amplitude (µV)                                                      SD Amplitude (µV)

<a id="p008-b020"></a>

<!-- p008-b020 -->
Fig. 3. Quantiﬁcation of the EEG signal and the ERP noise. (Left) Amplitude density as a function of frequency (on a log scale) for each ERP component at the
electrode site where that component was maximal, calculated from individual participants and then averaged. Note that, although LRP and ERN were isolated in the
same task, the spectra were obtained at diﬀerent electrode sites and therefore diﬀer slightly. (Middle) Probability histograms of the noise levels during the baseline
period for the averaged ERP parent waveforms and diﬀerence waveforms. Bins are 0.4 μV in width, and the x-axis indicates the midpoint value for each bin. (Right)
Probability histograms of the noise levels during the measurement time window of the plus-minus average parent waveforms and diﬀerence waveforms. Bins are
0.4 μV in width, and the x-axis indicates the midpoint value for each bin.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
E.S. Kappenman, J.L. Farrens, W. Zhang et al.                                                                                         NeuroImage 225 (2021) 117465

<a id="p009-b002"></a>

<!-- p009-b002 -->
Table 3
    ERP diﬀerence waveform measures, averaged across participants (standard deviations in parentheses), along with eﬀect size (Cohen’s dz ) of the diﬀerence in
    amplitude from 0 μV.

<a id="p009-b003"></a>

<!-- p009-b003 -->
ERP                   Mean Amplitude            Peak Amplitude                 Peak Latency                   50% Area                Onset Latency
      Component                     (μV)                      (μV)                          (ms)                      Latency (ms)                 (ms)

<a id="p009-b004"></a>

<!-- p009-b004 -->
-3.37 (2.71)             -5.52 (3.32)
         N170                                                                          131.44 (12.56)                 131.84 (8.58)            95.76 (29.05)
                                   dz = 1.24               dz = 1.66

<a id="p009-b005"></a>

<!-- p009-b005 -->
-1.86 (1.22)             -3.46 (1.71)
         MMN                                                                           187.60 (19.13)                185.20 (14.44)           146.94 (30.33)
                                   dz = 1.52               dz = 2.02

<a id="p009-b006"></a>

<!-- p009-b006 -->
-1.14 (1.15)             -1.86 (1.60)
         N2pc                                                                          253.24 (18.51)                 246.43 (8.81)           213.63 (30.85)
                                   dz = 1.00               dz = 1.16

<a id="p009-b007"></a>

<!-- p009-b007 -->
-7.61 (3.27)             -11.04 (4.65)
         N400                                                                          370.09 (49.43)                387.72 (17.85)           284.86 (44.92)
                                  dz = 2.33                 dz = 2.38

<a id="p009-b008"></a>

<!-- p009-b008 -->
6.29 (3.39)              10.15 (4.53)
           P3                                                                          408.89 (70.48)                436.47 (32.77)           327.44 (61.98)
                                  dz = 1.86                dz = 2.24

<a id="p009-b009"></a>

<!-- p009-b009 -->
-2.40 (0.94)             -3.41 (1.15)
          LRP                                                                          -49.94 (15.66)                 -49.09 (9.72)            -96.50 (19.85)
                                  dz = 2.56                dz = 2.97

<a id="p009-b010"></a>

<!-- p009-b010 -->
-9.26 (5.90)             -13.86 (7.01)
          ERN                                                                           54.47 (12.63)                 54.36 (9.99)              2.50 (27.53)
                                  dz = 1.57                 dz = 1.98

<a id="p009-b011"></a>

<!-- p009-b011 -->
frequency increased (approximately 1/f) along with a peak in the al-                aging, which eliminates the signal while retaining the noise (including
pha band at posterior scalp sites and a small spike at 60 Hz reﬂecting              any variability in the signal itself). The plus-minus averages are shown
electrical noise.                                                                   in Supplementary Fig. S4. Table 4 provides the mean noise level across
                                                                                    participants during the measurement window for each component, and
3.4. Noise Quantiﬁcation                                                            Fig. 3 (right panel) provides probability histograms to show the range of
                                                                                    single-participant noise levels in the measurement window. The range,
    In addition to measuring the components (as is standard in ERP stud-            ﬁrst and third quartiles, and the interquartile range in the unﬁltered
ies), we also quantiﬁed the noise level of the data (which is not typically         ERP waveforms are provided in Supplementary Table S5.
provided in ERP papers). The point-by-point standard errors shown in                    Finally, we estimated the noise level at each individual time point
Fig. 2 do not provide a good measure of the noise level, because they re-           in the waveform, quantiﬁed as the SD across participants at that time
ﬂect a combination of EEG noise and true individual diﬀerences among                point in the plus-minus averages. These point-by-point estimates of noise
participants. We therefore used three other methods to quantify noise               are shown in Fig. 4. For several components (e.g., P3, N400, MMN),
(a detailed justiﬁcation and explanation of each method is provided in              the noise tended to increase over the course of the epoch. For the ERN
the Materials and Methods). Note that noise is typically deﬁned rela-               waveform, noise increased dramatically following the execution of the
tive to the signal of interest, and here we deﬁne noise as any source of            response (see also the bottom row in Supplementary Fig. S4).
variability that impacts the averaged ERP waveforms, even if some of                    Together, these three measures of noise will allow researchers to de-
that variability reﬂects neural signals that might be the focus of study            termine how their noise levels compare to the noise levels in our data.
in other contexts (e.g., phase-random alpha-band oscillations).                     Researchers who are developing new signal processing procedures can
    First, we quantiﬁed the noise in the baseline of each averaged ERP              also apply these procedures to the ERP CORE data and assess their im-
waveform by calculating the point-to-point variability (SD) of the volt-            pact on the noise level. In addition, our data analysis scripts can be
age across the baseline period listed in Table 1 (separately for each par-          used as a starting point for computing these metrics of noise in other
ticipant). This provides an overall measure of the amount of noise that             paradigms.
survives averaging, without inﬂuence from the actual ERP signals. Be-
cause many researchers would apply a low-pass ﬁlter prior to measuring              4. Discussion
component amplitudes or latencies, we performed this analysis both be-
fore and after applying a 20 Hz low-pass ﬁlter. Table 4 provides the                    The ERP CORE—a Compendium of Open Resources and Experi-
mean of the baseline noise values across participants, and Fig. 3 (mid-             ments for human ERP research—consists of optimized paradigms, ex-
dle panel) provides probability histograms to show the range of single-             periment control scripts, EEG data, analysis pipelines, data processing
participant noise levels in the baseline of the unﬁltered averaged ERP              scripts, and a broad set of results. All materials are freely available at
waveforms. The range, ﬁrst and third quartiles, and the interquartile               https://doi.org/10.18115/D5JW4R. Despite the widespread use of ERPs
range in the unﬁltered ERP waveforms are provided in Supplementary                  in the ﬁelds of psychology, psychiatry, and neuroscience, this resource
Table S4. Interestingly, the baseline noise levels varied markedly across           is the ﬁrst of its kind.
participants for some of the components. The baseline noise was only                    Each paradigm in the ERP CORE successfully elicited the compo-
slightly reduced in the ﬁltered waveforms, reﬂecting the fact that most             nent of interest with a large eﬀect size in a 10 min recording. More-
of the EEG energy was below 20 Hz (see Fig. 3, left panel). As expected,            over, we provided several measures of the magnitude and timing of the
the noise level was inversely related to the number of trials being aver-           ERP components, noise levels in the data, and variability across partici-
aged together (for the parent waveforms; e.g., higher for the rare than             pants. These results will serve as a guide to researchers in selecting task
for the frequent stimuli in the P3 paradigm) and was typically larger for           and analysis parameters in future studies, and they provide a standard
the diﬀerence waveforms than for the parent waveforms.                              against which future data sets can be compared. We are not claiming
    Second, we quantiﬁed the noise during the measurement time win-                 that our data quality is optimal or that our eﬀect sizes can be used as
dow of each component. Because the SD across time points in the mea-                formal norms for the broader population. However, no other standard of
surement window would include the signal as well as the noise, we per-              this nature currently exists, and the ERP CORE provides a starting point
formed plus-minus averaging (Schimmel, 1967) before measuring the                   for the development of new standards based on larger samples and other
SD. This procedure inverts the EEG for half of the trials prior to aver-            subject populations.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
E.S. Kappenman, J.L. Farrens, W. Zhang et al.                                                                                                                        NeuroImage 225 (2021) 117465

<a id="p010-b002"></a>

<!-- p010-b002 -->
Table 4
                                                  Average standard deviation (SD) of the voltage in the baseline time window of the ERP waveform and in
                                                  the measurement time window of the plus-minus averages

<a id="p010-b003"></a>

<!-- p010-b003 -->
Baseline Time Window             Measurement Time Window

<a id="p010-b004"></a>

<!-- p010-b004 -->
Unﬁltered SD     Filtered SD       Unﬁltered SD    Filtered SD
                                                          ERP                                        Amplitude       Amplitude          Amplitude      Amplitude
                                                       Component              Trial Type               (𝜇V)              (𝜇V)             (𝜇V)             (𝜇V)

<a id="p010-b005"></a>

<!-- p010-b005 -->
Faces                  0.937             0.824            0.595          0.411
                                                         N170                    Cars                  0.799             0.677            0.489          0.306
                                                                              Faces-Cars               1.214             1.044            0.833          0.590

<a id="p010-b006"></a>

<!-- p010-b006 -->
Deviants                 0.811             0.743            0.555          0.452
                                                         MMN                 Standards                 0.664             0.639            0.315          0.254
                                                                         Deviants-Standards            0.684             0.577            0.616          0.496

<a id="p010-b007"></a>

<!-- p010-b007 -->
Contralateral              0.500             0.417            0.316          0.200
                                                         N2pc                Ipsilateral               0.542             0.449            0.304          0.191
                                                                       Contralateral-Ipsilateral       0.559             0.446            0.410          0.281

<a id="p010-b008"></a>

<!-- p010-b008 -->
Unrelated                  1.505             1.394            0.945          0.811
                                                         N400                 Related                  1.423             1.311            1.051          0.912
                                                                         Unrelated-Related             1.662             1.468            1.414          1.221

<a id="p010-b009"></a>

<!-- p010-b009 -->
Rare                   1.570             1.415            1.383          1.238
                                                          P3                  Frequent                 0.823             0.750            0.689          0.622
                                                                            Rare-Frequent              1.566             1.378            1.516          1.362

<a id="p010-b010"></a>

<!-- p010-b010 -->
Contralateral              0.507             0.420            0.378          0.272
                                                         LRP                 Ipsilateral               0.524             0.439            0.387          0.279
                                                                       Contralateral-Ipsilateral       0.388             0.291            0.324          0.212

<a id="p010-b011"></a>

<!-- p010-b011 -->
Incorrect                1.848             1.625            2.250          2.055
                                                         ERN                   Correct                 0.918             0.884            0.375          0.290
                                                                          Incorrect-Correct            1.909             1.662            2.264          2.050

<a id="p010-b012"></a>

<!-- p010-b012 -->
4.5                                                                                                                         Fig. 4. Noise level at each time point for
                                                                                                          ERN                                         each component at the electrode site where
                           4
Standard Deviation (µV)

<a id="p010-b013"></a>

<!-- p010-b013 -->
that component was maximal, measured as
                          3.5                                                                                                                         the standard deviation across participants
                                                                                                                                                      of the plus-minus ERP diﬀerence wave-
                           3                                                                                                                          forms at a given time point. Time zero rep-
                                                                                                                                            N400
                          2.5
                                                                                                          P3                                          resents the time-locking point for each ERP
                                                                                                                                                      component (i.e., the onset of the stimulus
                           2                                                                                                                          for the N170, MMN, N2pc, N400, and P3,
                                                                                                                                                      and the buttonpress for the LRP and ERN).
                          1.5
                                                                 N170
                           1                                                                                                                MMN
                          0.5
                                                  LRP
                                                                                                                         N2pc
                           0
                           -800   -700   -600   -500    -400    -300   -200   -100     0      100   200    300     400   500     600    700    800
                                                                                     Time (ms)

<a id="p010-b014"></a>

<!-- p010-b014 -->
We have provided our experiment control and data processing scripts                                          forms is well known (Kappenman and Luck, 2012), publications typi-
so that other researchers can utilize our tasks and analysis pipelines in                                        cally do not provide such a detailed characterization of the variability
their research, saving time and increasing reproducibility. Researchers                                          in their samples. The present results therefore provide a useful compar-
can also perform quality control by comparing their noise levels with                                            ison point for researchers who are evaluating variability in their own
those presented here. ERP studies do not ordinarily present a detailed as-                                       single-participant ERP waveforms.
sessment of noise levels, and the noise quantiﬁcations provided here are                                             The ERP CORE contains data from several ERP paradigms in the
therefore a unique resource. By providing these data quality measures                                            same participants, which is quite rare given that a full recording ses-
on our own data and sharing our analysis scripts, we hope to encour-                                             sion is typically required to yield a single component. However, the
age other researchers to provide similar metrics in their publications so                                        CORE paradigms were designed to produce optimal results with mini-
that the ﬁeld can see which experimental procedures and data analy-                                              mal recording time. Consequently, the ERP CORE is the ﬁrst published
sis methods yield the best data quality. Broad adoption of these noise                                           data set that includes such a comprehensive set of ERP components in
metrics in EEG/ERP publications would also over time allow for ﬁeld                                              the same participants. This resource can therefore be used to examine a
standards regarding acceptable levels of noise to be established.                                                broad range of empirical and methodological questions, such as assess-
    We also provided several measures of variability across participants,                                        ing the eﬀectiveness of a new signal processing method across multiple
and all of our single-participant data and measures are available online.                                        components and paradigms. The ERP CORE tasks could also serve as an
Although we tested a relatively homogeneous sample of neurotypical                                               electrophysiological test battery.
young adults, substantial variability was observed (see Supplementary                                                It is also worth noting that our data set contains many other compo-
Fig. S3). Although the existence of individual diﬀerences in ERP wave-                                           nents beyond those analyzed here, including auditory and visual sensory

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
E.S. Kappenman, J.L. Farrens, W. Zhang et al.                                                                                                            NeuroImage 225 (2021) 117465

<a id="p011-b002"></a>

<!-- p011-b002 -->
responses, the stimulus-locked LRP, the response-locked P3, and the an-                      Eimer, M., 2011. The face-sensitive N170 component of the event-related brain potential.
terior N2 component that is sensitive to response competition in the                              In: Calder, A.J., Rhodes, G., Johnson, M.H., Haxby, J.V. (Eds.), The Oxford Handbook
                                                                                                  of Face Perception. Oxford University Press, New York, pp. 329–344. doi:10.1093/ox-
ﬂankers task (Kopp et al., 1996; Purmann et al., 2011).                                           fordhb/9780199559053.013.0017.
    In many cases, researchers will be able to apply our validated                           Eimer, M., Coles, M.G.H., 2003. The lateralized readiness potential. In: Jahanshahi, M.,
paradigms and analysis pipelines directly to their own experiments,                               Hallett, M. (Eds.), The Bereitschaftspotential: Movement-Related Cortical Potentials.
                                                                                                  Springer US, Boston, MA, pp. 229–248.
which will save time, reduce errors, and decrease researcher degrees                         Eriksen, B.A., Eriksen, C.W., 1974. Eﬀects of noise letters upon the identiﬁca-
of freedom in statistical analyses (Simmons et al., 2011). However, the                           tion of a target letter in a nonsearch task. Percept. Psychophys. 16, 143–149.
task and analysis parameters provided in the present study were vali-                             doi:10.3758/BF03203267.
                                                                                             Feuerriegel, D., Churches, O., Hofmann, J., Keage, H.A.D., 2015. The N170 and face per-
dated with neurotypical young adult participants and may need to be
                                                                                                  ception in psychiatric and neurological disorders: a systematic review. Clin. Neuro-
adjusted for other populations. Nonetheless, these parameters provide a                           physiol. 126, 1141–1158.
useful starting point for researchers interested in any of the neurocog-                     Garrido, M.I., Kilner, J.M., Stephan, K.E., Friston, K.J., 2009. The mismatch negativity: a
                                                                                                  review of underlying mechanisms. Clin. Neurophysiol. 120, 453–463.
nitive processes encompassed by the ERP CORE.
                                                                                             Gehring, W.J., Liu, Y., Orr, J.M., Carp, J., 2012. The error-related negativity (ERN/Ne).
                                                                                                  In: Luck, S.J., Kappenman, E.S. (Eds.), The Oxford Handbook of Event-Related Poten-
Declaration of Competing Interest                                                                 tial Components. Oxford University Press, New York, pp. 231–292. doi:10.1093/ox-
                                                                                                  fordhb/9780195374148.013.0120.
                                                                                             Groppe, D.M., Urbach, T.P., Kutas, M., 2011. Mass univariate analysis of event-related
    The authors declare no competing ﬁnancial interests.                                          brain potentials/ﬁelds I: a critical tutorial review. Psychophysiology 48, 1711–1725.
                                                                                                  doi:10.1111/j.1469-8986.2011.01273.x.
                                                                                             Holcomb, P.J., Neville, H.J., 1990. Auditory and visual semantic priming in lexical de-
Acknowledgments
                                                                                                  cision: a comparison using event-related brain potentials. Lang. Cogn. Process 5,
                                                                                                  281–312.
    We thank Mike Blank and David Woods at Neurobehavioral Systems,                          Itier, R.J., 2004. N170 or N1? Spatiotemporal diﬀerences between object and face pro-
Inc. for providing professional programming of the tasks in Presentation,                         cessing using ERPs. Cereb. Cortex 14, 132–142. doi:10.1093/cercor/bhg111.
                                                                                             Jackson, A.F., Bolger, D.J., 2014. The neurophysiological bases of EEG and EEG measure-
as well as signiﬁcant input and support throughout the duration of the                            ment: a review for the rest of us. Psychophysiology 51, 1061–1071.
project. Many individuals provided advice and input in the development                       Jung, T.-P., Makeig, S., Westerﬁeld, M., Townsend, J., Courchesne, E., Sejnowski, T.J.,
of the individual paradigms, including Bruno Rossion (N170), Megan                                2000. Removal of eye activity artifacts from visual event-related potentials in normal
                                                                                                  and clinical subjects. Clin. Neurophysiol. 111, 1745–1758.
Boudewyn and Tamara Swaab (N400), Bill Gehring (ERN), Greg Hajcak                            Kappenman, E.S., Luck, S.J., 2012. ERP components: the ups and downs of brain-
(ERN), and Lee Miller (MMN). We thank Jason Arita for assistance with                             wave recordings. In: Luck, S.J., Kappenman, E.S. (Eds.), The Oxford Handbook of
ERPLAB. Programming, data analysis, and manuscript preparation were                               Event-Related Potential Components. Oxford University Press, New York, pp. 3–30.
                                                                                                  doi:10.1093/oxfordhb/9780195374148.013.0014.
made possible by NIH grants R01MH087450 to S.J.L and R25MH080794                             Keil, A., Debener, S., Gratton, G., Junghöfer, M., Kappenman, E.S., Luck, S.J., Luu, P.,
to S.J.L. and E.S.K.                                                                              Miller, G.A., Yee, C.M., 2014. Committee report: publication guidelines and recom-
                                                                                                  mendations for studies using electroencephalography and magnetoencephalography.
                                                                                                  Psychophysiology 51, 1–21. doi:10.1111/psyp.12147.
Author Contributions                                                                         Kiesel, A., Miller, J., Jolicœur, P., Brisson, B., 2008. Measurement of ERP latency diﬀer-
                                                                                                  ences: a comparison of single-participant and jackknife-based scoring methods. Psy-
    E.S.K. and S.J.L. conceptualized and designed the study. Data col-                            chophysiology 45, 250–274. doi:10.1111/j.1469-8986.2007.00618.x.
                                                                                             Kopp, B., Rist, F., Mattler, U., 1996. N200 in the ﬂanker task as a neurobehav-
lection was performed by J.L.F. Data analysis scripts were written and                            ioral tool for investigating executive control. Psychophysiology 33, 282–294.
implemented by J.L.F. and W.Z., with editing and/or feedback by E.S.K.,                           doi:10.1111/j.1469-8986.1996.tb00425.x.
A.X.S., and S.J.L. Several modiﬁcations were made to ERPLAB Toolbox                          Kriegeskorte, N., Simmons, W.K., Bellgowan, P.S.F., Baker, C.I., 2009. Circular anal-
                                                                                                  ysis in systems neuroscience: the dangers of double dipping. Nat. Neurosci. 12,
by A.X.S. to facilitate the analyses. E.S.K., J.L.F., and S.J.L. wrote the
                                                                                                  535–540.
manuscript, with editing by W.Z. All authors approved the ﬁnal version                       Kutas, M., Federmeier, K.D., 2011. Thirty years and counting: ﬁnding meaning in the
of the manuscript for submission.                                                                 N400 component of the Event-Related Brain Potential (ERP). Annu. Rev. Psychol. 62,
                                                                                                  621–647. doi:10.1146/annurev.psych.093008.131123.
                                                                                             Lau, E.F., Phillips, C., Poeppel, D., 2008. A cortical network for semantics: (de)constructing
Data/Code Availability Statement                                                                  the N400. Nat Rev Neurosci 9, 920–933. doi:10.1038/nrn2532.
                                                                                             Lopez-Calderon, J., Luck, S.J., 2014. ERPLAB: an open-source toolbox for the analysis of
                                                                                                  event-related potentials. Front. Hum. Neurosci. 8, 213.
   All data (including raw and processed data) as well as
                                                                                             Luck, S.J., 2012. Electrophysiological correlates of the focusing of attention within com-
analysis scripts and associated ﬁles are freely available at                                      plex visual scenes: N2pc and related ERP components. In: Luck, S.J., Kappenman, E.S.
https://doi.org/10.18115/D5JW4R.                                                                  (Eds.), The Oxford Handbook of Event-Related Potential Components. Oxford Univer-
                                                                                                  sity Press, New York, pp. 329–360.
                                                                                             Luck, S.J., 2014. An Introduction to the Event-Related Potential Technique. The MIT Press,
Supplementary materials                                                                           Cambridge.
                                                                                             Luck, S.J., Fuller, R.L., Braun, E.L., Robinson, B., Summerfelt, A., Gold, J.M., 2006. The
   Supplementary material associated with this article can be found, in                           speed of visual attention in schizophrenia: electrophysiological and behavioral evi-
                                                                                                  dence. Schizophr. Res. 85, 174–195. doi:10.1016/j.schres.2006.03.040.
the online version, at doi:10.1016/j.neuroimage.2020.117465.                                 Luck, S.J., Gaspelin, N., 2017. How to get statistically signiﬁcant eﬀects in
                                                                                                  any ERP experiment (and why you shouldn’t). Psychophysiology 54, 146–157.
References                                                                                        doi:10.1111/psyp.12639.
                                                                                             Luck, S.J., Kappenman, E.S., 2012. The Oxford Handbook of Event-Related Potential Com-
Boudewyn, M.A., Luck, S.J., Farrens, J.L., Kappenman, E.S., 2018. How many trials does            ponents. Oxford University Press, New York.
    it take to get a signiﬁcant ERP eﬀect? it depends. Psychophysiology 55, e13049.          Luck, S.J., Kappenman, E.S., Fuller, R.L., Robinson, B., Summerfelt, A., Gold, J.M.,
    doi:10.1111/psyp.13049.                                                                       2009. Impaired response selection in schizophrenia: Evidence from the P3
Bukach, C.M., Stewart, K., Couperus, J.W., Reed, C.L., 2019. Using collaborative models           wave and the lateralized readiness potential. Psychophysiology 46, 776–786.
    to overcome obstacles to undergraduate publication in cognitive neuroscience. Front.          doi:10.1111/j.1469-8986.2009.00817.x.
    Psychol. 10, 549. doi:10.3389/fpsyg.2019.00549.                                          Meyer, A., Lerner, M.D., De Los Reyes, A., Laird, R.D., Hajcak, G., 2017. Considering
Buzsáki, G., Anastassiou, C.A., Koch, C., 2012. The origin of extracellular ﬁelds                 ERP diﬀerence scores as individual diﬀerence measures: issues with subtraction and
    and currents — EEG, ECoG, LFP and spikes. Nat. Rev. Neurosci. 13, 407–420.                    alternative approaches. Psychophysiology 54, 114–122. doi:10.1111/psyp.12664.
    doi:10.1038/nrn3241.                                                                     Näätänen, R., Kreegipuu, K., 2012. The mismatch negativity (MMN). In: Luck, S.J.,
Carmel, D., 2002. Domain speciﬁcity versus expertise: factors inﬂuencing distinct process-        Kappenman, E.S. (Eds.), The Oxford Handbook of Event-Related Potential Com-
    ing of faces. Cognition 83, 1–29. doi:10.1016/S0010-0277(01)00162-7.                          ponents. Oxford University Press, New York, pp. 143–157. doi:10.1093/ox-
Delorme, A., Makeig, S., 2004. EEGLAB: an open source toolbox for analysis of single-trial        fordhb/9780195374148.013.0081.
    EEG dynamics including independent component analysis. J. Neurosci. Methods. 134,        Näätänen, R., Pakarinen, S., Rinne, T., Takegata, R., 2004. The mismatch negativity
    9–21.                                                                                         (MMN): towards the optimal paradigm. Clin. Neurophysiol. 115, 140–144.
van Dinteren, R., Arns, M., Jongsma, M.L.A., Kessels, R.P.C., 2014. P300 Development         Olvet, D., Hajcak, G., 2008. The error-related negativity (ERN) and psy-
    across the lifespan: a systematic review and meta-analysis. PLoS One 9, e87347.               chopathology: toward an endophenotype. Clin. Psychol. Rev. 28, 1343–1354.
    doi:10.1371/journal.pone.0087347.                                                             doi:10.1016/j.cpr.2008.07.003.

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
E.S. Kappenman, J.L. Farrens, W. Zhang et al.                                                                                                           NeuroImage 225 (2021) 117465

<a id="p012-b002"></a>

<!-- p012-b002 -->
Peirce, J., 2019. PsychoPy2: experiments in behavior made easy. Behav. Res. Methods 51,       Sagiv, N., Bentin, S., 2001. Structural encoding of human and schematic
    195–203.                                                                                      faces: holistic and part-based processes. J. Cogn. Neurosci. 13, 937–951.
Pernet, C.R., Garrido, M., Gramfort, A., Maurits, N., Michel, C., Pang, E., Salmelin, R.,         doi:10.1162/089892901753165854.
    Schoﬀelen, J.M., Valdes-Sosa, P.A., Puce, A., 2018. Best Practices in Data Analysis and   Sassenhagen, J., Draschkow, D., 2019. Cluster‐based permutation tests of MEG/EEG data
    Sharing in Neuroimaging Using MEEG. OSF Preprints doi:10.31219/osf.io/a8dhx.                  do not establish signiﬁcance of eﬀect latency or location. Psychophysiology 56,
Polich, J., 2007. Updating P300: an integrative theory of P3a and P3b. Clin. Neurophysiol.        e13335.
    118, 2128–2148.                                                                           Schimmel, H., 1967. The (±) reference: accuracy of estimated mean components in aver-
Polich, J., 2012. Neuropsychology of P300. In: Luck, S.J., Kappenman, E.S. (Eds.), The            age response studies. Science 157, 92–94. doi:10.1126/science.157.3784.92.
    Oxford Handbook of Event-Related Potential Components. Oxford University Press,           Simmons, J.P., Nelson, L.D., Simonsohn, U., 2011. False-positive psychology: undisclosed
    New York, pp. 159–188. doi:10.1093/oxfordhb/9780195374148.013.0089.                           ﬂexibility in data collection and analysis allows presenting anything as signiﬁcant.
Purmann, S., Badde, S., Luna-Rodriguez, A., Wendt, M., 2011. Adaptation to frequent               Psychol. Sci. 22, 1359–1366.
    conﬂict in the Eriksen Flanker task: an ERP study. J. Psychophysiol. 25, 50–59.           Smulders, F.T.Y., Miller, J.O., 2012. The lateralized readiness potential. In: Luck, S.J.,
    doi:10.1027/0269-8803/a000041.                                                                Kappenman, E.S. (Eds.), The Oxford Handbook of Event-Related Potential Com-
Ritter, W., Vaughan, H.G., 1969. Averaged evoked responses in vigilance and discrimina-           ponents. Oxford University Press, New York, pp. 209–230. doi:10.1093/ox-
    tion: a reassessment. Science 164, 326–328. doi:10.1126/science.164.3877.326.                 fordhb/9780195374148.013.0115.
Rossion, B., Caharel, S., 2011. ERP evidence for the speed of face categorization in the      Swaab, T.Y., Ledoux, K., Camblin, C.C., Boudewyn, M.A., 2012. Language-related ERP
    human brain: disentangling the contribution of low-level visual cues from face per-           components. In: Luck, S.J., Kappenman, E.S. (Eds.), The Oxford Handbook of
    ception. Vision Res 51, 1297–1311.                                                            Event-Related Potential Components. Oxford University Press, New York, pp. 397–
Rossion, B., Jacques, C., 2012. The N170: understanding the time course of face percep-           440. doi:10.1093/oxfordhb/9780195374148.013.0197.
    tion in the human brain. In: Luck, S.J., Kappenman, E.S. (Eds.), The Oxford Hand-         Tanner, D., Morgan-Short, K., Luck, S.J., 2015. How inappropriate high-pass ﬁlters can
    book of Event-Related Potential Components. Oxford University Press, New York,                produce artifactual eﬀects and incorrect conclusions in ERP studies of language and
    pp. 115–141.                                                                                  cognition. Psychophysiology 52, 997–1009.
Rousselet, G.A., 2012. Does ﬁltering preclude us from studying ERP time-courses? Front.
    Psychol. 3, 131. doi:10.3389/fpsyg.2012.00131.
