---
id: "hullman2020why"
title: "Why Authors Don't Visualize Uncertainty"
source_file: "The Art of Uncertain Topoplots/papers/hullman2020why.pdf"
source_sha256: "4e44678c5a0c5c8b9f46186e170c5b7193e5bfd76faba40e8efccfcc6a9505a2"
extraction_format: 1
---

# Why Authors Don't Visualize Uncertainty — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
Why Authors Don’t Visualize Uncertainty
                                                                                                             Jessica Hullman

<a id="p001-b002"></a>

<!-- p001-b002 -->
Abstract—Clear presentation of uncertainty is an exception rather than rule in media articles, data-driven reports, and consumer
                                               applications, despite proposed techniques for communicating sources of uncertainty in data. This work considers, Why do so many
                                               visualization authors choose not to visualize uncertainty? I contribute a detailed characterization of practices, associations, and
                                               attitudes related to uncertainty communication among visualization authors, derived from the results of surveying 90 authors who
                                               regularly create visualizations for others as part of their work, and interviewing thirteen influential visualization designers. My re-
                                               sults highlight challenges that authors face and expose assumptions and inconsistencies in beliefs about the role of uncertainty in
                                               visualization. In particular, a clear contradiction arises between authors’ acknowledgment of the value of depicting uncertainty and
                                               the norm of omitting direct depiction of uncertainty. To help explain this contradiction, I present a rhetorical model of uncertainty
                                               omission in visualization-based communication. I also adapt a formal statistical model of how viewers judge the strength of a signal in
                                               a visualization to visualization-based communication, to argue that uncertainty communication necessarily reduces degrees of free-
arXiv:1908.01697v1 [cs.HC] 5 Aug 2019

<a id="p001-b003"></a>

<!-- p001-b003 -->
dom in viewers’ statistical inferences. I conclude with recommendations for how visualization research on uncertainty communication
                                               could better serve practitioners’ current needs and values while deepening understanding of assumptions that reinforce uncertainty
                                               omission.
                                               Index Terms—Uncertainty visualization, graphical statistical inference, visualization rhetoric.
                                        1   I NTRODUCTION                                                             I identify unaddressed challenges in current practice that visualization
                                                                                                                      researchers may find worth devoting attention to. For example, authors
                                        Consider the last few visualizations you encountered outside of scien-
                                                                                                                      express the need for resources to help them develop text-based expla-
                                        tific publications. Perhaps you read a news article backed by data, or
                                                                                                                      nations and produce broadly understandable visual representations.
                                        researched a product, or used a transit application to plan a trip. Did
                                                                                                                          My second contribution is a rhetorical model of uncertainty omis-
                                        the visualizations depict uncertainty–the possibility that the observed
                                                                                                                      sion in communicative visualization. A set of model tenets summa-
                                        data or model predictions could take on a set of possible values?
                                                                                                                      rize beliefs that authors appeal to in rationalizing the omission of un-
                                            Chances are, they did not. Of 612 data visualizations from 121 arti-      certainty from visualizations. The model describes visualization as a
                                        cles published online in February 2019 by a set of leading purveyors of       means of both conveying and producing “signal”, which is validated
                                        data journalism, social science surveys, and economic estimates1 , 449        by the author’s analysis process for both authors and viewers, but be-
                                        (73%) presented data intended for inference, but only 14 (3%) por-            lieved to be obfuscated by exposing uncertainty.
                                        trayed uncertainty visually, either by depicting explicit quantifications
                                                                                                                          The goals are twofold. First, by capturing pervasive beliefs in three
                                        like intervals or conveying variance through raw data.
                                                                                                                      model tenets, the model provides a concise explanation for how a norm
                                            There are many reasons why visualization practitioners and other          of uncertainty omission may persist despite many authors’ professed
                                        data communicators might choose to exclude uncertainty information.           belief in the importance of uncertainty visualization. Secondly, an un-
                                        Some stem from user experience concerns: authors may perceive un-             derstanding of pervasive rationales can help visualization researchers
                                        certainty to be challenging to viewers based on psychological com-            and others devote their efforts toward addressing the beliefs or needs
                                        plexity. When a probability is 0 or 1, it can be validated; when it is        for resources that motivate well-intentioned authors to omit uncer-
                                        not, how it should be interpreted is debatable [13]. When visualiza-          tainty.
                                        tions are used to communicate and inform, as in public-facing reports,            My third contribution is to propose a formalism for the signal-
                                        media presentations, business reporting, and end-user applications, the       judgment mechanism implied by the rhetorical model. I apply a sta-
                                        attention of the viewer is often at a high premium. Authors may ques-         tistical model of graphical inference proposed for analysis to commu-
                                        tion the necessity of adding more information to an already complex           nicative visualization, using it to demonstrate how uncertainty visual-
                                        display. Moreover, even expert scientists and analysts can struggle           ization necessarily reduces flexibility in viewers’ processes for judg-
                                        to accurately calculate uncertainty [53], and finding visualization ap-       ing a visualization’s signal. I summarize multiple logical inconsisten-
                                        proaches that are accessible and applicable across data and visual for-       cies implied by authors’ perceptions as summarized in the rhetorical
                                        mats remains a research challenge. Still other reasons may be rhetori-        model. I conclude with a discussion of how visualization research
                                        cal. Authors may want to signal confidence, perceiving uncertainty to         could more directly address authors’ needs and deepen understanding
                                        undercut the credibility of their results based on unstated norms.            of perceptions around uncertainty.
                                            The goal of this paper is to understand: Why isn’t uncertainty vi-
                                        sualized more often in visualization-based communication? The first           2     BACKGROUND
                                        step in this inquiry is to identify how visualization authors perceive
                                        and use uncertainty representation. I contribute the results of a survey      2.1    Communicating Uncertainty for Decision Making
                                        of 90 professional visualization authors and interviews with thirteen         Scientific discourse, which lays the groundwork for evidence-based
                                        influential professional visualization designers and journalists. I use       decision making, is largely a discussion of uncertainty. However, of-
                                        these results to characterize how communicative visualization authors         ten the level of detail in the scientific literature on a topic or method
                                        understand and engage with uncertainty visualization. In the process,         is inappropriate for a decision-maker, either because it is too minute
                                                                                                                      to easily decipher or fails to state assumptions that are important but
                                                                                                                      assumed known among scientists [20]. An analogous scenario occurs
                                        • Jessica Hullman is with Northwestern University. E-mail:                    in data analysis contexts, where analysts spend time identifying and
                                          jhullman@northwestern.edu.                                                  evaluating the robustness of patterns in visualized data. Reproduc-
                                         Manuscript received xx xxx. 201x; accepted xx xxx. 201x. Date of             ing their complete analysis workflow to communicate results would
                                        Publication xx xxx. 201x; date of current version xx xxx. 201x.               be overwhelming to users in many cases. Hence, visualization authors
                                        For information on obtaining reprints of this article, please send            engage in a rhetorical process involving editorial decisions to omit,
                                        e-mail to: reprints@ieee.org.                                                 emphasize, and otherwise transform results to guide an audience to-
                                        Digital Object Identifier: xx.xxxx/TVCG.201x.xxxxxxx/                         ward intended interpretations [29].
                                                                                                                         For a visualization author to successfully communicate uncertainty,
                                           1 Sample includes: The Bureau of Labor Statistics, The Economist Graphic   they must 1) recognize the value of uncertainty information for re-
                                        Detail, FiveThirtyEight, the OECD, the Pew Foundation, the Urban Institute.   ceivers of their messages, and 2) identify effective ways to communi-

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
cate it. Threats to the successful completion of both steps can arise.       visualization authors and interviewed a smaller set of authors I per-
    For example, an author may choose not to acknowledge uncertainty         ceive to be influential among visualization practitioners. The questions
if they feel uncomfortable conveying numerical estimates of risk. Prior      posed in this work are unlikely to be answered to satisfaction by a sin-
research suggests that experts or analysts typically prefer to communi-      gle study; however, for the purposes of this initial inquiry I stopped ag-
cate uncertainty in qualitative terms, fearing misinterpretation if they     gressively recruiting new participants once responses seemed to con-
state uncertainty, though decision makers and other end-users of re-         verge on a set of widely held rationales.
ports typically prefer to receive uncertainty in precise quantitative
terms [15, 46]. Other proposed reasons that a communicator may be            3.1 Survey of Visualization Creators
resistant to the idea of presenting uncertainty include: fear that uncer-    Between December 2018 and May 2019 I conducted an online survey
tainty information will imply unwarranted precision in estimates [19],       of 90 visualization authors in a convenience sample. I shared the sur-
a tendency to think that the presence of uncertainty is common knowl-        vey link on Twitter several times over this period. The recruitment text
edge [19], a tendency to think that non-expert audiences will not un-        described target respondents as those who “regularly create visualiza-
derstand the uncertainty information [19, 44], a belief that not present-    tions for others.” The headline began “Attn vis designers, developers,
ing uncertainty will simplify decision making [44], a belief that people     journalists...” To incentivize participation, one $50 Amazon gift card
cannot tolerate uncertainty [44], a belief that uncertainty creates neg-     was awarded to a randomly drawn respondent for each 20 respondents
ative feelings [44], a belief that not presenting uncertainty will make      (5 gift cards total).
it easier to coordinate beliefs [44], and a belief that presenting it will
make their message seem less credible [19, 44].
    Breakdowns may also occur when uncertainty is communicated.
Fischoff [18] summarizes possible breakdowns in a set of “develop-
mental stages” in risk communication: “All we have to do is: 1) get
the numbers right; 2) tell them the numbers; 3) explain what we mean
by the numbers; 4) show them they’ve accepted similar risks in the
past; 5) show them it’s a good deal for them; 6) treat them nice; 7)
make them partners; 8) all of the above.”
    Scholarly work describing rationales like those above has largely
been based on empirical evidence around uncertainty comprehension
(e.g., the large body of research on overconfidence among those pre-         Fig. 1: Summary of the types of organizations interviewees and survey
sented with uncertain information [22, 21, 38]) or anecdotal evidence        respondents are associated with.
(e.g., a former director of the Congressional Budget Office’s (CBO)
statement that “You can’t give the client a bound. The client needs
a point” [44]). Researchers in economics and visualization have sug-
                                                                             3.1.1 Survey Design
gested that omitting uncertainty information from data presentations
may result from an unstated norm [17, 42]. I attempt to directly elicit      The online survey (17 required questions) aimed to identify how of-
authors’ perceptions about uncertainty and associated norms by con-          ten respondents depict uncertainty, why they sometimes choose not to,
ducting a survey and interviews.                                             and what sorts of design guidelines or other considerations they as-
    Some studies have examined how data workers manage                       sociate with uncertainty. Six required questions in the first section of
uncertainty–including attempts to understand, diagnose, mini-                the survey asked respondents to consider their visualization work over
mize, exploit, and suppress it–as they attempt to extract insights from      the past year and state how often, and how, they had visualized uncer-
data [5, 33, 39, 50, 51]. These accounts establish that even “experts”       tainty, and whether they had tried to include it but opted not to, and
struggle to properly quantify and manage uncertainty. Several studies        why not. A second section of 8 required questions asked respondents
describe data workers’ perceptions of the difficulty of communicating        to rate their agreement with the statements depicted in Figure 3 using
uncertainty and a tension between their goals of transparency and            a 5 point scale labeled from Strongly Disagree (1) to Strongly Agree
accuracy and decision-makers’ desires for simplicity [5, 33, 51].            (5). In a final section of 3 required questions, respondents were asked
                                                                             to describe their position, the audience for which they most frequently
2.2    Visualizing Uncertainty                                               created visualizations, the frequency with which they authored visu-
                                                                             alizations for others, and optionally the organization they worked for
Research in uncertainty visualization starts with quantified uncertainty     and links to their work.
and considers how to best visually express it. Researchers have tax-
onomized sources of, and representations for, uncertainty [27, 32, 40,       3.1.2 Participants
47, 49, 51, 52] and demonstrated techniques intended for analysts and        A total of 90 visualization authors completed the survey as of May
other experts (e.g., [1, 12, 14, 49, 54, 55]). More recently, researchers    2019. Table 1 describes the sample. Given the use of a convenience
have proposed and evaluated visualizations intended for non-experts          sample recruited on social media, selection bias is likely, such as to-
as well as experts, such as hypothetical outcome plots [31, 34], quan-       wards authors who have spent time thinking about uncertainty or are
tile dotplots [16, 35], value suppressing palettes [10], and gradient and    more likely to think it should be expressed. I did my best to remain
violin plots [9]). However, few researchers in uncertainty visualiza-        aware of this possible selection bias in analysis by avoiding interpret-
tion have devoted attention to why uncertainty visualization remains         ing the absolute frequency of responses or assuming the rationales pro-
uncommon in practice, or whether authors’ needs are met by the out-          vide an exhaustive description.
puts of research on visualizing uncertainty. Exceptions include papers
that speculate on how authors may see uncertainty metadata as no dif-        3.2 Interviews with Influential Visualization Creators
ferent from other metadata and include it only as secondary [4], may         In gain a deeper understanding of potential causes of inconsistencies
struggle to find representations that are compatible with the data, tasks,   in attitudes and practices that the survey results exposed, I conducted
and organizational goals [4], and may find it difficult to evaluate the      semi-structured interviews with thirteen people I consider to be “visu-
impact of uncertainty on visualization-based judgments [4, 30].              alization influencers” who do not self-identify as researchers (6 fe-
                                                                             male) between February and June 2019. Figure 1 summarizes the
3     M ETHODS                                                               sectors in which interviewees worked. All thirteen interviewees have
The characterization of practices and associations around uncertainty        Twitter accounts, with a median of 4.7k followers (mean: 11k).
visualization that I contribute is based on formative research conducted
                                                                             3.3   Analyzing Responses
over seven months in 2018 and 2019. During this time, I surveyed

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
All survey responses were                                                    Roughly 5% of survey respondents described uncertainty as variance,
recorded via Google forms.                                                   which is shown by simply plotting raw data.
Eleven of the interviews were                                                   Multiple survey respondents and interviewees alluded to uncer-
transcribed by a professional                                                tainty visualizations that defied the conventional definition of uncer-
transcriptionist. Two of the                                                 tainty as a quantitative probabilistic representation. Uncertainty was
interviews were not recorded.                                                associated with visual inexactitude, or encodings intentionally cho-
   To identify values and ra-                                                sen to imply imprecision, by four interviewees and a handful of sur-
tionales in the results of                                                   vey respondents. One freelance interviewee described his choices in
the above activities, I started                                              visualizing imprecise estimates: “What we did with this one, because
with open coding to identify                                                 anything that would have give us a precise treatment would’ve been
themes, then iterated over the Fig. 2: The list of audiences that            making something precise that is not, we actually used different bins....
responses several times until survey respondents described creat-            Because it’s not plotting on an exact axis point, risk scale equals im-
the codes stabilized [11]. For ing visualizations for. Respondents           plied precision. That was the intent” (I4). The interviewee went on
both survey and interview re- could choose multiple answers.                 to mention perceptual accuracy rankings for visual encodings “if you
sults, I categorized under-                                                  back down to the classic perceptual rankings, that kind of thing, those
standings of the term “uncer-                                                that are lower down the rankings of perceptual accuracy do work in my
tainty visualization,” descriptions of how participants depicted uncer-      view.” Another freelance interviewee (I1) described the use of circular
tainty (if applicable), rationales for not expressing uncertainty, and       area and conjoined marks with difficult to resolve boundaries as strate-
perceptions of the value of uncertainty. Related to rationales for not       gies for visualizing uncertainty that did not involve explicitly mapping
expressing uncertainty, I also coded statements that seemed aimed            quantified uncertainty to visual properties.
at describing a perceived status quo, which became the basis for the            Several survey respondents and four interviewees (I1, I4, I6, I8)
rhetorical model.                                                            also described the possibility of communicating uncertainty through a
                                                                             progression of views depicting patterns that are more to less prob-
4     S UMMARY OF U NCERTAINTY A SSOCIATIONS & P RACTICES                    able, an interpretation that is not usually considered in scholarly re-
                                                                             search on uncertainty visualization. A survey respondent attributed a
4.1    Uncertainty Visualization: What and How?                              design pattern to the work of one of the interviewees: “[interviewee]
To set the context for the online survey and interviews, participants        shows a useful way of communicating uncertainty with small multi-
were first asked to describe what they thought of when hearing the           ples. It breaks down observations into three bins: 1) this is something
term “uncertainty visualization.” The most prevalent responses de-           that we’ve seen at least once; 2) this is something that we see some-
scribed uncertainty as an interval, range, or region (roughly half of        times; and 3) this is something that we see all the time.” To respon-
respondents), often in conjunction with error bars. Mentions of pos-         dents, patterns like these appeared to inhabit a middle ground between
sible outcomes and/or the possibility that plotted values may not rep-       qualitative uncertainty that might be best expressed in text and explicit
resent the real values (roughly 15%) were also common. Probability,          visual representation of quantified uncertainty.
confidence, variance, error, missing data, and sampling and modeling
artifacts were each mentioned by multiple respondents. While most            4.2     Failure & Voluntary Omission
of these initial impressions did not include value judgments, a hand-        Though the majority of online survey respondents and interviewees
ful of online survey respondents defined uncertainty visualization by        said they had communicated uncertainty in at least one visualization in
referring to tensions between uncertainty and other design goals, like       the previous year, their estimated percentage indicated that uncertainty
“how to convey the possibility of divergence from a projection with-         visualization is a relatively rare phenomena: over one third of online
out casting doubt on the fundamental measurements or reports” and “a         survey respondents indicated that 10% or less of the visualizations they
visualization that doesn’t have a clear message.”                            had created communicated uncertainty. Only one quarter described
   When asked whether they had depicted uncertainty in any visualiza-        communicating uncertainty in 50% or more of their visualizations.
tions they had created in the last year, roughly three quarters (76%) of        Moreover, nearly half of survey respondents admitted to having in-
survey respondents replied yes. When asked about occasions on which          tended or attempted to communicate uncertainty in a visualization they
authors had communicated uncertainty, survey respondents and inter-          had created in the prior year, but had not ultimately included the un-
viewees mentioned a number of techniques consistent with an under-           certainty. Roughly one third of the interviewees described instances
standing of uncertainty as error or probability. Surveyed authors most       where uncertainty information was calculated or discussed among the
commonly described using interval representations (75%), visual vari-        authoring team but not included. Frequently cited reasons among sur-
ables to encode probability or confidence (75%), density plots or his-       vey respondents for not including uncertainty on these occasions were
tograms (54%), and text representations (51%). However, uncertainty          not wanting to confuse or overwhelm viewers (53/85; 62%), not hav-
as a qualitative expression of a gap in knowledge came up in most            ing access to uncertainty information (40/85; 47%), not knowing how
interviews with interviewees as well as several survey responses. 62%        to calculate uncertainty (22/85; 26%), and not wanting to make data
of survey respondents had used text to warn their viewers of the po-         seem questionable (15/85; 17%).
tential for uncertainty in results. Several interviewees described how
they had more experience thinking deeply about qualitative forms of          4.2.1    Expected Difficulties for Viewers
uncertainty (I1, I4, I5), like a lack of available explanation for how a     Concerns that uncertainty information may overwhelm or confuse
particular quantitative prediction would come to be (e.g., in what order     viewers were echoed in other comments provided by survey respon-
and at how constant a rate certain climate changes come about).              dents and interviewees. The belief that a visualization that explic-
   Several respondents spontaneously associated uncertainty with pro-        itly represented uncertainty requires more effort than a visualization
cess, including “Even communicating uncertainty may also require             without it was implicit in many of these comments. One freelance
communicating fundamental hermeneutics and methodologies of that             interviewee described how the efforts required in readers’ time and
information,” and “the answer to the question someone will inevitably        energy and sophistication should be “rewarded with sufficient insight
ask ‘how did you get these numbers?”’                                        to understand [the uncertainty information]” (I4). Another who works
   Uncertainty was also associated with resolution. One interviewee          in industry described how explicit uncertainty representation means
who works in industry described uncertainty as a symptom of the gran-        that readers “have to come to you with patience, already have the pa-
ularity or resolution of a plot: “I approach uncertainty a lot of times by   tience needed to endure your explanation” (I8). That uncertainty could
trying to peel back layers instead of being like ‘Let’s look at an average   provoke psychological anxiety was also suggested by several intervie-
value and try to get some sense of what the distribution is under that.      wees; as one journalism interviewee put it “People have a lot of anxiety
Can I actually just show all of the data that they have available?” (I6).    once they acknowledge even a small gap in something” (I3). Survey

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
respondents and several interviewees (I2, I8) alluded to empathy for        remarked on a feeling of responsibility that they should be doing it
the viewer as a possible motivation for uncertainty omission: “Be-          more often.
cause I’m separated from the analysis, my question often ends up in            Some of the reasons behind the desire to visualize uncertainty more
rhetoric and ethics a lot more than it does ‘Am I truthfully portray-       often appeared to be driven by a sense of responsibility to accu-
ing information?’ It’s much more about what does the audience care          rate presentation. Survey respondents insinuated the importance of
about, building a sort of empathy, if I can, with the audience; what        transparency in presentations of data, suggesting that omitting uncer-
difficulties they’re going to encounter trying to learn the information”    tainty was misleading or even lying. One interviewee described feel-
(I8).                                                                       ing “mildly guilty” for not representing uncertainty more often (I6).
                                                                            Several interviewees also described how they perceived uncertainty
4.2.2    Difficulties for Authors                                           representation to have educational potential (I5, I7, I13). Another
                                                                            journalism interviewee described wanting to show uncertainty more
In contrast to viewer-related concerns, not having access to uncertainty    often to help their audiences become accustomed to what scientific
information or not knowing how to calculate uncertainty are author          measurement is like: “I feel like once readers start to understand that
resource limits. Their prevalence suggest that some authors do not          there’s uncertainty inherent in a lot of these things, it’s still signifi-
have the tools or knowledge needed to follow through with uncer-            cant. To get used to the idea that this can be very rigorous and still
tainty representation. When asked for additional reasons that they had      have a range of uncertainty, that’s where I feel like I need to get bet-
not presented uncertainty information in their recent visualizations, a     ter at not just saying, ‘Well, we’ll just show these data points”’ (I5).
handful of survey respondents mentioned time and other constraints          A survey respondent similarly argued for uncertainty presentation as a
directly. Multiple authors also referred to not being able to visual-       default because “otherwise people won’t get better at realizing nuances
ize uncertainty satisfactorily. As one visualization interviewee from       in data.” These comments suggest that some authors perceive uncer-
industry described, “we lack canonical forms for lay audiences” (I7).       tainty omission as a normative practice that prevents viewers from de-
   Several other interviewees described how stakeholders they worked        veloping certain abilities.
with on visualizations questioned the value of the effort required to
include uncertainty explicitly: “it was an economic question. I had         4.3.1   Inconsistency & Heterogeneity in Attitudes
to develop the visualizations. They didn’t want to pay for me to put
                                                                            Perhaps the most striking observation in the survey responses and in-
all the time in we would need to fully do a good explainer” (I8). In
                                                                            terviews was the degree of heterogeneity and even inconsistency in
describing resistance to visually representing uncertainty in graphic
                                                                            attitudes around some considerations. Despite the left skew in agree-
reports, a journalism interviewee explained: “They know they’re going
                                                                            ment with “It is important to always present uncertainty information
to have to help work on labels to describe it. That’s energy that could,
                                                                            when presenting data,” nearly 28% of survey respondents rated their
in their eyes, perhaps be better spent elsewhere” (I5).
                                                                            agreement as neutral and another 14% leaned negative. Agreement
   A related set of concerns framed uncertainty as opportunity for au-      with statements that “visualizations should have a clear, unambiguous
thor error. Multiple interviewees provided rationales for not present-      message” (Figure 3e), that “most audiences cannot understand uncer-
ing uncertainty that resembled what behavioral economists describe          tainty information” (Figure 3c), and that “people are not interested in
as a perception of “misplaced precision” [19, 43] for which an author       uncertainty information” (Figure 3f) were even more ambiguous.
might later be blamed. One industry interviewee, who described them-
                                                                               Some inconsistencies may stem from the difficulty of capturing the
self as “probably hav[ing] more stats cred than other data vis people,”
                                                                            heterogeneity of visualization design and interpretation strategies with
questioned whether it was “better to add something indicating uncer-
                                                                            simple high level statements. For instance, task-specific concerns are
tainty if you don’t feel like you have a lot of confidence in those num-
                                                                            inevitable in visualization design. Several survey respondents and
bers” (I6), suggesting qualitative expressions of uncertainty as a likely
                                                                            most interviewees described taking care to identify the task or in-
alternative that they and other authors might consider instead. “There’s
                                                                            ference that a visualization should support, and indicated that some
somewhat of a worry of I’m not a hundred percent. If I’m going to in-
                                                                            tasks might warrant presenting uncertainty more than others. How-
clude uncertainty, I want it to be really good. I place both into the
                                                                            ever, the tension I observed—between authors’ various conceptions of
sense of ‘there’s uncertainty about uncertainty, so if I put a number
                                                                            the communicative function of a visualization and their associations
on it, what if I’m wrong?”’ (I6). The possibility that not presenting
                                                                            with uncertainty—seemed unlikely to be fully explained by taking into
uncertainty could mean viewers’ would infer even more precision was
                                                                            account tasks. Despite the optimism among most of the interviewees,
not raised by authors.
                                                                            in nearly every interview, I observed some form of inconsistency be-
   When asked for reasons for uncertainty omission that they had ob-        tween the implied desire for more uncertainty and the interviewee’s
served among colleagues, a journalism interviewee (I3) described how        statements about sufficient or ideal practices for uncertainty.
often authors found it difficult to calculate and describe uncertainty or      For example, one journalism interviewee (I3) acknowledged the im-
the model assumptions used to derive it. When asked what they per-          portance of uncertainty representation and described their stance that it
ceived to be the most helpful resource to bring about more uncertainty      should happen much more often, including in their team’s work. How-
representation in the media, they concluded “What I really want are         ever, when later asked for instances of projects where they thought un-
better word equivalent versions.” Other journalism and freelance in-        certainty should have been more explicitly represented, they defended
terviewees echoed the challenges with explaining uncertainty (I4, I5,       the practices they commonly use to “vet” the information for signs of
I12).                                                                       unreliability before publishing the visualization. Another industry in-
                                                                            terviewee with statistical training in their background mused that “in
4.3     Attitudes on the Importance of Uncertainty                          theory, I should have a lot of uncertainty. I’m working with very hard-
A majority of the surveyed authors expressed a belief that uncertainty      core statisticians and machine learning experts and scientists, and yet
should be visualized or explicitly represented more often than it cur-      I don’t explicitly include uncertainty in my visualizations ever. It was
rently is than less. An optimism about uncertainty representation is        actually quite interesting, after you prompt, thinking about why” (I6).
suggested by a left skewed distributions of agreement among online          Hence authors who seem clearly capable of calculating and represent-
survey respondents with the statements “It is important to always           ing uncertainty well, who occupy roles in which they have the freedom
present uncertainty information when presenting data” (Figure 3a),          to experiment, and who expressed interest in representing uncertainty
“Uncertainty information should be presented in a way that forces           more often, seemed unable to produce self-satisfying reasons for why
users to take it into account” (b) and “Uncertainty information should      they did not represent uncertainty more often.
be presented when it calls into question the main message or pattern
shown in the visualization” (Figure 3d).                                    5   A R HETORICAL M ODEL OF U NCERTAINTY O MISSION
   This sentiment was echoed by most of the interviewees. Nearly all        I propose a model to explain how authors’ perceptions of the function
interviewees described visualizing uncertainty more often as a goal or      of visualizations and uncertainty may contribute to a norm of omis-

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
Fig. 3: Survey participants’ ratings of their agreement with statements on a 5pt scale (1=Strongly Disagree, 5=Strongly Agree).

<a id="p005-b002"></a>

<!-- p005-b002 -->
sion despite professed acknowledgement of the value of uncertainty.            A journalist interviewee described how conveying a clear signal
The model is rhetorical, in that it explains how authors make deci-         with a visualization was “related to how you think about stories as
sions aimed to guiding interpretations within a larger system of com-       a journalist, you want to simplify and deliver one core message with
munication conventions and semantic associations [29]. The model is         some contextualization” (I2). Another interviewee described how
epistemological, in that it concerns how knowledge is constructed.          hearing from their scientist collaborators that “we helped make their
   The model is premised upon the fact that uncertainty omission is a       point a little bit clearer to folks”(I5) was a sign of visualization effec-
norm. Three tenets capture pervasive associations that give rise to this    tiveness. Multiple other interviewees confirmed this (I3, I6, I9), for
norm. Tenet 1 states that in communicative visualization, visualiza-        example, an industry interviewee describing how the best feedback on
tions are representations of a message or signal that an author wishes      a visualization was how to make the signal stronger (I6).
to convey to an audience. Tenet 2 describes how analytical process             The signal in a visualization was not expressed by authors as a par-
validates the signal for both authors and viewers, though only authors      ticular kind of message or statistic, but instead appeared to represent
typically have access to this process while viewers trust the process       a simplification or a proxy for an idea in which the author and the
without experiencing it. Tenet 3 proposes that uncertainty functions        viewer share an interest. Authors mentioned specific examples from
as a question or seam in the message that threatens the validity of the     their work at times, including the magnitude of single values or dif-
signal for statistical, attentional, or normative social reasons.           ferences between values, to trends, to relationships or connections be-
                                                                            tween data or trends.
5.1   Premise: Uncertainty Omission is a Norm                                  Authors also suggested that a signal is a crystallization or abstrac-
                                                                            tion of something more complex. One freelance interviewee described
The low proportion of uncertainty visualizations out of authors’ total      the restraint they must consistently maintain in designing a visualiza-
visualizations and fact that nearly 20% of authors did not recall com-      tion, “There’s always a creeping temptation, not just from the client to
municating uncertainty at all in the last year suggests that avoiding       say as much as possible, but also myself. I get caught up in the mood
explicit representation of uncertainty in visualization presentations is    of a subject and think, ‘That’s interesting. That’s interesting.”’ (I4).
a norm, or generally accepted standard for behavior.
                                                                               Finally, many authors implied that a signal has a truth value, as in
   Multiple comments from interviewees and survey respondents sup-          equating uncertainty visualization with “how to convey the possibil-
port this tenet. One journalism interviewee explicitly described in-        ity of divergence from a projection without casting doubt on the fun-
creasing the frequency with which they visualized uncertainty in their      damental measurements or reports,” descriptions of using the design
work as having the potential to “help shift what the norm is overall for    process to identify patterns that were “more signal than noise” (I3)
all the public in terms of representing these things” (I5). Another jour-   and the use of terms like “iffy” to describe some signals (I2).
nalism interviewee summarized the relative lack of uncertainty com-
munication in their organization as “no one cares” (I3). An indus-
try interviewee who previously worked with scientists described how         5.3     Tenet 2: Process Validates Signal
“in scientific communication for the public, the general consensus has      How does the signal described in Tenet 1 come to be seen as worth
been don’t quantify your uncertainty” (I8). After commenting on one         conveying by an author? In other words, what validates the signal in
organization’s use of error bars and other uncertainty representation,      the eyes of the author, and subsequently in the eyes of the viewer?
another freelance interviewee commented “I do think a lot of places
are mired in this cultural practice that no one’s ever challenged and       5.3.1    Faith in Process Among Authors
thought, ‘Do we need to provide this?’ Maybe some people need to,
but most people do not” (I4). A survey respondent described how their       A faith in process was one of the most common rationales among au-
work “would not be accepted by politicians because other analysts           thors for why omitting uncertainty information was acceptable. Inter-
never describe uncertainty so my more robust visualizations appear          viewees repeatedly emphasized the important role of process in vali-
less valid if I am transparent.”                                            dating claims made by visualizations. For example, a journalism inter-
                                                                            viewee described how it is a journalist’s job is to make sure that infor-
                                                                            mation they are presenting is “not so iffy that you need [uncertainty in-
5.2   Tenet 1: A Visualization Expresses a Signal
                                                                            formation]” (I2). Several other interviewees described how they often
Despite ambiguity in the distribution of agreement among surveyed           collaborated with scientists or data analysts who would be responsible
authors with the statement “A visualization should present a clear mes-     for the statistical analysis behind a data visualization. In these scenar-
sage,” most interviewees and many survey respondents alluded to con-        ios, faith in the analyst’s or scientist’s process as assumed. For exam-
veying a signal or message as the primary function of visualization-        ple, one interviewee alluded to how these data experts would “make
based communication.                                                        sure things are significant” (I2). Another suggested that “Scientists

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
generally don’t assert anything if there’s a fifty-one percent chance.        5.4   Tenet 3: Uncertainty Obfuscates Signal
They wait until they’re really confident” (I8).                               If visualizations provide signal, uncertainty obfuscates that signal in
   These comments would seem to imply that the truth value of sig-            the eyes of many interviewees and survey respondents. Multiple sur-
nal is independent of the visualization, which simply expresses that          vey respondents and interviewees alluded to perceptions of uncertainty
signal. However, more than half of interviewees mentioned ways in             as separate and even “tangential” to visualized information. Describ-
which they used the visualization process to identify and clarify the         ing the role of a journalist in providing a simplified message, a jour-
signal. For example, multiple industry interviewees framed the de-            nalism interviewee described how “Uncertainty would be peripheral
sign process as “tuning” the visualization to optimize signal strength,       to the message” (I2). Another journalism interviewee used a fash-
implying that a signal was not independent of the visualization design:       ion metaphor to visual representation of uncertainty to an unnecessary
“Being able to change [the color palette] gives a way of reducing some        accessory (I3). An industry interviewee described how uncertainty
of that type of uncertainty... how do I make sure that if there’s a signal    “doesn’t feel like it’s actually part of the core aspect of the data visual-
in the dataset, you’re actually able to see it?” (I6) A journalism inter-     ization” based on their experiences as a visualization expert in a large
viewee described a process akin to looking for “visual significance”          corporation where analyses are regularly conveyed through visualiza-
(I5) in which visualization is used to establish if a pattern is trustwor-    tion (I11).
thy. They described how in visualizing data for an upcoming story,               A more negative view of uncertainty as questioning the message
a colleague “realized you couldn’t see the pattern. It was statistically      or signal in a visualization either came up spontaneously or was con-
not a very strong pattern. This isn’t supporting the case at all.” Several    firmed via questioning in nearly every interview. Beyond the 17%
interviewees described the visualization process as characterized by          of survey respondents for whom not wanting to “make the data seem
looking for things that are “basically more true” (I3) or “more signal        questionable” deterred them from presenting uncertainty, multiple sur-
than noise” (I1, I2). These remarks imply that authors use a threshold        vey respondents also associated the term “uncertainty visualization”
to determine whether a signal is valid enough to share through visu-          with questioning, as in “a visualization that asks a question,” and “how
alization, and that visualization plays a role in the identification and      to convey the possibility of divergence from a projection without cast-
strengthening of that signal.                                                 ing doubt on the fundamental measurements.”
                                                                                 When it came to exactly how uncertainty obfuscates a signal, au-
5.3.2   Faith in Process Among Viewers                                        thors alluded to several distinct ways. The first way is best described
While authors look to their own or collaborators’ process to validate         as statistical: “Error could be so large that it invalidates the data.”
a signal, viewers are not privy to these processes. From a statistical        When asked if their organization, a large news publication, had de-
standpoint, it would seem that an expression of uncertainty should be         veloped explicit guidelines or norms for communicating uncertainty,
required to establish trust whenever visualized data is intended for in-      a journalism interviewee replied sarcastically that “we only show it
ference.                                                                      when we want to conclude the opposite. Uncertainty comes out most
    However, multiple interviewees and survey respondents implied             when you want the trend to not be true” (I3). A survey respondent con-
that most viewers who they created visualizations for did not require         versely described how viewers’ “are interested in uncertainty when it
specific information about process or uncertainty to trust that a signal      is doesn’t overwhelm a clear takeaway.” Another survey respondent
is valid. One freelance interviewee replied sarcastically, “it’s more like    openly admitted to choosing to omit uncertainty from a visualization
the opposite” (I13). Instead, some authors described trust as a perva-        because “data wasn’t reliable and uncertainty seemed too big.”
sive default in visualization-based communication. As one industry               A second way is best described as attentional, suggesting the po-
interviewee described it “There’s a participation in trust with the sys-      tentially distracting nature of uncertainty and the work it entails of
tem produced by the information, so wherever that comes from. Most            viewers. One journalism interviewee alluded to how it can be diffi-
people will trust the doctor, not necessarily because the information         cult to motivate the presentation of uncertainty from the standpoint of
itself was trustworthy, but because the doctor was” (I8). In contrast to      what it provides for the viewer besides extra work: “you’re analyzing
the seemingly rational expectation that uncertainty would play a role         your audience. Sometimes the editor is going to say, ‘we’re going to
in fostering trust, the same interviewee described how a priori trust is      lose views on this’, so they’ll want to omit it” (I5). Another freelancer
instead a necessary precondition to presenting uncertainty: “I would          explained the non-value of uncertainty in many instances by saying
say that you want trust established before you show uncertainty... My         “it’s a constant battle to get bums on seats, but also then to make it
hypothesis would be that it [uncertainty communication] may have no           worthwhile for that bum being on the seat” (I4).
effect for trust development.”                                                   A third way is best described as procedural. Here, uncertainty ap-
    One industry interview described how the power of “professional           pears to operate like a seam, or “crack” in the visualization that signals
judgment” becomes salient in the transition between exploratory to            the process behind it. One survey respondent described how uncer-
explanatory data analysis: “If you’ve gotten to the point where you’re        tainty visualization was to them “The answer to the question someone
presenting this and as a professional, as a scientist you have deter-         will inevitably ask, ‘how did you get these numbers?”’ If this ques-
mined that this is acceptable, and so the particulars of the uncertainty...   tion is in fact inevitable, it would seem more efficient for a visualiza-
are almost like an engineer whiteboard interview. Somebody says,              tion author to try to answer the question in advance of being asked by
‘What about the uncertainty bands around this point X?’ You’re like,          presenting uncertainty. However, many authors seemed motivated to
‘I see that too. I’m going to respond to that”’ (I11). When asked if          avoid this question where possible, lending further evidence to a belief
they had seen audiences asking for uncertainty communication in data          that viewers’ trust is a priori.
scientists’ presentations, the interviewee responded “They don’t care            One reason for avoiding references to process is that authors may
in the short term. Uncertainty is a long-term strategic problem.”             not feel prepared to fully explain why the signal they were presenting
    Another freelance interviewee described how an organization they          was valid. That many authors found it challenging to calculate uncer-
had worked for could not assume the standard level of trust based             tainty and worried about producing wrong explanations provides some
on the controversial nature of their business, and how this status im-        support for this possibility.
pacted their use of uncertainty visualization: “One of the things that           A final way that authors implied that uncertainty can obfuscate is
they were saying is because people don’t trust them, they have to go          social. Uncertainty is again analogous to a seam, but is perceived as
overboard with authoritative looking charts and visuals... If they don’t      undermining the author’s credibility based on a violation of the trust
show workings, if they don’t show error bars and all these other things,      assumptions underlying norms. As one interviewee describes, “if you
they’re in a losing battle ” (I4). Even if viewers are not always con-        go to the extent of trying to reassure people with workings and as-
sciously aware of the process used to identify the signal in a visual-        sumptions and methodologies, that sense of administration wrapped
ization, that they trust the results of the author’s process helps explain    around a graphic is off-putting. It gives you a reading task. Actually,
why conveying the “workings” through techniques like uncertainty vi-          sometimes it makes you think that people are trying too hard. There
sualization may often not be seen as necessary.                               must be something even more that they’re not telling me about” (I4).

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
It is worth noting that many authors seemed confident in stating ra-
tionales, as though they perceived them to be truths that do not require
examples to demonstrate. It is possible that rationales for omission
represent ingrained beliefs more than conclusions authors have drawn
from concrete experiences attempting to convey uncertainty.

<a id="p007-b002"></a>

<!-- p007-b002 -->
6     M ODELING I NFERENCE IN C OMMUNICATIVE V ISUALIZATION
A reader may find it easy to spot inconsistencies across the model
tenets. For example, the efforts that authors go through to identify and
clarify a signal using visualization may seem unwarranted if viewers
are thought to default to accepting the truth value of signals they are
presented with. Or, the faith that authors have in their process to val-
idate a signal may seem at odds with their desire to avoid presenting
uncertainty when it can act as a seam that exposes aspects of that pro-
cess. Exposing inconsistencies may help in encouraging authors to
reconsider how their actions contribute to a norm of uncertainty omis-
sion despite good intentions.
   Many statements authors made suggested that pragmatic concerns
about perceived consequences of communicating uncertainty often
outweighed their desire to communicate it. As a result, many authors’
might find blanket arguments that uncertainty communication is a duty
or moral imperative, as some have suggested [19], unsatisfying. For
example, the pragmatic author might believe that the challenges of un-           Fig. 4: An adaption of a visualization presented by the Pew Founda-
certainty for viewers make it credible to omit uncertainty whenever it           tion [48], top, which shows Democratic and Republican respondents’
seems unlikely to change the inferences or decisions of the audience.            mean scores in 2004 and 2014 on a survey that measures consistency
   How then might proponents of uncertainty visualization convince               in political attitude. The center of each x-axis represents political neu-
authors that uncertainty is critical to communicate despite the many             tral answers. Shifts in the means across the two years indicate changes
challenges with doing so? Reasoning more formally about how in-                  in how consistent respondents political attitudes are. Parts b, c, d, and
ferences arise with uncertainty communication versus is one step to-             e depict varying model specifications that a viewer might formulate to
ward dismantling beliefs of omission as a defensible strategy on logi-           judge the strength of the visualization’s signal: assumed variance is
cal, rather than ethical, grounds. Toward this end, I adapt a theory of          lower in b and c than d and e, and b and d fit a model to 2004 data
statistical graphical inference for exploratory data analysis proposed           versus 2014 data in c and e.
by Gelman [24, 25] to communicative visualization. I demonstrate
through examples how, in the absence of uncertainty, a viewer’s im-
plicit specification of a model to compare to observed data is drawn             framework, the data generating process is the posterior predictive dis-
from a seemingly infinite space of possible models. Uncertainty rep-             tribution p(yrep |y), or the distribution of the outcome variable implied
resentation necessarily constrains the set of possible models.                   by a model that used the observed data y to update a prior distribu-
                                                                                 tion of beliefs about the unknown model parameters θ [23]. A viewer
6.1    A Formal Theory of Visualization-Based Inference                          compares imagined simulations from p(yrep |y) to the observed data,
Our goal is to formalize a definition of “signal” and of the process             looking for discrepancies. A discrepancy function D(y, yrep ) can be
that produces a signal as described in the rhetorical model. Several             thought of as a measure of the deviation between T (y) and T (yrep ). As
statisticians have proposed that the process by which a person visually          commonly assumed in signal detection theory [26], the viewer might
examines a graph to evaluate the strength of evidence is analogous to a          subject the result of this function to some individualized threshold (i.e.,
statistical test [6, 8, 24, 25, 54]. While the primary goal of these analo-      a certain perceived probability that the value must be below) to decide
gies has been to define methods for generating visualizations to com-            if the visualization presents “something interesting,” similar to how an
pare to observed data, accounts by Buja et al. [6] and Gelman [24, 25]           α level is used in assess a p-value in NHST.
also acknowledge the role visualizations play in informal statistical                What reference distribution might a viewer assume in examining
inference. In this process, a visualization is compared to an implicit           Figure 4a? One possibility is that a viewer is conducting a “visual
(i.e., imagined) reference distribution to determine whether the visual-         hypothesis test.” T (rrep ) is drawn from a “null plot distribution” [7]
ization presents something interesting.                                          specifying plots that might be seen if there were in fact no difference
    Gelman’s proposal [24, 25] describes the examination of a visual-            between the Democrat and Republican data. Here, the discrepancy
ization is a “model check”2 Assume a person looking at a visualization                                 rep
                                                                                 function D(y2014 , y2004 ) could produce an intuitive estimates of the
to estimate some parameter values of interest θ . To take a simple ex-           probability that the T (y2014 ) could have in fact been generated by
ample, imagine a viewer looking at Figure 4a, which summarizes the                    rep
                                                                                 p(y2004 |y2004 ), similar to a p-value [24].
consistency of political attitude among samples of respondents who                   Conceiving of graphical inference as a model check is not to sug-
identify as Democratic versus Republican over two time periods. Here             gest that viewers enact these processes consciously or identically to
θ might represent a vector of estimates of the true Democrat and Re-             the analogous statistical processes. In fact it may be more realistic to
publican averages in 2004 and 2014.                                              assume that viewers may rely on various approximations to estimate
    We can imagine a viewer judging the strength of a signal in Fig-             p(yrep |y) and D(y, yrep ) (e.g, [36, 37]). The value of the formal model
ure 4a via an implicit (i.e., mental) comparison of the visualized data y        lies in the way it summarizes potential mechanisms of graphical in-
to a reference distribution T (yrep ) (i.e., a distribution of outcomes pro-     ference to enable principle reasoning about the impacts of different
duced by a hypothesized data-generating model). We can liken this to             visualizations—in particular, the implications of omitting versus visu-
comparing standardized test statistics T (y) and T (yrep ). In a Bayesian        alizing uncertainty.
   2 Visual methods for enabling confirmatory analysis by hiding observed data       The posterior predictive distribution p(yrep |y) is a function of a
in a set of plots sampled from a “null plot distribution” [7], also known as     viewer’s prior beliefs about parameter values, their model specifica-
LineUps [2, 41, 54], can be considered one type of model check, though model     tion, and their perception of the data y including its variance. In the
checking can also involve inferences aimed at understanding how data deviates    absence of uncertainty representation, it seems unlikely that viewers
from model predictions.                                                          assume a common level of uncertainty in the observed data and use it

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
identically in fitting the model3 . For example, viewers of Figure 4 top           a pattern also implies that the data generating process that produces
are free to assume any values for the variance in each expected dis-               the imagined T (yrep ) (p(yrep |y) depends on the particulars of the vi-
tribution of means (though distributions that exceed the x-axis range              sualization T (y). For example, without seeing the countries shown
would not be congruent with the meaning of the bounded measure-                    in Figure 5, it would seem difficult to assume a viewer with a T (yrep
ment). Figure 4b and c, versus d and e, demonstrate two possible                   already in mind.
assumptions of variance (where the two parties’ variance is assumed                   The discrepancy function D(y, yrep ) will naturally change with T (y)
to be equal). These are just two variations on many different ways                 as well. For example, if the author of Figure 5 were to remove a
the viewer might mentally “fill in” the missing information about the              line from the reference set of countries that deviates somewhat from
authors’ intended inferences to decide if a chart presents a valid signal.         the rest (e.g., Greece), then D(y, yrep ) will presumably also change.
    For Figure 4, as in many statistical applications, there are various           Similarly, increasing the range of values on the y-axis might imply
other degrees of freedom in the viewer’s specification of p(yrep |y)               to some viewers that it would be reasonable to expect other countries
which might return different results. Comparing Figure 4b and c                    to have higher intercepts or greater slopes than those visualized. An
(or d and e) demonstrates how two applications of the basic simple                 author’s perception that a signal has a truth value, which is defined
model structure, with a change to only which year’s data is used to                outside of the final communicative visualization (e.g., through signif-
fit p(yrep |y), can lead to different conclusions by the viewer. Alter-            icance testing), is therefore inconsistent with the graphical inference
natively, a viewer might imagine both means in each year as samples                model. These and other contradictions highlight the value of a formal
from a Gaussian distribution centered at political neutrality to estimate          model for systematically demonstrating the implications of omitting
the probability that one or both of the years represent real differences,          uncertainty.
and compare how large the discrepancies from the model are across
years.                                                                             6.1.2   How Uncertainty Can Help
    As another example, consider Figure 5, a line chart based on a                 With a formal model in place, it becomes possible to ask, What role
real world example of estimates of some countries’ debt to GDP ra-                 does visualizing uncertainty play in the graphical inference process?
tios [45]. Assume that the author presents the visualization with text             Just as viewers may assume different reference distributions in deter-
indicating the intended message, like the title “Ireland’s relative debt           mining the strength of a visualized signal, the role that explicit repre-
grew quickly between 2006 and 2012.” Even with information about                   sentation of uncertainty plays in the inference process can vary based
the intended signal, there are multiple models that a viewer might use             on how uncertainty is formulated.
to determine how much the trend for Ireland differs from that of the                  Ideally, there is a correspondence between how an author specifies
other countries. If we assume a viewer is interested in the high level             uncertainty and the graphical inference process that gave rise to their
disparity in the slope of Ireland from 2006 to 2012, then a simple linear          judgments of signal strength. For example, imagine a visualization
model structure y = α + β *x could suffice, but again the question arises          T (y) that plots a new observation (or set of observations, as in Fig-
of what data is used to fit the model. One possibility is that the viewer          ure 4b that one wishes to assess in light of an explicitly visualized
imagines a distribution of replicates (T (yrep )) drawn from a predictive          reference distribution. The intervals surrounding the 2004 values in
distribution fit to the data from 2006 and 2012 from all countries other           Figure 4b essentially convey T (yrep ). Compared to a mean value with
than Ireland. However, should the viewer assume the presented coun-                no interval, visualizing uncertainty around each estimates facilitates
tries are intended to represent the larger set of all European countries           the intended inference by greatly reducing degrees of freedom in the
other than Ireland, or rely only on those in the visualization? With no            viewer’s graphical inference process.
presentation of uncertainty, it is difficult to say which better captures
                                                                                      However, assuming a correspondence between the author’s infer-
the authors’ intention. Viewers may also bring different prior beliefs;
                                                                                   ence and presented uncertainty is dangerous for several reasons. If the
imagine how the p(yrep |y) of a viewer who expects that Ireland under-
                                                                                   author of a visualization like Figure 4b were to have also taken care to
reported their national debt leading up to a financial 2009 crisis might
                                                                                   visualize measurement error around the 2014 values, then it becomes
differ from that of a viewer with an uninformed prior.
                                                                                   more difficult for viewers to be sure that the reference distribution they
                                                                                   infer was that which the author intended without further clarification
                                                                                   by the author. Perhaps more likely, based on the difficult of calcu-
                                                                                   lating and visualizing uncertainty, is that authors visualize uncertainty
                                                                                   in whatever way seems convenient rather than reflecting on how to
                                                                                   convey their own assumed reference distribution. Some authors’ pro-
                                                                                   fessed challenges communicating uncertainty of any kind suggest that
                                                                                   even when a reference distribution is intuitively salient, it may not be
                                                                                   obvious how to produce a depiction specifying p(yrep |y) for viewers.
                                                                                   Finally, research on the challenges many viewers face interpreting ex-
                                                                                   pressions statistical constructs like standard error or confidence inter-
                                                                                   val error bars [3, 28] suggests in is unlikely that all audiences could re-
Fig. 5: A visualization comparing government debt across countries.                liably infer the author’s modeling assumptions from some uncertainty
A viewer might perceive a disparity between the average increase in                visualizations without additional description to guide their inference.
debt for Ireland between 2006 and 2012 and that of the other coun-                    Given that an uncertainty visualization does not necessarily ensure
tries. Changing the visualization by removing data (e.g., Greece) or               that all viewers formulate T (yrep ), p(yrep |y), or even T (y) in the same
extending axes ranges (e.g. y-axis to 0) could impact the strength of              way, some authors may feel validated in their choice to omit uncer-
signal that the viewer concludes.                                                  tainty. Perhaps it may seem permissable to omit uncertainty if one’s
                                                                                   analysis process has passed some sufficiently high level of robustness
                                                                                   or rigor, out of a desire to avoid potential heterogeneity in beliefs that
6.1.1 Contradictions Exposed by the Model                                          might result from visualizing it. However, an author would need to be-
From the rhetorical model, it seems likely that authors believe view-              lieve that the diversity of forms T (yrep ) takes with uncertainty is even
ers’ model specifications, discrepancy functions, and thresholds will              greater than that taken without. Visualizing uncertainty conveys more
be very similar to if not the same as theirs, as this is the “machinery”           information about potential reference distributions, and consequently
that defines the signal for the author. However, that multiple authors             data generating processes, even when it does not directly correspond
described using the visualization (T (y)) to judge the significance of             to the author’s graphical inference process. This reduces the amount of
                                                                                   information that a viewer must mentally “fill in,” which would seem to
    3 A viewer might fit p(yrep |y) using only the observed values of predictors   necessarily reduce variance in interpretations across viewers. Instead
or new observations of the predictors [23]                                         of throwing up one’s hands at potential heterogeneity in uncertainty

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
interpretations, one might conclude that authors should not only strive     might impact viewers’ decisions or beliefs. Finally, recent approaches
to depict uncertainty more, they should strive to depict uncertainty as     to visualization evaluation that apply Bayesian cognition to evaluate
defined by their own inference process. One might call this process         how viewers update their beliefs after using a visualization [37] may
“reference model visualization” to suggest its importance for guiding       be a further avenue for helping authors perceive the implications of
viewers’ unavoidable implicit inferences.                                   uncertainty more concretely.
                                                                                Beyond reasoning about uncertainty omission, formalizing “intu-
7   D ISCUSSION                                                             itive” statistical graphical inference could increase awareness among
The results presented here suggest that uncertainty communication           researchers and practitioners around the cognitive and perceptual pro-
is far from a solved problem for visualization authors. Various ra-         cesses that give rise to perceived signal in a communicative visualiza-
tionales for omitting uncertainty emerged from my survey and inter-         tion. A formal science of visual communication stands to improve
views. However, many authors also said they would like to communi-          visualization-practice writ broadly, while integrating uncertainty as
cate uncertainty more frequently, and expressed intuitions that doing       part of the definition of a visualization. Researchers could, for exam-
so would shift people’s general tolerance for and ability to reason with    ple, develop tools to help authors articulate the graphical inferences
uncertainty. This tension and others lead me to suggest that, as one in-    that they target and create appropriate expressions of uncertainty to
terviewee put it: “uncertainty is a long-term strategic problem” (I11).     communicate these to viewers.
   The rhetorical and graphical inference models provide a theoreti-        7.0.1 Limitations
cal basis for reasoning about uncertainty omission, one that is con-
                                                                            I surveyed and interviewed 103 visualization authors. The beliefs I
sistent with authors’ general perceptions of uncertainty visualization
                                                                            summarized may not describe all authors’ impressions. In particular, I
as “a visualization that doesn’t have a clear message.” These con-
                                                                            observed considerable heterogeneity in authors’ practices and percep-
tributions are a call to action for visualization and human computer
                                                                            tions around the value of uncertainty communication. That a policy of
interaction researchers to extend their efforts beyond the creation of
                                                                            always including uncertainty information in a visualization could seem
specific techniques and applications, and to consider the larger back-
                                                                            obvious to some authors and baffling to others tells of the complexity
ground of incentives, norms, experiences, and insecurities that under-
                                                                            of this topic in communicative visualization.
gird uncertainty omission. Are we in a “bad equilibrium” [44] as one
                                                                               As described earlier, the participants that I surveyed may over-
economist has asked? If so, what will it take to change this state? In
                                                                            represent authors who feel that uncertainty visualization is important.
an era of increased data rhetoric, political propaganda, and public fears
                                                                            The set of influencers I interviewed may overrepresent authors who
around predictive modeling, research efforts toward shifting commu-
                                                                            are sympathetic or at least open-minded enough about uncertainty to
nication norms to require uncertainty communication are more critical
                                                                            agree to an interview. Interview and survey results may also be biased
than ever.
                                                                            by participants’ abilities to retrospectively recall their choices and ra-
   The importance of understanding the problem of uncertainty omis-
                                                                            tionales around uncertainty communication.
sion at scale is not to say that researchers should lessen their efforts
toward producing widely accessible and generalizable techniques for         8 C ONCLUSION
visualizing uncertainty. One interviewee described how an engineer
at their company argued, “Uncertainty visualization is solved. Just         Most visualizations outside of scientific journals do not explicitly rep-
use these hypothetical outcome plots.” The interviewee mused “That’s        resent uncertainty information. This work asked, why? By surveying
great, except people aren’t using them.” That many authors described        and interviewing authors who regularly create visualizations for oth-
challenges and insecurities about visualizing uncertainty suggests that     ers, I identified perceptions, practices, challenges, and attitudes asso-
visualization researchers may be failing in disseminating their results     ciated with uncertainty visualization. My results suggest that many
in terms that meet authors where they are at. Tools that help visual-       authors are optimistic about the importance of visualizing uncertainty,
ization authors not just visualize but calculate and explain uncertainty    but may face challenges calculating, visualizing, and explaining un-
are well motivated by my results, as is research into the value that au-    certainty to viewers. However, these challenges were not sufficient
thors perceive in more approximate uncertainty communications, like         to explain why authors who acknowledge the benefits of uncertainty
showing views that problematize a default level of aggregation or us-       might default to omitting uncertainty. To summarize how a norm of
ing perceptual effects to convey imprecision.                               uncertainty omission might seem reasonable, I contribute a rhetori-
                                                                            cal model that describes pervasive associations and expectations about
   Arguments that communicating uncertainty is an author’s moral im-
                                                                            uncertainty among authors. I apply a formal model of of graphical
perative [19] are one way researchers and authors may try to inspire
                                                                            statistical inference to shed light on how visualizations are examined
changes in practice. Indeed, some authors I surveyed and interviewed
                                                                            to determine the strength of a signal, and demonstrate how uncertainty
expressed a belief that uncertainty communication was a responsibil-
                                                                            reduces (though does not necessarily eliminate) degrees of freedom in
ity. However, even these authors admitted to not visualizing uncer-
                                                                            viewers’ inferences.
tainty as often as they thought they should (or at all). While readers
may find it ethically questionable that some authors would omit pre-        9 ACKNOWLEDGEMENTS
senting uncertainty when it could call into question the message of the
graphic, I intentionally avoided such value judgments in analyzing and      I am grateful to the survey respondents and visualization experts pro-
compiling the perceptions I reported on. Instead, the formal model I        vided their feedback. Thank you to Yea Seul Kim and Alex Kale for
presented aims to provide logical ground for countering pervasive and       comments on a draft.
often pragmatic rationales for omission.                                    R EFERENCES
   Of course, an abstract logical argument may not be of any more
interest to authors than an ethical one. However, it may be possible         [1] L. Bastin, P. F. Fisher, and J. Wood. Visualizing uncertainty in multi-
                                                                                 spectral remotely sensed imagery. Computers & Geosciences, 28(3):337–
to help authors consider the implications of uncertainty omission ver-
                                                                                 350, 2002.
sus inclusion through concrete examples. For example, researchers
                                                                             [2] R. Beecham, J. Dykes, W. Meulemans, A. Slingsby, C. Turkay, and
could develop tools that allow an author to simulate possible reference          J. Wood. Map lineups: effects of spatial structure on graphical inference.
distributions that viewers may adopt. Another promising approach to              IEEE transactions on visualization and computer graphics, 23(1):391–
making the implications of omission versus inclusion more concrete               400, 2016.
is to apply decision theory to help readers reason about the impacts         [3] S. Belia, F. Fidler, J. Williams, and G. Cumming. Researchers misunder-
of their visualization. Such an approach could motivate design tools             stand confidence intervals and standard error bars. Psychological meth-
that prompt an author to consider possible “worst case” decisions (or            ods, 10(4):389, 2005.
actions) viewers might take under uncertainty omission versus inclu-         [4] N. Boukhelifa and D. J. Duke. Uncertainty visualization: why might it
sion. The latter approach may be particularly useful in scenarios where          fail? In CHI’09 Extended Abstracts on Human Factors in Computing
the author would otherwise not think through how their visualization             Systems, pages 4051–4056. ACM, 2009.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
[5] N. Boukhelifa, M.-E. Perrin, S. Huron, and J. Eagan. How data work-               visualization and computer graphics, 25(1):903–913, 2019.
     ers cope with uncertainty: A task characterisation study. In Proceedings     [31] J. Hullman, P. Resnick, and E. Adar. Hypothetical outcome plots outper-
     of the 2017 CHI Conference on Human Factors in Computing Systems,                 form error bars and violin plots for inferences about reliability of variable
     pages 3645–3656. ACM, 2017.                                                       ordering. PloS one, 10(11):e0142444, 2015.
 [6] A. Buja, D. Asimov, C. Hurley, and J. A. McDonald. Elements of a             [32] C. R. Johnson and A. R. Sanderson. A next step: Visualizing errors
     viewing pipeline for data analysis. Dynamic graphics for statistics, pages        and uncertainty. IEEE Computer Graphics and Applications, 23(5):6–
     277–308, 1988.                                                                    10, 2003.
 [7] A. Buja, D. Cook, H. Hofmann, M. Lawrence, E.-K. Lee, D. F. Swayne,          [33] A. Kale, M. Kay, and J. Hullman. Decision-making under uncertainty in
     and H. Wickham. Statistical inference for exploratory data analysis               research synthesis: Designing for the garden of forking paths. 2019.
     and model diagnostics. Philosophical Transactions of the Royal Society       [34] A. Kale, F. Nguyen, M. Kay, and J. Hullman. Hypothetical outcome
     A: Mathematical, Physical and Engineering Sciences, 367(1906):4361–               plots help untrained observers judge trends in ambiguous data. IEEE
     4383, 2009.                                                                       transactions on visualization and computer graphics, 2018.
 [8] A. Buja, D. Cook, and D. Swayne. Inference for data visualization. In        [35] M. Kay, T. Kola, J. R. Hullman, and S. A. Munson. When (ish) is my
     Joint Statistics Meetings, August, 1999.                                          bus?: User-centered visualizations of uncertainty in everyday, mobile pre-
 [9] M. Correll and M. Gleicher. Error bars considered harmful: Exploring al-          dictive systems. In Proceedings of the 2016 CHI Conference on Human
     ternate encodings for mean and error. Visualization and Computer Graph-           Factors in Computing Systems, pages 5092–5103. ACM, 2016.
     ics, IEEE Transactions on, 20(12):2142–2151, 2014.                           [36] M. W. Khaw, Z. Li, and M. Woodford. Risk aversion as a perceptual bias.
[10] M. Correll, D. Moritz, and J. Heer. Value-suppressing uncertainty                 Technical report, National Bureau of Economic Research, 2017.
     palettes. In Proceedings of the 2018 CHI Conference on Human Factors         [37] Y.-S. Kim, L. Walls, P. Krafft, and J. Hullman. A bayesian cognition
     in Computing Systems, page 642. ACM, 2018.                                        approach to improve data visualization. In Proceedings of the 2019 CHI
[11] J. W. Creswell, W. E. Hanson, V. L. Clark Plano, and A. Morales. Qual-            Conference on Human Factors in Computing Systems. ACM, 2019.
     itative research designs: Selection and implementation. The counseling       [38] S. Lichtenstein, B. Fischhoff, and L. D. Phillips. Calibration of proba-
     psychologist, 35(2):236–264, 2007.                                                bilities: The state of the art to 1980. Technical report, DECISION RE-
[12] T. J. Davis and C. P. Keller. Modelling and visualizing multiple spatial          SEARCH EUGENE OR, 1981.
     uncertainties. Computers & Geosciences, 23(4):397–408, 1997.                 [39] R. Lipschitz and O. Strauss. Coping with uncertainty: a naturalistic
[13] B. de Finetti. Probabilities of probabilities: A real problem or a misun-         decision-making process. Organizational Behavior and Human Decision
     derstanding. New Developments in the Applications of Bayesian methods,            Processes, 69(2):149–163, 1997.
     pages 1–10, 1977.                                                            [40] A. M. MacEachren. Visualizing uncertain information. Cartographic
[14] C. R. Ehlschlaeger, A. M. Shortridge, and M. F. Goodchild. Visualiz-              Perspectives, (13):10–19, 1992.
     ing spatial data uncertainty using animation. Computers & Geosciences,       [41] M. Majumder, H. Hofmann, and D. Cook. Validation of visual statistical
     23(4):387–395, 1997.                                                              inference, applied to linear models. Journal of the American Statistical
[15] I. Erev and B. L. Cohen. Verbal versus numerical probabilities: Effi-             Association, 108(503):942–956, 2013.
     ciency, biases, and the preference paradox. Organizational behavior and      [42] C. F. Manski. Communicating uncertainty in official economic statistics:
     human decision processes, 45(1):1–18, 1990.                                       an appraisal fifty years after morgenstern. Journal of Economic Litera-
[16] M. Fernandes, L. Walls, S. Munson, J. Hullman, and M. Kay. Uncertainty            ture, 53(3):631–53, 2015.
     displays using quantile dotplots or cdfs improve transit decision-making.    [43] C. F. Manski. Communicating uncertainty in policy analysis. Proceed-
     In Proceedings of the 2018 CHI Conference on Human Factors in Com-                ings of the National Academy of Sciences, page 201722389, 2018.
     puting Systems, page 144. ACM, 2018.                                         [44] C. F. Manski. The lure of incredible certitude. Technical report, National
[17] R. Finger and A. M. Bisantz. Utilizing graphical formats to convey un-            Bureau of Economic Research, 2018.
     certainty in a decision-making task. Theoretical Issues in Ergonomics        [45] OECD. General government debt (indicator), 2019.
     Science, 3(1):1–25, 2002.                                                    [46] M. J. Olson and D. V. Budescu. Patterns of preference for numerical and
[18] B. Fischhoff. Risk perception and communication unplugged: twenty                 verbal probabilities. Journal of Behavioral Decision Making, 10(2):117–
     years of process 1. Risk analysis, 15(2):137–145, 1995.                           131, 1997.
[19] B. Fischhoff. Communicating uncertainty fulfilling the duty to inform.       [47] A. T. Pang, C. M. Wittenbrink, and S. K. Lodha. Approaches to uncer-
     Issues in Science and Technology, 28(4):63–70, 2012.                              tainty visualization. The Visual Computer, 13(8):370–390, 1997.
[20] B. Fischhoff and A. L. Davis. Communicating scientific uncertainty.          [48] Pew Foundation. Political polarization in the american public, 2014.
     Proceedings of the National Academy of Sciences, 111(Supplement              [49] K. Potter, M. Kirby, D. Xiu, and C. R. Johnson. Interactive visualization
     4):13664–13671, 2014.                                                             of probability and cumulative density functions. International journal for
[21] B. Fischhoff and D. MacGregor. Subjective confidence in forecasts. Jour-          uncertainty quantification, 2(4), 2012.
     nal of Forecasting, 1(2):155–172, 1982.                                      [50] C. D. Schunn and J. G. Trafton. The psychology of uncertainty in scien-
[22] B. Fischhoff, P. Slovic, and S. Lichtenstein. Knowing with certainty: The         tific data analysis. Handbook of the psychology of science, page 461e483,
     appropriateness of extreme confidence. Journal of Experimental Psychol-           2012.
     ogy: Human perception and performance, 3(4):552, 1977.                       [51] M. Skeels, B. Lee, G. Smith, and G. G. Robertson. Revealing uncer-
[23] J. Gabry, D. Simpson, A. Vehtari, M. Betancourt, and A. Gelman. Visu-             tainty for information visualization. Information Visualization, 9(1):70–
     alization in bayesian workflow. Journal of the Royal Statistical Society:         81, 2010.
     Series A (Statistics in Society), 182(2):389–402, 2019.                      [52] J. Thomson, E. Hetzler, A. MacEachren, M. Gahegan, and M. Pavel. A
[24] A. Gelman. A bayesian formulation of exploratory data analysis and                typology for visualizing uncertainty. In Electronic Imaging 2005, pages
     goodness-of-fit testing*. International Statistical Review, 71(2):369–382,        146–157. International Society for Optics and Photonics, 2005.
     2003.                                                                        [53] M. Webster. Communicating climate change uncertainty to policy-
[25] A. Gelman. Exploratory data analysis for complex models. Journal of               makers and the public. Climatic Change, 61(1):1–8, 2003.
     Computational and Graphical Statistics, 13(4):755–779, 2004.                 [54] H. Wickham, D. Cook, H. Hofmann, and A. Buja. Graphical inference
[26] D. M. Green, J. A. Swets, et al. Signal detection theory and psy-                 for infovis. IEEE Transactions on Visualization and Computer Graphics,
     chophysics, volume 1. Wiley New York, 1966.                                       16(6):973–979, 2010.
[27] H. Griethe and H. Schumann. The visualization of uncertain data: Meth-       [55] C. M. Wittenbrink, A. T. Pang, and S. K. Lodha. Glyphs for visualiz-
     ods and problems. In SimVis, pages 143–156, 2006.                                 ing uncertainty in vector fields. IEEE transactions on Visualization and
[28] R. Hoekstra, R. D. Morey, J. N. Rouder, and E.-J. Wagenmakers. Robust             Computer Graphics, 2(3):266–279, 1996.
     misinterpretation of confidence intervals. Psychonomic bulletin & review,
     21(5):1157–1164, 2014.
[29] J. Hullman and N. Diakopoulos. Visualization rhetoric: Framing effects
     in narrative visualization. IEEE transactions on visualization and com-
     puter graphics, 17(12):2231–2240, 2011.
[30] J. Hullman, X. Qiao, M. Correll, A. Kale, and M. Kay. In pursuit of error:
     A survey of uncertainty visualization evaluation. IEEE transactions on
