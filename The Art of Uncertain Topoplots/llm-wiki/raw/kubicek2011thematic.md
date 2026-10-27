---
id: "kubicek2011thematic"
title: "Thematic Uncertainty Visualization Usability: Comparison of Basic Methods"
source_file: "The Art of Uncertain Topoplots/papers/kubicek2011thematic.pdf"
source_sha256: "9c493f5131ef3586668cf98909a8dd808d3f55ecf423c597f45166c7546a0b88"
extraction_format: 1
---

# Thematic Uncertainty Visualization Usability: Comparison of Basic Methods — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
This article was downloaded by: [Masarykova Univerzita v Brne], [Petr Kubíček]
On: 22 December 2011, At: 04:11
Publisher: Taylor & Francis
Informa Ltd Registered in England and Wales Registered Number: 1072954 Registered office: Mortimer House,
37-41 Mortimer Street, London W1T 3JH, UK

<a id="p001-b002"></a>

<!-- p001-b002 -->
Annals of GIS
                                 Publication details, including instructions for authors and subscription information:
                                 http://www.tandfonline.com/loi/tagi20

<a id="p001-b003"></a>

<!-- p001-b003 -->
Thematic uncertainty visualization usability –
                                 comparison of basic methods
                                               a                 a
                                 Petr Kubíček & Čeněk Šašinka
                                 a
                                  Department of Geography, Faculty of Science, Masaryk University, Kotlářská, Brno, Czech
                                 Republic

<a id="p001-b004"></a>

<!-- p001-b004 -->
Available online: 23 Nov 2011

<a id="p001-b005"></a>

<!-- p001-b005 -->
To cite this article: Petr Kubíček & Čeněk Šašinka (2011): Thematic uncertainty visualization usability – comparison of basic
methods, Annals of GIS, 17:4, 253-263

<a id="p001-b006"></a>

<!-- p001-b006 -->
To link to this article: http://dx.doi.org/10.1080/19475683.2011.625978

<a id="p001-b007"></a>

<!-- p001-b007 -->
PLEASE SCROLL DOWN FOR ARTICLE

<a id="p001-b008"></a>

<!-- p001-b008 -->
Full terms and conditions of use: http://www.tandfonline.com/page/terms-and-conditions

<a id="p001-b009"></a>

<!-- p001-b009 -->
This article may be used for research, teaching, and private study purposes. Any substantial or systematic
reproduction, redistribution, reselling, loan, sub-licensing, systematic supply, or distribution in any form to
anyone is expressly forbidden.

<a id="p001-b010"></a>

<!-- p001-b010 -->
The publisher does not give any warranty express or implied or make any representation that the contents
will be complete or accurate or up to date. The accuracy of any instructions, formulae, and drug doses should
be independently verified with primary sources. The publisher shall not be liable for any loss, actions, claims,
proceedings, demand, or costs or damages whatsoever or howsoever caused arising directly or indirectly in
connection with or arising out of the use of this material.

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
Annals of GIS
                                                                                        Vol. 17, No. 4, December 2011, 253–263

<a id="p002-b002"></a>

<!-- p002-b002 -->
Thematic uncertainty visualization usability – comparison of basic methods
                                                                                                                                              Petr Kubíček* and Čeněk Šašinka
                                                                                                             Department of Geography, Faculty of Science, Masaryk University, Kotlářská, Brno, Czech Republic
                                                                                                                              (Received 7 September 2011; final version received 18 September 2011)

<a id="p002-b003"></a>

<!-- p002-b003 -->
The uncertainty of geographic data and visualization can be viewed from different angles. While the conceptual and theoreti-
Downloaded by [Masarykova Univerzita v Brne], [Petr Kubíek] at 04:11 22 December 2011

<a id="p002-b004"></a>

<!-- p002-b004 -->
cal base is quite wide, visualization tools and pilot projects are rare, and there exist only a few studies dealing with the user’s
                                                                                                ability to cope with uncertainty visualization efficiency. This article introduces two widely used uncertainty visualization
                                                                                                methods – maps compared and maps combined – and focuses on the usability issues of these methods. A combination of the
                                                                                                regular kriging interpolation method and interpolation uncertainty values was used for maps compared, while the whitening
                                                                                                approach was applied for maps combined. During this study, we electronically interviewed and tested more than 100 partici-
                                                                                                pants with backgrounds in geography or computer science. Both the above-mentioned methods were tested on three different
                                                                                                levels. On the first level, the intuitiveness of the whitening method was questioned. On the second level, both methods were
                                                                                                compared taking into account the simple decoding of predicted values (interpolation results), uncertainty decoding and the
                                                                                                decoding of both variables (uncertainty and interpolation results) at the same time. Finally, the ability to compare two or more
                                                                                                values was tested for the same combinations. Both correctness and processing time were recorded in order to enable further
                                                                                                statistical processing. The overall testing was performed within the web-interactive environment developed specifically for
                                                                                                interdisciplinary (cartographic–psychology) purposes.
                                                                                                Keywords: uncertainty visualization; kriging; maps combined and maps compared; evaluation; cognitive processes; parallel
                                                                                                and serial processing

<a id="p002-b005"></a>

<!-- p002-b005 -->
Uncertainty visualization – background and objectives                              call this representation maps compared in accordance
                                                                                        Uncertainty is one of the potentially critical factors of                          with Slocum et al. (2005).
                                                                                                                                                                         ● Bivariate maps in which both the data of interest and
                                                                                        geospatial data visualization. Users have a tendency to
                                                                                        accept computer-created maps as more reliable and usually                          the uncertainty estimate are incorporated in the same
                                                                                        do not take into account the original data quality, gener-                         representation – we call these maps combined.
                                                                                                                                                                         ● Sequential representation in which the user might
                                                                                        alization level, modelling and other issues of the whole
                                                                                        cartographic production cycle. Using geographic informa-                           be informed about uncertainty with an initial map,
                                                                                        tion systems for geospatial data collection, analysis and                          which is followed by a map of data – this type of rep-
                                                                                        visualization even raises the possibility of data uncertainty                      resentation is sometimes called ‘interactive’ (Pang
                                                                                        or poor quality, when more data sources are combined with                          et al. 1997, Slocum et al. 2005) and is out of the
                                                                                        insufficient or no data quality metadata.                                          framework of this article.
                                                                                            Efforts to develop visualization methods and tools that
                                                                                        can help users to understand and cope with information                       The first and second types of representation are often called
                                                                                        uncertainty have been under way for almost 20 years but so                   ‘static’, thus applicable in digital and analogue (printed)
                                                                                        far without a comprehensive understanding of the parame-                     form; the last representation is ‘dynamic’ and can be
                                                                                        ters that influence successful uncertainty visualization.                    effectively used only within a digital environment.
                                                                                            MacEachren (1992) presented three possibilities of                           Besides the representation issues, a number of methods
                                                                                        uncertainty representation (visualization) to be used sep-                   for visualizing thematic and positional uncertainty have
                                                                                        arately or in combination:                                                   also been proposed. MacEachren (1992) has suggested the
                                                                                                                                                                     use of Bertin’s graphic variables to depict uncertainty and
                                                                                                                                                                     added even specialized variables for depicting uncertainty,
                                                                                            ●   Map pairs in which a data map is depicted side-by-                   including crispness, resolution and transparency. Gershon
                                                                                                side with a map of uncertainty about the data – we                   (1998) grouped these into intrinsic and extrinsic visual

<a id="p002-b006"></a>

<!-- p002-b006 -->
*Corresponding author. Email: kubicek@geogr.muni.cz

<a id="p002-b007"></a>

<!-- p002-b007 -->
ISSN 1947-5683 print/ISSN 1947-5691 online
                                                                                        © 2011 Taylor & Francis
                                                                                        http://dx.doi.org/10.1080/19475683.2011.625978
                                                                                        http://www.tandfonline.com

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
254                                                     P. Kubíček and Č. Šašinka
Downloaded by [Masarykova Univerzita v Brne], [Petr Kubíek] at 04:11 22 December 2011

<a id="p003-b002"></a>

<!-- p003-b002 -->
Figure 1. Uncertainty visualization testing tasks. Each task is represented by one screen (introduction, uncertainty intuitiveness, visu-
                                                                                        alization introduction and conclusion) or by a set of three consecutive screens for the testing of variables decoding (maps combined and
                                                                                        maps combined testing). Task results are documented on enumerated figures.

<a id="p003-b003"></a>

<!-- p003-b003 -->
variables, depending on whether the variable is visually               with assessing the usability and utility of uncertainty rep-
                                                                                        separable from the variable depicting the actual attribute.            resentation and interaction methods and tools. Despite a
                                                                                        While extrinsic variables are separable, intrinsic variables           reasonable amount of work done in the field of uncertainty
                                                                                        are not. Another logical step is to describe how these vari-           visualization testing (Evans 1997, Leitner and Buttenfield
                                                                                        ables including possible additions or modification might               2000), there is still a wide gap between uncertainty visual-
                                                                                        be logically matched with different components of data                 ization theory and the widely accepted use of uncertainty
                                                                                        uncertainty (Buttenfield 2000, MacEachren 1992, Leitner                representation with known effects on users. Hope and
                                                                                        and Buttenfield 2000). MacEachren (1992), for instance,                Hunter (2007a, 2007b) tested the effects of positional and
                                                                                        stated that the graphical variables’ size and colour values            attribute uncertainty on spatial decision-making in both
                                                                                        are most appropriate for depicting uncertainty in numerical            static and dynamic ways, concluding that the method used
                                                                                        information, while colour hue, shape and perhaps orienta-              for depicting uncertainty in spatial information can have
                                                                                        tion can be used for uncertainty in nominal information. He            extremely significant effects on decision-making and that
                                                                                        also emphasized colour saturation as important for uncer-              there exist subjective preferences for certain visual rep-
                                                                                        tainty visualization. Saturation can vary from pure hues for           resentations. They also strongly supported the need for
                                                                                        very certain information to unsaturated (light grey) hues              further testing of visualization methods.
                                                                                        for uncertain information. The role of graphical variables                  The influence of acute stress on cognitive processes and
                                                                                        in mapping ecological uncertainty was further developed                map reading was studied by Stachoň et al. (2010), who con-
                                                                                        and documented by Buttenfield (2000). MacEachren et al.                centrated on understanding the stress mechanism and its
                                                                                        (2005) specified that most research directed towards uncer-            influence on particular cognitive functions, such as short-
                                                                                        tainty visualization had focused on developing representa-             term and long-term memory, attention, perception and
                                                                                        tion methods (Pang et al. 1997, Hengl et al. 2004), soft-              decision-making. They further explored the possibilities
                                                                                        ware applications for the display of uncertainty (Heuvelink            and methods for testing the usability of maps and validated
                                                                                        et al. 2006) or uncertainty visualization theory (Pang                 their results by means of statistical analysis tools using a
                                                                                        2001, Thomson et al. 2005). Much less has been done on                 combination of quantitative and qualitative methods.
                                                                                        the empirical evaluation and testing of use and usability.
                                                                                        On the basis of their review and synthesis of literature on
                                                                                        uncertainty visualization, MacEachren et al. (2005) iden-              Test approach
                                                                                        tified seven core goals requiring interdisciplinary efforts            Following our previous work in which we dealt with
                                                                                        to be accomplished. One of these goals deals directly                  the perception of different cartographic representations

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
Annals of GIS                                                        255

<a id="p004-b002"></a>

<!-- p004-b002 -->
(Stachoň et al. 2010) and the testing of cartographic adap-            It might be expected that tasks on the maps performed
                                                                                        tation (Kubicek and Kozel 2010), we decided to focus on             in our study would lead to differences in the way infor-
                                                                                        two static thematic uncertainty visualization approaches –          mation was processed. Serial processing of information
                                                                                        maps compared and maps combined – and investigate their             is expected for maps compared, where the map user is
                                                                                        usability issues and the user’s ability to effectively cope         forced to decode the predicted value, hold this information
                                                                                        with them.                                                          within memory and subsequently identify the uncertainty
                                                                                            The cognitive abilities of users are closely connected          level at the corresponding spatial location on the second
                                                                                        with psychology. Therefore, besides the usability of uncer-         map. Both comparison and synthesis processes are being
                                                                                        tainty representation, we also dealt with the question of           performed. However, the second method (maps combined,
                                                                                        which cognitive processes are involved in map reading and           whitening) offers both variables in the same place and the
                                                                                        what causes possible differences in achievement. In the             user has all the information available at the same moment.
                                                                                        field of cognitive science, the question of whether the             This configuration makes possible the parallel processing
Downloaded by [Masarykova Univerzita v Brne], [Petr Kubíek] at 04:11 22 December 2011

<a id="p004-b003"></a>

<!-- p004-b003 -->
human mind is capable of the parallel processing of infor-          of information. The question is whether this map – the
                                                                                        mation is frequently discussed, and, above all, experimental        stimulus material – is easy to explore and may guide ‘pop-
                                                                                        techniques and tasks are explored which enable serial and           up’ attentional fixation or whether the participant has to
                                                                                        parallel processes to be distinguished (see Snodgrass and           inspect each item (place on the map) serially. Also, the indi-
                                                                                        Townsend 1980, Egeth and Dagenbach 1991, Townsend                   vidual cognitive strategy of the participant can play its own
                                                                                        and Fifić 2004). Townsend and Fifić (2004) argued, in the         role in the processes of map reading.
                                                                                        context of human memory research, that

<a id="p004-b004"></a>

<!-- p004-b004 -->
Data and visualization methods
                                                                                           serial models assume that within the short-term memory
                                                                                           search task, each item in memory is compared with the tar-       We used soil sampling data originally collected and inter-
                                                                                           get in sequence, so that a comparison on an item must be         preted by Lukas et al. (2009) for visualization purposes.
                                                                                           completed before the next comparison can begin. Parallel         Soil depth samples were collected in irregular grids, in
                                                                                           models assume, in contrast, that all items are compared          which the points had been selected subjectively.
                                                                                           with the target simultaneously, although comparisons on              A combination of the regular kriging interpolation
                                                                                           different items can be finished at different times.
                                                                                                                                                            method and interpolation uncertainty values was used for
                                                                                                                                                            maps compared. Both variables (soil depth and uncertainty)
                                                                                        Treisman and Gelade (1980) created ‘Feature Integration             were visualized using the hue saturation graphic variable
                                                                                        Theory’ (FIT), which states that people shift attention in          (see Figure 2) and lighter values were used for higher
                                                                                        visual search serially from one object to the next, looking         uncertainty. Kriging is widely recommended for uncer-
                                                                                        successively for the target. In experimental situations, par-       tainty visualization because this method not only generates
                                                                                        ticipants should search for some target object with specific        estimated field values (soil depth) at unsampled locations,
                                                                                        features (e.g. with a defined colour or size) which is located      but also provides information about their error variances
                                                                                        among other distracters (e.g. a red circle among white, red,        (Zhang and Goodchild 2002). These properties were fur-
                                                                                        blue circles, triangles and squares).                               ther explored as a source of uncertainty and used for
                                                                                            Evidence from experiments shows that search time                alternative visualization source data.
                                                                                        increases if the conjunction of two features occurs. Wolfe              An alternative approach was applied for maps com-
                                                                                        et al. (1989) argue that searches for triple conjunctions           bined. Whitening is a visualization method based on the
                                                                                        (e.g. colour × size × form) are easier than searches for            hue–saturation–intensity (HSI) colour model and is sup-
                                                                                        standard conjunctions and assume that ‘parallel processes           posed to be psychologically appealing (Jiang 1996) when
                                                                                        use information about simple features to guide attention in         hue is used to visualize values of thematic space and white-
                                                                                        the search for conjunctions . . . and triple conjunctions are       ness (paleness) is used to visualize uncertainty. A 2D leg-
                                                                                        found more efficiently than standard conjunctions because           end was designed to accompany the visualizations. Unlike
                                                                                        three parallel processes can guide attention more effec-            standard legends for continuous variables, this legend had
                                                                                        tively than two’. Herd and O’Reilly (2004), following the           two axes: (1) the vertical axis (hues) was used to visualize
                                                                                        ideas of Wolf’s group and their guide search model, present         the predicted values and (2) the horizontal axis (whiteness)
                                                                                        their own computational model of visual search which                was used to visualize the prediction error (Hengl 2007).
                                                                                        combines serial and parallel processes. They explain that
                                                                                        ‘visual search is parallel and in some circumstances often
                                                                                        partly serial too. Parallel process may guide attentional fix-      Cognitive and usability testing environment
                                                                                        ation, so that easy “pop-out” searches require only one             The formalization of cartographic knowledge usually
                                                                                        fixation, while very difficult searches may require indi-           involves some kind of empirical research such as inter-
                                                                                        vidual inspection of each item’. Thus, they emphasize the           views or text analysis, which is, in most cases, very tedious
                                                                                        quality of the explored material.                                   and time consuming. Kumar (1999) distinguished between

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
256                                                    P. Kubíček and Č. Šašinka
Downloaded by [Masarykova Univerzita v Brne], [Petr Kubíek] at 04:11 22 December 2011

<a id="p005-b002"></a>

<!-- p005-b002 -->
Figure 2. Uncertainty visualization intuitiveness testing example.

<a id="p005-b003"></a>

<!-- p005-b003 -->
three main methods of primary usability data collection:             web-based testing is a topic that has received substantial
                                                                                        observation, interviews and questionnaires. Elzaker (2004)           attention in the human–computer interaction community.
                                                                                        further developed the ‘think aloud method’ and tested this           Multiple studies have sought to evaluate the differ-
                                                                                        approach for exploratory cartography methods.                        ences between in-person and distributed asynchronous
                                                                                            Contemporary research on use and user issues with                approaches. Robinson (2011) describes several case stud-
                                                                                        spatial technology employs methods that require direct               ies in which distributed means for eliciting user feedback
                                                                                        interaction with one or more users. However, no multidis-            and evaluating cartographic outputs were employed.
                                                                                        ciplinary environment enabling both cartographic inputs                   Basic test functionality includes test person identifica-
                                                                                        and psychological measurement and testing in a digital               tion and the pre-test calibration of individual computer and
                                                                                        environment is currently available. Therefore, an interac-           cartographic abilities. Within the test environment, there
                                                                                        tive web-based testing tool known as MuTeP (Multivariate             are three basic types of tasks – forms with pull-down menus
                                                                                        Testing Programme) was designed and an early prototype               with predefined answers; visual choice scenes, in which
                                                                                        developed. The tool was devised in order to test a wide              the test person is forced to choose one or more possibil-
                                                                                        variety of inputs from isolated cartographic symbols or              ities of visual variables; and localization tasks, in which
                                                                                        symbol sets to complex map compositions, both static and             the test person must place the symbol on the right posi-
                                                                                        dynamic.                                                             tion or draw the line or polygon of a certain task. After
                                                                                            The application’s core was developed along the lines             choosing an appropriate test, the overall content is down-
                                                                                        of Google Web Toolkit and the cartographic part relies               loaded from the server to the client site and initialized.
                                                                                        on Open Layers libraries. Its overall architecture con-              The test person attempts the tasks and each interaction
                                                                                        sists of three basic modules – client, server and database.          (mouse click) is recorded on the event log. Both reaction
                                                                                        The client module communicates with the server site and              times and positional accuracy (mouse position can be fur-
                                                                                        its GUI works within standard web browsers (Google                   ther compared with the expected answer) are stored and
                                                                                        Chrome, IE, Firefox). The server module processes the                further processed. The test results are stored within the
                                                                                        client requirements and returns demanded data or informa-            database and exported via the exporting module as ∗ .csv
                                                                                        tion.                                                                files for further statistical processing. The technical back-
                                                                                            Web testing environments bring new possibilities                 ground of the system is further described in Kubicek and
                                                                                        for conducting user research at a distance. Distributed              Kozel (2010).

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
Annals of GIS                                                        257

<a id="p006-b002"></a>

<!-- p006-b002 -->
Construction of the battery of tests and the experimental         methods in order to avoid the carry-over effect (see Hope
                                                                                        environment                                                       and Hunter 2007 for comments). Correctness and process-
                                                                                        The cartographic test which was focused on the explo-             ing time were recorded in order to enable further statistical
                                                                                        ration of uncertainty visualizations was incorporated into        processing.
                                                                                        the more complex battery of tasks. The whole experimental
                                                                                        battery consisted of the introduction slide, a personal data
                                                                                                                                                          Test participants
                                                                                        questionnaire, training tasks, general instructions, a psy-
                                                                                        chological test and two cartographic tests. A standardized        There were three different groups of test participants. The
                                                                                        experimental environment was prepared for all partici-            first group comprised 15 students of the University of
                                                                                        pants. The laboratory experiment was conducted in an              Defence (aged 19–23) with just a basic background in the
                                                                                        air-conditioned classroom. A uniform type of PC mouse             field of spatial information. The second group was cre-
                                                                                        was used and the resolution of LCD displays was set at            ated by 39 geography and geoinformatics students (aged
Downloaded by [Masarykova Univerzita v Brne], [Petr Kubíek] at 04:11 22 December 2011

<a id="p006-b003"></a>

<!-- p006-b003 -->
1280 × 1024 pixels. The size of the presented pictures was        19–23) with intermediate skills in the field of spatial infor-
                                                                                        900 × 675 pixels.                                                 mation. Both student groups were relatively homogeneous
                                                                                                                                                          as for age and skills. The third group of 50 participants
                                                                                                                                                          was tested during the ‘open door day’ and was heteroge-
                                                                                        Testing methods                                                   neous with respect to both age (15–61) and an educational
                                                                                        The aforementioned uncertainty visualization methods              (spatial skills) point of view. The gender of participants was
                                                                                        were tested on three different levels. On the first level, the    also recorded; the group was relatively well balanced in this
                                                                                        intuitiveness of the whitening method was questioned, visu-       respect – 63 males and 41 females in total.
                                                                                        alized as map combined (Figure 2). Users were asked to
                                                                                        mark the area with the highest uncertainty level. Our inten-
                                                                                                                                                          Results
                                                                                        tion was to test whether the association between uncertainty
                                                                                        and paleness (see Jiang 1996, Hengl et al. 2004 for com-          The results gathered during the tests were processed and
                                                                                        ments) is really intuitive or whether it is based on prior        statistically tested. The t-test for independent samples was
                                                                                        knowledge of uncertainty visualization methods. The map           used for the first level, while the paired Student’s t-test or
                                                                                        legend was simplified in order to inform about visualized         Wilcoxon signed-rank test was used for the second level
                                                                                        variables (soil depth, uncertainty) but not about the scale       of samples. The Wilcoxon signed-rank test was used as an
                                                                                        and order.                                                        alternative to the paired Student’s t-test when the samples
                                                                                            In the Section “Test participants”, users were informed       were not normally distributed.
                                                                                        about the basic principles of uncertainty visualization and           The results from the first level of testing (intuitiveness
                                                                                        both methods (maps combined and maps compared) were               of uncertainty visualization with the HSI method) con-
                                                                                        presented together with examples and legends.                     firmed that more participants (63%) acknowledged the
                                                                                            On the second level, both visualization methods were          lighter value to be more uncertain. Those with this
                                                                                        compared starting with maps compared followed by maps             preference were also quicker and were able to decide
                                                                                        combined. Testers were asked to mark the polygon num-             within a shorter time interval (Figure 4). However, the
                                                                                        ber exceeding a certain level of soil depth (e.g. 50 cm)          results were not confirmed as statistically significant,
                                                                                        and the uncertainty level (e.g. 70%) and find a combi-            either for the homogeneous or for the heterogeneous
                                                                                        nation of certain soil depth and uncertainty at the same          groups.
                                                                                        time (e.g. more than 70 cm and 40%). These cases were                 The results from the second level of testing can be
                                                                                        tested in six successive tasks – three for each type of           divided according to the tested variables. For the pur-
                                                                                        visualization.                                                    poses of simplification, only correct answers were taken
                                                                                            Thus the test was focused on the following user abili-        into account; thus, a pair comparison of time needed for
                                                                                        ties:                                                             correct decision-making for both methods (maps com-
                                                                                                                                                          bined and maps compared) was always available. As for
                                                                                                                                                          uncertainty level decoding, there were significantly bet-
                                                                                           ● Uncertainty level decoding (soil depth uncertainty)
                                                                                                                                                          ter results for maps combined (whitening) than for maps
                                                                                           ● Simple decoding of predicted value (soil depth inter-
                                                                                                                                                          compared. This result was valid both for homogeneous
                                                                                             polation results)
                                                                                                                                                          groups (groups 1 and 2) and for heterogeneous group
                                                                                           ● Comparison of combined values (both soil depth and
                                                                                                                                                          (1–3 together, Figure 5).
                                                                                             uncertainty, Figure 3)
                                                                                                                                                              The decoding of predicted values testing (soil depth)
                                                                                                                                                          brought slightly better results for maps combined (whiten-
                                                                                        While the tested level of soil depth and uncertainty was          ing) but without statistical significance. Again, this was
                                                                                        identical for both visualization types, the placement of test-    valid for all three tested groups when considering only cor-
                                                                                        ing polygons was different for both tasks and visualization       rect answers (Figure 6). It is arguable whether the slightly

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
258                                                    P. Kubíček and Č. Šašinka
Downloaded by [Masarykova Univerzita v Brne], [Petr Kubíek] at 04:11 22 December 2011

<a id="p007-b002"></a>

<!-- p007-b002 -->
Figure 3. Examples of visualizations for both (a) value and (b) uncertainty testing for maps compared (top) and maps combined (bottom).

<a id="p007-b003"></a>

<!-- p007-b003 -->
better results for the whitening method are conditioned                   The last part of the testing dealt with the comparison
                                                                                        by the fact that test participants had faced the whitening            of combined values (both soil depth and uncertainty at the
                                                                                        method in the first level of testing (intuitiveness).                 same time) and was the most controversial as far as correct

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
Annals of GIS                                                             259

<a id="p008-b002"></a>

<!-- p008-b002 -->
48

<a id="p008-b003"></a>

<!-- p008-b003 -->
46

<a id="p008-b004"></a>

<!-- p008-b004 -->
44

<a id="p008-b005"></a>

<!-- p008-b005 -->
42

<a id="p008-b006"></a>

<!-- p008-b006 -->
40

<a id="p008-b007"></a>

<!-- p008-b007 -->
Time (s)   38

<a id="p008-b008"></a>

<!-- p008-b008 -->
36

<a id="p008-b009"></a>

<!-- p008-b009 -->
34
Downloaded by [Masarykova Univerzita v Brne], [Petr Kubíek] at 04:11 22 December 2011

<a id="p008-b010"></a>

<!-- p008-b010 -->
32

<a id="p008-b011"></a>

<!-- p008-b011 -->
30

<a id="p008-b012"></a>

<!-- p008-b012 -->
28
                                                                                                                                                  Darker      Lighter          Average
                                                                                                                                                  value       value            Average + SD
                                                                                                                                              Representation preferences       Average + 1.96 × SD

<a id="p008-b013"></a>

<!-- p008-b013 -->
Figure 4. Box plot of uncertainty intuitiveness decoding showing the differences in time necessary for decision. Those preferring lighter
                                                                                        values (63% of test participants) were able to decide in shorter time.

<a id="p008-b014"></a>

<!-- p008-b014 -->
26

<a id="p008-b015"></a>

<!-- p008-b015 -->
24

<a id="p008-b016"></a>

<!-- p008-b016 -->
22

<a id="p008-b017"></a>

<!-- p008-b017 -->
20
                                                                                                                      Time (s)

<a id="p008-b018"></a>

<!-- p008-b018 -->
18

<a id="p008-b019"></a>

<!-- p008-b019 -->
16

<a id="p008-b020"></a>

<!-- p008-b020 -->
14

<a id="p008-b021"></a>

<!-- p008-b021 -->
12
                                                                                                                                                Maps         Maps             Average
                                                                                                                                                compared     combined         Average + SD
                                                                                                                                                    Representation            Average + 1.96 × SD

<a id="p008-b022"></a>

<!-- p008-b022 -->
Figure 5. Box plot of uncertainty value decoding for maps combined and maps compared.

<a id="p008-b023"></a>

<!-- p008-b023 -->
answers are concerned. Only 43% of answers were correct                    Gender differences in map reading and map use are
                                                                                        for both methods at the same time; 64% of correct answers              often quoted; therefore, we compared both the time to
                                                                                        were valid for maps compared and 56% for maps combined                 resolve the task and the correctness of answers for group
                                                                                        (see Section “Discussion” for further details). Significantly          2 (geography students). This was the only group with a
                                                                                        better results were achieved by whitening methods: partici-            sufficient gender balance since both of the other groups
                                                                                        pants were not only quicker, but also more confident about             were either too homogeneous (group 1 – only males) or
                                                                                        the result – the standard deviation was only 0.5 in compari-           too heterogeneous (group 3 – mixed age groups). Only
                                                                                        son with maps compared (Figure 7). The significant results             group 2 was thus appropriate for gender comparison,
                                                                                        were valid even if we took into account only one correct               and differences in task accomplishment were primarily
                                                                                        answer for each pair.                                                  caused by different cognitive abilities between the genders.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
260                                                 P. Kubíček and Č. Šašinka

<a id="p009-b002"></a>

<!-- p009-b002 -->
17.0

<a id="p009-b003"></a>

<!-- p009-b003 -->
16.5

<a id="p009-b004"></a>

<!-- p009-b004 -->
16.0

<a id="p009-b005"></a>

<!-- p009-b005 -->
15.5

<a id="p009-b006"></a>

<!-- p009-b006 -->
Time (s)
                                                                                                                             15.0

<a id="p009-b007"></a>

<!-- p009-b007 -->
14.5
Downloaded by [Masarykova Univerzita v Brne], [Petr Kubíek] at 04:11 22 December 2011

<a id="p009-b008"></a>

<!-- p009-b008 -->
14.0

<a id="p009-b009"></a>

<!-- p009-b009 -->
13.5

<a id="p009-b010"></a>

<!-- p009-b010 -->
13.0
                                                                                                                                             Maps        Maps              Average
                                                                                                                                             compared    combined          Average + SD
                                                                                                                                                Representation             Average + 1.96 × SD

<a id="p009-b011"></a>

<!-- p009-b011 -->
Figure 6. Box plot of value (soil depth) decoding for maps combined and maps compared.

<a id="p009-b012"></a>

<!-- p009-b012 -->
56
                                                                                                                                 54
                                                                                                                                 52
                                                                                                                                 50
                                                                                                                                 48
                                                                                                                                 46
                                                                                                                                 44
                                                                                                                      Time (s)

<a id="p009-b013"></a>

<!-- p009-b013 -->
42
                                                                                                                                 40
                                                                                                                                 38
                                                                                                                                 36
                                                                                                                                 34
                                                                                                                                 32
                                                                                                                                 30
                                                                                                                                 28
                                                                                                                                 26
                                                                                                                                            Maps        Maps              Average
                                                                                                                                            compared    combined          Average + SD
                                                                                                                                                Representation            Average + 1.96 × SD

<a id="p009-b014"></a>

<!-- p009-b014 -->
Figure 7. Box plot of combined value comparison for maps combined and maps compared.

<a id="p009-b015"></a>

<!-- p009-b015 -->
Nevertheless, there were no significant differences in both        were comparable with respect to the age of participants,
                                                                                        measured values according to gender. Males were in gen-            their education and also their computer skills. However,
                                                                                        eral more correct (they achieved a higher percentage of            we expected that group 2 would be more experienced with
                                                                                        correct answers) but needed more time to decide than               geoinformation and cartography. We selected only male
                                                                                        females. This was true for both visualization methods.             participants from group 2 because no women were tested
                                                                                            We did not try to compare results from special-                in group 1.
                                                                                        ists (groups 1 and 2) with those from non-specialists                  Statistically significant differences existed between
                                                                                        (group 3) because of the heterogeneity of group 3 and              both groups regarding uncertainty intuitiveness, group 2
                                                                                        different age categories. Both aspects could significantly         (cartography and geoinformatics students) needing more
                                                                                        influence the results. Nevertheless, we accomplished the           time to make decisions. However, group 2 achieved better
                                                                                        statistical comparison of groups 1 and 2. Both groups              results for all tasks on the second level (the decoding of

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
Annals of GIS                                                         261

<a id="p010-b002"></a>

<!-- p010-b002 -->
values). Particular differences arose in the last task (decod-     attribute certainty should be symbolized by more pastel
                                                                                        ing value and uncertainty at the same time), where only            colours.
                                                                                        27% of group 1 members were able to decode values cor-                  As for serial and parallel processing results, serial is
                                                                                        rectly for maps combined visualization. All other results          more time consuming but yielded better quality results
                                                                                        were comparable for both groups.                                   (67 of 104 correct answers, 64%, Figure 8a). Parallel
                                                                                                                                                           thinking for the whitening method yielded significantly
                                                                                                                                                           better results as for speed, but was less accurate with
                                                                                                                                                           respect to answers (only 59 of 104 correct answers, 56%,
                                                                                        Discussion                                                         Figure 8b). In both cases there were five possible answers
                                                                                        Leitner and Buttenfield (2000) recommended symboliza-              in the test with only one correct – no.3 for maps compared
                                                                                        tion schemes for correct decision-making and proposed              and no.5 for maps combined. However, there were always
                                                                                        graphic variable value as the most appropriate; they also          secondary ‘champions’ close-to-correct-answers results –
Downloaded by [Masarykova Univerzita v Brne], [Petr Kubíek] at 04:11 22 December 2011

<a id="p010-b003"></a>

<!-- p010-b003 -->
supported the idea that more certain information should            no.4 for maps compared (29% of answers) and no.4 for
                                                                                        be visualized by lighter values. They were aware of the            maps combined (26% of answers).
                                                                                        fact that this result appears to be counterintuitive, since
                                                                                        darker values have been repeatedly suggested for the depic-
                                                                                        tion of more certain information because they are perceived        Conclusions and future plans
                                                                                        by the map reader as being more prominent. Lighter val-            The test results confirmed the importance and relevancy
                                                                                        ues, by contrast, are perceived as being less prominent            of empirical testing and yielded preliminary comparison
                                                                                        (MacEachren 1992). However, they saw the main reason               results concerning the two basic uncertainty visualiza-
                                                                                        for this conflict in the use of different testing environments     tion techniques – maps compared and maps combined.
                                                                                        and stated that MacEachren’s original assumption is cor-           According to our testing there exist significant differences
                                                                                        rect if certainty information is depicted on printed paper         between the methods when decoding uncertainty, value and
                                                                                        and colours are perceived by reflected light. On a computer        both of them at the same time. The main findings can be
                                                                                        screen, however, where colours are perceived with emitted          summarized as follows:
                                                                                        light, the results might be reversed. The results achieved in
                                                                                        our test (performed purely in a digital environment), how-              ● Intuitiveness testing confirmed that less certain infor-
                                                                                        ever, have not verified their conclusions. Because of their               mation should be visualized by light values.
                                                                                        lack of statistical significance we can only state that the use         ● Test participants were able to make quicker decision

<a id="p010-b004"></a>

<!-- p010-b004 -->
of light values for less certain information as proposed by               for maps combined method when decoding simple
                                                                                        MacEachren is more in line with human intuition according                 values of uncertainty or predicted soil depth.
                                                                                        to our results.                                                         ● Correctness of answers is lower for more complex

<a id="p010-b005"></a>

<!-- p010-b005 -->
Comparison of both methods – maps combined and                       task – decoding of both values at the same time.
                                                                                        maps compared – did not reveal significant differences                    Maps compared achieved slightly better results than
                                                                                        with respect to the simple decoding of predicted values                   maps combined.
                                                                                        (soil depth). We can thus expect that there is no difference
                                                                                        whether we use lighter or darker values for prediction (as         The results presented in this article are still of a preliminary
                                                                                        in the case of maps compared) or different hues across the         nature and serve as a basis for further investigation, with
                                                                                        spectrum (as in the case of whitening). This assumption has        respect to both statistical processing and more extensive
                                                                                        not yet been properly verified.                                    psychological (cognitive) testing of uncertainty visualiza-
                                                                                             Another result to be discussed deals with the response        tion. It can be concluded that the whitening technique is not
                                                                                        times of tested subjects relative to the variable complexity       appropriate for direct decoding (reading) of interpolated
                                                                                        of the information being processed. Leitner and Buttenfield        values because of the use of a complex legend in which
                                                                                        (2000) claim that adding attribute information of any kind         people with even minor colour sense malfunction are not
                                                                                        should slow down subject response times. However, adding           able to recognize correct values of uncertainty.
                                                                                        attribute certainty did not increase response times in their           A usability and cognitive testing web-based environ-
                                                                                        original research. No significant differences in response          ment (GP test) has proven its suitability and will serve
                                                                                        times were found when comparing one class maps with                as a basic tool for ongoing research. Further development
                                                                                        attribute certainty maps. This finding implies that map            of distributed methods for user evaluation as well as the
                                                                                        readers do not assimilate attribute certainty in the same way      software platform itself is fully compliant with research
                                                                                        as they assimilate added map detail. The inclusion of cer-         challenges outlined by Robinson (2011). The uncertainty
                                                                                        tainty information appeared to clarify map patterns without        visualization tests presented here are still available for more
                                                                                        requiring additional time to reach a decision. The fastest         extensive user group testing, repetition of tests and the pos-
                                                                                        response times were achieved for certainty maps showing            sible incorporation of other cartographic issues within the
                                                                                        saturation; thus, if a fast decision is the highest priority,      test environment.

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
262                                                                       P. Kubíček and Č. Šašinka

<a id="p011-b002"></a>

<!-- p011-b002 -->
(a)
                                                                                                                                       120
                                                                                                                                                                                                                 104
                                                                                                                                       100
                                                                                                                                                                                                                                  Sum

<a id="p011-b003"></a>

<!-- p011-b003 -->
Answer counts
                                                                                                                                        80                           67                                            63             M
                                                                                                                                        60
                                                                                                                                                                        42                                             41         F
                                                                                                                                        40                                        30
                                                                                                                                                                            25
                                                                                                                                                                                    17
                                                                                                                                        20                                            13
                                                                                                                                               110    42 2                                         21 1
                                                                                                                                         0
                                                                                                                                                1             2         3        4                      5          Sum
Downloaded by [Masarykova Univerzita v Brne], [Petr Kubíek] at 04:11 22 December 2011

<a id="p011-b004"></a>

<!-- p011-b004 -->
Possible answers
                                                                                                                                         (b)
                                                                                                                                  120
                                                                                                                                                                                                        104
                                                                                                                                  100
                                                                                                                      Answer counts

<a id="p011-b005"></a>

<!-- p011-b005 -->
80                                                                                   Sum
                                                                                                                                                                                                            63              M
                                                                                                                                                                                          59
                                                                                                                                       60
                                                                                                                                                                                                                            F
                                                                                                                                                                                            40                41
                                                                                                                                       40
                                                                                                                                                                             27
                                                                                                                                                                                                   19
                                                                                                                                       20            13                          13 14
                                                                                                                                                          58       44
                                                                                                                                               110                      0
                                                                                                                                        0
                                                                                                                                                1         2          3        4                5            Sum
                                                                                                                                                                  Possible answers

<a id="p011-b006"></a>

<!-- p011-b006 -->
Figure 8. Answers for (a) serial (maps compared) and (b) parallel (maps combined) processing of combined values (soil depth value and
                                                                                        uncertainty at the same time). Correct answers are labelled in bold.

<a id="p011-b007"></a>

<!-- p011-b007 -->
Although the test group was large enough and homoge-                                         Egeth, H. and Dagenbach, D., 1991. Parallel versus serial pro-
                                                                                        nous, the achieved results have certain limitations. Our                                             cessing in visual search: further evidence from subadditive
                                                                                        tasks, which were focused on the users’ work with uncer-                                             effects of visual quality. Journal of Experimental Psychology:
                                                                                                                                                                                             Human Perception & Performance, 17 (2), 551–560.
                                                                                        tainty, were included in more complex tests with other                                           Elzaker, C., 2004. The use of maps in the exploration of
                                                                                        cartographic and psychological tasks. The number of single                                           geographic data. Netherlands Geographical Studies 326.
                                                                                        items in the task was limited for this reason. The inclusion                                         Utrecht: Utrecht University, 139.
                                                                                        of more items in the tasks can reduce the possible risk that                                     Evans, B.J., 1997. Dynamic display of spatial data reliability:
                                                                                        unexpected intervening variables (e.g. impact of learning,                                           Does it benefit the map users? Computers & Geosciences,
                                                                                                                                                                                             23 (4), 409–422.
                                                                                        distribution of correct answers in the map field) will affect                                    Gershon, N., 1998. Visualization of an imperfect world. Computer
                                                                                        the results. It is necessary to increase the number of items                                         Graphics and Applications, 18 (4), 43–45.
                                                                                        in future research.                                                                              Hengl, T., Heuvelink, G., and Stein, A., 2004. A generic
                                                                                                                                                                                             framework for spatial prediction of soil variables based on
                                                                                                                                                                                             regression-kriging. Geoderma, 120 (1–2), 75–93.
                                                                                        Acknowledgement                                                                                  Hengl, T., 2007. Practical guide to geostatistical mapping. Ispra:
                                                                                                                                                                                             JRC, 143 p.
                                                                                        This article was elaborated as part of Research Plan                                             Herd, S.A. and O’Reilly, R.C., 2004. Serial visual search from a
                                                                                        MSM0021622418 of the Ministry of Education, Youth, and                                               parallel model. Vision Research, 45 (24), 2987–2992.
                                                                                        Sports of the Czech Republic called ‘Dynamic Geovisualization                                    Heuvelink, G.B.M., 2002. Analysing uncertainty propagation in
                                                                                        in Crisis Management’ and Czech Science Foundation project                                           GIS: why is it not that simple? In: G.M. Foody and P.M.
                                                                                        GA205/09/1437 – Agrisensor.                                                                          Atkinson, eds., Uncertainty in remote sensing and GIS.
                                                                                                                                                                                             Chichester: Wiley, 155–165.
                                                                                                                                                                                         Heuvelink, G.B.M., Brown, J.D., and Van Loon, E.E., 2006.
                                                                                                                                                                                             A probabilistic framework for representing and simulating
                                                                                        References                                                                                           uncertain environmental variables. International Journal of
                                                                                        Buttenfield, B., 2000. Mapping ecological uncertainty. In:                                           Geographic Information Science, 21 (5), 497–513.
                                                                                            C.T. Hunsaker, M.F. Goodchild, M.A. Friedl, and T.J. Case,                                   Hope, S. and Hunter, G.J., 2007a. Testing the effects of positional
                                                                                            eds., Spatial uncertainty in ecology. New York: Springer,                                        uncertainty on spatial decision-making. International Journal
                                                                                            116–132.                                                                                         of Geographical Information Science, 21 (6), 645–665.

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
Annals of GIS                                                             263

<a id="p012-b002"></a>

<!-- p012-b002 -->
Hope, S. and Hunter, G.J., 2007b. Testing the effects of the-           Slocum, T., et al., 2005. Thematic cartography and geographic
                                                                                            matic uncertainty on spatial decision-making. Cartography               visualization. Upper Saddle River, NJ: Prentice Hall, 576.
                                                                                            and Geographic Information Science, 34 (3), 199–214.                Snodgrass, J.G. and Townsend, J.T., 1980. Comparing par-
                                                                                        Jiang, B., 1996. Fuzzy overlay and visualization in GIS. Thesis             allel and serial models: theory and implementation.
                                                                                            (PhD). Utrecht University, The Netherlands.                             Journal of Experimental Psychology: Human Perception &
                                                                                        Kubíček, P. and Kozel, J., 2010. Cartographic techniques                   Performance, 6 (2), 330–354.
                                                                                            for adaptive emergency mapping. In:. H.Kremers and                  Stachoň, Z., Šašinka, C., and Talhofer, V., 2010. Perception of
                                                                                            A.Susini, eds.,Risk models and applications. Lecture Notes              various cartographic representations under specific condi-
                                                                                            in Information Science. Berlin: CODATA, 49–62.                          tions. In: M. Konecny, S. Zlatanova, and T.L. Bandrova, eds.
                                                                                        Kumar, R., 1999. Research methodology. A step-by-step guide for             Geographic information and cartography for risk and cri-
                                                                                            beginners. London: SAGE Publications.                                   sis management; towards better solutions. Lecture Notes in
                                                                                        Leitner, L. and Buttenfield, B., 2000. Guidelines for the display of        Geoinformation and Cartography. Berlin: Springer, 446.
                                                                                            attribute certainty. Cartography and Geographic Information         Thomson, J., et al., 2005. Typology for visualizing uncertainty. In:
                                                                                            Science, 27 (1), 3–14.                                                  R.F. Erbacher, J. Roberts, M. T. Gröhn and K. Börner, eds.,
                                                                                        Lukas, V., Neudert, L., and Kren, J., 2009. Mapping of soil condi-          CVisualization and Data Analysis 2005. Proceedings of the
Downloaded by [Masarykova Univerzita v Brne], [Petr Kubíek] at 04:11 22 December 2011

<a id="p012-b003"></a>

<!-- p012-b003 -->
tions in precision agriculture. Acta Agrophysica 2009, 13 (2),          SPIE, 5669, 146–157.
                                                                                            393–405.                                                            Townsend, J. and Fifić, M., 2004. Parallel versus serial pro-
                                                                                        MacEachren, A., 1992. Visualizing uncertain information.                    cessing and individual differences in high-speed search
                                                                                            Cartographic Perspectives, 13 (13), 10–19.                              in human memory. Perception and Psychophysics, 66 (6),
                                                                                        MacEachren, A., et al., 2005. Visualising geospatial informa-               953–962.
                                                                                            tion uncertainty: what we know and what we need to know.            Treisman, A.M. and Gelade, G., 1980. A feature-integration
                                                                                            Cartography and Geographic Information Science, 32 (3),                 theory of attention. Cognitive Psychology, 12 (1), 97–136.
                                                                                            139–160.                                                            Wolfe, J.M., Cave, K.R., and Franzel, S.L., 1989. Guided
                                                                                        Pang, A., Wittenbrink, T., and Lodha, K., 1997. Approaches to               search: an alternative to the feature integration model for
                                                                                            uncertainty visualization. Visual Computer, 13 (8), 370–390.            visual search. Journal of Experimental Psychology: Human
                                                                                        Robinson, A., 2011. Challenges and opportunities for web-based              Perception and Performance, 15 (3), 419–433.
                                                                                            evaluation of the use of spatial technologies. In: Proceedings      Zhang, J. and Goodchild, M., 2002. Uncertainty in geographical
                                                                                            of ICA conference, ICA, 3–8 July, Paris. 6.                             information. London: Taylor and Francis, 266.
