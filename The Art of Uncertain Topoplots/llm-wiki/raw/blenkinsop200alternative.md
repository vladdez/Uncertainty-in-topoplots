---
id: "blenkinsop200alternative"
title: "Evaluating the Perception of Uncertainty in Alternative Visualization Strategies"
source_file: "The Art of Uncertain Topoplots/papers/blenkinsop200alternative.pdf"
source_sha256: "7913372d8195e33e6a37bcbde160513993ebc979b5545bc3688dfbb451dec5ab"
extraction_format: 1
---

# Evaluating the Perception of Uncertainty in Alternative Visualization Strategies — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
1

<a id="p001-b002"></a>

<!-- p001-b002 -->
Evaluating the Perception of Uncertainty in
                                                                                                                                                              Alternative Visualization Strategies
                                                                                                                                 steve blenkinsop and pete fisher, Department of Geography / University of Leicester / UK
                                                                                                                                               lucy bastin, Department of Geography / University of Nottingham / UK
                                                                                                                                           jo wood, Department of Information Science / City University / London / UK
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p001-b003"></a>

<!-- p001-b003 -->
Abstract                                       Some research has been conducted on techniques for
                                                                                                                                 Although a number of methods have been proposed for                    the visualization of uncertainty. MacEachren (1992) pro-
                                                                                                                                 representing uncertainty in spatial information, there                 vides a thorough summary, while Wel, Gaag, and Gorte
                                                                                                                                 has been relatively little testing of how users interpret un-          (1998) specifically review the visualization of uncertainty
                                                                                                                                 certainty from those methods. Using results of a fuzzy                 in remote sensing classification. The bulk of that re-
                                                                                                                                 classification of satellite imagery, this study looks at users’        search has focused on new methods of visualizing uncer-
                                                                                                                                 perceptions of a number of different methods for visual-               tainty, but there has been a general lack of research to
                                                                                                                                 ization of uncertainty. Both relatively expert and novice              assess the effectiveness of these new tools (Fisher 1996;
                                                                                                                                 users are highly successful at determining classification              Howard and MacEachren 1996), despite a strong carto-
                                                                                                                                 uncertainty among pixels when shown in grey-scale imag-                graphic tradition of perceptual testing. Schweizer and
                                                                                                                                 es and histograms, as well as having moderate success                  Goodchild (1992) conducted an evaluation of bivariate
                                                                                                                                 with random animations. Viewers considered that al-                    maps representing data and reliability, using 15 catego-
                                                                                                                                 though random animation is a good method of showing                    ries of data and a further 15 of data quality. Colour value
                                                                                                                                 overall classification uncertainty, grey-scale images are a            and saturation were used to represent reliability values,
                                                                                                                                 better way to extract specific information. Serial anima-              and the researchers noted that participants ignored the
                                                                                                                                 tion was not widely appreciated. In general, the accuracy              value–saturation distinction, which caused them difficul-
                                                                                                                                 of answers to specific questions was greatly improved                  ty in judging reliability at all. They also noted the lack of
                                                                                                                                 when linked views and ancillary graphic information                    an intuitive association between colour value and uncer-
                                                                                                                                 were available. All the methods examined in this study, in             tainty.
                                                                                                                                 short, were relatively successful, with the exception of                   MacEachren, Brewer, and Pickle (1998) assessed the
                                                                                                                                 serial animation.                                                      performance of study participants using data reliability
                                                                                                                                                                                                        schemes for choropleth maps by comparing map inter-
                                                                                                                                                       1. Introduction                                  pretation performance on map-reading tasks typically

<a id="p001-b004"></a>

<!-- p001-b004 -->
W
                                                                                                                                           ith advances in digital techniques for visualiz-             undertaken in epidemiological analysis. These tasks re-
                                                                                                                                           ing spatial information, cartography has come                quired participants to report the death rate and reliabili-
                                                                                                                                           to be conceptualized as a means of interactive               ty of areas while also selecting, from a pair of regions,
                                                                                                                                 visual exploration of spatial information rather than just             the one with the highest rate, greatest clustering, and
                                                                                                                                 a communication tool (Kraak and Ormeling 1996;                         highest overall reliability. The researchers concluded
                                                                                                                                 MacEachren 1994). Recent concerns with visualizing un-                 that reliability could successfully be represented on pa-
                                                                                                                                 certainty in spatial information are typical of this para-             per maps without impeding the map readers’ ability to
                                                                                                                                 digm shift (Beard and Buttenfield 1999; MacEachren                     estimate values or identify clusters. They suggested that,
                                                                                                                                 1992; Wel, Hootsmans, and Ormeling 1994). The aim of                   for exploratory uses, the preferred symbolization
                                                                                                                                 uncertainty visualization is not just to provide users with            scheme should be visually separable, allowing map users
                                                                                                                                 meta-information on data quality (Guptill and Morrison                 both to notice reliability and also to look beyond it to
                                                                                                                                 1995) but also to enable them to explore how uncer-                    identify clusters.
                                                                                                                                 tainty is related to other variables. Within gis, vis-                     In calling for similar tests in the interactive computer
                                                                                                                                 ualizing spatial uncertainty is particularly important in a            environment, MacEachren and others (1998) cite re-
                                                                                                                                 decision-support context.                                              search by Evans (1997), who created an interactive envi-
                                                                                                                                                                                                        ronment for testing users’ responses to the simultaneous
                                                                                                                                                                                                        viewing of data and metadata. Two bivariate methods of
                                                                                                                                                                                                        display were found to be helpful: a composite static dis-
                                                                                                                                 Contact Author: Pete Fisher, Department of Geography, University
                                                                                                                                 of Leicester, Leicester LE1 7RH, UK. Tel: +44 (0) 116 252 3839. Fax:
                                                                                                                                                                                                        play and an animation. A map displaying only reliability
                                                                                                                                 +44 (0) 116 252 3854. E-mail: pete.fisher@le.ac.uk.                    information and an interactive “toggling” between data
                                                                                                                                 CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
2                                                steve blenkinsop and others
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p002-b002"></a>

<!-- p002-b002 -->
Figure 1. Linked visualizations using FLIERS software (from colour original). Colour versions of the figures can be viewed at
                                                                                                                                 http://www.geog.le.ac.uk/ pff1/cartographica.htm.

<a id="p002-b003"></a>

<!-- p002-b003 -->
and reliability information were observed to be less effec-          fuzzy memberships extracted from satellite imagery. Spe-
                                                                                                                                 tive. Evans concluded that future work should broaden                cifically, the project aims to
                                                                                                                                 the scope by employing alternative techniques and allow-             • assemble good-quality data sets for validation of fuzzy
                                                                                                                                 ing the user greater control over the viewing environ-                   information
                                                                                                                                 ment.                                                                • develop software for the extraction of fuzzy informa-
                                                                                                                                    In the research reported here, we test a variety of                   tion from satellite imagery
                                                                                                                                 methods for portraying uncertainty in spatial data. We               • enable visualization of fuzzy memberships by ad-
                                                                                                                                 apply these methods to classified satellite imagery in a                 vanced exploratory visualization tools
                                                                                                                                 digital environment. The next section reviews the back-                  The objective of this last task is to convey the meaning
                                                                                                                                 ground to the current work. Next, the basic methods em-              of fuzzy set memberships to general users and decision
                                                                                                                                 ployed and the nature of the test stimulus are discussed.            makers, in the belief that providing such information
                                                                                                                                 A number of different stages of the test are identified              will empower the remote sensing analyst (fliers 1998,
                                                                                                                                 and the results discussed in turn. Finally, general conclu-          28).
                                                                                                                                 sions that emerge from the work are outlined.                            The visualization software, programmed with Java
                                                                                                                                                                                                      Beans, provides a user interface to the system that offers
                                                                                                                                             2. Background: fliers Project                            the ability to dynamically link visualizations so that data
                                                                                                                                 fliers (Fuzzy Land Information from Environmental                    in one coordinate space may be investigated in another
                                                                                                                                 Remote Sensing) is a collaborative project working on                (Bastin, Wood, and Fisher 2001). Three key types of visu-
                                                                                                                                 CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
evaluating the perception of uncertainty in alternative visualization strategies                               3

<a id="p003-b002"></a>

<!-- p003-b002 -->
2. Random animation of possible outcomes of the classi-
                                                                                                                                                                                                        fication process, as proposed by Fisher (1994, 1996):
                                                                                                                                                                                                        Figure 1, top left; Figure 3.
                                                                                                                                                                                                    3. Serial animation of the grey-scale image (Davis and
                                                                                                                                                                                                        Keller 1997) to produce alpha cuts of the fuzzy mem-
                                                                                                                                                                                                        bership images, effectively giving users control of the
                                                                                                                                                                                                        level of crispening of the set and allowing them to
                                                                                                                                                                                                        “focus” on the data (MacEachren and others 1993):
                                                                                                                                                                                                        Figure 4. Two different approaches to serial anima-
                                                                                                                                                                                                        tion have been implemented; the first (combination
                                                                                                                                                                                                        method) shows all values above or below a certain
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p003-b003"></a>

<!-- p003-b003 -->
threshold as a grey-scale image, while the other (mov-
                                                                                                                                                                                                        ing shutter method) shows pixels with a small range
                                                                                                                                                                                                        of fuzzy memberships as black and white images. The
                                                                                                                                                                                                        range is changed to create the animation.
                                                                                                                                                                                                       These views are supported by such methods as
                                                                                                                                                                                                    • fuzzy spectral signatures (Bastin and others 2001)
                                                                                                                                 Figure 2. Fuzzy memberships of the lawn grass class displayed as      (Figure 1, bottom right; Figure 5)
                                                                                                                                 a grey-scale image.                                                • additive histograms of fuzzy memberships in a pixel
                                                                                                                                                                                                                             compared with neighbouring
                                                                                                                                                                                                                             pixels (Figure 6)
                                                                                                                                                                                                                         • scatter plots of memberships (Fig-
                                                                                                                                                                                                                             ure 1, top right), although testing
                                                                                                                                                                                                                             of these is not included here
                                                                                                                                                                                                                         Any two or more views of uncertainty
                                                                                                                                                                                                                         can be graphically linked, so that the
                                                                                                                                                                                                                         user may, for example, first view a
                                                                                                                                                                                                                         grey-scale image of membership in
                                                                                                                                                                                                                         one class and then link to views of
                                                                                                                                                                                                                         the behaviour of a particular pixel in
                                                                                                                                                                                                                         a fuzzy spectral signature, as well as
                                                                                                                                                                                                                         where it lies in a scatter plot, and ob-
                                                                                                                                                                                                                         serve the random animation of un-
                                                                                                                                                                                                                         certainty of the same area.
                                                                                                                                                                                                                             Further details of the visualization
                                                                                                                                                                                                                         software may be obtained from the
                                                                                                                                                                                                                         fliers home page at http://www.
                                                                                                                                                                                                                         geog.le.ac.uk/fliers/. The software
                                                                                                                                                                                                                         can be downloaded, together with a
                                                                                                                                                                                                                         sample tutorial, at http://www.geog.
                                                                                                                                                                                                                         le.ac.uk/fliers/vt1/.

<a id="p003-b004"></a>

<!-- p003-b004 -->
3. Methodology
                                                                                                                                                                                                                      Using the fliers software, a number
                                                                                                                                                                                                                      of views were captured both as static
                                                                                                                                                                                                                      images and as animated gif images.
                                                                                                                                                                                                                      A test stimulus was then developed
                                                                                                                                 Figure 3. Random animations used in stage 2: (A) isolated pixels and (B) full image using the Tcl/Tk scripting language
                                                                                                                                 animation (from colour original).                                                    (Dykes 1996). This allowed us to en-
                                                                                                                                                                                                                      capsulate the visual functionality of
                                                                                                                                                                                                                      the fliers software, including the
                                                                                                                                 alization of spatial data are available in the fliers visuali-   linking of graphic views, to produce a structured test of
                                                                                                                                 zation software, together with a number of supporting            users’ perception of the mapping of uncertainty in a
                                                                                                                                 graphics. The three methods of mapping uncertainty are           range of views and to record users’ responses when
                                                                                                                                 as follows:                                                      prompted to interpret those displays. The Tcl/Tk lan-
                                                                                                                                 1. Simple grey-scale images in which white areas are             guage allowed the interface for testing to be suited to
                                                                                                                                     more certain: Figure 1, bottom left; Figure 2.               the type of question being asked (Figure 7), while the dy-
                                                                                                                                 CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
4                                                  steve blenkinsop and others

<a id="p004-b002"></a>

<!-- p004-b002 -->
menced the same course of study, rel-
                                                                                                                                                                                                                               atively novice users who might have
                                                                                                                                                                                                                               completed an undergraduate course
                                                                                                                                                                                                                               in remote sensing and/or gis but
                                                                                                                                                                                                                               had not studied it in any depth. Test-
                                                                                                                                                                                                                               ing these two groups allowed us to
                                                                                                                                                                                                                               evaluate the visualization methods of
                                                                                                                                                                                                                               users with differing levels of expo-
                                                                                                                                                                                                                               sure to the principles of gis, remote
                                                                                                                                                                                                                               sensing, visualization, and geographi-
                                                                                                                                                                                                                               cal uncertainty. Importantly, neither
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p004-b003"></a>

<!-- p004-b003 -->
group had any experience with the
                                                                                                                                                                                                                               software prior to taking part in the
                                                                                                                                                                                                                               test.
                                                                                                                                                                                                                                   The test was made up of six sepa-
                                                                                                                                                                                                                               rate stages, using three basic styles of
                                                                                                                                                                                                                               question, illustrated in Figure 7:
                                                                                                                                 Figure 4. A combination of serial animations used in stage 4. By using the slider bar or
                                                                                                                                                                                                                               1. Grey-scale images: From grey-scale
                                                                                                                                 selecting a sequence of ascending or descending membership values, subjects may focus
                                                                                                                                                                                                                                    images (Figure 2), participants
                                                                                                                                 on sections of the data.
                                                                                                                                                                                                                                    were asked to identify the relative
                                                                                                                                                                                                                                    uncertainty among three high-
                                                                                                                                 namic, interactive elements of the software were re-                    lighted pixels in the grey-scale images of uncertainty.
                                                                                                                                 tained in the testing environment and made available to                 Images were presented both with and without a leg-
                                                                                                                                 users at their own request.                                             end in order to evaluate a participant’s understand-
                                                                                                                                     Initial testing was undertaken with 19 participants                 ing of the grey-scale itself. The 12 questions in this
                                                                                                                                 who had completed the MSc in Geographical Informa-                      section were split equally between the two forms:
                                                                                                                                 tion Systems at Leicester University (Group 1). This MSc
                                                                                                                                 program includes advanced taught modules in geo-                       a. This image shows the fuzzy classification for lawn grass. Which pix-
                                                                                                                                 graphic information visualization, remote sensing, and                 el is most certainly classified? [Choose pixel A, B ,or C] (Figure 7c)
                                                                                                                                 spatial information science, among other topics. This
                                                                                                                                 test group, therefore, was composed of relatively well in-             b. This image shows the verified data for lawn grass showing AC-
                                                                                                                                 formed users. Participants in the second phase of testing              TUAL mixing. Which pixel contains the highest proportion of lawn
                                                                                                                                 (Group 2) were 12 students who had recently com-                       grass? [Choose pixel A, B ,or C] (Figure 7c)

<a id="p004-b004"></a>

<!-- p004-b004 -->
Figure 5. Fuzzy spectral signatures for (A) a single highlighted pixel and (B) all pixels in a chosen area. Essentially, these are plots of
                                                                                                                                 mean memberships in every spectral band. The central line represents the reflectance in each band at which the maximum member-
                                                                                                                                 ships tend to be found. The bands around this line represent the spread of memberships.
                                                                                                                                 CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
evaluating the perception of uncertainty in alternative visualization strategies                                                  5

<a id="p005-b002"></a>

<!-- p005-b002 -->
using random animation of full images (Figure 4b),
                                                                                                                                                                                                              but, in this test, linked first with grey-scale images
                                                                                                                                                                                                              (Figure 3) and then with histograms (Figure 8). In
                                                                                                                                                                                                              this section, 20 questions were asked (10 without and
                                                                                                                                                                                                              10 with linked images), all of the following form:

<a id="p005-b003"></a>

<!-- p005-b003 -->
From the animation shown, which pixel is most certainly classified
                                                                                                                                                                                                             as X? [Choose from pixels A, B, or C] (Figure 7c)

<a id="p005-b004"></a>

<!-- p005-b004 -->
4. Random and serial animation of small regions: Partici-
                                                                                                                                                                                                              pants were asked 14 questions to assess the spatial dis-
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p005-b005"></a>

<!-- p005-b005 -->
tributions of uncertainty over a small region using
                                                                                                                                                                                                              random animations alone (Figure 3b) and random
                                                                                                                                                                                                              animations linked to serial animation (Figure 4) and
                                                                                                                                                                                                              to histograms (Figure 6). Typical questions in this sec-
                                                                                                                                                                                                              tion aree

<a id="p005-b006"></a>

<!-- p005-b006 -->
a. From the animation shown, what is the landcover most associated
                                                                                                                                                                                                             with lawn grass by the classifier at this location? [for the 3 × 3 pixel
                                                                                                                                                                                                             area, choose from the list of landcovers] (Figure 7a)

<a id="p005-b007"></a>

<!-- p005-b007 -->
b. From the animation, which area has the highest proportion of
                                                                                                                                                                                                             land classes as lawn grass with membership over 0.5? [Choose from
                                                                                                                                                                                                             3 × 3 groups of pixels A, B, or C] (Figure 7c)

<a id="p005-b008"></a>

<!-- p005-b008 -->
5. Regional uncertainty assessment: Regional uncertainty
                                                                                                                                                                                                              was evaluated using grey-scale images (Figure 2) and
                                                                                                                                                                                                              random animations (Figure 3b), both on their own
                                                                                                                                                                                                              and linked to fuzzy spectral signatures (Figure 5b).
                                                                                                                                                                                                              All questions in this section were of the following
                                                                                                                                 Figure 6. Histograms of fuzzy membership values displayed in a               form:
                                                                                                                                 cross-section diagram. The central column marked “C” refers to
                                                                                                                                 the pixel highlighted in the main image (from colour original).             This image shows the fuzzy classification data for lawn grass.
                                                                                                                                                                                                             Which pixel is most certainly classified as lawn grass? [Choose from
                                                                                                                                                                                                             3 × 3 groups of pixels A, B, or C] (Figure 7c)
                                                                                                                                 2. Random animation: Participants were asked to identify
                                                                                                                                    the relative uncertainty between triplets of pixels (10                Participants took about one hour to complete all stages
                                                                                                                                    questions), to estimate the absolute uncertainty in                    of the test, but their performance was not timed.
                                                                                                                                    single pixels (10 questions), and to identify both the                    In addition to the quantitative data produced by the
                                                                                                                                    most likely and the second most likely cover (5 ques-                  formal testing, participants in Group 1 were observed
                                                                                                                                    tions each) at highlighted pixels. They were asked to                  during the tests, and their behaviour and comments were
                                                                                                                                    examine random animations of either isolated pixels                    noted. They were also asked to complete a brief question-
                                                                                                                                    (Figure 3a) or the full scene (Figure 3b). Some exam-                  naire after finishing the tests. Logistical constraints pre-
                                                                                                                                    ples of questions in this section are                                  vented observation of participants in Group 2; therefore,
                                                                                                                                                                                                           a modified questionnaire was developed to extract similar
                                                                                                                                    a. From the animation shown, which pixel is most certainly classi-     information. Participants were asked whether they were
                                                                                                                                    fied as lawn grass? [choose pixel A, B, or C] (Figure 7c)              confident in understanding and answering the questions
                                                                                                                                                                                                           and how they rated the effectiveness of the images they
                                                                                                                                    b. From the animation shown, how certain are you that the land-        were using. The complementarity of specific testing with
                                                                                                                                    cover here is lawn grass? [specify the actual amount as a percent-     more qualitative questionnaires is noted in the carto-
                                                                                                                                    age] (Figure 7b)                                                       graphic literature (Olson 1981), particularly the useful-
                                                                                                                                                                                                           ness of the latter in extracting information about users’
                                                                                                                                    c. What is the SECOND most likely landcover at this location? [iden-   attitudes.
                                                                                                                                    tify the cover type concerned from the radio buttons] (Figure 7c)         Before beginning the test, participants were given a
                                                                                                                                                                                                           general introduction to the purpose of the test and some
                                                                                                                                 3. Random animation and linked information: The relative                  basic instructions on using the stimulus and were asked
                                                                                                                                    uncertainty was estimated between triplets of pixels                   to complete the accompanying questionnaires. Thereaf-
                                                                                                                                 CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
6                                               steve blenkinsop and others
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p006-b002"></a>

<!-- p006-b002 -->
Figure 7. Three examples (A, B, and C) of the main user interface screens of the test stimulus, showing the principal user responses
                                                                                                                                 used in testing (from colour originals).

<a id="p006-b003"></a>

<!-- p006-b003 -->
ter only questions relating to use of the stimulus were an-         the display of a legend respectively (Figure 8), and 15%
                                                                                                                                 swered. A short introduction to each stage of the                   of participants in this group incorrectly identified the
                                                                                                                                 experiment was included as part of the stimulus. All par-           darkest pixels as most certainly classified when no legend
                                                                                                                                 ticipants viewed the introduction to each stage, and they           was displayed. The success rates of Group 2 were signifi-
                                                                                                                                 could recall that introduction at any time while complet-           cantly lower: 25% without and 52.1% with a legend dis-
                                                                                                                                 ing the stage. No other explanation of any data view was            played. According to qualitative questionnaire data from
                                                                                                                                 provided.                                                           Group 2, several participants felt that unfamiliarity and a
                                                                                                                                                                                                     lack of knowledge constrained their performance, ren-
                                                                                                                                                  4. Results and Discussion                          dering them unable to grasp what the images were con-
                                                                                                                                                                                                     veying. These factors were not apparent in the more
                                                                                                                                                   4.1 grey-scale images                             experienced Group 1 participants, who found the dis-
                                                                                                                                 Responses to the initial sequence of questions regarding            plays easy to read and felt that they were familiar repre-
                                                                                                                                 grey-scale fuzzy classified images produced somewhat dif-           sentations of the data. Further comments by Group 1
                                                                                                                                 fering results between the two groups. Group 1 achieved             note that grey-scale images are clear, easy on the eye, and
                                                                                                                                 average success rates of 75% and 90.8% before and after             show patterns well. These attributes were clearly not suf-
                                                                                                                                 CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
evaluating the perception of uncertainty in alternative visualization strategies                                           7
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p007-b002"></a>

<!-- p007-b002 -->
Figure 8. Stage 1 results: proportions of correct responses for grey-   Figure 9. Stage 2 results for Group 1 results: proportion of cor-
                                                                                                                                 scale images before and after the display of a legend.                  rect responses to tasks using random animations. Pixel compari-
                                                                                                                                                                                                         son questions required the identification of the most certainly
                                                                                                                                                                                                         classified pixel from a choice of three. Percentage estimation
                                                                                                                                 ficiently beneficial for users less familiar with the central           questions required the subject to estimate the level of certainty for
                                                                                                                                 concepts of uncertainty.                                                a highlighted pixel. Landcover type questions required the iden-
                                                                                                                                     Stage 1 of the testing, therefore, suggests that most of            tification of the most or second most certain landcover class.
                                                                                                                                 the more experienced participants (Group 1) were com-
                                                                                                                                 fortable with the idea of fuzzy memberships displayed in
                                                                                                                                 grey-scale images and could interpret them correctly.
                                                                                                                                 Only two participants in this group failed to understand
                                                                                                                                 the images, and one of these clearly stated a lack of com-
                                                                                                                                 prehension during testing. The rate of incorrect answers
                                                                                                                                 is much higher, however, in Group 2, where lack of expe-
                                                                                                                                 rience seems to have led to a reduced level of perform-
                                                                                                                                 ance. While only a relatively small number of users
                                                                                                                                 consistently selected the darkest pixels as most certain
                                                                                                                                 prior to the display of a legend, the fact that some did so
                                                                                                                                 serves to highlight the importance of ensuring that the
                                                                                                                                 legend is available, if not prominently displayed.

<a id="p007-b003"></a>

<!-- p007-b003 -->
4.2 random animation
                                                                                                                                 Results for Group 1 are shown in Figure 9, where re-
                                                                                                                                 sponses to questions requesting an absolute estimation                  Figure 10. Stage 2: comparison of Group 1 and Group 2 results.
                                                                                                                                 of the level of uncertainty are subdivided into those fall-             For an explanation of the bar titles, see the caption to Figure 9.
                                                                                                                                 ing within a small range of ±5% of a correct answer,
                                                                                                                                 those within a larger range of ±10%, and those with a
                                                                                                                                 discrepancy of more than 10%. Overall, participants’                    those viewing the full image. Only 18% of participants
                                                                                                                                 success at obtaining a correct answer was limited, with                 correctly identified the second most likely landcover.
                                                                                                                                 less than 50% of responses correct when participants                       Results for Group 2 are consistent with those of
                                                                                                                                 were asked to estimate the percentage of pixels within a                Group 1 (Figure 10), the pixel comparison task requir-
                                                                                                                                 landcover type, but average success rates increased to                  ing relative judgments of uncertainty producing the
                                                                                                                                 72% for isolated pixels and 73% for the full image when                 greatest success at 68.3%. The only significant difference
                                                                                                                                 participants were asked to choose the pixel with the larg-              in results is that Group 2 performed better overall when
                                                                                                                                 est uncertainty. In each case, higher success rates were                asked to select both the most likely and second most like-
                                                                                                                                 achieved by those who viewed the full-scene animation                   ly cover types for a pixel (34.2% compared with 22.2%);
                                                                                                                                 than by those who saw only isolated pixels (although the                though neither figure is large, participants did have to
                                                                                                                                 difference was small in some cases). Answers to questions               choose from 17 cover types. Lack of technical knowledge
                                                                                                                                 about landcover type were further analysed on the basis                 did not appear to be a barrier to understanding these
                                                                                                                                 of whether the question requested the most likely or the                displays, since only one person from this group cited this
                                                                                                                                 second most likely landcover type. Overall, 50% of par-                 as a drawback to the random animation method; this
                                                                                                                                 ticipants responsed correctly to questions requesting the               person’s results did not in fact indicate a lower than aver-
                                                                                                                                 most likely landcover, but this value smoothes the success              age performance.
                                                                                                                                 rate of 28% for those viewing isolated pixels and 72% for                  Questionnaire responses from Group 2 indicate a
                                                                                                                                 CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
8                                                steve blenkinsop and others

<a id="p008-b002"></a>

<!-- p008-b002 -->
ever, is not clear. It could relate to the
                                                                                                                                                                                                                             slight colour contrasts or to the rap-
                                                                                                                                                                                                                             idly changing image. Several partici-
                                                                                                                                                                                                                             pants in this group commented that
                                                                                                                                                                                                                             after viewing the animations for
                                                                                                                                                                                                                             some time they began to suffer from
                                                                                                                                                                                                                             eyestrain. Contrasting results are re-
                                                                                                                                                                                                                             ported on the use of animations;
                                                                                                                                                                                                                             Monmonier and Gluck’s (1994) fo-
                                                                                                                                                                                                                             cus group reported that flashing ob-
                                                                                                                                                                                                                             jects in an animation were offensive,
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p008-b003"></a>

<!-- p008-b003 -->
while Evans (1997), despite receiving
                                                                                                                                                                                                                             some similar responses, generally
                                                                                                                                                                                                                             found that an animation featuring al-
                                                                                                                                                                                                                             ternating frames of land use and reli-
                                                                                                                                 Figure 11. Stage 3: Comparison of correct responses for different linked visualizations.    ability maps was rated “helpful.”
                                                                                                                                                                                                                             Whatever the cause of their prob-
                                                                                                                                 high level of understanding (higher, in fact, than for the            lems, despite recognizing the amount of information
                                                                                                                                 static grey-scale images used in the first stage), with no            contained in the animation, the Group 1 participants in
                                                                                                                                 change in confidence in performing these tasks accu-                  particular did not feel confident in their decisions, al-
                                                                                                                                 rately after they were completed. The depiction of un-                though their relative judgements were good and their
                                                                                                                                 certainty by this method seems intuitive to users in both             absolute judgements were acceptable. Both groups indi-
                                                                                                                                 groups after minimal instruction, in contrast with the                cated, however, that these animations were a good way of
                                                                                                                                 static grey-scale images used in the previous stage. De-              indicating the existence of uncertainty.
                                                                                                                                 spite having less experience, Group 2 participants were                   The answers to all questions improved when partici-
                                                                                                                                 no less able to understand these animations than those                pants viewed the full image rather than isolated pixels;
                                                                                                                                 in Group 1. The results from both groups do suggest,                  the answers to questions asking for the identification of
                                                                                                                                 however, that the effectiveness of such animations de-                landcover type showed the most notable improvement.
                                                                                                                                 pends upon the type of information being extracted.                   This demonstrates that participants were able to make a
                                                                                                                                     It is evident that the pixel comparison task was much             more accurate decision as to the most likely landcover
                                                                                                                                 easier to perform, since participants’ average success                class if contextual information was provided, since they
                                                                                                                                 rate was approximately 70%. Bearing in mind that the                  were given an indication of the likely cover in the imme-
                                                                                                                                 investigators classed three of the questions informally as            diate neighbourhood. Though Gilmartin (1981) ob-
                                                                                                                                 “difficult” (meaning that the difference between two of               serves, on a more conventional representation, that
                                                                                                                                 the pixels in each was small), this result represents a               perception of map units may be adversely biased by the
                                                                                                                                 high level of correct responses, indicating that partici-             context in which they occur, a similar effect was not ob-
                                                                                                                                 pants understood the nature of the image and worked                   served here.
                                                                                                                                 out how to extract the required information. It is clear,
                                                                                                                                 though, that questions requiring an absolute judgement                    4.3 random animation and linked information
                                                                                                                                 (either estimating a level of uncertainty or selecting a              When Group 1 participants were able to interact with the
                                                                                                                                 landcover class) were much more difficult. Indeed, sev-               animation to obtain a fuzzy grey-scale image, 75.2% of
                                                                                                                                 eral participants in Group 1 commented that questions                 their responses were correct, but when the data were
                                                                                                                                 requesting a landcover type were most difficult, but                  provided in the form of a histogram for each highlighted
                                                                                                                                 among Group 2 estimating an absolute level of certainty               pixel, 96.3% of participants correctly identified the most
                                                                                                                                 was judged to be the most challenging task.                           certain one (Figure 11). A detailed inspection of the re-
                                                                                                                                     The reason for difficulty in this task could be the               sults indicates that 12 participants correctly answered all
                                                                                                                                 number of classes displayed and the problem of showing                questions using histograms and that all of the incorrect
                                                                                                                                 17 categories in a single map by colour alone. Robinson               responses occurred on the same question – one in which
                                                                                                                                 and others (1995; see also Brewer 1994) indicate that 15              the difference in memberships between two pixels was
                                                                                                                                 categories are close to the maximum, which means that                 small. The result from stage 2, using the full animation,
                                                                                                                                 it is difficult for viewers to discriminate between some              is also shown, with only 73% of responses correct. In con-
                                                                                                                                 classes. Several comments were also made (particularly                trast, Group 2 did not demonstrate such a marked differ-
                                                                                                                                 by Group 1) that certain classes were easier to judge be-             ence in performance from the comparable questions in
                                                                                                                                 cause they were represented by figure colours, which                  the previous stage: the success rate increased from
                                                                                                                                 stood out and stuck in the mind.                                      68.3%, using only random animations, to 74.2% for both
                                                                                                                                     Group 1 expressed a generally negative reaction to                the map pair and histogram visualizations.
                                                                                                                                 the random animations. The cause of this problem, how-                    It is evident that once participants in Group 1 under-
                                                                                                                                 CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
evaluating the perception of uncertainty in alternative visualization strategies                              9

<a id="p009-b002"></a>

<!-- p009-b002 -->
stood the nature of the cross-section histograms, the ran-
                                                                                                                                 dom animations became redundant; several participants
                                                                                                                                 even switched them off. This was reflected in more posi-
                                                                                                                                 tive attitudes among participants, who opined that these
                                                                                                                                 displays were less overpowering, and the information
                                                                                                                                 clearer, than with the animations alone. As a result, par-
                                                                                                                                 ticipants had more confidence in their decisions and
                                                                                                                                 felt that the displays had greater authority. In fact, the
                                                                                                                                 provision of grey-scale fuzzy maps only marginally im-
                                                                                                                                 proves the success of participants using the animations
                                                                                                                                 alone.
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p009-b003"></a>

<!-- p009-b003 -->
It is also interesting to note that the use of histograms
                                                                                                                                 seemed to overcome many of the colour problems noted
                                                                                                                                                                                                Figure 12. Stage 4 results showing a comparison of the two
                                                                                                                                 with the random animations, either because similar col-
                                                                                                                                                                                                groups. The moving shutter shows only pixels (as white against
                                                                                                                                 ours were no longer juxtaposed or because they were dis-
                                                                                                                                                                                                black) whose fuzzy membership values are in a small range of
                                                                                                                                 played in a sequence that could be determined directly
                                                                                                                                                                                                values. The combination version shows those areas with values
                                                                                                                                 from the legend. The lower success of the less experi-
                                                                                                                                                                                                less than or greater than a moving threshold.
                                                                                                                                 enced Group 2, however, suggests that they were either
                                                                                                                                 less willing to access these displays or lacked the experi-
                                                                                                                                 ence/knowledge to use them effectively.
                                                                                                                                    Questions asked after the completion of this stage re-
                                                                                                                                 veal that participants felt more confident that they had
                                                                                                                                 correctly answered these questions, and expressed a
                                                                                                                                 higher level of understanding, than for any of the other
                                                                                                                                 stages. Just under half of the participants in both groups
                                                                                                                                 made the specific comment that it was easier to extract
                                                                                                                                 information with either type of supplementary informa-
                                                                                                                                 tion, and in particular from the histograms, than from
                                                                                                                                 the animations. The use of the grey-scale images in map
                                                                                                                                 pair comparison was deemed to be most valuable for
                                                                                                                                 providing additional evidence for a decision and for pro-
                                                                                                                                 viding a “second opinion,” while the histograms were be-
                                                                                                                                 lieved to be both more detailed and more precise.
                                                                                                                                                                                                Figure 13. Stage 4 results for tests identifying areas with the
                                                                                                                                  4.4 random and serial animation of small regions              highest proportion of lawn grass with membership values over
                                                                                                                                 Participants recorded the highest proportion of correct        0.5.
                                                                                                                                 responses when they were able to access combination se-
                                                                                                                                 rial animations (49.5%), and this success rate was higher
                                                                                                                                 than the proportion of correct responses obtained using        tion, although serial animation was the most helpful.
                                                                                                                                 the random animation sequence only (Figure 12). Inter-             Comments made by several participants in Group 1
                                                                                                                                 estingly, however, when participants in Group 1 were           express confusion with regard to the serial animation
                                                                                                                                 able to use such animations, fewer correct responses           displays, particularly the moving shutter animations, and
                                                                                                                                 were recorded than when they used the random anima-            similar sentiments were almost universal in Group 2. Par-
                                                                                                                                 tion alone (12.16% and 19.21% respectively). Further-          ticipants reported that these were too “busy” to be of use,
                                                                                                                                 more, the questions asking participants to identify the        although the combination serial animations were
                                                                                                                                 area with the highest proportion of pixels with lawn grass     deemed more coherent and slightly easier to interpret.
                                                                                                                                 membership over 0.5 produced similar results (Figure           This format enabled some benefits of “focusing” to be re-
                                                                                                                                 13). For Group 1, a higher percentage of correct answers       alized, allowing dynamic interaction with the data in
                                                                                                                                 (63% correct) was achieved using the combination               which the analyst can highlight a specific subset of the
                                                                                                                                 approach to serial animations than when random ani-            data.
                                                                                                                                 mations were used alone (42% correct) or when cross-               Observations of Group 1 also suggest that when serial
                                                                                                                                 section histograms were used (32% correct). Group 2 re-        animations were used, participants preferred to exert
                                                                                                                                 corded similarly low rates for the random animation            control over what was seen by selecting the appropriate
                                                                                                                                 (13.8%), with a slight improvement with use of the mov-        frames rather than viewing them in an automated se-
                                                                                                                                 ing shutter technique (27.5%). These low rates suggest         quence of displays of increasing or decreasing member-
                                                                                                                                 that no visualization strategy was particularly useful for     ship values. It was suggested that some of the time spent
                                                                                                                                 users at either level of experience in answering this ques-    looking at the animation was wasted and that it became
                                                                                                                                 CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
10                                             steve blenkinsop and others

<a id="p010-b002"></a>

<!-- p010-b002 -->
rate of 91.6% in Group 1 when fuzzy
                                                                                                                                                                                                                           spectral signatures were available
                                                                                                                                                                                                                           (Figure 14). This compares with a
                                                                                                                                                                                                                           rate of 48.4% when grey-scale images
                                                                                                                                                                                                                           were used and only 29.5% for ran-
                                                                                                                                                                                                                           dom animation. An examination of
                                                                                                                                                                                                                           the raw results reveals that 14 partici-
                                                                                                                                                                                                                           pants answered all questions correct-
                                                                                                                                                                                                                           ly when fuzzy spectral signatures were
                                                                                                                                                                                                                           available. Group 2 performed simi-
                                                                                                                                                                                                                           larly when using only random anima-
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p010-b003"></a>

<!-- p010-b003 -->
tions, achieving a success rate of
                                                                                                                                                                                                                           33.3%, and the same is true of their
                                                                                                                                 Figure 14: Stage 5 results for questions asking about variation in uncertainty.           results using grey-scale memberships
                                                                                                                                                                                                                           (51.7%). However, the availability of
                                                                                                                                 frustrating waiting for the animation sequence to finish.            fuzzy spectral signatures for questions that could not be
                                                                                                                                 This observation is similar to the views of Slocum,                  answered from the grey-scale images alone did not pro-
                                                                                                                                 Robeson, and Egbert (1990), who observed that their                  duce a similar improvement in results for this group:
                                                                                                                                 study participants acquired information more easily                  their average success rate was only 58.3%.
                                                                                                                                 from traditional map displays, although they were able                  Participants in Group 1 obtained better results using
                                                                                                                                 to remember that information more effectively from a                 the fuzzy spectral signatures by being able to visualize
                                                                                                                                 sequenced presentation. Carter (1988) argues that                    the data in more detail over the six spectral bands. With-
                                                                                                                                 maps, unlike text, are not read serially but are better in-          out necessarily understanding the details of these imag-
                                                                                                                                 terpreted by moving back and forth between maps, com-                es, several participants said that they were intuitively
                                                                                                                                 paring and contrasting the displays. It is also apparent             aware of the need to identify “the red line closest to the
                                                                                                                                 that participants in Group 2 were even less successful in            darkest membership band.” The fact that their success
                                                                                                                                 interpreting the interactive histograms (16.7%), finding             rate was lower than when histograms were used is likely
                                                                                                                                 it very hard to translate from the cross-section histogram           to be due to difficulties encountered in making compari-
                                                                                                                                 to the area.                                                         sons when differences between signatures occur across
                                                                                                                                                                                                      several spectral bands, requiring some sort of estimate of
                                                                                                                                           4.5 regional uncertainty assessment                        cumulative difference across these bands, a more de-
                                                                                                                                 Group 1 achieved an average success rate of 87.3% for                manding processing task.
                                                                                                                                 the initial test, which involved the identification of the              Again, it proved more difficult for participants to an-
                                                                                                                                 most certainly classified pixel using fuzzy spectral signa-          swer questions relating to spatial distributions. In partic-
                                                                                                                                 tures. This success rate was an improvement on the re-               ular, questions related to random animations produced
                                                                                                                                 sults from the random animation only and was also                    poor results that could have been achieved by chance
                                                                                                                                 higher than the rate achieved for the map pair compari-              alone. Interestingly, for Group 1 the best results were ob-
                                                                                                                                 son task using grey-scale fuzzy classification layers in             tained with the fuzzy spectral signatures. Participants
                                                                                                                                 stage 3 (Figure 11). In comparison, Group 2 recorded an              were able to identify the range of uncertainties repre-
                                                                                                                                 average success rate of 71.7%, which, though higher                  sented by the pixel data superimposed on the fuzzy sig-
                                                                                                                                 than the success rate for animation alone, was not signif-           natures (Figure 5B) much more effectively than either of
                                                                                                                                 icantly better (p = 0.70, F = 0.15) and was also lower than          the spatial representations, the differences being less dif-
                                                                                                                                 the success rate for the comparable visualizations of                ficult to perceive in the graphic than in the spatial repre-
                                                                                                                                 stage 4.3.                                                           sentations. While the provision of fuzzy spectral
                                                                                                                                     Questionnaire responses indicate that participants               signatures did lead to an improvement for Group 2, it
                                                                                                                                 felt less confident about this stage than they did in any            was only marginal, the problems discussed previously
                                                                                                                                 previous stage and that they expressed a low level of un-            seemingly preventing most participants from feeling
                                                                                                                                 derstanding. Specific comments indicate that several                 confident in the use of these displays.
                                                                                                                                 participants in Group 2 believed that their lack of knowl-
                                                                                                                                 edge was a problem. Nonetheless, five participants in                                        5. Conclusion
                                                                                                                                 this group answered all questions correctly, although                The testing undertaken by these two groups of partici-
                                                                                                                                 only one of these felt confident of having done so. More             pants suggests that users with an understanding of fuzzy
                                                                                                                                 positive comments provided by these participants includ-             memberships were generally more confident in using
                                                                                                                                 ed their belief that the signatures offered more evidence            the images to make the necessary decisions. This was
                                                                                                                                 with which to make a decision.                                       true even of novel images, although preference was
                                                                                                                                     Results on the effectiveness of such spectral signatures         shown for static displays, despite acknowledging the lim-
                                                                                                                                 in examining spatial patterns reveal an average success              ited information content of grey-scale images. Even
                                                                                                                                 CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
evaluating the perception of uncertainty in alternative visualization strategies                                 11

<a id="p011-b002"></a>

<!-- p011-b002 -->
though relatively inexperienced users understood the            linked, supporting graphics was generally more success-
                                                                                                                                 meaning of random animations, both groups found it              ful because they facilitated this separation, though, of
                                                                                                                                 difficult to make absolute judgements on the basis of           course, their use in spatial analyses does depend on hav-
                                                                                                                                 what they were seeing. This in itself is not problematic,       ing a spatial representation to form the basis of inquiry.
                                                                                                                                 as the exploratory use for which the software is intended       For some of the strategies used here, however, access to
                                                                                                                                 means that any given representation does not have to be         information is somewhat reduced by the necessity for
                                                                                                                                 optimal in every role. These displays were more success-        some knowledge of remote sensing.
                                                                                                                                 ful in allowing users to make relative judgements of un-            Finally, we can identify the relative success of the visu-
                                                                                                                                 certainty while also displaying class information, and          alization strategies used here and make recommenda-
                                                                                                                                 their usefulness was also noted in providing a very effec-      tions for future developers of image processing software.
                                                                                                                                 tive first impression of uncertainty. These animations          Participants were most confident and most successful in
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p011-b003"></a>

<!-- p011-b003 -->
may, therefore, have their greatest usefulness at an early      using grey-scale images. Second in effectiveness were
                                                                                                                                 stage in the exploration of a data set.                         random animations, which provide an integral multi-
                                                                                                                                     With the more experienced Group 1, the alternative          category view; multiples of serial animations were least
                                                                                                                                 visualizations demonstrated varying effectiveness de-           successful. This ordering is demonstrably true for the de-
                                                                                                                                 pending upon the nature of the task. In particular,             termination of relative levels of uncertainty, but it would
                                                                                                                                 though recognizing the usefulness of animations in              appear also to be true for absolute determinations, al-
                                                                                                                                 some circumstances, users preferred static representa-          though this is somewhat counter-intuitive, since serial
                                                                                                                                 tions, finding the serial animations, in particular, to be of   animation allows determination of a subset falling into a
                                                                                                                                 little use. Allowing users to focus on subsets of the data      particular level of uncertainty, and so it may be that, with
                                                                                                                                 should be profitable because it enables them to dis-            experience, this technique would be best for absolute de-
                                                                                                                                 regard potentially vast quantities of data that are un-         terminations. Among the ancillary methods of visualiza-
                                                                                                                                 necessary in solving a particular problem. The less             tion, histograms were very good for answering location
                                                                                                                                 experienced Group 2, however, did find that their lack          specific questions, but not for answering regional que-
                                                                                                                                 of conceptual knowledge was a constraint on their ability       ries; fuzzy spectral signatures were found to be intuitive
                                                                                                                                 to use these visualizations, and, whereas Group 1 were          for the experienced users (Group 1) but confusing to
                                                                                                                                 willing to use and explore the alternative visualizations       the novices (Group 2).
                                                                                                                                 when available, these participants indicated that very of-          Scope exists for considerable future research in this
                                                                                                                                 ten they did not use them, as they did not feel confident       area. An assessment has yet to be made of the role of the
                                                                                                                                 in their ability to interpret them. In all other instances      speed at which animations are shown, since it is possible
                                                                                                                                 the availability of alternative linked visualizations           that fewer frames per second could lead to an improved
                                                                                                                                 (whether grey-scale images, scatter plots, histograms, or       ability to make absolute assessments of data or uncertain-
                                                                                                                                 fuzzy spectral signatures) was seen as a way of obtaining       ty. There is also scope for an examination of the role of
                                                                                                                                 further evidence on which to base a decision, and usually       colour in such displays. Such tests will continue to be im-
                                                                                                                                 this improved the participants’ ability to correctly answer     portant as new display techniques are developed, and
                                                                                                                                 queries. However, users did not know how to use displays        they may, in the future, serve to aid in the production of
                                                                                                                                 requiring a high level of interaction, such as serial ani-      visualization software incorporating user models that en-
                                                                                                                                 mation, expressing conceptual confusion and low confi-          able the system to adapt to different demands at run
                                                                                                                                 dence in the use of these displays. We believe that             time.
                                                                                                                                 improved results may be obtained for such displays with
                                                                                                                                 training and experience, not necessarily in using the                                 Acknowledgement
                                                                                                                                 software, but in the concepts and issues of visualization       This work is supported by Directorate General XII of the EU
                                                                                                                                 and of uncertainty.                                             Environment and Climate Programme (contract no. ENV4-
                                                                                                                                     Results for the random animation confirm the view of        CY96-0305) and is a part of Project fliers. We would like to
                                                                                                                                 Evans (1997) that users can extract uncertainty informa-        thank our collaborators in that project for their contributions
                                                                                                                                 tion from animation. Although in Evans’s study more             to the preparation of the software itself. We would especially
                                                                                                                                 positive responses were provided regarding the use of           like to thank the two cohorts of MSc students at the University
                                                                                                                                 animations, possibly because users toggled between a            of Leicester who willing gave up their time to participate in our
                                                                                                                                 two-frame loop of land use and reliability rather than the      experiments. Finally, the comments of the two anonymous re-
                                                                                                                                 implicit display of uncertainty used in the random ani-         viewers who read earlier versions of this manuscript are very
                                                                                                                                 mations here. These results also provide some support           gratefully acknowledged.
                                                                                                                                 for the opinions of MacEachren and others (1998) that,
                                                                                                                                 for exploratory uses, a visually separable representation                                 References
                                                                                                                                 is preferable; participants here lacked confidence in be-       Bastin, L., J. Wood, and P. Fisher. (2001, forthcoming) “Visualiz-
                                                                                                                                 ing able to see both data and uncertainty when using the           ing Uncertainty in Multi-spectral Remotely Sensed Imagery.”
                                                                                                                                 animations, especially for spatial analyses. Furthermore,          Computers & Geosciences.
                                                                                                                                 we can see that, in all types of display, the availability of   Beard, M.K., and B. Buttenfield. 1999. “Detecting and Evaluat-

<a id="p011-b004"></a>

<!-- p011-b004 -->
CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
12                                                   steve blenkinsop and others

<a id="p012-b002"></a>

<!-- p012-b002 -->
ing Errors by Graphic Methods.” In Geographical Information              and S.C. Guptill. 1995. Elements of Cartography. New York:
                                                                                                                                    Systems, Volume 1: Principles, Techniques and Issues. Ed. P. Long-       Wiley.
                                                                                                                                    ley, M. Goodchild, D. Maguire, and D. Rhind. New York: Wi-            Schweizer, D.M. and M.F. Goodchild. 1992. “Data Quality and
                                                                                                                                    ley. 219–33.                                                             Choropleth Maps: An Experiment with the Use of Colour.
                                                                                                                                 Brewer, C.A. 1994. “Color Use Guidelines for Mapping and Vis-               Proceedings GIS/LIS ’92. Bethesda, MD: ASPRS/ACSM. n.pag.
                                                                                                                                    ualization.” In Visualization in Modern Cartography. Ed. A.M.         Slocum, T.A., S.H. Robeson, and S.L. Egbert. 1990. “Traditional
                                                                                                                                    MacEachren and D.R.F. Taylor. Oxford: Elsevier. 123–47.                  versus Sequenced Choropleth Maps: An Experimental Inves-
                                                                                                                                 Carter, J.R. 1988. “The Map Viewing Environment: A Significant              tigation.” Cartographica 27/1: 67–88.
                                                                                                                                    Factor in Cartographic Design.” American Cartographer 15:             Wel, F.J.M. van der, R.M. Hootsmans, and F. Ormeling. 1994.
                                                                                                                                    379–85.                                                                  “Visualisation of Data Quality.” In Visualisation in Modern Car-
                                                                                                                                 Davis, T.J., and C.P. Keller. 1997. “Modelling and Visualizing              tography. Ed. A.M. McEachren and D.R.F. Taylor. Oxford: Per-
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p012-b003"></a>

<!-- p012-b003 -->
Multiple Spatial Uncertainties.” Computers & Geosciences 23:             gamon. 313–31.
                                                                                                                                    397–408.                                                              Wel, F. van der, L.C. Van der Gaag, and B.G.H. Gorte. 1998. “Vis-
                                                                                                                                 Dykes, J.A. 1996. “Dynamic Maps for Spatial Science: A Unified              ual Exploration of Uncertainty in Remote-Sensing Classifica-
                                                                                                                                    Approach to Cartographic Visualization. In Innovations in                tion.” Computers & Geosciences 24: 335–43.
                                                                                                                                    GIS 3. Ed. D. Parker. London: Taylor & Francis. 177–87.
                                                                                                                                 Evans, B.J. 1997. “Dynamic Display of Spatial Data Reliability:          Résumé : Bien que de nombreuses méthodes ont été propo-
                                                                                                                                    Does It Benefit the Map User?” Computers & Geosciences 23:            sées pour représenter l’incertitude en information spatiale,
                                                                                                                                    409–422.                                                              il y en a relativement peu qui testent comment l’utilisateur in-
                                                                                                                                 Fisher, P.F. 1994. “Visualisation of the Reliability in Classified Re-   terprète l’incertitude. En utilisant les résultats d’une classifica-
                                                                                                                                    motely Sensed Images.” Photogrammic Engineering & Remote              tion floue d’imagerie satellite, cette étude analyse la
                                                                                                                                    Sensing 60: 905–910.                                                  perception de l’utilisateur envers un nombre de méthodes dif-
                                                                                                                                 ———. 1996. “Animation of Reliability in Computer-Generated               férentes de visualisation de l’incertitude. Les « experts » com-
                                                                                                                                    Dot Maps and Elevation Models.” Cartography and Geographic            me les novices réussissent bien à déterminer et à classifier
                                                                                                                                    Information Systems 23/4: 196–205.                                    l’incertitude parmi les pixels lorsque présentés sous forme
                                                                                                                                 FLIERS. 1998. FLIERS 2nd Annual Report. Report on Environ-               d’images et d’histogrammes en dégradé de gris, et réussissent
                                                                                                                                    ment and Climate Research Programme 1994–1998. Availa-                modérément lorsqu’il s’agit d’animations aléatoires. Bien que
                                                                                                                                    ble at http://www.geog.le.ac.uk/fliers/annrep/report.zip.             l’animation aléatoire est perçue par les observateurs comme
                                                                                                                                 Gilmartin, P. 1981. “Influences of Map Context on Circle Per-            étant une bonne méthode en vue d’établir une classification
                                                                                                                                    ception.” Annals of the Association of American Geographers 71:       d’ensemble de l’incertitude, ils considèrent que les images en
                                                                                                                                    253–58.                                                               dégradé de gris sont une meilleure méthode pour extraire une
                                                                                                                                 Guptill, S.C., and J. Morrison, eds. 1995. The Elements of Spatial       information spécifique. L’animation séquentielle ne fut pas
                                                                                                                                    Data Quality. Oxford: Elsevier.                                       largement appréciée. En général, les réponses aux questions
                                                                                                                                 Howard, D.H., and A.M. MacEachren. 1996. “Interface Design               spécifiques furent grandement améliorées lorsque des « vues
                                                                                                                                    for Geographic Visualisation: Tools for Representing Relia-           interreliées » et qu’une « information graphique » assistée
                                                                                                                                    bility. Cartography and Geographic Information Systems 23/2:          furent disponibles. En bref, les méthodes examinées furent
                                                                                                                                    59–77.                                                                toutes relativement bien reçues, à l’exception de l’animation
                                                                                                                                 Kraak, M.J., and F.J. Ormeling. 1996. Cartography: Visualization of      séquentielle.
                                                                                                                                    Spatial Data. London: Longman.
                                                                                                                                 MacEachren, A.M. 1992. “Visualizing Uncertain Information.”              Zusammenfassung. Obwohl etliche Methoden zur Darstel-
                                                                                                                                    Cartographic Perspectives 13/3: 10–19.                                lung von Unschärfe räumlicher Information vorgeschlagen
                                                                                                                                 ———. 1994. “Visualization in Modern Cartography: Setting                 wurden, ist kaum evaluiert worden, wie Anwenderinnen und
                                                                                                                                    the Agenda. In Visualization in Modern Cartography. Ed. A.M.          Anwender Datenunschärfe auf Grund dieser Methoden inter-
                                                                                                                                    MacEachren and D.R.F. Taylor. Oxford: Pergamon. 1–12.                 pretieren. An Hand von Resultaten einer Fuzzy-Set Klassifika-
                                                                                                                                 MacEachren, A.M., C.A. Brewer, and L.W. Pickle. 1998. “Visual-           tion von Satellitenbildern untersucht diese Studie den
                                                                                                                                    izing Georeferenced Data: Representing Reliability of                 Anwendungserfolg verschiedener Methoden zur Visualis-
                                                                                                                                    Health Statistics.” Environment & Planning A 30: 1547–61.             ierung von Datenunschärfe. Wird die Unschärfe von Pixeldat-
                                                                                                                                 MacEachren, A.M., D. Howard, M. Von Wyss, D. Askov, and T.               en als Graustufenbild und in Histogrammen dargestellt, wird
                                                                                                                                    Taormino. 1993. “Visualizing the Health of Chesapeake Bay:            sie sowohl von relativ geübten als auch von mit der Methode
                                                                                                                                    An Uncertain Endeavor.” Proceedings GIS/LIS ’93. Bethesda,            unvertrauten Anwenderinnen und Anwendern sehr erfolgre-
                                                                                                                                    MD: ASPRS/ACSM. 449–58.                                               ich klassifiziert. Beide Gruppen zeitigen mässigen Erfolg mit
                                                                                                                                 Monmonier, M., and M. Gluck. 1994. “Focus Groups for Design              ungeregelter Animation. Betrachtende äusserten die Auffas-
                                                                                                                                    Improvement in Dynamic Cartography.” Cartography and Ge-              sung, dass ungeregelte Animation zwar eine gute Methode zur
                                                                                                                                    ographic Information Systems 21/1: 37–47.                             Visualisierung allgemeiner Klassifizierunsicherheit darstellt,
                                                                                                                                 Olson, J.M. 1981. “Spectrally Encoded Two-Variable Maps.” An-            Graustufenbilder jedoch das Herauslesen detaillierter Informa-
                                                                                                                                    nals of the Association of American Geographers 71: 259–76.           tion besser unterstützen. Serielle Animation wurde von der Me-
                                                                                                                                 Robinson, A.H., J.L. Morrison, P.C. Muehrcke, A.J. Kimerling,            hrheit nicht geschätzt. Generell wurden spezifische Fragen

<a id="p012-b004"></a>

<!-- p012-b004 -->
CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
evaluating the perception of uncertainty in alternative visualization strategies                                 13

<a id="p013-b002"></a>

<!-- p013-b002 -->
sehr viel besser beantwortet, wenn Bilder zusammen mit            certidumbre en la clasificación de pixeles cuando estos se
                                                                                                                                 grafischer Zusatzinformation zur Verfügung standen. Zusam-        muestran en imágenes en escala de gris y en histogramas, así
                                                                                                                                 menfassend kann gesagt werden, dass alle untersuchten Meth-       como un éxito moderado con animaciones aleatorias. Observa-
                                                                                                                                 oden relativ erfolgreich waren, mit Ausnahme der seriellen        dores consideran que aunque animación aleatoria es un buen
                                                                                                                                 Animation.                                                        método para mostrar la incertidumbre general de una clasifi-
                                                                                                                                                                                                   cación, imágenes en escala de gris constituyen una mejor for-
                                                                                                                                 Resumen A pesar que varios métodos para representar incer-        ma de extraer información específica. Animación en serie no
                                                                                                                                 tidumbre han sido propuestos, muy pocas investigaciones han       fue un método ampliamente apreciado. En general, respuestas
                                                                                                                                 explorado los efectos en la interpretación de incertidumbre de    a preguntas específicas mejoraron notablemente con la dis-
                                                                                                                                 tales métodos. Usando los resultados de una clasificación im-     ponibilidad de vistas y gráficos auxiliares. En resumen, los mé-
                                                                                                                                 precisa de imágenes de satélite, este estudio enfoca la per-      todos examinados fueron todos relativamente exitosos, con
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p013-b003"></a>

<!-- p013-b003 -->
cepción por parte de usuarios de varias técnicas para la          excepción de la animación en serie.
                                                                                                                                 visualización de incertidumbre. Tanto usuarios expertos como
                                                                                                                                 principiantes alcanzan un alto grado de éxito al determinar in-

<a id="p013-b004"></a>

<!-- p013-b004 -->
CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
http://www.utpjournals.press/doi/pdf/10.3138/3645-4V22-0M23-3T52 - Friday, June 03, 2016 9:24:45 AM - IP Address:188.72.96.234

<a id="p014-b002"></a>

<!-- p014-b002 -->
14

<a id="p014-b003"></a>

<!-- p014-b003 -->
WATERMARK

<a id="p014-b004"></a>

<!-- p014-b004 -->
CARTOGRAPHICA, VOLUME 37, # 1, SPRING 2000
                                                                                                                                                                                          steve blenkinsop and others
