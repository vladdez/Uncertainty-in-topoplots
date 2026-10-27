---
id: "gillmann2021uncertainty"
title: "Uncertainty-aware Visualization in Medical Imaging: A Survey"
source_file: "The Art of Uncertain Topoplots/papers/gillmann2021uncertainty.pdf"
source_sha256: "bd5df223fa68b404c47702f8af7a1f6fe23428b22eebfc79c051606c82dd47b2"
extraction_format: 1
---

# Uncertainty-aware Visualization in Medical Imaging: A Survey — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
DOI: 10.1111/cgf.14333

<a id="p001-b002"></a>

<!-- p001-b002 -->
EUROVIS 2021                                                                                                                                  Volume 40 (2021), Number 3
N. Smit, K. Vrotsou, and B. Wang                                                                                                            STAR – State of The Art Report
(Guest Editors)

<a id="p001-b003"></a>

<!-- p001-b003 -->
Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p001-b004"></a>

<!-- p001-b004 -->
Christina Gillmann 1 , Dorothee Saur2 , Thomas Wischgoll3 and Gerik Scheuermann1
                                                                                   1 Leipzig University, Germany
                                                                        2 Leipzig University, Medical Centre, Germany
                                                                                 3 Wright State University, U.S.A

<a id="p001-b005"></a>

<!-- p001-b005 -->
Abstract
         Medical imaging (image acquisition, image transformation, and image visualization) is a standard tool for clinicians in order to
         make diagnoses, plan surgeries, or educate students. Each of these steps is affected by uncertainty, which can highly influence
         the decision-making process of clinicians. Visualization can help in understanding and communicating these uncertainties. In
         this manuscript, we aim to summarize the current state-of-the-art in uncertainty-aware visualization in medical imaging. Our
         report is based on the steps involved in medical imaging as well as its applications. Requirements are formulated to examine
         the considered approaches. In addition, this manuscript shows which approaches can be combined to form uncertainty-aware
         medical imaging pipelines. Based on our analysis, we are able to point to open problems in uncertainty-aware medical imaging.
         Keywords: Medical Visualization, Uncertainty Visualization, Survey

<a id="p001-b006"></a>

<!-- p001-b006 -->
1. Introduction                                                                                     tation if not communicated properly [LWA∗ 20] and can in the worst
                                                                                                    case have crucial consequences to the patients’ health.
Medical imaging focuses on the analysis, visualization, and explo-                                     Hence, uncertainty information plays an important
ration of medical image data [PB14a]. It has an over 120 year old                                   role [LWA∗ 20] in medical imaging and the visualization pro-
tradition [Bra08]. This journey started in 1895 with the discovery of                               cess connected to it. The acquisition process, resulting images, and
the X-Ray which allowed clinicians to examine structures inside the                                 the needs of clinicians result in a special setup when considering
human body without interfering with it. By now, medical imaging                                     uncertainty visualization. Uncertainty-aware visualization is a very
has developed into a standard tool to assist in various applications,                               active research field that has been addressed in a state-of-the-art
such as diagnosis, determine treatment options, and show the health                                 analysis by multiple research groups. However, a state-of-the-art
status of a patient, as shown in Figure 1. Here, medical doctors use                                survey, which would highlight the special needs of uncertainty vi-
medical imaging which separates into acquisition (green), trans-                                    sualization has lastly been performed by Ristovski et al. [RPHL14]
formation (red) and visualization (blue), for specific applications                                 in 2014. Since then, there has been serious additional research
(yellow). Medical imaging has always been highly interconnected                                     efforts to enhance uncertainty-aware medical imaging, which are
with visualization, as visualization holds the potential to make the                                not recorded in a systematic way.
captured medical images understandable and interpretable [PB07].
                                                                                                       In this work, we aim to provide a starting point for medical visu-
                                                                                                    alization researchers to help find existing solutions in uncertainty-
   Medical imaging can be roughly separated into three differ-
ent steps: Image Acquisition, Image Transformation, and Image
Visualization. Depending on the purpose of the use of medical
imaging, different image acquisition modalities can be considered.
The available techniques include Ultrasound, Computed Tomogra-
phy Scans, Magnetic Resonance Imaging, Diffusion Tensor Imag-
ing, and Positron Tensor Imaging. All of these techniques produce                                   Figure 1: Medical imaging and its use. Clinicians can make use
unique data that are all affected by uncertainty due to different ef-                               of different medical imaging techniques: In the acquisition step
fects, such as the reconstruction process [Bru17] or patient mo-                                    (green), images are generated that can be transformed throughout
tion [SP19]. In addition, each step in the medical imaging pipeline                                 various technologies (red) and visualized (blue) with differing tech-
that transforms the input image can introduce additional uncer-                                     niques. The selected medical imaging techniques can be applied to
tainty into the medical imaging process. This uncertainty highly                                    a variety of applications (yellow). The color-coding will be main-
influences the decision-making process of clinicians when dealing                                   tained to provide a smooth reading throughout the manuscript.
with medical image data [TWSM15]. This can lead to misinterpre-

<a id="p001-b007"></a>

<!-- p001-b007 -->
© 2021 The Author(s).
Computer Graphics Forum published by Eurographics - The European Association for Computer
Graphics and John Wiley & Sons Ltd.
This is an open access article under the terms of the Creative Commons Attribution License, which
permits use, distribution and reproduction in any medium, provided the original work is properly
cited.

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
666               C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p002-b002"></a>

<!-- p002-b002 -->
aware visualization of medical imaging. Our primary goal is to                of attempts to tackle uncertainty in the medical imaging area which
provide an easy to understand classification scheme that suits the            we would like to consider in this work.
understanding of visualization researchers in the context of med-
                                                                                 Paper Selection Criteria In this STAR we aim to present
ical imaging. In addition, we aim to identify open problems in
                                                                              uncertainty-aware visualization approaches in medical imaging
uncertainty-aware medical imaging.
                                                                              from the visualization field as well as the medical field. To achieve
  Therefore, this manuscript contributes:                                     this, we investigated different venues and companies on the inter-
                                                                              section between medical imaging and visualization. The goal was
• A taxonomy of sources of uncertainty in medical imaging                     to obtain related work that has been published in the field of med-
• A state-of-the-art analysis of uncertainty-aware visualization in           ical imaging that considers visualization approaches related to un-
  medical imaging                                                             certainty analysis.
• A workflow chart directly indicating potential workflows in
  uncertainty-aware medical imaging                                              We searched conferences and journals related to IEEE Transac-
• A list of open problems in uncertainty-aware visualization in               tions on Visualization and Computer Graphics, IEEE Transactions
  medical imaging                                                             on Medical Imaging, Computers & Graphics, Eurographics Digi-
                                                                              tal Library, Computer Graphics Forum, Uncertainty Quantification
  STAR Scope State-of-the-art Reports (STARs) related to un-                  in Scientific Computing as well as general search platforms, such
certainty visualization have been conducted by different research             as Google Scholar and Springer Link. We excluded further venues
groups, providing emphasis on different aspects.                              from the medical field or uncertainty analysis as we aimed to focus
                                                                              on the visualization aspect of the presented work.
   Brodlie et al. [BAL12] provided an analysis of uncertainty in
data visualization. They started with an uncertainty definition and              The queries we executed are a composition of two search terms.
sorted visualization approaches along different types of data. Pot-           The first part of the query relates to uncertainty visualization. Here,
ter et al. [PRJ12] strived for a taxonomy of uncertainty visualiza-           we searched for uncertainty-aware visualization. We also searched
tion of scientific data. Followed by that, Bonneau et al. [BHJ∗ 14]           for related terms, such as sensitivity analysis, ambiguity analysis,
presented a STAR on uncertainty visualization which forms a ba-               and uncertainty analysis to deal with the ambiguity of the term un-
sis for Dwyer et al. [JED∗ 20] to build an online browsing tool to            certainty. The second part of the query relates to Medical Imag-
explore several uncertainty-aware visualization approaches. Here,             ing and all subgroups of the topic that we have listed in this work
uncertainty visualization approaches were classified based on the             (see Figure 2). In addition, we searched for applications of medical
underlying data. Olston [OM02] presented a STAR report regard-                imaging, such as diagnosis, intraoperative support, treatment plan-
ing the visualization of bounded uncertainty. In their paper, com-            ning and education. In particular, we utilized the Cartesian product
mon visualization methods for bounded uncertainty are discussed,              of the following query term sets to search for adequate results.
whereas Hullman et al. [HQC∗ 19] presented a STAR report tar-
geting the evaluation of uncertainty visualization. All these works           1. Uncertainty-aware Visualization | Uncertainty Visualization |
have in common that they do not focus on medical imaging. As the                 Uncertainty Analysis | Sensitivity Analysis |
medical domain provides a unique setting in terms of uncertainty                 Ambiguity Analysis| Variability | Variation
quantification, we aim to provide a state-of-the-art report for medi-         2. Medical Imaging | Medical Imaging subcategories (Figure 2) |
cal imaging.                                                                     Diagnosis | Intraoperative Support | Treatment Planning |
                                                                                 Education
   State-of-the-art analysis in the medical domain has been
conducted on different topics, such as multi-modal visualiza-                     Resulting from those queries, 250 research papers were obtained,
tion [LSBP17], visualization tools [YCMA12], and flattening-                  filtering out methods that do not fulfill the following requirements:
based visualization techniques [KMM∗ 18]. Their findings show                 1. Medical image data as an underlying dataset (at least with one
that the specific application of medical imaging results in special              demonstrated example)
requirements that need to be considered in the respective research            2. Uncertainty visualization in at least one of the three defined
field. We aim to apply this principle to the presented state of the art          steps of medical imaging
analysis.
                                                                                 At this point, we want to highlight that we explicitly exclude
   Ristovski et al. [RPHL14] provided a taxonomy of uncertainty
                                                                              work that covers image-based clinical studies. Although these stud-
in medical visualization. In their work, all sources of uncertainty in
                                                                              ies work with medical image data as well, they typically do not
the medical application were collected, mathematically described,
                                                                              follow the classic medical imaging pipeline as outlined in this
and examples for visualization approaches were given. Although
                                                                              manuscript. These studies make use of the presented approaches
this provides a valuable starting point for the presented work, the
                                                                              rather than introducing them. In this context, we want to highlight
work lacks an extensive description of already existing uncertainty-
                                                                              that the outcome of the studies is highly influenced by the chosen
aware medical imaging approaches. We apply the provided taxon-
                                                                              imaging methods but inclusion in this STAR report would exceed
omy to the sources of uncertainty in medical imaging and utilize
                                                                              the current scope.
this as a starting point of the presented work. In contrast to the
mentioned work, we provide lists of available approaches in each                In addition, the clear relation between statistical, ensemble, and
category of the taxonomy. In addition, the work of Ristovski et al.           parameter space visualization and the presented topic is obvious.
covers only work up until 2013. Since then, there has been a variety          Here, we are not able to cover this relation in the given format.

<a id="p002-b003"></a>

<!-- p002-b003 -->
© 2021 The Author(s)
                                                                                 Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey                  667

<a id="p003-b002"></a>

<!-- p003-b002 -->
STAR Organization In this work, we start with a general de-                           2. Medical Imaging
scription of the medical imaging pipeline in order to define all
                                                                                         Medical imaging is concerned with the analysis, visualization, and
important terms that are used throughout the manuscript (see sec-
                                                                                         exploration of medical images [PB07]. Medical imaging comprises
tion 2).
                                                                                         three different steps, as shown in Figure 1. Each of these steps
                                                                                         can be implemented differently, leading to further categorization
   After that, we demonstrate the role of uncertainty in medical                         of medical imaging approaches. An overview is shown in Figure 2.
imaging (see section 3). Here, we start with important terms regard-                     These groups of techniques will be briefly explained in the follow-
ing uncertainty (section 3.1) and show which sources of uncertainty                      ing.
can occur in the medical imaging pipeline. We utilize the taxonomy
of uncertainty visualization by Ristovski et. al [RPHL14], to de-
velop a taxonomy of uncertainty in medical imaging (section 3.2).
Based on this knowledge, we determine requirements that need to
be fulfilled in order to provide an uncertainty-aware visualization
for medical imaging (section 3.3).

<a id="p003-b003"></a>

<!-- p003-b003 -->
To provide an easy-to-understand classification of existing
uncertainty-aware medical imaging approaches, we aim to utilize
the steps of medical imaging as the first level of distinction in the
reviewed research papers. Here, an uncertainty-aware visualization
approach is divided into one of the phases Image Acquisition, Im-
age Transformation, and Image Visualization, as shown in sec-                            Figure 2: Medical imaging and its subcategories examined in this
tion 4. A specific approach can also be listed in multiple categories                    state of the art analysis. The main categories are Image Acquisi-
if it is captured by the respective technique. Please note that we will                  tion, Image Transformation, and Image Visualization.
keep the introduced color scheme throughout the entire manuscript
(including tables and figures) to provide an easy-to-follow struc-
ture. We want to highlight that uncertainty visualization can oc-                        2.1. Image Acquisition
cur in any of the medical imaging phases as the visualization may
not solely address the underlying data but also the uncertainty of                       Image acquisition techniques include Ultrasound, Computed To-
the acquisition process as well as the transformation. In contrast                       mography, Magnetic Resonance Imaging, Diffusion Tensor Imag-
to the visualization phase itself, we will focus on the visualization                    ing, and Positron Emission Imaging [Nud86]. There exist more im-
approaches utilized to visually encode uncertainty. Image Acqui-                         age acquisition techniques, especially in the context of endoscopy,
sition (see section 4.1) will be divided into different acquisition                      but we limit the considerations in this work to the most prominent
techniques commonly used. Along with each technique we provide                           image acquisition techniques that are based on reconstruction pro-
existing uncertainty quantification approaches and show the found                        cesses as shown by Atabo et al. [AU19]. Depending on the acquisi-
visualization approaches. Image Transformation (see section 4.2)                         tion technique, the generated image holds different properties. They
will be separated into different processing algorithms commonly                          can be 2D/3D, time-dependent, and the number of scalars per grid
used in this category. Uncertainty processing approaches in each                         point can vary.
category will be discussed and available visualization approaches                           Ultrasound Ultrasound imaging is based on the interaction of
will be demonstrated. Image Visualization (see section 4.3) tech-                        sound waves with living tissue producing an image of the tis-
niques will be divided along different visualization styles. These                       sue [Coo01]. It is usually a handheld device where clinicians can
can vary based on the visualization paradigm used to create a spe-                       get a first impression of the tissue or an organ that needs to be ex-
cific visualization                                                                      amined. Ultrasound images can be acquired in real-time resulting
                                                                                         in either 2D, 3D, or 4D images for each time step. Based on the
   Besides uncertainty-aware visualization approaches that are tar-                      underlying physics in the image acquisition process, ultrasound is
geting a specific aspect of the medical imaging pipeline, there                          mainly suitable for imaging soft tissues (for example tendons, ves-
exist uncertainty-aware visualization approaches that aim to pro-                        sels, and organs).
vide an application of these techniques to medical tasks. Preim et                          Computed Tomography Scans (or X-Ray Scans) are based on the
al. [PB14a] classified medical applications into four subgroups that                     principle that the density of tissue can be measured by the calcu-
will be used in the remainder of this report to provide a state of                       lation of the attenuation coefficient. The X-ray emitter discharges
the art in uncertainty-aware visualization approaches in Medical                         monochromatic photons that can be measured and computed back
Imaging Applications (section 5).                                                        based on a model describing the number of photons that can be
                                                                                         passed through tissue [LFM∗ 15]. It is a widespread technique in
   The performed state-of-the-art analysis will be discussed in sec-                     clinical daily routine that can be utilized in a very versatile way
tion 6. Here, we check the presented approaches against the defined                      for organ inspection and to determine proper treatments. This tech-
requirements and show how single steps of the image processing                           nique results in a 3D image containing density values. Depending
pipeline can be formed into an entire image processing pipeline.                         on the chosen imaging parameters, CT allows for the differentiation
Remaining open problems will be summarized in section 7.                                 of structures, such as bone and contrast-enhanced blood vessels.

<a id="p003-b004"></a>

<!-- p003-b004 -->
© 2021 The Author(s)
Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
668              C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p004-b002"></a>

<!-- p004-b002 -->
Magnetic Resonance Imagining (MRI) is based on a strong mag-                Feature Extraction. In many cases, it can be helpful to transform
netic field that forces hydrogen protons in the body to spin out of          a medical image or parts of it into another data format to understand
equilibrium. When the magnetic field is turned off, MRI sensors              specific physical connections in the human body. A prominent ex-
are able to detect the energy released as the protons realign with           ample is Surface Extraction where segmented parts of the medical
the magnetic field [HB97]. Intensities in MRI data are not stan-             image are represented by a surface. Another example is Trajec-
dardized. MRI data often results in an inhomogeneous gray level              tographies, usually based on the diffusion information in MRI or
distribution which requires pre-processing of the data. In addition,         DTI. Here, paths are computed that follow the diffusion of water.
intensity values vary depending on scanner vendor and clinic. This
imaging technique is very helpful in indicating the perfusion in dif-
ferent types of tissues, for example.                                        2.3. Image Visualization

<a id="p004-b003"></a>

<!-- p004-b003 -->
Diffusion Resonance Imaging (DTI) is based on the same prin-              Image Visualization is a widely researched field as it allows med-
ciple as MRI. In addition, mathematical models are utilized to               ical doctors to review medical images quickly, determine a diag-
compute the diffusion of water molecules to generate contrast in             nosis, and decide on a proper treatment plan [LML∗ 07]. Visualiza-
MR images. This allows the mapping of the diffusion process of               tion of medical images can be accomplished by a variety of visu-
molecules, mainly water [LBMP∗ 01]. DTI is utilized to assess the            alization methods, e.g. volume rendering, geometry rendering, or a
deformation of white matter by tumors, for neurosurgical planning            combination thereof [HFPN90]. Also, each of these techniques can
(such as the removal of a tumor), and for the diagnosis of brain             make use of different visual variables, such as color-coding, size
pathologies, such as Alzheimer’s disease and multiple sclerosis.             and shape of an object, or motion [Bur11].
DTI is often considered as part of MRI, but in this survey, we want             Direct Volume Rendering is a family of algorithms to visual-
to highlight the challenge of quantifying and communicating un-              ize three-dimensional image data. Volume rendering requires every
certainty in tensors which differs from scalar values. Therefore, we         sample value to be mapped to opacity and a color. This mapping is
separate DTI and MRI uncertainty visualization techniques in the             accomplished using a transfer function.
remaining manuscript.
                                                                                Indirect Volume Rendering is based on an indirect surface mesh
   Positron Emission Imaging (PET) is an imaging technique that              representation. This mesh is either generated by extracting an iso-
uses radioactive substances to visualize and measure metabolic pro-          surface from the original volume data or by transforming a segmen-
cesses in the body [SMS∗ 18]. These images usually show a time               tation result [PB14b].
series of two-dimensional images. This is often used to obtain an
image of active areas, such as activated regions in the brain.                  Glyph-based Visualization approaches are a set of depicted prop-
                                                                             erties that are encoded by a collection of visual objects [BKC∗ 13].
                                                                             Glyphs are a prominent tool to represent tensors or cases where
2.2. Image Transformation                                                    multiple properties need to be visually encoded.
Image transformation techniques are plentiful with lots of options,
such as image correction, image registration over region defini-
                                                                             2.4. Applications
tion, and geometry extraction algorithms [CLP18]. In general, it
describes the analysis and processing of images [Jä08]. Medical              Typical applications for medical visualization are educational pur-
image transformation [Ban08] can be roughly separated into the               poses, diagnosis, treatment planning, and inter-operative support.
categories image pre-processing (such as contrast enhancement),              Here, medical visualization is intended to support clinicians during
image segmentation, and feature extraction (such as extraction of            their daily tasks. In the following, we aim to describe these cate-
shapes of organs).                                                           gories briefly for further reference.
   Image Pre-Processing Image pre-processing operations can be                  Diagnosis refers to the decision about the exact character of a
divided into different categories ranging from edge detection over           disease. In particular, diagnosis is concerned with the severity of a
image enhancement techniques to image registration. In many med-             disease as well as the extent and precise location of pathology. In
ical applications, it is important to consider multiple image datasets       the given context it refers to surgery, radiation treatment, and inter-
of one patient to identify diseases or develop proper treatments.            ventional radiology. As this manuscript focuses on medical imag-
These time-series images need to be correlated, referring to Image           ing, it does not include drug treatment or psychiatric treatment, as
Registration. Image Operations on the other hand, summarize all              image data is not relevant in these cases. This process is often aided
types of operations that output a manipulated image. These opera-            by medical imaging, as this technique holds the possibility to exam-
tions can be performed in different ways such as with edge detec-            ine different tissues and their location. Here, medical doctors aim
tion, image enhancement, or color correction.                                to use medical imaging in order to determine anomalies and derive
                                                                             a diagnosis based on them [RFCL16].
   Image Segmentation is probably one of the most important tasks
in medical imaging. Here, the goal is to define regions that repre-             Treatment Planning is an important application for medical
sent structural components of the human body [PXP00, BZK03].                 imaging. Here, a proper plan for the treatment of a specific dis-
Image segmentation is required in nearly every medical imaging               ease needs to be derived. Medical imaging can be of massive help
pipeline as the definition of regions is required for most medical           in any treatment planning where tissue needs to be examined, as
tasks, such as organ detection, computation of sizes, or detection of        well as in spatial procedures, such as surgeries or radiation. Here
anomalies.                                                                   treatment steps need to be determined properly [KAS97].

<a id="p004-b004"></a>

<!-- p004-b004 -->
© 2021 The Author(s)
                                                                                Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey                 669

<a id="p005-b002"></a>

<!-- p005-b002 -->
Intraoperative Support is required in many procedures in the                           map physical dependencies as adequately as possible. Naturally, a
medical context. Especially surgeries that need to be processed and                      model is never complete, as the knowledge about the physics sur-
hold a high potential for complications require an assistance mech-                      rounding us is not complete as well. In most cases, aleatoric un-
anism. During these tasks, medical imaging can aid in determining                        certainty is usually the type of uncertainty that is requested to be
complications or aid in adjusting the current procedure [ASV∗ 18].                       visualized in order to enhance a decision-making process in a given
                                                                                         application [PRJ12].
   Education is an important application of medical visualization.
When starting with medical education, students first need to study
anatomical structures and compositions of the human body before
they can start treating patients. Here, visualization plays an impor-
tant role in creating a first understanding of the human body and
potential diseases [SFP∗ 00].

<a id="p005-b003"></a>

<!-- p005-b003 -->
3. The Role of Uncertainty in Medical Imaging
We have shown that medical imaging consists of multiple steps that
can be implemented differently. This process can introduce various
sources of uncertainty. In this section, we aim to clarify the term                      Figure 3: Error vs Uncertainty. Errors can be measures according
uncertainty, derive a taxonomy of uncertainty in medical imaging,                        to a ground truth whereas uncertainty needs to be quantified.
and determine requirements for a successful uncertainty-aware vi-
sualization for medical imaging.
                                                                                            There is no unique definition of how to compute uncertainty. In
                                                                                         fact, arbitrary functions can be considered to achieve uncertainty
3.1. Definition, Description, and Quantification of Uncertainty                          quantification. In this work, we will consider the two most popular
                                                                                         uncertainty quantification methods found in the literature: bounded
Independent from the data source, datasets are usually acquired by
                                                                                         uncertainty and probabilistic uncertainty.
measuring or simulating phenomena. This creates data points that
can be related to each other.                                                               In many cases, uncertainty is described as a boundary around the
                                                                                         measurand [OM02]. This defines an interval around the measurand
   Let c ∈ (−∞, ∞) be a measure and c∗ be the true value of some                                                            ′      ′
                                                                                         that can be defined as: urange = [c − u, c + u]. This description of
measurand. When performing the actual measurement, the result
           ′          ′                                                                  uncertainty is chosen when the focus is not on how the occurrences
will be c . c∗ and c may be the same value, but usually deviate
                                                                                         of a measurand are distributed. Instead, it is important to know the
in reality due to a variety of effects. As a result, the error e of the
                                                                                         limits in this variation [BBC87].
performed measurement can be defined as the difference between
the measured value and the true value of the measurand [BJ15].                              Another popular description of uncertainty utilizes probabilistic
                           ′
This means: e = |c∗ − c |. As a consequence, the quantification of                       distribution functions [LvB17]. These functions allow describing
an error requires a ground truth that clearly shows the difference                       the probability density of a measurand to be located at an arbitrary
between the actual value and the measured value (Figure 3). In con-                      point in some space. Here, the measurand usually defines the most
trast to this, the uncertainty is the quantification of the doubt about                  probable location of the true value that was captured. The most
the measurement result [HDF10]. This doubt can originate from a                          prominent choices of probabilistic distribution functions are Gaus-
variety of effects such as [BHP15]:                                                      sian distribution functions but in general any distribution can be
                                                                                         used to express uncertainty.
• incomplete definition of the measurand
• the imperfect realization of the definition of the measurand                               As mentioned above, there are many different uncertainty quan-
• non-representative sampling                                                            tification approaches. This leads to the uncertainty quantification
• inadequate knowledge of the effects of environmental conditions                        problem. This problem can be approached from two different sides:
• imperfect measurement of environmental conditions                                      forward uncertainty quantification problem and backward uncer-
• personal bias in reading analog instruments                                            tainty quantification problem [Hel08]. In the following, we list ex-
• finite instrument resolution or discrimination threshold                               amples in each category that will become relevant in the performed
• inexact values of measurement standards, reference materials,                          state-of-the-art analysis.
  and parameters
                                                                                            Forward uncertainty quantification works on the basis of the
• approximations and assumptions incorporated in the measure-
                                                                                         propagation of input data uncertainty. As a result, the uncertainty
  ment method and procedure
                                                                                         of the output of a system can be quantified. These approaches aim
• variations in repeated observations of the measurand under ap-
                                                                                         to capture the variance in a measure and accumulate it through-
  parently identical conditions
                                                                                         out a sequence of computations. Forward uncertainty quantifica-
  These effects can have different categories: uncertainty based                         tion techniques use different types of stochastic sampling strate-
on the underlying model (epistemic uncertainty e) or statistical un-                     gies, such as Monte Carlo sampling. An overview is provided by
certainty resulting from variations in the measurement result when                       Lin et al. [LEE12]. Forward uncertainty quantification is usually
running an experiment multiple times (aleatoric uncertainty a).                          utilized to quantify epistemic uncertainty. The presented techniques
Here, a model refers to a computational description that tries to                        in this state of the art report include:

<a id="p005-b004"></a>

<!-- p005-b004 -->
© 2021 The Author(s)
Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
670              C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p006-b002"></a>

<!-- p006-b002 -->
Sources of Uncertainty                Type     Dimensionality of Event                     Category                     Description of Event
            Positional uncertainty                  a                 3D                            numerical                              discrete
        Pixel/voxel value uncertainty               a                 nD                            numerical                              discrete
           Incompleteness of Data                   a                 nD                            numerical                              discrete
              Model inaccuracy                      e                 3D                   spatial/volumetric/numeric                discrete/continuous
            Model incompleteness                    e                 3D                   spatial/volumetric/numeric                discrete/continuous
   Parameter/boundary condition uncertainty        a/e                nD                            numerical                              discrete
          Rasterization uncertainty                 e                2D/3D                          numerical                            continuous
     Perceptual and cognitive uncertainty          e/a                3D                              binary                             continuous
            Decision making bias                   e/a                3D                              binary                             continuous
Table 1: Taxonomy of Uncertainty in Medical Imaging. Sources of Uncertainty are listed and origin, dimensionality, type of event, and
description of event are listed. Color-coding indicates which source of uncertain occurs in which step of the medical imaging pipeline.

<a id="p006-b003"></a>

<!-- p006-b003 -->
• Stochastic based sampling                                                  describe a type of uncertainty. The category describes the mathe-
• Monte Carlo sampling                                                       matical instance that is present in each point of the defined space
• Markov Chain Monte Carlo model                                             and the description defines whether the events occur in a discrete or
• Random walks                                                               continuous fashion. In the following, we aim to provide an appli-
• Bootstrapping                                                              cation of the taxonomy by Ristovski et al. to medical imaging. In
• Bolzmann distributions                                                     addition to their classification, we also provide a separation of each
• Time-variations                                                            source of uncertainty into the steps of medical imaging as well as a
                                                                             separation of the mentioned sources of uncertainty into aleatoric or
   Backward uncertainty quantification aims to determine the dif-
                                                                             epistemic uncertainty. Table 3.2 provides an overview of the deter-
ference between the experiment and the mathematical model.
                                                                             mined taxonomy which will be explained in the following.
These techniques are usually utilized to capture aleatoric uncer-
tainty. This group of algorithms is very heterogeneous. For further             Image Acquisition can introduce three different types of uncer-
detail on the individual methods, we would like to refer to the book         tainty, which will be explained in the following.
by Smith [Smi13]. Backward uncertainty quantification approaches
                                                                                Positional uncertainty is a source of uncertainty that occurs in
that are utilized by the visualization approaches presented in this
                                                                             the image acquisition step. Here, a position of an acquired image
work are the following:
                                                                             in space can vary. This is especially an issue when considering Ul-
• Regression analysis                                                        trasound Imaging where the device is hand-held and each time the
• Analytical quantification                                                  device is used, the position needs to be acquired. In addition, po-
• Gaussian noise estimation                                                  sitional uncertainty can occur when examining surfaces that repre-
• Bayesian approaches                                                        sent medical structures such as vascular systems. At last, positional
• Maximum likelihood estimation                                              uncertainty can be an issue when considering tractography. This un-
• Subset expectation maximum reconstruction                                  certainty is crucial when it comes to image registration tasks where
• Probabilistic deformable regression                                        multiple images need to be aligned to one point in space. Posi-
• Belief theory [Cat03]                                                      tional uncertainty is an aleatoric type of uncertainty that can occur
• Kullback-Leibner divergence                                                as a three-dimensional event where the events are numerical and
• Kinetic modeling                                                           discrete.
   All these approaches aim to provide a measure that is able to ex-            Pixel/voxel value uncertainty occurs in any type of medical
press how close the captured measurand is to the underlying com-             imaging. The process of capturing signals, independent of their
putational model by trying to solve an equation, set of equations,           form, is always affected by uncertainty. Especially in the medical
or reach some minimum of an optimization procedure.                          field, where structures in the human body are captured and there
                                                                             exists no direct correlation between the captured images and the
                                                                             ground truth, this is probably the most frequently occurring and in-
3.2. Taxonomy on Uncertainty in Medical Imaging
                                                                             fluencing form of uncertainty. Due to the numerous effects that in-
As previously outlined, medical imaging consists of multiple steps.          fluence this type of uncertainty, it can be described as an nD event
Ristovski et al. [RPHL14] put a lot of effort into creating a tax-           with numerical and discrete events.
onomy of uncertainty in medical visualization. Their classification
                                                                                The incompleteness of Data is an effect that occurs due to the
provides a list of sources of uncertainty where random fields (RF)
                                                                             discretization of data when capturing an image. Medical imaging is
are used to describe each of these sources. This enables the uti-
                                                                             always restricted to a specific resolution that depends on the device
lization of an arbitrary uncertainty description function. A source
                                                                             constraints and other physical restrictions. This type of uncertainty
of uncertainty is described as an event that can have a dimension-
                                                                             is aleatoric and results in nD events that are numerical and discrete.
ality, a category, and a description. The dimensionality describes
a number larger than zero capturing the space that is required to               Image      Transformation            techniques        can      introduce       sev-

<a id="p006-b004"></a>

<!-- p006-b004 -->
© 2021 The Author(s)
                                                                                Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey                    671

<a id="p007-b002"></a>

<!-- p007-b002 -->
eral sources of uncertainty                     into     the     medical       imaging   requirements that need to be fulfilled in order to provide a suitable
pipeline [MPG∗ 16].                                                                      uncertainty-aware visualization in medical imaging.
  Model inaccuracy is a type of uncertainty related to the mathe-                           When considering the medical field, there exist a variety of re-
matical description of a model. Models typically simplify physical                       quirements that need to be fulfilled that originate from legal restric-
behavior and can therefore not be a perfect replication of reality.                      tions [MSH∗ 20]. These restrictions are not specific to uncertainty-
This type of uncertainty is epistemic and results in 3D events that                      aware visualization itself.
can, depending on the model, be spatial, volumetric, or numeric
and with discrete or continuous events.                                                     We discussed all requirements with our medical collaborators
                                                                                         and searched for the most important in the given context. The med-
   Model imprecision is highly related to model inaccuracy and ori-                      ical collaborators are all working in clinics and include a neurol-
gins from approximations in computation that are necessary to be                         ogist, a dermatologist, and a surgeon. We asked all collaborators
able to compute physical behavior. Therefore, the events of model                        to rate each requirement from 1 (not import) to 5 (very impor-
inaccuracy result in 3D events with spatial, volumetric, or numeric                      tant). Here, we obtained 3 requirements that have been rated with
events with discrete or continuous descriptions.                                         4 and 5 from all three clinicians. As a result, we restrict the formu-
   Parameter/boundary condition uncertainty refers to the param-                         lated requirements for uncertainty-aware visualization approaches
eter and boundary conditions that are used to implement and run                          to the visualization design itself while explicitly considering the
a model. As models usually show a snapshot of reality, they are                          special needs in medicine that have been proposed by Preim and
implemented as closed systems where parameters and boundary                              Bartz [PB07].
conditions need to be determined. This is often accomplished ex-                            In this context, the main goal when designing uncertainty-aware
perimentally, but most of the time it is still not clear if a chosen                     visualization for medical imaging can be summarized as follows:
parameter is perfect or an optimal choice. This uncertainty results
in nD events (depending on the number of parameters) with numer-                         • R1 Show the original dataset
ical and discrete events.                                                                • R2 Show the related uncertainty
                                                                                         • R3 Keep the cognitive load minimal
   Image Visualization holds three different types of uncertainty.
   Rasterization uncertainty refers to the problem when the data                           We would like to refer to these challenges throughout the follow-
need to be visualized. Here, the screen that shows the resulting                         ing state-of-the-art analysis.
visualization deploys a discretization typically of lower resolution                        Here, R3 is the most critical requirement. Clinicians usually
than the full complexity of the visualization model. Depending on                        use a very specific visualization approach to review medical im-
the desired visualization (2D or 3D), the resulting event has the                        age data. This technique, referred to as slice-by-slice reviewing, is
same dimensionality, holding numerical and continuous events.                            consistently trained in medical education and the standard tool to
   Perceptual and cognitive uncertainty is related to the user that in-                  review medical images [FP17]. The inclusion of this technique is
teracts with the provided visualization. Humans can have very dif-                       highly beneficial in order to ease the use of a novel visualization
ferent perceptual interpretations even though they all interact with                     technique in medical imaging as users can correlate the visualiza-
the same type of visualization. This uncertainty results in 3D events                    tion with a known standard.
that are binary and continuous.                                                            We are aware that the formulated requirements are very general.
   Decision-making bias is also highly related to the user of a visu-                    This is due to the fact that we aim to cover a variety of approaches
alization itself. When dealing with medical image data on a daily                        and applications in this work which would raise further require-
basis, a personal decision-making bias can form that affects the way                     ments by themselves. To achieve unification, the presented require-
a user interacts with a visualization. This uncertainty is epistemic                     ments are used.
and aleatoric and can be described as 3D events of a binary type
and a continuous description.
                                                                                         4. Uncertainty-aware Visualization in Medical Imaging
   As shown in this section, sources of uncertainty can be found
along the entire medical imaging pipeline. They do not need to oc-                       In this section, we aim to give a state-of-the-art report of avail-
cur in all cases but at least one of them likely occurs. As uncertainty                  able visualization approaches in uncertainty-aware medical imag-
can highly affect the decision-making process in medical imaging,                        ing. The approaches will be separated into three topic areas:
uncertainty needs to be properly communicated.                                           Uncertainty-aware Image Acquisition, Uncertainty-aware Im-
                                                                                         age Transformation, and Uncertainty-aware Image Visualiza-
                                                                                         tion.
3.3. Requirements for Uncertainty-aware Visualization in
     Medical Imaging
                                                                                         4.1. Uncertainty-aware Image Acquisition
As shown before, uncertainty is an important issue that needs to
be included in visualization approaches in medical imaging. The                          Medical imaging techniques are very versatile, creating images of
development of the taxonomy of uncertainty in medical imaging                            different dimensionalities (2D, 3D, time-varying, scalar, or tensor
has also shown that uncertainty adds at least one random field to                        values) that may contain a variety of values in each image com-
the originally captured image data, resulting in an increase of com-                     ponent (scalars and tensors). The process of capturing this data is
plexity that needs to be communicated. In this section, we list the                      affected by uncertainty, which can be quantified and visualized.

<a id="p007-b003"></a>

<!-- p007-b003 -->
© 2021 The Author(s)
Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
672              C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p008-b002"></a>

<!-- p008-b002 -->
(a)                                 (b)

<a id="p008-b003"></a>

<!-- p008-b003 -->
Figure 4: Uncertainty-aware visualization of Ultrasound image                                (a)                                          (b)
data. a) Confidence Map in 2D Ultrasound while observing
                                                                             Figure 5: Uncertainty quantification approaches for Computed To-
a kidney. Chroma indicates high certainty of the captured im-
                                                                             mography Scans. a) Stochastic uncertainty quantification in CT
age [ZBDH∗ 15]. b) Uncertainty quantification of 3D Ultrasound
                                                                             scans [HLF14], where red indicates high uncertainty. b) Embedded
by measuring the time variation. Yellow indicates areas with high
                                                                             iso-surface visualization of multiple analytical uncertainty quan-
uncertainty [LBdJ18].
                                                                             tification approaches [GAH∗ 17]. Areas that show differing uncer-
                                                                             tainty behavior are separated by lines using various colors.

<a id="p008-b004"></a>

<!-- p008-b004 -->
4.1.1. Ultrasound (US)
Hellier et al. [HCMC10] presented a methodology that helps iden-             utilized and the uncertainty was represented in a separate visualiza-
tify the uncertainty in ultrasound images by estimating the shade            tion of noisy voxels. In addition, this approach allows us to correct
during the time of use mainly in the prostate examination. It is             the input images by removing voxels in the image that are uncer-
based on the assumption that signal rupture between different ultra-         tain.
sound images indicates uncertainty. This work does not provide a
visualization approach for the quantified uncertainty. Instead, Hel-            A neural network approach provided by Rheinhold et
lier et al. corrected the input ultrasound image according to their          al. [RHH∗ 20] estimates the uncertainty captured in CT scans. The
uncertainty quantification.                                                  method is based on Bayesian neural networks that can output the
                                                                             uncertainty of a computational prediction. This quantification is
   Berge et al. [ZBDH∗ 15] presented confidence maps that visually           shown as a separate colormap.
indicate the trustworthiness of image points by using a colormap,
as shown in Figure 4(a), when reviewing a kidney. Here, chroma                   Gillmann et al. [GAH∗ 17] provided a visual analytics approach
color indicates areas with high uncertainty. The confidence map is           to examine a high-dimensional uncertainty space of CT scans.
defined as the solution to a random walk’s equilibrium problem us-           Here, multiple uncertainty quantification based on analytical quan-
ing ultrasound-specific constraints. This methodology was initially          tification approaches were utilized and visualized by using isosur-
introduced by Karamalis et al. [KWKN12].                                     faces that are included in the slice-by-slice reviewing procedure.
                                                                             Figure 5(b) shows an example of this approach.
   Stevens et al. [LBdJ18] presented an uncertainty quantification
of 3D Ultrasound images based on time-variations, as shown in
                                                                             4.1.3. Magnetic Resonance Imaging
Figure 4(b). The method works based on the assumption that overly
drastic changes between images in a time series suggest uncer-
tainty.
   Gueziri et al. [GML14] presented a visualization to cover the
positional uncertainty of an ultrasound device. Usually, these de-
vices are handhold by the user which can result in distortion of the
resulting image. The computation is based on target registration
errors. Gueziri et al. incorporated this uncertainty into the image
reconstruction process to create an awareness of this effect.

<a id="p008-b005"></a>

<!-- p008-b005 -->
4.1.2. Computed Tomography (CT)
                                                                                       (a)                                          (b)
Howard et al. [HLF14] utilized a stochastic sampling approach to
quantify the uncertainty in acquired CT scans. Their goal was to             Figure 6: Examples of uncertainty quantification algorithms for
express the value of the uncertainty captured in CT scans. Here, a           MRI. a) Uncertainty quantification using Bayesian neural net-
rainbow color map is used to indicate areas in the image that are            works [GDP∗ 20]. Yellow indicates areas with high uncertainty.
uncertain, as shown in Figure 5(a).                                          b) Uncertainty Quantification using Markov Chain Monte Carlo
                                                                             Methods [HFSR19]. The left image shows the mean value whereas
  Tian et al. [TS16] presented an uncertainty quantification ap-             the right image represents the standard variation. In both images,
proach that aims to measure quantum noise in clinical body com-              yellow areas indicate high values.
puted tomography. To accomplish this, a regression analysis was

<a id="p008-b006"></a>

<!-- p008-b006 -->
© 2021 The Author(s)
                                                                                Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey                   673

<a id="p009-b002"></a>

<!-- p009-b002 -->
Edupuganti et al. [EMVP19] provided a list of statistical uncer-
tainty quantification techniques for MRI. It includes Monte Carlo
sampling, Stein’s Unbiased Risk Estimator (SURE), and Gaussian
noise with density compensation. In this methodology, the resulting
uncertainty measures are visualized by colormaps.
   Bayesian neural networks can be utilized for the reconstruction
of MRI as shown by Glang et al. [GDP∗ 20]. As a side effect, these
networks output an uncertainty map, as shown in Figure 6(a).
  Harms et al. [HFSR19] derived an uncertainty quantification
of MRI using either Maximum Likelihood Estimation (MLE) or
Markov Chain Monte Carlo methods. The resulting mean and stan-
dard deviation expressing the uncertainty when using MLE of the
                                                                                                       (a)                               (b)
MRI are shown in Figure 6(b).
   In addition to the classic MRI, functional MRI (fMRI) can mea-                        Figure 8: Uncertainty quantification of Positron Emission Imag-
sure brain activity within areas of the captured images. These func-                     ing. a) Uncertainty quantification using kinetic energy mod-
tional areas can be computed by the detection of changes associated                      elling [SSHM07] where red and purple indicate high uncertainty.
with blood flow. This technique is based on the fact that blood flow                     b) Uncertainty quantification using Subset Expectation Maximiza-
and neuronal activation are coupled [HSM08]. Croci et al. [CVR19]                        tion reconstruction [HBG∗ 15]. Here, yellow represents high uncer-
utilized the convection-diffusion–reaction equation in order to de-                      tainty.
velop an uncertainty quantification. This was achieved by utilizing
stochastic modeling and random variables.
                                                                                         a visualization based on color-coding indicating the uncertainty of
4.1.4. Diffusion Tensor Imaging                                                          the reconstructed PET images. Figure 8(a) shows an example.
                                                                                            Huet et al. [HBG∗ 15] provided an uncertainty quantification of
                                                                                         PET using the Subset Expectation Maximization reconstruction ap-
                                                                                         proach. Their approach is specially designed to target smaller struc-
                                                                                         tures, such as vessels, in order to determine the uncertainty when
                                                                                         visualizing levels of arteriosclerosis. They achieved this by present-
                                                                                         ing a color map to the user that indicates the amount of uncertainty
                                                                                         per pixel, as shown in Figure 8(b).
                                                                                            Ropinski et al. [NBYR12] compute intra- and inter-model un-
                                                                                         certainties and visualize them using a ThemeRiver Metaphor that
                                                                                         allows to visually connect several settings of uncertainty. This view
                    (a)                                           (b)                    is connected with a volume rendering of the original dataset to un-
                                                                                         derstand the uncertainties derived in the acquisition process.
Figure 7: Uncertainty quantification of Diffusion Tensor Imag-
ing. a) Uncertainty quantification using bootstrapping [AMME18]                             Summary: It can be observed that uncertainty analysis is cov-
where yellow indicates high uncertainty. b) Uncertainty quantifi-                        ered in all acquisition disciplines, but Ultrasound and Computed
cation using Markov Chain Monte Carlo Model [BWJ∗ 03]. Red                               Tomography are the categories that developed the furthest.
indicates areas with high uncertainty.
                                                                                         4.2. Image Transformation
   Aliotta et al. [AMME18] presented a bootstrapping algorithm                           In the subsequent subsections, we summarize uncertainty-aware
that creates a probability distribution based on two captured DTI                        image transformation algorithms and will differentiate between im-
scans. Based on this procedure, the uncertainty of the original DTI,                     age operations that output a processed image and image registration
as well as the uncertainty of the resulting eigenvectors, can be de-                     approaches. In this section, we aim to examine uncertainty-aware
termined. Figure 7(a) shows the resulting uncertainty of the first                       techniques for image processing and their relation to suitable visu-
eigenvector in a cardiac MRI scan. This approach was extended to                         alization approaches.
wild bootstrapping by Whitcher et al. [WTW∗ 08].
  Behrens et al. [BWJ∗ 03] applied a Markov Chain Monte Carlo                            4.2.1. Image Pre-processing
model in order to estimate the uncertainty in DTI. An example can                        Image pre-processing operations can be divided into different cat-
be found in Figure 7(b).                                                                 egories ranging from edge detection over image enhancement
                                                                                         techniques to image registration. In the following, we summarize
4.1.5. Positron Emission Imaging                                                         uncertainty-aware image processing algorithms and will differen-
Kinetic modeling can be used to provide an uncertainty quantifica-                       tiate between image operations that output a processed image and
tion of PET images shown by Saad et al. [SSHM07]. They provide                           image registration approaches.

<a id="p009-b003"></a>

<!-- p009-b003 -->
© 2021 The Author(s)
Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
674              C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p010-b002"></a>

<!-- p010-b002 -->
extracted. For medical imaging, this allows determining the degree
                                                                             of similarity of structure shown in an image to a requested fea-
                                                                             ture. Their method showed that the results of a Hough transforma-
                                                                             tion can be significantly improved. This approach as presented is
                                                                             not able to visually communicate the influence of the image uncer-
                                                                             tainty.
                                                                                Yi et al. [YHS94] showcased a method that allows the quantifi-
                                                                             cation and propagation of arbitrary image uncertainties throughout
                                                                             the image vision pipeline. In their method, they provide a visual
                                                                             representation that demonstrates the current amount of uncertainty
                                                                             in each computational step.
                                                                                Franco et al. [FCC15] presented a theoretic framework that pro-
                                                                             vides the ability to arbitrarily quantify and propagate uncertainty
                                                                             throughout a medical image processing pipeline. This approach is
                                                                             not coupled with a visualization approach that helps users to navi-
                                                                             gate through the process.
                                                                                Gillmann et al. [GAH∗ 18] developed a system that provides
                                                                             quantification of the uncertainty in input images and propagates
                                                                             the computed uncertainty along arbitrary image pre-processing
                                                                             pipelines for US, CT, and MRI images. Their system is guided by
Figure 9: Uncertainty-aware image operations. Visual pipeline                a visual representation connecting the computational steps and pre-
of arbitrary image pre-processing operations by Gillmann et                  senting the development of the overall uncertainty throughout each
al. [GAH∗ 18]. Individual steps are shown side-by-side to their un-          computational step, as shown in Figure 9.
certainty and the computational pipeline is indicated by a graph.               Alternatively, images can be interpreted as fuzzy sets, as shown
Orange shows areas in the images that are highly affected by un-             by Szczepaniak [SLK00]. This allows creating probabilities of im-
certainty.                                                                   age pixels to show a specific object. In the medical field, this relates
                                                                             to the uncertainty of an image pixel representing a specific medical
                                                                             structure. Computational rules are described that determine how to
   Image Operations When applying image operations, the uncer-               combine several fuzzy sets or how to perform computations based
tainty captured in the input image needs to be mapped into the out-          on fuzzy sets in general. This principle is utilized by Chaira et
put image. This can be achieved in different ways. In his work,              al. [Cha15] to provide an uncertainty-aware image operation.
Pal [PAL01] showed that uncertainty quantification and propaga-                 The operations summarized so far are solely utilized for medical
tion is an important factor that affects image pre-processing opera-         image data that holds one scalar per voxel. More precisely, diffu-
tions in different applications.                                             sion tensor imaging cannot directly be processed by these method-
  The first group of uncertainty-aware image operations works on             ologies. Here, the tensors in the DTI need to be either simplified
an uncertainty-quantification of the medical image which is prop-            first by tensor measures, such as eigenvalues or norm, or compu-
agated by utilizing the uncertainty propagation rules known from             tational approaches that transform tensors into another representa-
physics [Che09].                                                             tion. We will focus on this class of techniques in section 4.2.3.
   Pal [PAL01] presents an uncertainty model based on the analysis              Image Registration Mahyari et al. [LTAH13] proposed the con-
of grayness ambiguity and shows how to propagate this information            cept of Probabilistic Deformable Registration (PDR) where each
along an image pre-processing pipeline. Still, this method does not          voxel of an image is assigned a distribution over the potential dis-
provide a visualization that allows the user to follow the propaga-          placement vectors. Mahzari et al. utilized uncertainty measures to
tion of uncertainty.                                                         enhance the standard image registration process.
    Mencattini et al. [MRSS08] presented an image pre-processing                Bian et al. [BYW∗ 20] proposed a neural network-based ap-
pipeline that is adapted by considering an uncertainty quantifica-           proach that is built on Bayesian neural networks to achieve image
tion of the input image. This quantification can be chosen freely.           registration. In this work, the uncertainty output of Bayesian neu-
Although the approach is able to adjust the results in the image pre-        ral networks is utilized to quantify the uncertainty in the image
processing pipeline according to the underlying uncertainty quan-            registration process. Folgoc et al. [LDCA17] presented a similar
tification, it does not provide a visual communication of the uncer-         approach while relying on sparse Bayesian neural networks. Their
tainty.                                                                      result is a heatmap showing the probability of the moving image
                                                                             to be properly based on top of the original image as shown in Fig-
   A method for the Hough transformation that is able to con-
                                                                             ure 10(a).
sider uncertainty information of the input image was introduced by
Qiang et al. [JH01]. Hough transformations map the image space                  Risholm et al. [RPSW10] presented a framework to compute the
onto a selected feature space, where the degree of fitting can be            registration uncertainty as well as the most likely deformation that

<a id="p010-b003"></a>

<!-- p010-b003 -->
© 2021 The Author(s)
                                                                                Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey                    675

<a id="p011-b002"></a>

<!-- p011-b002 -->
In order to reduce noise sensitivity, different methods [BS09,
                                                                                         CCZ07] adapt the fuzzy c-means clustering. These approaches con-
                                                                                         sider the neighborhood of a voxel to decide the segmentation result.
                                                                                         Although this increases the applicability of fuzzy segmentation on
                                                                                         real world datasets, it is an unsupervised segmentation approach
                                                                                         that does not provide a mechanism to insert user knowledge into
                                                                                         the segmentation process.
                                                                                            Aside from fuzzy segmentation, Petronella et al. [AVvO∗ 04] cre-
                                                                                         ated a probabilistic segmentation based on density measurements
                                                                                         generated from a Magnetic Resonance Imaging (RMI) device.
                    (a)                                           (b)                       Graph-cut approaches [KT08] can be extended to result in a
                                                                                         fuzzy segmentation [Ada12]. Although this shows the weaknesses
Figure 10: Uncertainty-aware image registration approaches. a)                           of the segmentation result, the user is not able to control the result-
Uncertainty-aware image registration using Bayesian neural net-                          ing structures. The resulting segments are visualized using color-
works [LDCA17]. Yellow indicates areas where the registration                            coding.
approach is affected by uncertainty. b) Uncertainty-aware image
registration using Boltzmann distributions [RPSW10]. Yellow rep-                            Model-dependent segmentation approaches can also be extended
resents areas where image registration is highly affected by uncer-                      in order to achieve an uncertainty-aware segmentation result. Her-
tainty.                                                                                  shkovitch et al. [HR18] presented an approach where models can
                                                                                         be overlapped with the target image and the quality of fit between
                                                                                         model and image can be determined and visually encoded.
                                                                                            Several approaches describe measures that classify and visual-
is required to register image data from the human brain by using
                                                                                         ize the classic segmentation results. Benno et al. [LGM∗ 14] uti-
Boltzmann distributions. In their system, the authors provided a vi-
                                                                                         lized belief functions that help express the uncertainty in each im-
sual representation of the registered image as well as the extent
                                                                                         age pixel. The certainty of the segmentation result is encoded by a
of the deformation, as shown in Figure 10(b). Their visualization
                                                                                         colormap.
approach is specially designed to communicate registration uncer-
tainty during surgery. The technique was refined to deploy color-                           Al et al. [ATHL14] utilized the Kullback–Leibler divergence (or
coding to indicate areas of high registration uncertainty using a                        the total variation divergence) to express the uncertainty in the seg-
colormap [SWGS11].                                                                       mentation result. They use color-coding to indicate pixels that can-
                                                                                         not be counted into a specific segmentation class for sure. An ex-
   By considering registration parameters, Yang et al. [YN15] pro-
                                                                                         ample of this approach is shown in Figure 11(a).
vided an uncertainty quantification based on the Hessian matrix
that estimates and visualizes the sensitivity of the input parameters                       Saad et al. [SHM10] proposed an interactive framework that al-
in the registration process. Here, they use glyphs to indicate the                       lows users to examine the uncertainty of the segmentation result,
uncertainty in each image pixel to be correctly mapped.                                  as shown in Figure 11(b). The quantification of uncertainty in the
                                                                                         segmentation result is based on Bayesian decision theory. The seg-
   Schlachter et al. [SFJ∗ 16] provided a visual tool to analyze
                                                                                         mentation result is shown by utilizing a volume rendering approach
the accuracy and uncertainty in the segmentation process of de-
                                                                                         that color-codes the uncertainty in the segmentation result.
formable image registration. They use a combination of 2D and 3D
visualization where color-coding is used to indicate dissimilarities                        Some approaches that highlight segmentation defects or uncer-
in the registration process.                                                             tainty in the segmentation results are available in the literature as
                                                                                         well. Prassini et al. [PRH10] presented an uncertainty-aware image
4.2.2. Image Segmentation                                                                segmentation approach that is based on the random walker com-
                                                                                         putation. In their visual framework, they indicate the borders of a
Medical image segmentation is an often-occurring step in analysis
                                                                                         segment with a certain probability with different lines as shown in
procedures. The separation of regions or objects of interest from
                                                                                         Figure 11(c).
other parts of the body is of high interest for clinicians as the sim-
plification of a medical image to the region of interest can simplify                       Batra et al. [BUK∗ 10] proposed a visually fuzzy segmentation
decisions.                                                                               approach where users can guide the segmentation process. Here,
                                                                                         users start marking in the original image in order to guide the
   In contrast to classic segmentation definitions where voxels are
                                                                                         segmentation algorithm. The segmentation algorithm computes the
distributed to segments, fuzzy segmentations use probabilities to de-
                                                                                         certainty for each image pixel based on geodesic distances, which
scribe the degree of affiliation to a segment. A review of these tech-
                                                                                         is visually indicated in the segmentation process and the user can
niques can be found in [NMI10]. These methods work on a fuzzy
                                                                                         adapt the scribbling input if required, as shown in Figure 11(d).
c-means clustering algorithm performing an unsupervised segmen-
tation for a predefined number of segments. Still, this type of clus-                       Using a multi-modal segmentation approach, Al-Taie et
tering is sensitive to noise which makes it difficult to use for real-                   al. [ATHL15] also describe the segmentation uncertainty as well.
world datasets.                                                                          Their approach is suitable for brain imaging and works on a

<a id="p011-b003"></a>

<!-- p011-b003 -->
© 2021 The Author(s)
Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
676              C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p012-b002"></a>

<!-- p012-b002 -->
(a)                         (b)                         (c)                             (d)                                         (e)

<a id="p012-b003"></a>

<!-- p012-b003 -->
Figure 11: Uncertainty-aware medical image segmentation. a) Image Segmentation using Kullback–Leibler divergence [ATHL14]. Areas
that cannot be separated clearly are highlighted in yellow. b) Segmentation result based on belief functions [PRH10] shown by volume ren-
dering. Belief functions aim to capture our belief regarding the location of the true value. In the context of image segmentation, they express
the probability of a pixel to be contained in a specific segmentation class. Dark orange indicates areas with high uncertainty. c) Segmentation
result based on random walker computation approach [BUK∗ 10]. d) Segmentation result based on random walker computation [SHM10].
Light gray areas indicate an uncertain segmentation approach e) Segmentation based on hierarchical geodesic distances [GPW∗ 19]. Trans-
parent and mixed colors highlight uncertain areas in the segmentation result.

<a id="p012-b004"></a>

<!-- p012-b004 -->
Kullback-Leibner divergence. In addition to the segmentation out-            A popular application for these networks is the lesion segmenta-
put, this approach provides an uncertainty map of the segmentation           tion task [JA19]. This is due to multiple effects: first brain lesion
result.                                                                      datasets are widely available and the detection of a brain lesion is a
                                                                             clear localization task that works as a basis for a U-Net.
   Gillmann et al. [GPW∗ 19] presented a hierarchical and prob-
abilistic segmentation approach where users can design arbitrary                Nair et al. [NPAA20] presented a visualization approach that
hierarchical segmentation classes and initialize them with seed              helps examine the segmentation output of neural networks using
points. The resulting visualization shows the assigned color of each         various uncertainty measures. Here, the segmentation results and
segmentation node and uncertainty between nodes is indicated by              the quantified uncertainty are visually encoded in the original im-
the mixing of colors, as shown in Figure 11(e).                              age.

<a id="p012-b005"></a>

<!-- p012-b005 -->
4.2.3. Feature Extraction
                                                                             In many cases, it can be helpful to transform a medical image or
                                                                             parts of it into another data format to understand specific physical
                                                                             connections or other features in the human body. A prominent ex-
                                                                             ample is surface extraction where segmented parts of the medical
                                                                             image are represented by a surface. Another example is trajectog-
                                                                             raphy, usually based on the diffusion information in MRI or DTI.
                                                                                Surface Extraction The original surface extraction algorithm
                                                                             known as marching cubes [LC87] is a well-known algorithm. It
                                                                             is based on a selected value that determines the resulting surface
Figure 12: Uncertainty-aware medical image segmentation using                elements. Although this algorithm has been successfully applied to
Bayesian neural networks. Based on a U-Net architecture, images              many problems, the original algorithm is not able to adapt its value
can be segmented [MA19].                                                     throughout the image to match the desired surface.
                                                                                Glanznig et al. [GMG09] presented a marching cubes method
   Recently, segmentation approaches that are based on neural net-           that is able to automatically adapt its iso-value throughout the ex-
works became very popular in medical applications. This is due to            traction process, as shown in Figure 13(a). Here, users can select
the fact that segmentation results can become very accurate when             different types of iso-value generation such as random distributions
considering neural network approaches and having labeled train-              around a set value or iso-value generation based on image gradi-
ing datasets. A popular tool to achieve this is so-called U-Nets, as         ents. Still, this process is not guided by a visual approach.
shown in Figure 12. These form a deep convolutional neural net-                In general, the marching cubes algorithm can lead to degenerated
work that is able to expand the determined classification in order to        meshes, independent of whether a dataset is affected by uncertainty.
restore its location in the original image [RPB15].                          Dietrich et al. [DSS∗ 09] inserted surface points into the original
                                                                             surface to preserve topological features.
  A popular tool to express the uncertainty throughout U-Nets is
an adaptation that utilizes Bayesian neural networks, as shown by               Pothkow et al. [PWH11] presented a probabilistic marching
Kwon et al. [KWKP20]. These networks are able to output the seg-             cubes approach that captures the uncertainty of the resulting geom-
mentation result as well as the uncertainty of segmentation results.         etry. Here, joint distributions of random variables associated with

<a id="p012-b006"></a>

<!-- p012-b006 -->
© 2021 The Author(s)
                                                                                Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey                 677

<a id="p013-b002"></a>

<!-- p013-b002 -->
(a)                               (b)

<a id="p013-b003"></a>

<!-- p013-b003 -->
Figure 14: Uncertainty-aware tractography in MRI and DTI data.
                       (a)                                           (b)
                                                                                         a) Tractography visualization using multiple paths [BBKW02]
                                                                                         to indicate variations in the path. b) Uncertainty visualization
Figure 13: Uncertainty-aware geometry extraction in medi-
                                                                                         of potential paths using first eigenvector direction as color-
cal imaging. a) Uncertainty-aware geometry extraction through
                                                                                         coding [CLH06]. Red shows segments of the path that hold a high
adaptive isovalues [GMG09]. Dark orange highlights areas
                                                                                         positional uncertainty.
with high positional uncertainty. b) Uncertainty-aware optimiza-
tion of the extracted surface using arbitrary uncertainty mea-
sures [GWHH18]. White color indicates high uncertainty in the
position of the surface.
                                                                                         based on random sampling and assigns measures of accuracy to
                                                                                         the measured samples. Several approaches utilize bootstrapping to
                                                                                         quantify the uncertainty of the tractography and visualize the po-
the sample locations are utilized to compute level crossing proba-                       tential paths. Chung et al. provided a comparison of available boot-
bilities for cells of the sample grid.                                                   strapping approaches [CLH06]. The visualization is normally an
                                                                                         inlay of potential paths in the original slice of the image data to
   By utilizing an analytical uncertainty model, He et al. [HMH∗ 15]                     provide spatial context. Figure 14(b) shows an example of this ap-
extended the original marching cubes algorithm. They propagate                           proach.
this information throughout the marching cubes algorithm. This
approach leads to an uncertainty visualization complementing the                            Behrens et al. [BBJ∗ 07] presented a direct extension of proba-
extracted isosurface.                                                                    bilistic diffusion tractography to the case of multiple fiber orien-
                                                                                         tations. Their approach is based on relevance determination that
   Gillmann et al. [GWHH18] presented an isosurface extraction                           allows users the online selection of a number of fiber orientations
algorithm that is based on the classic marching cubes algorithm.                         supported by the data at each voxel. These paths are visually en-
Here, the algorithm starts with an isosurface that was extracted by                      coded in the slice-by-slice visualization.
the marching cubes algorithm. For each of the points included in the
surface, the algorithm adapts the point position to move the surface                        Descoteux et al. [DDKA09] provided a visual approach to exam-
into a direction in such a way that the measured uncertainty of the                      ine variations in tractography. Here, orientation distribution func-
input image is minimized while at the same time trying to preserve                       tions (ODF) are modeled using sharpening deconvolution functions
the original geometry. The remaining uncertainty is encoded via                          (SDF). The resulting tractography is minimized to one path that is
color-coding of the surface, as shown in Figure 13(b).                                   color-coded to indicate the strength of geometric variation.

<a id="p013-b004"></a>

<!-- p013-b004 -->
Tractography Extraction Tractography is a 3D modeling tech-                               Brecheisen et al. [BPVHR12] used a Wild Bootstrap algorithm
nique for visually representing nerve tracts and thereby understand-                     combined with a fiber tracking algorithm. They utilized illustrative
ing the functionality of the human brain [Mor07]. This method is                         rendering to minimize the paths that need to be drawn. Here, sur-
usually deployed to examine MRI or DTI data. It is based on the                          rounding hulls indicate frequently occurring paths.
measure of the apparent diffusion coefficient at each voxel. Using                          Summary: This section shows that there exists a variety of im-
seed points, a space-path through the field of diffusion coefficients                    age transformation approaches. In addition, each category contains
can be computed.                                                                         at least one example, where all requirements can be fulfilled.
   Bornemo et al. [BBKW02] presented a fiber tracking approach
that is based on stochastics and regularization allowing paths origi-
                                                                                         4.3. Image Visualization
nating in a seed point to branch and return a probability distribution
of possible paths. Possible paths can be visualized in the original                      Independent from the visualization of uncertainty measures or the
slice-by-slice view as shown in Figure 14(a).                                            visualization of image pre-processing results, the medical images
                                                                                         themselves need to be visualized in order to provide clinicians with
   Friman et al. [FFW06] utilized a Bayesian stochastic analysis
                                                                                         powerful decision-making tools. In this section, we will differen-
to compute potential tractography. The resulting computations are
                                                                                         tiate between direct volume rendering approaches; indirect vol-
visualized in the original slice-by-slice view.
                                                                                         ume rendering approaches; further visualization techniques, such
   Bootstrapping is a very popular group of approaches to capture                        as flattening-based visualization or illustrative visualization; and
the uncertainty in tractography [CFJ∗ 06, Jon08]. This approach is                       visual analytics systems.

<a id="p013-b005"></a>

<!-- p013-b005 -->
© 2021 The Author(s)
Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
678               C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p014-b002"></a>

<!-- p014-b002 -->
4.3.1. Direct Volume Rendering
Volume rendering is a straightforward tool to visualize three-
dimensional medical image data.

<a id="p014-b003"></a>

<!-- p014-b003 -->
(a)                                         (b)

<a id="p014-b004"></a>

<!-- p014-b004 -->
Figure 16: Uncertainty-aware indirect volume rendering. a) In-
                                                                              direct Volume Rendering using color-coded point clouds [GR04]
                                                                              where purple indicates surface points with high positional uncer-
                                                                              tainty. b) Iso-surface representation with uncertainty color-coding
                                                                              for uncertain points included in the surface [Dra08]. Blue shows
                                                                              high uncertainty.
                (a)                                 (b)

<a id="p014-b005"></a>

<!-- p014-b005 -->
Figure 15: Uncertainty-aware volume rendering. a) Volume ren-                 is solely concerned with the visualization of geometry, independent
dering to encode sensitivity of the input image [Kni08]. Red indi-            from its source.
cates high sensitivity. b) Ambient occlusion of uncertain anatomical
structures [KSE16]. Uncertain structures are shown less opaque.                  Rhodes et al. [RLBS03] evaluated different techniques to visu-
                                                                              ally encode uncertainty on isosurfaces. They tested different modes
                                                                              as color-coding, textures, and a combination of these techniques for
   Kniss et al. [Kni08] provided a method that uses two-                      multi-modal visualization. They found that color-coding is a suit-
dimensional transfer functions to allow the user to select different          able method to visualize uncertainty on a surface.
structures in an image. Here, the methodology allows the use of                  Grigoryan et al. [GR04] presented a probabilistic description of
color transfer functions that indicate the confidence of voxel val-           points that can describe extracted surfaces. In contrast to march-
ues, as shown in Figure 15(a). Mia et al. [MCC∗ 20] refined this              ing cubes, solely points that represent a surface are extracted. In
approach to allow users to express the feature of interest via trans-         this method, for each point a probability is computed that encodes
fer functions. Here, volume rendering is used to indicate uncertain           how likely it is that this point is part of a surface, as shown in Fig-
areas in the resulting volume visualization by distortion.                    ure 16(a).
   Lundstroem et al. [LLPY07] proposed an uncertainty-aware vol-                 Drapikowski [Dra08] described a model for isosurface uncer-
ume rendering approach that captures uncertainty through anima-               tainty characterization in medical applications based on geomet-
tion. The rendering is animated by sampling the domain of prob-               ric features such as smoothness and curvature. These features were
abilistic transfer functions over time, which results in a varying            combined with knowledge of the underlying image structure and
appearance of regions. Contrary to a variety of approaches listed             the human anatomy to determine the quality of an isosurface.
so far, the defined target of providing an easy-to-understand visual-         This uncertainty is color-coded into the surface, as shown in Fig-
ization that addresses medical researchers’ needs is excellently im-          ure 16(b). This is an important issue when designing prostheses that
plemented in this approach. In addition, it contains a strong eval-           need to fit perfectly onto a bone of a patient.
uation, which makes it one of the most remarkable works in this
manuscript.                                                                      Gillmann et al. [GWHA18] provided a visual approach to in-
                                                                              dicate positional uncertainty in extracted surfaces. Here, semi-
   Kroes et al. [KSE16] presented an ambient occlusion approach               transparent isosurfaces are utilized to encode potential locations of
for direct volume rendering that allows the highlighting of cer-              surface points.
tain structures while utilizing volume rendering, as shown in Fig-
ure 15(b). Here, occlusion maps are updated according to the cer-             4.3.3. Glyph-Based Rendering
tainty of the input dataset.
                                                                              As a DTI dataset contains tensors, a suitable tensor visualiza-
                                                                              tion needs to be derived. Here, glyphs are a common visualiza-
4.3.2. Indirect Volume Rendering                                              tion tool. Ropinski et al. [ROP11] provided an overview on glyph-
                                                                              based spatial multivariate medical data and highlighted the need for
Indirect volume rendering refers to the rendering of geome-
                                                                              uncertainty-aware tensor glyphs [GRT19].
tries [ZT03]. Although this section is highly related to section 4.2.3,
we distinguish between these approaches as they are not directly                 Jones et al. [Jon03] utilized cones of uncertainty that indicate the
related to the source of the geometry that is utilized. We want to            uncertainty in each voxel of the DTI scans. Here, the cones gain
separate these topics as geometry extraction methods produce the              in size when the uncertainty increases. In addition, the cones are
geometry that needs to be visualized and indirect volume rendering            oriented such that the tractography direction can be determined.

<a id="p014-b006"></a>

<!-- p014-b006 -->
© 2021 The Author(s)
                                                                                 Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-015"></a>

## PDF page 15

<a id="p015-b001"></a>

<!-- p015-b001 -->
C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey                   679

<a id="p015-b002"></a>

<!-- p015-b002 -->
is visible to them. For diagnosis, this is a very important feature
                                                                                         as the region of interest and the resulting segmentation target vary
                                                                                         dramatically according to the underlying use case. The tool can be
                                                                                         used to assist during diagnosis tasks where the shape and appear-
                                                                                         ance of specific structures play an important role.
                                                                                            Unger et al. [UHP∗ 20] presented a real-time diagnosis and visu-
                                                                                         alization of tumor margins in excised breast specimens. They use
                                                                                         Bayesian machine learning in order to determine tissue that is af-
                                                                                         fected by a tumor. The probabilities are shown as color-coding in
                     (a)                                          (b)                    the original imaging data.

<a id="p015-b003"></a>

<!-- p015-b003 -->
Figure 17: Uncertainty-aware tensor visualization in medical                                Gillmann et al. [GSW∗ 20] developed a visual analysis tool that
imaging. a) Comparison of two different tensor fields [ZSL∗ 16].                         is able to examine the uncertainty of input CT scans, transforming
b) Uncertainty-aware tensor glyphs with surrounding sur-                                 this uncertainty throughout an uncertainty-aware image segmen-
faces [GRT19].                                                                           tation approach, indicating the resulting uncertainty in an indirect
                                                                                         volume rendering approach to show which part of the brain might
                                                                                         be affected by a lesion.
   Zhang et al. [ZSL∗ 16] provided a methodology to compare two                             Brecheisen et al. [BPtHRV13] used illustrative volume render-
different sets of tensors, as shown in Figure 17(a). They utilized                       ing in order to capture a variety of potential tractographies obtained
merged glyphs to provide a visual representation for comparison.                         from a DTI scan, as shown in Figure 18(b). They embed the result-
Although this allows solely the comparison of different datasets,                        ing visualization into a volume rendering of the brain to allow the
one might be able to get a first impression of the variability in DTI                    examination of spatial variation in the captured tractography.
datasets.
                                                                                            Ristovski et al. [RMW∗ 17] presented an uncertainty-aware vol-
   Gerrits et al. [GRT19] presented an uncertainty-aware visualiza-                      ume rendering method that allows users to directly see the poten-
tion of tensor glyphs. In their methods, the tensor glyph is sur-                        tial dimension of stenotic regions in arteries. Here, several surfaces
rounded by a transparent hull that indicates the potential variation                     are shown to indicate different confidence intervals of the reviewed
in the glyph appearance, as shown in Figure 17(b).                                       stenosis, as shown in Figure 18(a).
   Abbasloo et al. [AWHS16] provided a visual analytics tool                                Gillmann et al. [GMHW18] provided an uncertainty-aware
that allows a user to examine DTI datasets in an intuitive fash-                         image-based indicator to early diagnose peripheral artery disease.
ion. Starting from an uncertainty quantification, volume rendering,                      They use an uncertainty-aware segmentation approach to compare
uncertainty-aware glyphs, and tractography are provided to allow                         a healthy and a diseased leg to locate differences between them.
clinicians to refine their diagnosis.
   Ristovski et al. [RGH∗ 19] used glyphs in a completely differ-                        5.2. Treatment Planning
ent manner. They aim to highlight areas in the brain that should be
treated by radiofrequency to remove a tumor while not destroying                         A prominent application of medical imaging for treatment planning
surrounding tissue. The glyphs use a distinct color-coding to high-                      is the determination of dose radiation. Schlachter et al. [SRM∗ 19]
light the certainty of an area to be treated.                                            highlighted the importance of uncertainty-aware visualization in
                                                                                         this application.
   Summary: This section shows that visualization of uncertainty
in medical imaging is hard to achieve as there does solely exist                            Wieser et al. [WCW∗ 17] developed an open-source tool called
one approach (direct volume rendering= that is able to cover all the                     matRad that allows the calculation of radiation at specific points
requirements that were defined.                                                          in a patient’s tissue. Their work computes the radiation dose us-
                                                                                         ing the underlying CT image and its uncertainty. The resulting
                                                                                         visualization is a heatmap embedded in the original image data,
5. Applications                                                                          as shown in Figure 18(c). This principle was refined by Maleike
In order to target a specific use case in medical imaging, medi-                         et al. [MUO06] considering probabilistic dose distributions, and
cal imaging visualization pipelines need to be composed. In the                          Clements et al. [CST∗ 18] allowing user input to define which ar-
following, we aim to summarize approaches of visualization for                           eas should be aimed at with radiation. The tool then computes the
uncertainty-aware medical imaging that can be directly used in                           potential radiation to the surrounding tissue.
medical applications. Here, we structure the identified approaches                          Another important aspect of intraoperative support is the use of
along with four applications: diagnosis, treatment planning, intra-                      brain maps that aim to assign different regions to the human brain
operative support, and education.                                                        that map to the physical abilities of humans. These maps are of-
                                                                                         ten computed based on a sample of patients and it can be hard to
5.1. Diagnosis                                                                           determine the exact boundaries between different regions.
Saad et al. [SMH10] devised an interactive segmentation algorithm                          The Julich-Brain Atlas [AMBZ20] provides a brain atlas with
where users can manipulate the aspects of the medical image that                         fuzzy boundaries. The atlas is computed based on multiple patient

<a id="p015-b004"></a>

<!-- p015-b004 -->
© 2021 The Author(s)
Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-016"></a>

## PDF page 16

<a id="p016-b001"></a>

<!-- p016-b001 -->
680               C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p016-b002"></a>

<!-- p016-b002 -->
(a)                      (b)                          (c)                                     (d)                                     (e)

<a id="p016-b003"></a>

<!-- p016-b003 -->
Figure 18: Applications of uncertainty-aware visualization in medical imaging. a) Uncertainty-aware visualization of stenosis [RMW∗ 17]
using isosurfaces to indicate different stenosis stages. b) Illustrative rendering of tractographies [BPtHRV13] showing a summary of multiple
paths surrounding a tumor. c) Uncertainty-aware visualization of radiation during therapy [WCW∗ 17] indicating radiated tissue using
color-coding. d) Uncertainty-aware guidance during surgery [CBS∗ 19] using color and transparency to indicate potential missplacement of
instruments. e) Uncertainty-aware brain atlas [AMBZ20] providing a color-coding that highlights uncertain areas.

<a id="p016-b004"></a>

<!-- p016-b004 -->
data and their degree of agreement is used to provide a probabil-             teach image processing principles to medical students are de-
ity for a specific voxel to be contained in a specific class of the           signed [GWHH17], uncertainty is not covered in any of these works
brain, as shown in Figure 18(e). This atlas was used by Fox et                so far.
al. [Fox18] who also included uncertainty-aware tractography com-
                                                                                Summary: Considering applications, there exist approaches in
putations that allow for examining the probability of a tractography
                                                                              each category that consider uncertainty except for education. Here,
to be located in a specific class of the brain atlas.
                                                                              no approaches have been found.

<a id="p016-b005"></a>

<!-- p016-b005 -->
5.3. Intraoprative Support                                                    6. Discussion
A prominent example of intraoperative support is the use of medi-             We showed that there exist a variety of uncertainty-aware visualiza-
cal imaging during surgeries or the planning process of surgeries.            tion approaches in medical imaging and how these can be applied
   Simpson et al. [SMC∗ 06] provided guidance in surgery guidance             to different clinical scenarios. In this section, we aim to discuss
by visually indicating the uncertainty of the registered surgery de-          whether the requirements that have been determined in section 3.3
vice during the surgery itself. The uncertainty is quantified by using        are met by the presented approaches. Here, we made a ranking for
statistical analysis which allows clinicians to identify the positional       all presented works. Our medical collaborators (3 clinicians) dis-
uncertainty of specific surgery tools.                                        cussed our rating and corrected it if needed. In addition, we aim
                                                                              to provide a list that indicates which groups of medical imaging
   Barbara et al. [CBS∗ 19] presented a visual tool that indicates the        approaches can be combined in order to compose an entire image
positional uncertainty of tools used during surgery. The uncertainty          processing pipeline.
was quantified using trajectory alignment. Their approach shows
the potential distortion of the tools in visualizations, as shown in
Figure 18(d).                                                                 6.1. Check of Requirements

<a id="p016-b006"></a>

<!-- p016-b006 -->
Simpson et al. [SMV∗ 14] computed and visualized the uncer-                Table 2 shows all presented approaches for uncertainty-aware
tainty throughout the use of surgical tools. They used a heat map             Image Acquisition. It can be seen that there exist solely two
to indicate the probability of a tool touching a specific tissue while        categories (Ultrasound and Computed Tomography) that hold
considering the registration uncertainty during the registration pro-         uncertainty-aware medical imaging approaches. MRI, DTI, and
cess.                                                                         PET approaches exist in an uncertainty-aware manner but do not
                                                                              fulfill all requirements.
   Gillmann et al. [GMP∗ 18] provided an uncertainty-aware tool
that allows planning minimally invasive surgeries. In their tool, the            Most presented approaches show the captured uncertainty in the
uncertainty of the input CT scans is captured while an uncertainty-           input images using a separate image that provides a color-coding
aware segmentation approach is used to extract different types of             indicating the degree of uncertainty captured in an image voxel.
tissues. This enables clinicians to define surgery paths and visual-          This approach can be hard to correlate in clinical daily routine and
ization is used to show the probability of interfering with different         is a clear violation of R3. Especially for DTI where multiple values
types of tissues.                                                             per voxel need to be reviewed, an additional dimension of complex-
                                                                              ity may lead to cognitive overload. Here, we can clearly see that a
                                                                              direct correlation between the input image and its uncertainty in
5.4. Education                                                                one intuitive view is an important aspect that needs more focus in
                                                                              this research area.
Although the positive effect of visualization approaches in med-
ical education are well-known [FL18] and specific courses to                     We have investigated a variety of uncertainty-aware Image

<a id="p016-b007"></a>

<!-- p016-b007 -->
© 2021 The Author(s)
                                                                                 Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-017"></a>

## PDF page 17

<a id="p017-b001"></a>

<!-- p017-b001 -->
C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey                       681

<a id="p017-b002"></a>

<!-- p017-b002 -->
Acquisition                       Work             R1      R2       R3              Transformation                  Work           R1     R2     R3
                                          [HCMC10]              ✓        ✗        ✓                                               [PAL01]       ✓      ✗      ✗
                                          [ZBDH∗ 15]            ✓        ✓        ✓                                            [MRSS08]         ✓      ✗      ✗
             Ultrasound                   [KWKN12]              ✓        ✓        ✓                                                 [JH01]      ✓      ✗      ✗
                                                                                                             Image
                                            [LBdJ18]            ✗        ✓        ✓                                             [LTAH13]        ✓      ✓      ✗
                                                                                                            Operations
                                            [GML14]             ✗        ✓        ✓                                               [FCC15]       ✓      ✗      ✗
                                             [HLF14]            ✗        ✓        ✓                                             [GPW∗ 19]       ✓      ✓      ✓
                                                                                              Pre-
                                              [TS16]            ✗        ✓        ✓                                                [Cha15]      ✓      ✗      ✗
     Computed Tomography                                                                   Processing
                                           [RHH∗ 20]            ✗        ✓        ✓                                             [LTAH13]        ✗      ✓      ✓
                                           [GAH∗ 17]            ✓        ✓        ✓                                            [BYW∗ 20]        ✗      ✓      ✓
                                           [EMVP19]             ✗        ✓        ✓                           Image            [LDCA17]         ✗      ✓      ✓
       Magnetic Resonance
                                            [GDP∗ 20]           ✗        ✓        ✓                         Registration       [RPSW10]         ✓      ✓      ✓
           Imaging                                                                                                                 [YN15]       ✓      ✓      ✓
                                             [CVR19]            ✓        ✓        ✗
                                          [AMME18]              ✗        ✓        ✓                                               [SFJ∗ 16]     ✓      ✓      ✓
         Diffusion Tensor
                                          [WTW∗ 08]             ✗        ✓        ✓                                                 [BS09]      ✓      ✗      ✗
             Imaging
                                            [BWJ∗ 03]           ✗        ✓        ✓                                               [CCZ07]       ✓      ✗      ✗
                                           [SSHM07]             ✗        ✓        ✓                                            [AVvO∗ 04]       ✓      ✗      ✗
        Positron Emission
                                           [HBG∗ 15]            ✗        ✓        ✓                                                 [KT08]      ✗      ✓      ✓
             Imaging                                                                                                               [Ada12]      ✗      ✓      ✓
                                           [NBYR12]             ✓        ✓        ✗
                                                                                                                                   [HR18]       ✓      ✓      ✓
Table 2: Check of uncertainty-aware Image Acquisition against                                                                   [LGM∗ 14]       ✗      ✓      ✓
the formulated requirements (R1 Show the original dataset, R2                                     Segmentation                  [ATHL14]        ✗      ✓      ✓
Show the related uncertainty and R3 Keep the cognitive load min-                                                                 [SHM10]        ✗      ✓      ✗
imal). The approaches are sorted along with the subcategories of                                                                  [PRH10]       ✓      ✓      ✓
different acquisition techniques. Techniques that fulfill all require-                                                          [BUK∗ 10]       ✗      ✓      ✓
ments are highlighted in gray.                                                                                                  [ATHL15]        ✓      ✓      ✗
                                                                                                                                [GPW∗ 19]       ✗      ✓      ✓
                                                                                                                               [KWKP20]         ✓      ✓      ✓
Transformation approaches that we have sorted into several sub-                                                                 [NPAA20]        ✓      ✓      ✓
categories, as shown in Table 3. For image pre-processing, we were                                                               [GMG09]        ✓      ✗      ✗
able to find approaches that fulfill all requirements for uncertainty-                                                           [DSS∗ 09]      ✓      ✗      ✗
                                                                                                              Surface
aware medical imaging visualization in both subcategories (image                                                                 [PWH11]        ✓      ✗      ✗
                                                                                                             Extraction
operations and image registration). For image operations we can                                                                [HMH∗ 15]        ✓      ✓      ✗
see that most approaches do not aim to indicate the uncertainty vi-                         Feature                           [GWHA18]          ✓      ✓      ✗
sually. Instead, these approaches aim to use uncertainty information                       Extraction                          [BBKW02]         ✓      ✓      ✓
to enhance the image operation output.                                                                                           [FFW06]        ✓      ✓      ✓
                                                                                                              Tracto-
                                                                                                                                  [CLH06]       ✓      ✓      ✓
   For medical image segmentation, about a third of the approaches                                            Graphy
                                                                                                                                 [BBJ∗ 07]      ✓      ✓      ✓
that we identified are able to fulfill all defined requirements. In this                                                      [BPVHR12]         ✓      ✓      ✓
context, we want to highlight that Bayesian decision theory is a
technique that becomes more popular in the field of visualization                        Table 3: Check of uncertainty-aware Image Transformation
and potentially is a key element in fulfilling the formulated require-                   against the formulated requirements (R1 Show the original dataset,
ments.                                                                                   R2 Show the related uncertainty and R3 Keep the cognitive load
                                                                                         minimal). The approaches are sorted along with the subcategories
   In the category of feature extraction algorithms, the geometry ex-                    of different processing techniques. Techniques that fulfill all re-
traction algorithms included in this report do not provide a method                      quirements are highlighted in gray.
that allows for visualization of uncertainty-aware medical imaging
that fulfills all defined requirements. This is probably due to the na-
ture of surfaces and the relatively seldom use in clinical daily rou-
tine. On the other hand, all tractography-based visualization algo-
rithms fulfill the defined requirements. This category impressively
                                                                                         ists solely one approach that is able to fulfill the requirements for
shows how original image and uncertainty information can be com-
                                                                                         uncertainty-aware visualization in medical imaging. This approach
bined while providing an intuitive visualization for clinicians. Trac-
                                                                                         uses direct volume rendering. The reason is that indirect volume
tographies are embedded in a slice-by-slice view which makes it
                                                                                         rendering and glyph-based visualization are not used in all clinical
easy for clinicians to correlate the novel visualization technique
                                                                                         settings. If it is used, structures that are rather clearly identified are
with the well-known slice-by-slice reviewing technique.
                                                                                         shown such as bones or surface shaded displays in radiology sta-
   Table 4 summarizes the identified techniques for the visualiza-                       tions. Therefore, the examined techniques are not able to present
tion step in medical imaging. The table indicates that there ex-                         a visualization that meets the needs of clinicians in general. Here,

<a id="p017-b003"></a>

<!-- p017-b003 -->
© 2021 The Author(s)
Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-018"></a>

## PDF page 18

<a id="p018-b001"></a>

<!-- p018-b001 -->
682               C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p018-b002"></a>

<!-- p018-b002 -->
Visualization               Work         R1     R2     R3          there exist multiple approaches that fulfill the formulated require-
                                        [Kni08]      ✓      ✓      ✗          ments. In general, the table shows that approaches that are designed
                                     [LLPY07]        ✓      ✓      ✓          to aid in a specific task hold the highest potential in fulfilling all
   Direct Volume Rendering
                                     [MCC∗ 20]       ✓      ✓      ✗          defined requirements. This indicates that medical imaging needs
                                       [KSE16]       ✓      ✓      ✓          to be considered in its entirety instead of a single step. It also
                                     [RLBS03]        ✓      ✓      ✗          shows that combined properly, single image processing algorithms
                                        [GR04]       ✓      ✓      ✗          can form an uncertainty-aware medical imaging pipeline that pro-
  Indirect Volume Rendering                                                   vides a visualization that fulfills all defined requirements. For di-
                                        [Dra08]      ✓      ✓      ✗
                                    [GWHA18]         ✓      ✓      ✗          agnosis, we found the highest variety of applications. They range
                                        [Jon03]      ✓      ✓      ✗          from organ examination over tumor detection to the identification
                                      [ZSL∗ 16]      ✓      ✓      ✗          of stenotic regions. For treatment planning, we mostly identified
  Glyph-based Visualization           [GRT19]        ✓      ✓      ✗          tumor radiation approaches for uncertainty-aware visualization ap-
                                    [AWHS16]         ✓      ✓      ✗          proaches. We postulate that more treatment applications could ben-
                                     [RGH∗ 19]       ✓      ✓      ✗          efit from these techniques, such as ultrasound and ultraviolet thera-
                                                                              pies. Methods for intraoperative support could be found for surgery
Table 4: Check of uncertainty-aware Image Visualization against               assistance mainly. This is due to the nature of this procedure, where
the formulated requirements (R1 Show the original dataset, R2                 medical images are used to follow the progress of surgery. Other
Show the related uncertainty and R3 Keep the cognitive load min-              applications for intraoperative support could be strengthened by
imal). The approaches are sorted along with the subcategories of              medical imaging and uncertainty visualization as well if it gets used
different visualization techniques. Techniques that fulfill all require-      more frequently.
ments are highlighted in gray.

<a id="p018-b003"></a>

<!-- p018-b003 -->
6.2. Creation of Medical Imaging Pipelines
a combination with the slice-by-slice reviewing approach is highly            As shown in section 4, there are plenty of techniques available for
required in order to promote unused visualization approaches.                 uncertainty-aware visualization in medical imaging. A summary
                                                                              of relevant work that we identified in this area can be found in
           Application               Work         R1     R2     R3            Figure 19. Here, we included the three categories Image Acqui-
                                 [SSHM07]         ✓      ✓      ✗             sition, Image Transformation and Image Visualization with de-
                                  [GSW∗ 20]       ✗      ✓      ✓             rived subcategories. In each category, we added the identified re-
            Diagnosis                                                         lated work, which is described in section 4.
                                [BPtHRV13]        ✓      ✓      ✓
                                 [RMW∗ 17]        ✗      ✓      ✓
                                [GMHW18]          ✓      ✓      ✓
                                 [WCW∗ 17]        ✓      ✓      ✗
                                   [MUO06]        ✗      ✓      ✓
       Treatment Planning
                                   [CST∗ 18]      ✓      ✓      ✓
                                 [AMBZ20]         ✗      ✓      ✗
                                    [Fox18]       ✓      ✓      ✓
                                  [SMC∗ 06]       ✓      ✓      ✓
                                  [CBS∗ 19]       ✓      ✓      ✓
      Intraoperative Support      [SMV∗ 14]       ✓      ✓      ✓
                                  [GMP∗ 18]       ✗      ✓      ✓
            Education                  -           -      -      -
Table 5: Check of uncertainty-aware Applications against the for-             Figure 19: Uncertainty-aware medical imaging and its subcate-
mulated requirements (R1 Show the original dataset, R2 Show the               gories examined as a pipeline. The arrows connect subcategories
related uncertainty and R3 Keep the cognitive load minimal). The              where output and input fit and can form a potential pipeline. If there
approaches are sorted along with the subcategories of different               is no connection indicated, no literature has been found that is able
medical applications. Techniques that fulfill all requirements are            to connect these subcategories.
highlighted in gray.
                                                                                 Besides the reviewed application scenarios, we observed each
   Table 5 shows the examined approaches that are designed to                 category of medical imaging as an independent step and exam-
target a specific application in uncertainty-aware medical imag-              ined the available work in this area. But typically, medical imag-
ing. Here, we directly see that we could not find any approaches              ing involves several steps. Our prior analysis showed that medical
that provide uncertainty-aware visualization in medical education,            imaging needs to be considered as an entirety to be powerful. Tech-
which might be due to the fact that medical students have to learn            nically, each step can be repeated multiple times thereby creating
a lot. For the remaining categories, we were able to identify sev-            arbitrary medical imaging pipelines. In this section, we aim to de-
eral approaches that assist in the respective task. In each category,         clare the potential correlations between medical imaging steps in

<a id="p018-b004"></a>

<!-- p018-b004 -->
© 2021 The Author(s)
                                                                                 Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-019"></a>

## PDF page 19

<a id="p019-b001"></a>

<!-- p019-b001 -->
C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey                     683

<a id="p019-b002"></a>

<!-- p019-b002 -->
the case that an output of an imaging step matches the input of an-                      7. Open Challenges
other imaging step. In combination with the previously provided
                                                                                         Although section 6 shows that uncertainty-aware medical imaging
state-of-the-art analysis in each step, this provides a versatile way
                                                                                         approaches can be found in most medical imaging steps and ap-
of forming arbitrary uncertainty-aware medical imaging pipelines.
                                                                                         plications, there remains a set of open challenges, which will be
  Ultrasound images, Computed Tomography Images, Magnetic                                discussed in the following.
Resonance Tomography Images, and Positron Emission Imaging
can be passed to image pre-processing segmentation algorithms                            7.1. Identification of proper Uncertainty Quantification
and geometry extraction algorithms. As all this results in a dataset                          Approaches
defined as a scalar field on a regular grid, image pre-processing al-
gorithms are able to process these uncertainty-aware input images.                       We have listed a variety of uncertainty quantification approaches
                                                                                         that are suitable for medical imaging regarding specific cases and
   For diffusion tensor images, this does not hold as the previously                     specific images or algorithms. Unfortunately, this prevents us from
mentioned operations are usually not able to process uncertainty-                        deriving a general rule for which uncertainty quantification applies
aware tensor fields. Still, Diffusion Tensor imaging might be able                       best in each case. In each novel case or even if a case is only slightly
to be processed by image pre-processing, image segmentation,                             different, uncertainty quantification algorithms need to be tested in
or surface extraction algorithms when simplifying the input im-                          order to determine their quality. This is a massive problem when
age into scalar values. There are a variety of simplification met-                       dealing with uncertainty-aware medical imaging which remains an
rics for tensors [VZKL06], but the incorporation of uncertainty                          open problem.
does not work right away. Luckily, these methods can be extended
to include the uncertainty information captured from the original
DTI [BP00, And01, JB04, HAI∗ 17].                                                        7.2. Uncertainty in Clinical Studies
                                                                                         Uncertainty in clinical studies is not covered in this manuscript, as
   Image pre-processing can be used as input for direct volume
                                                                                         we aimed to provide a summary of uncertainty-aware visualization
rendering. The resulting images from image operations, as well
                                                                                         approaches. Still, this is an important issue as uncertainty in clin-
as image registration algorithms, create manipulated images that
                                                                                         ical studies holds two problems: first, assumptions for visualiza-
can be used as input for uncertainty-aware direct volume render-
                                                                                         tion approaches and the general applicability of image modalities
ing. The same holds for image segmentation results. In addition,
                                                                                         are generated throughout these studies. Here, incorrect assumptions
uncertainty-aware image segmentation results can be passed to sur-
                                                                                         can lead to false conclusions when designing uncertainty-aware vi-
face extraction algorithms and therefore be passed to direct vol-
                                                                                         sualization. On the other hand, uncertainty-aware medical imaging
ume rendering. In general, uncertainty-aware image transformation
                                                                                         approaches may be used to proceed with clinical studies. There-
outputs can be visualized utilizing indirect volume rendering ap-
                                                                                         fore, the outcome of the clinical study is directly depending on the
proaches.
                                                                                         quality of the visualization.
  The described pathways can be directly used to create image
processing pipelines and therefore allow for a flexible design of                        7.3. Exploration Tools for Uncertainty in Medical Image Data
uncertainty-aware medical imaging.
                                                                                         As shown in section 4.1, nearly all quantification approaches use
                                                                                         color-coding to represent the resulting uncertainty quantification.
6.3. The Curse of Uncertainty                                                            This can lead to visual overload when adding this information to
                                                                                         the input image or difficulty to understand the relationship between
Although we showed the importance of including uncertainty in                            the input image and uncertainty quantification if using the color-
the medical imaging process, uncertainty analysis can add multiple                       coded uncertainty quantification next to the original image. In this
dimensions of uncertainty on top of each data point in the origi-                        case, there is a clear need to provide novel visualization approaches
nal dataset. Here, the question arises if and when it is feasible and                    that help review both: the acquired image and the uncertainty quan-
worth taking the effort to include uncertainty into a medical imag-                      tification. This visualization should also include interaction meth-
ing process.                                                                             ods that help users explore the uncertainty space in relation to the
   This issue has been raised by Windhager et al. [WSSM19], in                           original dataset.
the domain of digital humanities. Hullman [Hul20] examined this
issue generally in the visualization community. In his work, he re-                      7.4. Knowledge from other Applications
searched reasons why uncertainty is often not included in visual-
                                                                                         Besides the medical domain, other application areas, such as me-
ization approaches. Hullman showed that most researchers aim to
                                                                                         chanical engineering, deal with scalar and tensor fields [HBK∗ 21].
include uncertainty visualization, but are often overwhelmed by the
                                                                                         These research areas are very active and the techniques developed
possibilities of uncertainty visualization. As a result, uncertainty vi-
                                                                                         in those areas could translate to the medical domain and provide
sualization is neglected in many cases.
                                                                                         novel insights into medical image data. Especially work that con-
  These issues also occur in medical visualization and result in the                     siders sensitivity analysis, multi-field visualization, and uncertainty
problem to find a proper balance between visualizing uncertainty,                        in the acquisition step can be of great value for the presented topic.
while keeping the cognitive load in a visualization minimal. This is                     Still, the applicability of approaches other than the medical field
hard to determine, and further research in this direction is required.                   needs to be proven in order for it to be suitable in the medical area.

<a id="p019-b003"></a>

<!-- p019-b003 -->
© 2021 The Author(s)
Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-020"></a>

## PDF page 20

<a id="p020-b001"></a>

<!-- p020-b001 -->
684              C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p020-b002"></a>

<!-- p020-b002 -->
7.5. Provenance Visualization of Uncertainty                                 surgery planning, etc.) different medical image steps need to be
                                                                             combined and clinicians need to be enabled to examine and inter-
As shown in section 6, medical imaging can be the starting point
                                                                             act with these techniques. Here, visual analytics approaches can
of an arbitrary pipeline. The uncertainty accumulates along this
                                                                             be a suitable approach. Visual analytics describes a holistic visual
pipeline. Depending on the specific elements within this pipeline,
                                                                             approach where data can be processed by hypothesis forming and
the uncertainty of the dataset to be examined can dramatically in-
                                                                             using visualizations to create novel knowledge [KMS∗ 08]. Sacha et
crease. In this context, an understanding of how the uncertainty
                                                                             al. [SSK∗ 16] highlighted the importance of proper communication
evolves throughout the application of multiple imaging steps would
                                                                             of uncertainty in the visual analytics process.
be beneficial. Here, provenance visualization techniques can be ap-
plied and more research is required to achieve this.                            There exist first attempts to provide visual analytics approaches
                                                                             in medical imaging, such as Gillmann et al. [GMHW18] that aim to
                                                                             assist in minimally invasive planning or Brecheisen et al. [BVPt09]
7.6. Teaching of uncertainty-aware Medical Imaging                           providing a visual analytics tool that allows the user to visually ex-
Although section 3 shows that uncertainty plays a crucial role in            plore how small variations in parameter values affect the output of
medical imaging, these techniques are not well-known in the med-             fiber tracking. However, these methods are still in their infancy. In
ical community. A major reason for this is the lack of education             addition, the concepts of visual analytics are not fully incorporated
of uncertainty in medical imaging. Here, novel classes need to be            in the listed research papers. We suggest a more holistic use of vi-
established that help educate medical students to specialize in un-          sual analytics approach in the area of medical imaging.
certainty analysis in a similar way as the general medical imaging
class by Gillmann et al. [GWHH17].                                           7.10. Ready to use Framework
                                                                             As shown in section 6, a variety of potential uncertainty-aware
7.7. Connection to Sensitivity and Ensemble Visualization                    imaging pipelines can be created while communicating uncer-
                                                                             tainty [GWH16, MSH∗ 20]. Still, the question arises as to which of
Besides uncertainty analysis itself, sensitivity analysis and ensem-
                                                                             these pipelines really provide insight for clinicians. Further, it is un-
ble analysis can be of great benefit to the medical imaging commu-
                                                                             clear which use cases can be covered by which pipeline. We, there-
nity. In fact, there is a strong relationship between all topics men-
                                                                             fore, encourage the development of a flexible and easy to adjust
tioned. For ensemble visualization [WHLS19], research that aims
                                                                             framework for uncertainty-aware medical imaging to allow easy
to summarize different data points in a visualization capturing the
                                                                             and fast testing.
variation is of high interest for the given topic. Sensitivity analy-
sis approaches that assist in understanding the impact of variations
of parameters could be a great starting point for medical imaging            7.11. Clinical Trials on Uncertainty-aware Medical Imaging
as well. Here, methodologies from sensitivity and ensemble analy-            To the best of our knowledge, there does not exist any commer-
sis should be considered for their potential applicability in medical        cially available visualization technique in medical workstations that
imaging.                                                                     is uncertainty-aware. This may indicate that uncertainty visual-
                                                                             ization research is driven by visualization researchers rather than
7.8. Further use of Machine Learning                                         clinicians. Here, we suggest defining selected diagnostic decisions
                                                                             where the hypothesis is that uncertainty visualization is beneficial.
As shown in section 4, machine learning is a popular tool for                This hypothesis should then be confirmed or rejected in close col-
uncertainty-aware medical algorithms across all imaging steps.               laboration with physicians. This can be achieved by a clinical study
This set of methods is of great interest as it provides promising            where perception, cognition, and interpretation with respect to un-
results in a variety of medical imaging tasks. We believe that the           certainty visualization can be examined.
use of machine learning could improve the field of medical visu-
alization dramatically. Still, there are a variety of downsides when
using machine learning approaches (especially neural networks).              8. Conclusions
The most important is that neural networks form a black box. Here,           In this manuscript, we provide a state-of-the-art analysis of
users are not able to directly follow the computation of the neural          uncertainty-aware medical imaging. We provide an overview of
network. This is especially critical in the medical area as medical          medical imaging in general and determined the special role of un-
doctors are responsible for their decisions and therefore need a way         certainty in this area. Resulting from that, we compiled a taxonomy
to verify the computational result of an algorithm. Ongoing work             of uncertainties in medical imaging and defined requirements that
with respect to explainability for machine learning may eventually           need to be fulfilled to provide a suitable visualization. Our state-
resolve this issue.                                                          of-the-art analysis is structured along the medical imaging pipeline
                                                                             consisting of Image Acquisition, Image Transformation, and Im-
                                                                             age Visualization. We further examined uncertainty-aware visual-
7.9. Visual Analytics Approaches in Medical Imaging
                                                                             ization approaches in applications of medical imaging. Based on
In medical imaging, often multiple steps of the computational                the defined requirements, we outlined the suitability of the exam-
pipeline need to be considered to provide a holistic analysis of             ined approaches in the given context. Furthermore, we provided a
patient data. In addition, machine learning approaches become in-            list of open problems that have not been tackled in the area of med-
creasingly important. Depending on the medical tasks (diagnosis,             ical imaging.

<a id="p020-b003"></a>

<!-- p020-b003 -->
© 2021 The Author(s)
                                                                                Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-021"></a>

## PDF page 21

<a id="p021-b001"></a>

<!-- p021-b001 -->
C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey                         685

<a id="p021-b002"></a>

<!-- p021-b002 -->
9. Acknowledgements                                                                        M. M., P OTTER K., R HEINGANS P., S CHULTZ T.: Overview and State-
                                                                                           of-the-Art of Uncertainty Visualization. Springer London, 2014, pp. 3–
Open access funding enabled and organized by Projekt DEAL.                                 27. 2
[Correction added on 24 November 2021, after first online publi-                         [BHP15] B OUMANS M., H ON G., P ETERSEN A. C.: Error and uncer-
cation: Projekt Deal funding statement has been added.]                                    tainty in scientific practice. Routledge, 2015. 5
                                                                                         [BJ15] B OYAT A. K., J OSHI B. K.: A review paper: Noise models in
                                                                                           digital image processing. CoRR abs/1505.03489 (2015). 5
References
                                                                                         [BKC∗ 13] B ORGO R., K EHRER J., C HUNG D., M AGUIRE E.,
[Ada12] A DAMS R. P.: Revisiting uncertainty in graph cut solutions.                       L ARAMEE R., H AUSER H., WARD M., C HEN M.: Glyph-based visual-
  In Proceedings of the 2012 IEEE Conference on Computer Vision and                        ization: Foundations, design guidelines, techniques and applications. In
  Pattern Recognition (CVPR) (2012), IEEE Computer Society, pp. 2440–                      Eurographics (STARs) (05 2013), pp. 39–63. 4
  2447. 11, 17                                                                           [BP00] BASSER P. J., PAJEVIC S.: Statistical artifacts in diffusion ten-
[AMBZ20] A MUNTS K., M OHLBERG H., B LUDAU S., Z ILLES K.:                                 sor mri (dt-mri) caused by background noise. Magnetic Resonance in
  Julich-brain: A 3d probabilistic atlas of the human brain’s cytoarchitec-                Medicine 44, 1 (2000), 41–50. 19
  ture. Science 369, 6506 (2020), 988–992. 15, 16, 18                                    [BPtHRV13] B RECHEISEN R., P LATEL B., TER H AAR ROMENY B.,
[AMME18] A LIOTTA E., M OULIN K., M AGRATH P., E NNIS D. B.:                               V ILANOVA A.: Illustrative uncertainty visualization of dti fiber path-
  Quantifying precision in cardiac diffusion tensor imaging with second-                   ways. The Visual Computer 29 (04 2013). 15, 16, 18
  order motion-compensated convex optimized diffusion encoding. Mag-                     [BPVHR12] B RECHEISEN R., P LATEL B., V ILANOVA A.,
  netic Resonance in Medicine 80, 3 (2018), 1074–1087. 9, 17                               H AAR ROMENY B. T.: Illustrative uncertainty visualization of dti
[And01] A NDERSON A. W.: Theoretical analysis of the effects of noise                      fiber pathways. The Visual Computer (2012). 13, 17
  on diffusion tensor imaging. Magnetic Resonance in Medicine 46, 6                      [Bra08] B RADLEY W. G.: History of medical imaging. Proceedings of
  (2001), 1174–1188. 19                                                                    the American Philosophical Society 152, 3 (2008), 349–361. 1
[ASV∗ 18] A LAM I., S TEINBERG I., V ERMESH O., VAN DEN B ERG N.,                        [Bru17] B RUNO M. A.: 256 shades of gray: uncertainty and diagnostic
  ROSENTHAL E., VAN DAM G., N TZIACHRISTOS V., G AMBHIR S.,                                error in radiology. Diagnosis 4, 3 (2017), 149 – 157. 1
  H ERNOT S., ROGALLA S.: Emerging intraoperative imaging modalities                     [BS09] B EEVI Z., S ATHIK M.: A robust segmentation approach for noisy
  to improve surgical precision. Mol. Imaging Biol. 20, 5 (2018), 705–715.                 medical images using fuzzy clustering with spatial probability. Interna-
  5                                                                                        tional Arab Journal of Information Technology 29, 37 (2009), 38. 11,
[ATHL14] A L -TAIE A., H AHN H. K., L INSEN L.: Uncertainty esti-                          17
  mation and visualization in probabilistic segmentation. Computers &                    [BUK∗ 10] BATRA D., U NIVERITY C. M., KOWDLE A., PARIKH D.,
  Graphics 39 (2014), 48 – 59. 11, 12, 17                                                  L UO J., C HEN T.: icoseg: Interactive co-segmentation with intelligent
[ATHL15] A L -TAIE A., H AHN H. K., L INSEN L.: Uncertainty Esti-                          scribble guidance. In In CVPR (2010). 11, 12, 17
  mation and Visualization for Multi-modal Image Segmentation. In Eu-                    [Bur11] B URGESS A.: Visual perception studies and observer models in
  rographics Workshop on Visual Computing for Biology and Medicine                         medical imaging. Seminars in nuclear medicine 41 (11 2011), 419–36.
  (2015), The Eurographics Association. 11, 17                                             4
[AU19] ATABO S. M., U MAR A.: A review of imaging techniques in                          [BVPt09] B RECHEISEN R., V ILANOVA A., P LATEL B., TER H AAR
  scientific research/clinical diagnosis. MOJ Anatomy & Physiology 6 (10                   ROMENY B.: Parameter sensitivity visualization for dti fiber track-
  2019). 3                                                                                 ing. IEEE Transactions on Visualization and Computer Graphics 15,
[AVvO∗ 04] A NBEEK P., V INCKEN K. L., VAN O SCH M. J., B ISSCHOPS                         6 (2009), 1441–1448. 20
  R. H., VAN DER G ROND J.: Probabilistic segmentation of white matter                   [BWJ∗ 03] B EHRENS T., W OOLRICH M., J ENKINSON M., J OHANSEN -
  lesions in mr imaging. NeuroImage 21, 3 (2004), 1037 – 1044. 11, 17                      B ERG H., N UNES R., C LARE S., M ATTHEWS P., B RADY J., S MITH S.:
                                                                                           Characterization and propagation of uncertainty in diffusion-weighted
[AWHS16] A BBASLOO A., W IENS V., H ERMANN M., S CHULTZ T.:
                                                                                           mr imaging. Magnetic Resonance in Medicine 50, 5 (2003), 1077–1088.
  Visualizing tensor normal distributions at multiple levels of detail. IEEE
                                                                                           9, 17
  Transactions on Visualization and Computer Graphics 22, 1 (2016),
  975–984. 15, 18                                                                        [BYW∗ 20] B IAN C., Y UAN C., WANG J., L I M., YANG X., Y U S.,
                                                                                           M A K., Y UAN J., Z HENG Y.: Uncertainty-aware domain alignment for
[BAL12] B RODLIE K., A LLENDES O SORIO R., L OPES A.: A Review                             anatomical structure segmentation. Medical Image Analysis 64 (2020).
  of Uncertainty in Data Visualization. Springer London, London, 2012,                     10, 17
  pp. 81–109. 2
                                                                                         [BZK03] BASIR O., Z HU H., K ARRAY F.: Fuzzy based image segmenta-
[Ban08] BANKMAN I.: Handbook of medical image processing and anal-                         tion. In Fuzzy Filters for Image Processing. Springer, 2003, pp. 101–128.
  ysis. Elsevier, 2008. 4                                                                  4
[BBC87] B ELFORTE G., B ONA B., C ERONE V.: Bounded measurement                          [Cat03] C ATTANEO M.: Combining belief functions issued from depen-
  error estimates: Their properties and their use for small sets of data. Mea-             dent sources. In Research report/Seminar für Statistik, Eidgenössische
  surement 5, 4 (1987), 167 – 175. 5                                                       Technische Hochschule (ETH) (01 2003), pp. 133–147. 6
[BBJ∗ 07] B EHRENS T., B ERG H. J., J BABDI S., RUSHWORTH M.,                            [CBS∗ 19] C ARL B., B OPP M., S ASS B., P OJSKIC M., G JORGJEVSKI
  W OOLRICH M.: Probabilistic diffusion tractography with multiple fi-                     M., VOELLGER B., N IMSKY C.: Reliable navigation registration in
  bre orientations: What can we gain? NeuroImage 34, 1 (2007), 144 –                       cranial and spine surgery based on intraoperative computed tomography.
  155. 13, 17                                                                              Neurosurgical Focus FOC 47, 6 (2019). 16, 18
[BBKW02] B JÖRNEMO M., B RUN A., K IKINIS R., W ESTIN C.-F.:                             [CCZ07] C AI W., C HEN S., Z HANG D.: Fast and robust fuzzy c-means
  Regularized stochastic white matter tractography using diffusion tensor                  clustering algorithms incorporating local information for image segmen-
  mri. In Medical Image Computing and Computer-Assisted Intervention                       tation. Pattern Recogn. 40, 3 (Mar. 2007), 825–838. 11, 17
  — MICCAI 2002 (Berlin, Heidelberg, 2002), Springer Berlin Heidelberg,
                                                                                         [CFJ∗ 06] C OROUGE I., F LETCHER P. T., J OSHI S., G OUTTARD S.,
  pp. 435–442. 13, 17
                                                                                           G ERIG G.: Fiber tract-oriented statistics for quantitative diffusion ten-
[BHJ∗ 14]     B ONNEAU G.-P., H EGE H.-C., J OHNSON C. R., O LIVEIRA                       sor mri analysis. Medical Image Analysis 10, 5 (2006), 786 – 798. The

<a id="p021-b003"></a>

<!-- p021-b003 -->
© 2021 The Author(s)
Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-022"></a>

## PDF page 22

<a id="p022-b001"></a>

<!-- p022-b001 -->
686                C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p022-b002"></a>

<!-- p022-b002 -->
Eighth International Conference on Medical Imaging and Computer As-            brain at 3t. Magnetic Resonance in Medicine 84, 1 (2020), 450–466. 8,
  sisted Intervention – MICCAI 2005. 13                                          9, 17
[Cha15] C HAIRA T.: Medical Image Processing - advanced fuzzy set              [GMG09] G LANZNIG M., M ALIK M. M., G RÖLLER M. E.: Locally
  theoretic techniques. CRC Press, 01 2015. 10, 17                               adaptive marching cubes through iso-value variation. In Proceedings of
[Che09] C HEN W.: A comparative study of uncertainty propagation                 the International Conference in Central Europe on Computer Graphics,
  methods for black-box-type problems. Structural and Multidisciplinary          Visualization and Computer Vision (2009), pp. 33–40. 12, 13, 17
  Optimization 37 (01 2009), 239–253. 10                                       [GMHW18]       G ILLMANN C., M ATSUURA J. H., H AGEN H., W IS -
                                                                                  CHGOLL T.:    Towards an Image-based Indicator for Peripheral Artery
[CLH06] C HUNG S., L U Y., H ENRY R. G.: Comparison of bootstrap
  approaches for estimation of uncertainties of dti parameters. NeuroImage       Disease Classification and Localization. In Leipzig Symposium on Visu-
  33, 2 (2006), 531 – 541. 13, 17                                                alization In Applications (2018). 15, 18, 20

<a id="p022-b003"></a>

<!-- p022-b003 -->
[CLP18] C HINMAYI P., L OGANATHAN A., P RABUKUMAR M.: Survey                   [GML14] G UEZIRI H.-E., M CGUFFIN M., L APORTE C.: Visualizing
  of image processing techniques in medical image analysis: Challenges           positional uncertainty in freehand 3d ultrasound. Proceedings - Society
  and methodologies. In International Conference on Soft Computing               of Photo-Optical Instrumentation Engineers 9036 (03 2014). 8, 17
  and Pattern Recognition (12 2018), Advances in Intelligent Systems and       [GMP∗ 18] G ILLMANN C., M AACK R. G. C., P OST T., W ISCHGOLL T.,
  Computing, pp. 460–471. 4                                                      H AGEN H.: An uncertainty-aware workflow for keyhole surgery plan-
[Coo01] C OOTNEY R. W.: Ultrasound Imaging: Principles and Appli-                ning using hierarchical image semantics. Visual Informatics 2, 1 (2018),
  cations in Rodent Research. ILAR Journal 42, 3 (07 2001), 233–247.             26 – 36. Proceedings of PacificVAST 2018. 16, 18
  3                                                                            [GPW∗ 19]  G ILLMANN C., P OST T., W ISCHGOLL T., H AGEN H., M A -
[CST∗ 18] C LEMENTS M., S CHUPP N., TATTERSALL M., B ROWN A.,                     CIEJEWSKI R.: Hierarchical image semantics using probabilistic path
  L ARSON R.: Monaco treatment planning system tools and optimization            propagations for biomedical research. IEEE Computer Graphics and
  processes. Medical Dosimetry 43, 2 (2018), 106 – 117. Special Issue:           Applications (2019), 1–1. 12, 17
  3D Treatment Planning Systems. 15, 18                                        [GR04] G RIGORYAN G., R HEINGANS P.: Point-based probabilistic sur-
[CVR19] C ROCI M., V INJE V., ROGNES M. E.: Uncertainty quantifica-              faces to show surface uncertainty. IEEE Transactions on Visualization
  tion of parenchymal tracer distribution using random diffusion and con-        and Computer Graphics 10, 5 (2004), 564–573. 14, 18
  vective velocity fields. bioRxiv (2019). 9, 17                               [GRT19] G ERRITS T., RÖSSL C., T HEISEL H.: Towards glyphs for un-
[DDKA09] D ESCOTEAUX M., D ERICHE R., K NOSCHE T. R., A NWAN -                   certain symmetric second-order tensors. Computer Graphics Forum 38,
  DER A.: Deterministic and probabilistic tractography based on complex          3 (2019), 325–336. 14, 15, 18
  fibre orientation distributions. IEEE Transactions on Medical Imaging        [GSW∗ 20] G ILLMANN C., S AUR D., W ISCHGOLL T., H OFFMANN K.-
  28, 2 (2009), 269–286. 13                                                      T., H AGEN H., M ACIEJEWSKI R., S CHEUERMANN G.: Uncertainty-
[Dra08] D RAPIKOWSKI P.: Surface modeling—uncertainty estimation                 aware Brain Lesion Visualization. In Eurographics Workshop on Visual
  and visualization. Computerized Medical Imaging and Graphics 32, 2             Computing for Biology and Medicine (2020), The Eurographics Associ-
  (2008), 134 – 139. 14, 18                                                      ation. 15, 18
[DSS∗ 09] D IETRICH C. A., S CHEIDEGGER C. E., S CHREINER J.,                  [GWH16] G ILLMANN C., W ISCHGOLL T., H AGEN H.: Uncertainty-
  C OMBA J. L. D., N EDEL L. P., S ILVA C. T.: Edge transformations              Awareness in Open Source Visualization Solutions. In IEEE Visualiza-
  for improving mesh quality of marching cubes. IEEE Transactions on             tion Conference (VIS) - VIP Workshop (2016). 20
  Visualization and Computer Graphics 15, 1 (2009), 150–159. 12, 17            [GWHA18] G ILLMANN C., W ISCHGOLL T., H AMANN B., A HRENS J.:
[EMVP19] E DUPUGANTI V., M ARDANI M., VASANAWALA S., PAULY                       Modeling and visualization of uncertainty-aware geometry using multi-
  J.: Uncertainty quantification in deep mri reconstruction, 2019. 9, 17         variate normal distributions. In 2018 IEEE Pacific Visualization Sympo-
                                                                                 sium (PacificVis) (April 2018), pp. 106–110. 14, 17, 18
[FCC15] F RANCO A., C ORREIA M., C RUZ J.: Uncertainty propaga-
  tion in biomedical models. In Artificial Intelligence in Medicine (Cham,     [GWHH17] G ILLMANN C., W ISCHGOLL T., H ERNÁNDEZ J. T., H A -
  2015), Springer International Publishing, pp. 166–171. 10, 17                  GEN H.: Teaching image processing and visualization principles to
                                                                                 medicine students. IEEE Visualization Conference (VIS) - Pedagogy of
[FFW06] F RIMAN O., FARNEBACK G., W ESTIN C. .: A bayesian ap-                   Data Visualization Workshop (2017). 16, 20
  proach for stochastic white matter tractography. IEEE Transactions on
  Medical Imaging 25, 8 (2006), 965–978. 13, 17                                [GWHH18] G ILLMANN C., W ISCHGOLL T., H AMANN B., H AGEN H.:
                                                                                 Accurate and reliable extraction of surfaces from image data using a
[FL18] F IRAT E. E., L ARAMEE R. S.: Towards a survey of interactive             multi-dimensional uncertainty model. Graphical Models 99 (2018), 13
  visualization for education. EG UK Computer Graphics & Visual Com-             – 21. 13
  puting (2018). 16
                                                                               [HAI∗ 17] H UTCHINSON E. B., AVRAM A. V., I RFANOGLU M. O.,
[Fox18] F OX M.: Mapping symptoms to brain networks with the human               KOAY C. G., BARNETT A. S., KOMLOSH M. E., Ö ZARSLAN E.,
   connectome. New England Journal of Medicine 379 (12 2018), 2237–              S CHWERIN S. C., J ULIANO S. L., P IERPAOLI C.: Analysis of the ef-
   2245. 16, 18                                                                  fects of noise, dwi sampling, and value of assumed parameters in diffu-
[FP17] F ERRANTE E., PARAGIOS N.: Slice-to-volume medical image                  sion mri models. Magnetic Resonance in Medicine 78, 5 (2017), 1767–
  registration: A survey. Medical Image Analysis 39 (2017), 101–123. 7           1780. 19
[GAH∗ 17] G ILLMANN C., A RBELÁEZ P., H ERNÁNDEZ J. T., H AGEN                 [HB97] H ASHEMI R., B RADLEY W. G.: MRI: The Basics. Williams &
  H., W ISCHGOLL T.: Intuitive Error Space Exploration of Medical Image          Wilkins, 1997. 4
  Data in Clinical Daily Routine. In EG/VGTC Conference on Visualiza-          [HBG∗ 15] H UET P., B URG S., G ULUDEC D., H YAFIL F., B UVAT I.:
  tion (EuroVis) - Short Papers (2017). 8, 17                                    Variability and uncertainty of 18f-fdg pet imaging protocols for assessing
[GAH∗ 18] G ILLMANN C., A RBELAEZ P., H ERNANDEZ J. T., H AGEN                   inflammation in atherosclerosis: Suggestions for improvement. Journal
  H., W ISCHGOLL T.: An uncertainty-aware visual system for image pre-           of nuclear medicine : official publication, Society of Nuclear Medicine
  processing. Journal of Imaging 4, 9 (2018). 10                                 56 (02 2015). 9, 17
[GDP∗ 20] G LANG F., D ESHMANE A., P ROKUDIN S., M ARTIN F.,                   [HBK∗ 21] H ERGL C., B LECHA C., K RETZSCHMAR V., R AITH F.,
  H ERZ K., L INDIG T., B ENDER B., S CHEFFLER K., Z AISS M.: Deep-              G ÜNTHER F., S TOMMEL M., JANKOWAI J., H OTZ I., NAGEL T.,
  cest 3t: Robust mri parameter determination and uncertainty quantifica-        S CHEUERMANN G.: Visualization of tensor fields in mechanics. Com-
  tion with neural networks—application to cest imaging of the human             puter Graphics Forum (2021). 19

<a id="p022-b004"></a>

<!-- p022-b004 -->
© 2021 The Author(s)
                                                                                  Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-023"></a>

## PDF page 23

<a id="p023-b001"></a>

<!-- p023-b001 -->
C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey                         687

<a id="p023-b002"></a>

<!-- p023-b002 -->
[HCMC10] H ELLIER P., C OUPÉ P., M ORANDI X., C OLLINS D. L.: An                         [KAS97] K ALET I. J., AUSTIN -S EYMOUR M. M.: The Use of Medical
  automatic geometrical and statistical method to detect acoustic shadows                  Images in Planning and Delivery of Radiation Therapy. Journal of the
  in intraoperative ultrasound brain images. Medical Image Analysis 14, 2                  American Medical Informatics Association 4, 5 (09 1997), 327–339. 4
  (2010), 195 – 204. 8, 17
                                                                                         [KMM∗ 18] K REISER J., M EUSCHKE M., M ISTELBAUER G., P REIM
[HDF10] H ASINOFF S. W., D URAND F., F REEMAN W. T.: Noise-                                B., ROPINSKI T.: A survey of flattening-based medical visualization
  optimal capture for high dynamic range photography. In 2010 IEEE                         techniques. Computer Graphics Forum 37 (06 2018), 597–624. 2
  Computer Society Conference on Computer Vision and Pattern Recogni-
  tion (June 2010), pp. 553–560. 5                                                       [KMS∗ 08] K EIM D. A., M ANSMANN F., S CHNEIDEWIND J., T HOMAS
                                                                                           J., Z IEGLER H.: Visual analytics: Scope and challenges. In Visual Data
[Hel08] H ELTON J. C.: Uncertainty and sensitivity analysis for models of                  Mining, vol. 4404 of Lecture Notes in Computer Science. Springer, 2008,
  complex systems. In Computational Methods in Transport: Verification                     pp. 76–90. 20
  and Validation (Berlin, Heidelberg, 2008), Springer Berlin Heidelberg,
  pp. 207–228. 5                                                                         [Kni08] K NISS J.: Managing uncertainty in visualization and analysis of
                                                                                           medical data. IEEE International Symposium on Biomedical Imaging
[HFPN90] H ÖHNE K., F UCHS H., P IZER S., N ORTH ATLANTIC                                  (06 2008), 832 – 835. 14, 18
  T REATY O RGANIZATION . S CIENTIFIC A FFAIRS D IVISION: 3D Imag-
  ing in Medicine: Algorithms, Systems, Applications. NATO ASI Series :                  [KSE16] K ROES T., S CHUT D., E ISEMANN E.: Smooth probabilistic
  Advanced Science Institutes Series: Series F, Computer and system sci-                   ambient occlusion for volume rendering. In GPU Pro 6. CRC Press,
  ences. Springer-Verlag, 1990. 4                                                          2016, pp. 475–485. 14, 18
[HFSR19] H ARMS R., F RITZ F., S CHOENMAKERS S., ROEBROECK A.:                           [KT08] KOHLI P., T ORR P. H. S.: Measuring uncertainty in graph cut
  Fast quantification of uncertainty in non-linear diffusion mri models for                solutions. Comput. Vis. Image Underst. 112, 1 (2008), 30–38. 11, 17
  artifact detection and more power in group studies. bioRxiv (2019). 8, 9               [KWKN12] K ARAMALIS A., W EIN W., K LEIN T., NAVAB N.: Ultra-
[HLF14] H OWARD M., L UTTMAN A., F OWLER M.: Sampling-based                                sound confidence maps using random walks. Medical image analysis 16
  uncertainty quantification in deconvolution of x-ray radiographs. Journal                (08 2012), 1101–12. 8, 17
  of Computational and Applied Mathematics 270 (2014), 43 – 51. Fourth                   [KWKP20] K WON Y., W ON J.-H., K IM B. J., PAIK M. C.: Uncertainty
  International Conference on Finite Element Methods in Engineering and                    quantification using bayesian neural networks in classification: Applica-
  Sciences (FEMTEC 2013). 8, 17                                                            tion to biomedical image segmentation. Computational Statistics & Data
[HMH∗ 15] H E Y., M IRZARGAR M., H UDSON S., K IRBY R. M.,                                 Analysis 142 (2020). 12, 17
  W HITAKER R. T.: An uncertainty visualization technique using pos-                     [LBdJ18] L ULICH S. M., B ERKSON K. H., [ DE J ONG ] K.: Acquiring
  sibility theory: Possibilistic marching cubes. International Journal for                 and visualizing 3d/4d ultrasound recordings of tongue motion. Journal
  Uncertainty Quantification 5, 5 (2015), 433–451. 13, 17                                  of Phonetics 71 (2018), 410 – 424. 8, 17
[HQC∗ 19] H ULLMAN J., Q IAO X., C ORRELL M., K ALE A., K AY M.:                         [LBMP∗ 01] L E B IHAN D., M ANGIN J.-F., P OUPON C., C LARK C. A.,
  In pursuit of error: A survey of uncertainty visualization evaluation.                   PAPPATA S., M OLKO N., C HABRIAT H.: Diffusion tensor imaging:
  IEEE Transactions on Visualization and Computer Graphics 25, 1 (Jan                      Concepts and applications. Journal of Magnetic Resonance Imaging 13,
  2019), 903–913. 2                                                                        4 (2001), 534–546. 4
[HR18] H ERSHKOVITCH T., R IKLIN -R AVIV T.: Model-dependent un-
                                                                                         [LC87] L ORENSEN W. E., C LINE H. E.: Marching cubes: A high res-
  certainty estimation of medical image segmentation. In 2018 IEEE 15th
                                                                                           olution 3d surface construction algorithm. In Proceedings of the 14th
  International Symposium on Biomedical Imaging (ISBI 2018) (2018),
                                                                                           Annual Conference on Computer Graphics and Interactive Techniques
  pp. 1373–1376. 11, 17
                                                                                           (1987), SIGGRAPH ’87, ACM, pp. 163–169. 12
[HSM08] H UETTEL S., S ONG A., M C C ARTHY G.: Functional Mag-
                                                                                         [LDCA17] L E F OLGOC L., D ELINGETTE H., C RIMINISI A., AYACHE
  netic Resonance Imaging, Second Edition. Palgrave Macmillan, 12 2008.
                                                                                           N.: Quantifying registration uncertainty with sparse bayesian modelling.
  9
                                                                                           IEEE Transactions on Medical Imaging 36, 2 (2017), 607–617. 10, 11,
[Hul20] H ULLMAN J.: Why authors don’t visualize uncertainty. IEEE                         17
  Transactions on Visualization & Computer Graphics 26, 01 (jan 2020),
  130–139. 19                                                                            [LEE12] L IN G., E NGEL D. W., E SLINGER P. W.: Survey and Evaluate
                                                                                           Uncertainty Quantification Methodologies. Tech. rep., Pacific Northwest
[Jä08]    JÄHNE B.: Digital image processing. Prentice Hall, 2008. 4                       National Lab.(PNNL), Richland, WA (United States), 2012. 5
[JA19] J ENA R., AWATE S. P.: A bayesian neural net to segment images                    [LFM∗ 15] L IGUORI C., F RAUENFELDER G., M ASSARONI C., S ACCO -
   with uncertainty estimates and good calibration. In Information Process-                MANDI P., G IURAZZA F., P ITOCCO F., M ARANO R., S CHENA E.:
   ing in Medical Imaging (Cham, 2019), Springer International Publishing,                 Emerging clinical applications of computed tomography. Medical De-
   pp. 3–15. 12                                                                            vices: Evidence and Research 8 (06 2015), 265–78. 3
[JB04] J ONES D. K., BASSER P. J.: “squashing peanuts and smashing                       [LGM∗ 14] L ELANDAIS B., G ARDIN I., M OUCHARD L., V ERA P.,
   pumpkins”: How noise distorts diffusion-weighted mr data. Magnetic                      RUAN S.: Dealing with uncertainty and imprecision in image segmenta-
   Resonance in Medicine 52, 5 (2004), 979–993. 19                                         tion using belief function theory. Int. J. Approx. Reasoning 55, 1 (2014),
[JED∗ 20] J ENA A., E NGELKE U., DWYER T., R AIAMANICKAM V.,                               376–387. 11, 17
   PARIS C.: Uncertainty visualisation: An interactive visual survey.                    [LLPY07] L UNDSTRÖM C., L JUNG P., P ERSSON A., Y NNERMAN A.:
   In 2020 IEEE Pacific Visualization Symposium (PacificVis) (2020),                       Uncertainty visualization in medical volume rendering using probabilis-
   pp. 201–205. 2                                                                          tic animation. Visualization and Computer Graphics, IEEE Transactions
[JH01] J I Q., H ARALICK R. M.: Error propagation for the hough trans-                     on 13 (12 2007), 1648 – 1655. 14, 18
   form. Pattern Recognition Letters 22, 6 (2001), 813 – 823. 10, 17                     [LML∗ 07] L IU J., M A W., L IU F., H U Y., YANG J., X U X.: Study and
[Jon03] J ONES D. K.: Determining and visualizing uncertainty in esti-                     application of medical image visualization technology. In Digital Hu-
   mates of fiber orientation from diffusion tensor mri. Magnetic Resonance                man Modeling (Berlin, Heidelberg, 2007), Springer Berlin Heidelberg,
   in Medicine 49, 1 (2003), 7–12. 14, 18                                                  pp. 668–677. 4
[Jon08] J ONES D. K.: Tractography gone wild: Probabilistic fibre track-                 [LSBP17] L AWONN K., S MIT N., B ÜHLER K., P REIM B.: A survey on
   ing using the wild bootstrap with diffusion tensor mri. IEEE Transactions               multimodal medical data visualization. Computer Graphics Forum 37
   on Medical Imaging 27, 9 (2008), 1268–1274. 13                                          (10 2017). 2

<a id="p023-b003"></a>

<!-- p023-b003 -->
© 2021 The Author(s)
Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-024"></a>

## PDF page 24

<a id="p024-b001"></a>

<!-- p024-b001 -->
688                C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey

<a id="p024-b002"></a>

<!-- p024-b002 -->
[LTAH13] L OTFI T., TANG L., A NDREWS S., H AMARNEH G.: Improv-                [PB14b] P REIM B., B OTHA C.: Chapter 6 - surface rendering. In Visual
   ing probabilistic image registration via reinforcement learning and un-       Computing for Medicine (Second Edition), second edition ed. Morgan
   certainty evaluation. In International Workshop on Machine Learning in        Kaufmann, Boston, 2014, pp. 229 – 267. 4
   Medical Imaging (01 2013), pp. 188–195. 10, 17                              [PRH10] P RASSNI J.-S., ROPINSKI T., H INRICHS K.: Uncertainty-
[LvB17] L OUCKS D. P., VAN B EEK E.: An Introduction to Probability,             aware guided volume segmentation. Visualization and Computer Graph-
  Statistics, and Uncertainty. Springer International Publishing, Cham,          ics, IEEE Transactions on 16, 6 (2010), 1358–1365. 11, 12, 17
  2017, pp. 213–300. 5                                                         [PRJ12] P OTTER K., ROSEN P., J OHNSON C. R.: From quantification
[LWA∗ 20] L EVONTIN P., WALTON J., AUFEGGER L., BARONS M.,                       to visualization: A taxonomy of uncertainty visualization approaches. In
  BARONS E., F RENCH S., H OUSSINEAU J., K LEINEBERG J., M CBRIDE                Uncertainty Quantification in Scientific Computing (Berlin, Heidelberg,
  M., S MITH J.: Visualising Uncertainty: A short introduction. Sad Press,       2012), Springer Berlin Heidelberg, pp. 226–249. 2, 5
  01 2020. 1
                                                                               [PWH11] P ÖTHKOW K., W EBER B., H EGE H.-C.: Probabilistic march-
[MA19] M EHTA R., A RBEL T.: 3d u-net for brain tumour segmentation.             ing cubes. In Computer Graphics Forum (2011), vol. 30, Wiley Online
  In Brainlesion: Glioma, Multiple Sclerosis, Stroke and Traumatic Brain         Library, pp. 931–940. 12, 17
  Injuries (Cham, 2019), Springer International Publishing, pp. 254–266.
                                                                               [PXP00] P HAM D. L., X U C., P RINCE J. L.: Current methods in medical
  12
                                                                                 image segmentation. Annual Review of Biomedical Engineering 2, 1
[MCC∗ 20] M A J., C HEN J., C HEN L., J IN L., Q IN X.: Dynamic visu-            (2000), 315–337. 4
  alization of uncertainties in medical feature of interest. IEEE Access 8
                                                                               [RFCL16] RODRÍGUEZ J. H., F RAILE F. J. C., C ONDE M. J. R.,
  (2020), 119170–119183. 14, 18
                                                                                 L LORENTE P. L. G.: Computer aided detection and diagnosis in medical
[Mor07] M ORI S.: Chapter 9 - three-dimensional tract reconstruction. In         imaging: A review of clinical and educational applications. In Proceed-
  Introduction to Diffusion Tensor Imaging. Elsevier Science B.V., Ams-          ings of the Fourth International Conference on Technological Ecosys-
  terdam, 2007, pp. 93 – 123. 13                                                 tems for Enhancing Multiculturality (New York, NY, USA, 2016), TEEM
[MPG∗ 16]  M IRAMS G. R., PATHMANATHAN P., G RAY R. A., C HAL -                  ’16, Association for Computing Machinery, p. 517–524. 4
  LENOR P., C LAYTON R. H.: Uncertainty and variability in computa-            [RGH∗ 19] R ISTOVSKI G., G ARBERS N., H AHN H. K., P REUSSER T.,
  tional and mathematical models of cardiac physiology. The Journal of           L INSEN L.: Uncertainty-aware visual analysis of radiofrequency abla-
  Physiology 594, 23 (2016), 6833–6847. 7                                        tion simulations. Computers & Graphics 79 (2019), 24 – 35. 15, 18
[MRSS08] M ENCATTINI A., R ABOTTINO G., S ALICONE S., S ALMERI                 [RHH∗ 20] R EINHOLD J. C., H E Y., H AN S., C HEN Y., G AO D., L EE J.-
  M.: Uncertainty handling and propagation in x-ray images analysis sys-         H., P RINCE J. L., C ARASS A.: Validating uncertainty in medical image
  tems by means of random-fuzzy variables. In 2008 IEEE International            translation. 2020 IEEE 17th International Symposium on Biomedical
  Workshop on Advanced Methods for Uncertainty Estimation in Measure-            Imaging (ISBI) (2020), 95–98. 8, 17
  ment (July 2008), pp. 50–55. 10, 17
                                                                               [RLBS03] R HODES P. J., L ARAMEE R. S., B ERGERON R. D., S PARR
[MSH∗ 20] M AACK R. G. C., S AUR D., H AGEN H., S CHEUERMANN                     T. M.: Uncertainty visualization methods in isosurface volume render-
  G., G ILLMAN C.: Towards closing the gap of medical visualization              ing. In Eurographics 2003, Short Papers (2003), pp. 83–88. 14, 18
  research and clinical daily routine. In VisGap - The Gap between Visu-
  alization Research and Visualization Software (2020), The Eurographics       [RMW∗ 17] R ISTOVSKI G., M ATUTE J., W EHRUM T., H ARLOFF A.,
  Association. 7, 20                                                             H AHN H. K., L INSEN L.: Uncertainty visualization for interactive as-
                                                                                 sessment of stenotic regions in vascular structures. Computers & Graph-
[MUO06] M ALEIKE D., U NKELBACH J., O ELFKE U.: Simulation and                   ics 69 (2017), 116 – 130. 15, 16, 18
  visualization of dose uncertainties due to interfractional organ motion.
  Physics in medicine and biology 51 (06 2006), 2237–52. 15, 18                [ROP11] ROPINSKI T., O ELTZE S., P REIM B.: Survey of glyph-based
                                                                                 visualization techniques for spatial multivariate medical data. Comput.
[NBYR12] N GUYEN K. T., B OCK A., Y NNERMAN A., ROPINSKI T.:                     Graph. 35, 2 (2011), 392–401. 14
  Deriving and Visualizing Uncertainty in Kinetic PET Modeling. In Eu-
  rographics Workshop on Visual Computing for Biology and Medicine             [RPB15] RONNEBERGER O., P.F ISCHER , B ROX T.: U-net: Convolu-
  (2012), The Eurographics Association. 9, 17                                    tional networks for biomedical image segmentation. In Medical Im-
                                                                                 age Computing and Computer-Assisted Intervention (MICCAI) (2015),
[NMI10] NAZ S., M AJEED H., I RSHAD H.: Image segmentation using                 vol. 9351 of LNCS, Springer, pp. 234–241. 12
  fuzzy clustering: A survey. In Emerging Technologies (ICET), 2010 6th
  International Conference on (Oct 2010), pp. 181–186. 11                      [RPHL14] R ISTOVSKI G., P REUSSER T., H AHN H. K., L INSEN L.: Un-
                                                                                 certainty in medical visualization: Towards a taxonomy. Computers &
[NPAA20] NAIR T., P RECUP D., A RNOLD D. L., A RBEL T.: Explor-                  Graphics 39 (2014), 60 – 73. 1, 2, 3, 6
  ing uncertainty measures in deep networks for multiple sclerosis lesion
  detection and segmentation. Medical Image Analysis 59 (2020). 12, 17         [RPSW10] R ISHOLM P., P IEPER S., S AMSET E., W ELLS W. M.: Sum-
                                                                                 marizing and visualizing uncertainty in non-rigid registration. In Medical
[Nud86] N UDELMAN S.: Image acquisition devices and their application            Image Computing and Computer-Assisted Intervention – MICCAI 2010
  to diagnostic medicine. In Pictorial Information Systems in Medicine           (Berlin, Heidelberg, 2010), Springer Berlin Heidelberg, pp. 554–561. 10,
  (Berlin, Heidelberg, 1986), Springer Berlin Heidelberg, pp. 29–104. 3          11, 17
[OM02] O LSTON C., M ACKINLAY J. D.: Visualizing data with bounded             [SFJ∗ 16] S CHLACHTER M., F ECHTER T., J URISIC M., S CHIMEK -
  uncertainty. In Proceedings of the IEEE Symposium on Information Visu-          JASCH T., O EHLKE O., A DEBAHR S., B IRKFELLNER W., N ESTLE U.,
  alization (InfoVis’02) (USA, 2002), INFOVIS ’02, IEEE Computer So-              B ÜHLER K.: Visualization of deformable image registration quality us-
  ciety, p. 37. 2, 5                                                             ing local image dissimilarity. IEEE Transactions on Medical Imaging
[PAL01] PAL S. K.: Fuzzy image processing and recognition: Uncer-                35, 10 (2016), 2319–2328. 11, 17
  tainty handling and applications. International Journal of Image and         [SFP∗ 00] S CHIEMANN T., F REUDENBERG J., P FLESSER B., P OMMERT
  Graphics 01, 02 (2001), 169–195. 10, 17                                         A., P RIESMEYER K., R IEMER M., S CHUBERT R., T IEDE U., H ÖHNE
[PB07] P REIM B., BARTZ D.: Visualization in Medicine: Theory, Algo-              K.: Exploring the visible human using the voxel-man framework. Com-
  rithms, and Applications. Morgan Kaufmann Publishers Inc., San Fran-           puterized Medical Imaging and Graphics 24, 3 (2000), 127–132. 5
  cisco, CA, USA, 2007. 1, 3, 7                                                [SHM10] S AAD A., H AMARNEH G., M OELLER T.: Exploration and
[PB14a] P REIM B., B OTHA C.: Chapter 1 - introduction. In Visual Com-           visualization of segmentation uncertainty using shape and appearance
  puting for Medicine (Second Edition), second edition ed. Morgan Kauf-          prior information. In IEEE Visualization (IEEE Vis) (2010), pp. 1366–
  mann, Boston, 2014, pp. 1 – 11. 1, 3                                           1375. 11, 12, 17

<a id="p024-b003"></a>

<!-- p024-b003 -->
© 2021 The Author(s)
                                                                                  Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.

<a id="page-025"></a>

## PDF page 25

<a id="p025-b001"></a>

<!-- p025-b001 -->
C.Gillmann, D. Saur, T. Wischgoll & G. Scheuermann / Uncertainty-aware Visualization in Medical Imaging - A Survey                      689

<a id="p025-b002"></a>

<!-- p025-b002 -->
[SLK00] S ZCZEPANIAK P., L ISBOA P., K ACPRZYK J.: Fuzzy Systems                         [WSSM19] W INDHAGER F., S ALISU S., S CHREDER G., M AYR E.: Un-
  in Medicine. Springer, 01 2000. 10                                                       certainty of what and for whom -and does anyone care? propositions for
[SMC∗ 06] S IMPSON A. L., M A B., C HEN E. C. S., E LLIS R. E.,                            cultural collection visualization. 19
  S TEWART A. J.: Using registration uncertainty visualization in a user                 [WTW∗ 08] W HITCHER B., T UCH D. S., W ISCO J. J., S ORENSEN
  study of a simple surgical task. In Medical Image Computing and                          A. G., WANG L.: Using the wild bootstrap to quantify uncertainty in
  Computer-Assisted Intervention – MICCAI 2006 (Berlin, Heidelberg,                        diffusion tensor imaging. Human Brain Mapping 29, 3 (2008), 346–362.
  2006), Springer Berlin Heidelberg, pp. 397–404. 16, 18                                   9, 17
[SMH10] S AAD A., M ÖLLER T., H AMARNEH G.: ProbExplorer:                                [YCMA12] YONG C., C HEW K. M., M AHMOOD N. H., A RIFFIN I.: A
  Uncertainty-guided Exploration and Editing of Probabilistic Medical Im-                  survey of visualization tools in medical imaging. Procedia - Social and
  age Segmentation. Computer Graphics Forum (2010). 15                                     Behavioral Sciences 56 (10 2012), 265–271. 2
[Smi13] S MITH R. C.: Uncertainty Quantification: Theory, Implementa-                    [YHS94] Y I S., H ARALICK R. M., S HAPIRO L. G.: Error propagation
  tion, and Applications. Society for Industrial and Applied Mathematics,                  in machine vision. Machine Vision and Applications 7, 2 (Jun 1994),
  USA, 2013. 6                                                                             93–114. 10
[SMS∗ 18] S AAR G., M ILLO C., S ZAJEK L., BACON J., H ERSCOVITCH                        [YN15] YANG X., N IETHAMMER M.: Uncertainty quantification for
  P., KORETSKY A.: Anatomy, functionality, and neuronal connectivity                       lddmm using a low-rank hessian approximation. In Medical Image
  with manganese radiotracers for positron emission tomography. Molec-                     Computing and Computer-Assisted Intervention – MICCAI 2015 (Cham,
  ular Imaging and Biology 20 (02 2018). 4                                                 2015), Springer International Publishing, pp. 289–296. 11, 17
[SMV∗ 14] S IMPSON A. L., M A B., VASARHELYI E. M., B ORSCH -
                                                                                         [ZBDH∗ 15] Z U B ERGE C. S., D ECLARA D., H ENNERSPERGER C.,
  NECK D. P., E LLIS R. E., JAMES S TEWART A.: Computation and visu-
                                                                                           BAUST M., NAVAB N.: Real-time uncertainty visualization for b-mode
  alization of uncertainty in surgical navigation. The International Journal
                                                                                           ultrasound. In 2015 IEEE Scientific Visualization Conference (SciVis)
  of Medical Robotics and Computer Assisted Surgery 10, 3 (2014), 332–
                                                                                           (2015), IEEE, pp. 33–40. 8, 17
  343. 16, 18
                                                                                         [ZSL∗ 16]Z HANG C., S CHULTZ T., L AWONN K., E ISEMANN E., V I -
[SP19] S AMEI E., P ECK D. J.: Physics of Radiation and Matter. John
                                                                                           LANOVA A.: Glyph-based comparative visualization for diffusion ten-
  Wiley & Sons, Ltd, 2019, ch. 1, pp. 1–54. 1
                                                                                           sor fields. IEEE Trans. on Visualization and Computer Graphics 22, 1
[SRM∗ 19] S CHLACHTER M., R AIDOU R., M UREN L., P REIM B.,                                (2016), 797–806. 15, 18
  P UTORA P., B ÜHLER K.: State-of-the-art report: Visual computing in
  radiation therapy planning. Computer Graphics Forum 38, 3 (2019),                      [ZT03] Z HOU J., T ÖNNIES K.: State of the art for volume rendering.
  753–779. 15                                                                              Technical Report (08 2003). 14
[SSHM07] S AAD A., S MITH B., H AMARNEH G., M ÖLLER T.: Simul-                           https://www.overleaf.com/project/607562f7dc9a8a59bb17877d
  taneous segmentation, kinetic parameter estimation, and uncertainty vi-
  sualization of dynamic pet images. In International Conference on Med-
  ical Image Computing and Computer-Assisted Intervention (10 2007),
  pp. 726–733. 9, 17, 18
[SSK∗ 16] S ACHA D., S ENARATNE H., K WON B. C., E LLIS G., K EIM
   D. A.: The Role of Uncertainty, Awareness, and Trust in Visual Analyt-
  ics. IEEE Transactions on Visualization and Computer Graphics (Pro-
  ceedings of the Visual Analytics Science and Technology) 22, 01 (Jan.
  2016), 240–249. 20
[SWGS11] S IMPSON I. J. A., W OOLRICH M., G ROVES A. R., S CHN -
  ABEL J. A.: Longitudinal brain mri analysis with uncertain registra-
  tion. In Medical Image Computing and Computer-Assisted Intervention
  – MICCAI 2011 (Berlin, Heidelberg, 2011), Springer Berlin Heidelberg,
  pp. 647–654. 11
[TS16] T IAN X., S AMEI E.: Accurate assessment and prediction of noise
  in clinical ct images. Medical Physics 43, 1 (2016), 475–482. 8, 17
[TWSM15] T ORSNEY-W EIR T., S EDLMAIR M., M ÖLLER T.: Decision
  making in uncertainty visualization. In VDMU Workshop on Visualiza-
  tion for Decision Making under Uncertainty 2015 (October 2015). 1
[UHP∗ 20] U NGER J., H EBISCH C., P HIPPS J. E., AO L. L AGARTO J.,
  K IM H., DARROW M. A., B OLD R. J., M ARCU L.: Real-time diagno-
  sis and visualization of tumor margins in excised breast specimens using
  fluorescence lifetime imaging and machine learning. Biomed. Opt. Ex-
  press 11, 3 (Mar 2020), 1216–1230. 15
[VZKL06] V ILANOVA A., Z HANG S., K INDLMANN G., L AIDLAW D.:
  An Introduction to Visualization of Diffusion Tensor Imaging and Its
  Applications. Springer Berlin Heidelberg, Berlin, Heidelberg, 2006,
  pp. 121–153. 19
[WCW∗ 17] W IESER H.-P., C ISTERNAS E., WAHL N., U LRICH S.,
  S TADLER A., M ESCHER H., M ÜLLER L.-R., K LINGE T., G ABRYS
  H., B URIGO L., ET AL .: Development of the open-source dose calcu-
  lation and optimization toolkit matrad. Medical Physics 44, 6 (2017),
  2556–2568. 15, 16, 18
[WHLS19] WANG J., H AZARIKA S., L I C., S HEN H.: Visualization
  and visual analysis of ensemble data: A survey. IEEE Transactions on
  Visualization and Computer Graphics 25 (2019), 2853–2872. 20

<a id="p025-b003"></a>

<!-- p025-b003 -->
© 2021 The Author(s)
Computer Graphics Forum © 2021 The Eurographics Association and John Wiley & Sons Ltd.
