---
id: "sterzik2025"
title: "Uncertainty Visualization for Biomolecular Structures: An Empirical Evaluation"
source_file: "The Art of Uncertain Topoplots/papers/sterzik2025.pdf"
source_sha256: "9c0da12bc0def45a798fcfcd626fc46d62587420050b24b6bdfc68a38fb672a9"
extraction_format: 1
---

# Uncertainty Visualization for Biomolecular Structures: An Empirical Evaluation — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
10296                                                   IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 12, DECEMBER 2025

<a id="p001-b002"></a>

<!-- p001-b002 -->
Uncertainty Visualization for Biomolecular
                 Structures: An Empirical Evaluation
Anna Sterzik , Michael Krone , Member, IEEE, Daniel Baum , Douglas W. Cunningham , and Kai Lawonn

<a id="p001-b003"></a>

<!-- p001-b003 -->
Abstract—Uncertainty is an intrinsic property of almost all                     there have been many significant advancements in biomolecular
data, regardless of the data being measured, simulated, or gen-                    visualization, one crucial but often neglected aspect is the vi-
erated. It can significantly influence the results and reliability of              sualization of uncertainty. While the importance of visualizing
subsequent analysis steps. Clearly communicating uncertainties
is crucial for informed decision-making and understanding, es-                     uncertainty has been emphasized [2] and even classified as one
pecially in biomolecular data, where uncertainty is often difficult                of the top scientific visualization research problems 20 years
to infer. Uncertainty visualization (UV) is a powerful tool for this               ago [3], UV remains largely absent in biomolecular contexts.
purpose. However, previously proposed uncertainty visualization                    This absence risks implying certainty where none exists, poten-
(UV) methods lack sufficient empirical evaluation. We collected                    tially resulting in erroneous assessments. Even though it is still
and categorized visualization methods for portraying positional
uncertainty in biomolecular structures. We then organized the                      relatively uncommon to visualize uncertainty in biomolecular
methods into metaphorical groups and extracted nine represen-                      contexts, several approaches—such as ensemble visualization,
tatives: color, clouds, ensemble, hulls, sausages, contours, texture,              color mapping, or uncertainty hulls—have surfaced. Empirical
waves, and noise. We assessed their strengths and weaknesses in a                  evaluations of these techniques are still scarce. The lack of
twofold approach: expert assessments with six domain experts and                   comprehensive empirical studies comparing different types of
three perceptual evaluations involving 1,756 participants. Through
the expert assessments, we aimed to highlight the advantages and                   biomolecular UV was recently identified as one of the most
limitations of the individual methods for the application domain                   important open problems in uncertainty-aware visualization of
and discussed areas for necessary improvements. Through the                        biomolecular structures [4].
perceptual evaluation, we investigated whether the visualizations                     To address this gap, we investigated various methods for rep-
are intuitively associated with uncertainty and whether the direc-                 resenting positional uncertainty in proteins. Our methodology
tionality of the mapping is perceived as intended. We also assessed
the accuracy of inferring uncertainty values from the visualiza-                   involved two main strategies: expert assessment and crowd-
tions. Based on our results, we judged the appropriateness of the                  sourced studies. Domain experts provided detailed insights into
metaphors for encoding uncertainty and suggest further areas for                   the strengths and weaknesses of each metaphor in the context
improvement.                                                                       of biomolecular structure visualization and highlighted further
   Index Terms—Biomolecular visualization, perceptual evalua-                      areas for improvement. The crowdsourced studies aimed at
tion, uncertainty, flexibility, ensemble visualization.                            understanding the perception of the visualizations. Initially, we
                                                                                   focused on the spontaneous associations evoked by the visual-
                                                                                   izations. We determined whether viewers naturally understand
                            I. INTRODUCTION
                                                                                   that the representations depict uncertainty without any explicit
       OLECULAR visualization, with its long and rich his-
M      tory, has seen the development of various methods to
understand the structure and function of molecules [1]. Although
                                                                                   prompting or instruction. In the second study, we investigated
                                                                                   whether the directionality of the metaphor used to depict uncer-
                                                                                   tainty aligns with how participants perceive uncertainty. More
                                                                                   specifically, we investigated whether areas characterized by high
                                                                                   uncertainty are correctly identified as such or are misconceived
   Received 3 July 2024; revised 25 July 2025; accepted 2 August 2025. Date        as low-uncertainty areas. In the final study, we evaluated the
of publication 6 August 2025; date of current version 10 November 2025. This       accuracy and ease of judgments regarding uncertainty within
work was supported by the Deutsche Forschungsgemeinschaft (DFG, German             specific regions. Fig. 1 shows a graphical summary of our
Research Foundation) under Grant 437702916. Recommended for acceptance
by K. Potter. (Corresponding author: Anna Sterzik.)                                evaluation workflow. For examples of the uncertainty metaphors,
   This work involved human subjects or animals in its research. Approval of all   please refer to Fig. 2.
ethical and experimental procedures and protocols was granted by the ethical          We determined some interesting discrepancies between the
commission of the faculty of social and behavioural sciences of the University
of Jena under Application No. FSV 23/091.                                          expert judgments and the perception of the metaphors. The ex-
   Anna Sterzik and Kai Lawonn are with the University of Jena, 07743 Jena,        perts favored familiar representations and gave mixed feedback
Germany (e-mail: anna.sterzik@uni-jena.de; kai.lawonn@uni-jena.de).                for less conventional metaphors. However, in our perceptual
   Michael Krone is with the Stuttgart University of Applied Sciences (HFT),
70174 Stuttgart, Germany (e-mail: michael.krone@hft-stuttgart.de).                 evaluations, some of the less established metaphors performed
   Daniel Baum is with the Zuse Institute Berlin, 14195 Berlin, Germany (e-mail:   very well, while more common metaphors led to worse results.
baum@zib.de).                                                                      Our contributions can be summarized as follows: we provide
   Douglas W. Cunningham is with the Brandenburg University of Technology,
03046 Cottbus, Germany (e-mail: douglas.cunningham@b-tu.de).                       novel insights into the domain-specific utility, intuitiveness, and
   Digital Object Identifier 10.1109/TVCG.2025.3596385                             understandability of nine visual metaphors to convey uncertainty

<a id="p001-b004"></a>

<!-- p001-b004 -->
© 2025 The Authors. This work is licensed under a Creative Commons Attribution 4.0 License. For more information, see
                                                        https://creativecommons.org/licenses/by/4.0/

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
STERZIK et al.: UNCERTAINTY VISUALIZATION FOR BIOMOLECULAR STRUCTURES: AN EMPIRICAL EVALUATION                                                           10297

<a id="p002-b002"></a>

<!-- p002-b002 -->
Fig. 1. Our evaluation workflow for biomolecular uncertainty visualization tests nine metaphors (bottom right) across three protein representations (left, from
top to bottom: tube, SES, sticks). Certain metaphors are tailored to specific representations. We integrate expert interviews with three perceptual studies.

<a id="p002-b003"></a>

<!-- p002-b003 -->
in molecular structures. Our results are based on domain expert                  it less flexible. However, there also exist intrinsically disordered
assessments and large-scale perceptual studies.                                  proteins (IDP), which have no fixed structure [7]. Some of these
                                                                                 IDPs fold into a stable structure when being in contact with a
                           II. BACKGROUND                                        certain reaction partner or another specific molecule, but some
                                                                                 IDPs can even bind to other molecules and execute their function
   In the following, we discuss sources of biomolecular uncer-
                                                                                 without folding into a fixed configuration.
tainty and typical visualization approaches.
                                                                                     In summary, proteins, and biomolecules in general, are subject
                                                                                 to a lot of structural flexibility. This flexibility leads to what is
A. Uncertainty in Biomolecules                                                   commonly referred to as positional uncertainty [8], [9]. Since the
   Molecules—especially biomolecules, the nanoscopic build-                      structure of a molecule influences its function, this uncertainty
ing blocks of all life on earth—have been studied extensively.                   can have a great effect on the molecule’s function.
Among biomolecules, proteins play a crucial role in virtually all                    Different data sources provide distinct measures of uncer-
biological processes. Proteins are macromolecules that consist                   tainty. For instance, data from X-ray crystallography typically
of one or more chains of amino acids. Each amino acid has                        include an uncertainty metric known as the b-factor. This mea-
an identical so-called backbone part and an individual small                     sure reflects the attenuation of X-ray scattering caused by the
side chain of up to 20 atoms that constitutes the physico-                       thermal motion of atoms. Another common data source is
chemical properties of this amino acid. The protein’s amino                      molecular ensembles, which consist of multiple conformations
acid chains fold into semi-stable conformations, or secondary                    of the same molecule. These ensembles can be derived exper-
structures, that are stabilized mainly by hydrogen bonds. The                    imentally, such as through nuclear magnetic resonance (NMR)
three-dimensional arrangement of these secondary structures is                   spectroscopy, which captures molecules in solution and reflects
called tertiary structure and defines the protein’s shape. Finally,              their inherent flexibility and dynamic behavior. Ensembles can
the quaternary structure is an assembly of multiple chains form-                 also be generated computationally using molecular dynamics
ing a functional compound.                                                       (MD) simulations, which model molecular motions over time
   The three-dimensional structure of a protein is crucial for                   and explore the range of possible conformations a molecule
its function. Misfolded proteins can cause severe illnesses [5].                 can adopt. To quantify uncertainty within ensembles, scalar
However, despite proteins forming tertiary structures, they still                measures such as the root mean square fluctuation (RMSF) are
have a lot of flexibility that enables parts of the protein chain                often used. RMSF describes the average positional deviation of
to move to fulfill certain functions, e.g., a protein forming a                  individual atoms over time or across conformations, providing
transmembrane channel that opens and closes [6]. While the                       a numerical expression of uncertainty.
inner core of most proteins is usually rather rigid, the outer
parts can be more flexible. This flexibility of the protein can
make it more unlikely for other small molecules to bind to the                   B. Molecular Visualization
surface of the protein. Therefore, bioengineering often tries to                    From the very beginning of using computers to study molec-
stabilize proteins by introducing small mutations, i.e., swapping                ular structure, properties, and function, visualization has played
one amino acid with another one that has similar properties. This                an important role. Over time, the early approaches in molecular
change should not alter the function of the protein but only make                graphics—that is, the graphical depiction of molecular models

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
10298                                                 IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 12, DECEMBER 2025

<a id="p003-b002"></a>

<!-- p003-b002 -->
Fig. 2.   Overview of the nine representative UV metaphors used in our evaluation.

<a id="p003-b003"></a>

<!-- p003-b003 -->
ranging back more than five decades—have evolved into mod-                      for a spline. The spline is often rendered as a tube to make it
ern, feature-rich visual analytics tools. To show different aspects             more visible. This tube visualizes the shape of the backbone and,
of a molecule’s structure, various representations have been                    thus, the structure of the amino acid chain. A similar abstraction
developed, ranging from simple ball-and-stick or space-filling                  is commonly used for DNA, creating the well-known twisted
models to complex molecular surfaces or abstract representa-                    ladder appearance of the DNA double helix.
tions for specific macromolecules like proteins or DNA.
   According to the state-of-the-art report by Kozlíková et al. [1],
the most important representation models for biomolecular                        III. RELATED WORK AND CATEGORIZATION OF UNCERTAINTY
structures can be divided into atomistic models and abstract                                         METAPHORS
models. As the name implies, atomistic models take into ac-                        For our evaluation, we collected methods that visualize posi-
count all atoms of a biomolecule. These representations in-                     tional uncertainty in biomolecules. We focused on techniques
clude the well-known ball-and-stick model, where each atom is                   that directly alter molecular representations and categorized
represented by a small sphere, and bonds are visualized as                      them into nine metaphor groups (see Fig. 2): color, clouds,
thin cylinders connecting the respective atom spheres. The stick                ensemble, hulls, sausages, contours, texture, waves, and noise.
model (sometimes also called licorice) is a variation of this: here,            We structured this section by grouping all methods according
the cylinders representing the bonds are typically a bit thicker,               to their metaphor. Only a few of the collected methods were
and the atom spheres are rendered with the same radius, so they                 empirically evaluated [10], [11], [12], [13], [14]. We add more
only appear as rounded caps of the cylinders.                                   information about the evaluations within the context of their
   Other types of atomistic models are surface models that                      respective paper. Empirical evaluations of UV in a broader sense
depict the interface between a molecule and its environment.                    have been studied in various settings [15], [16], [17]. For an
The simple and often used van der Waals (vdW) surface shows                     overview of evaluation methods and study designs, we refer to
each atom as a sphere with the vdW radius of the correspond-                    the survey by Hullman et al. [18].
ing element. The vdW radius corresponds to the distance of                         In our work, we considered direct modifications of the repre-
non-bonded atoms, that is, the vdW surface is an approximate                    sentations. However, alternative methods for representing uncer-
depiction of the interaction surface with another molecule. The                 tainty information augment the visualization. Bryden et al. [19]
downside of the vdW surface is that it often has many small                     used arrow glyphs to illustrate the consistent motion of larger
clefts and crevices and that it does not show the interaction                   groups of atoms. In MoFlow, Dabdoub et al. [10] used time
surface with respect to a specific molecule. Thus, the solvent                  series data to render pathlines of atoms to convey molecular
excluded surface (SES) is often preferred: it shows the surface                 motion. They conducted a preliminary study that suggests that
is accessible to a small molecule of a certain size, modeled by a               MoFlow visualization helps users understand molecular motions
spherical probe. This probe is rolled over the vdW surface and                  better than traditional ensemble visualizations.
traces out the SES.                                                                Another branch of UV for biomolecules includes uncertainty
   In contrast to atomistic models, abstract models do not show                 information in non-structural visualizations such as the Ra-
the individual atoms of the molecule. A common abstraction                      machandran plot, a 2D visualization of protein backbone torsion
for proteins is the backbone or tube model that uses a central                  angles [9]. For more examples, we refer to Weiskopf, who
carbon atom of the backbone of each amino acid as control points                described additional examples of UV for bioinformatics [20].

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
STERZIK et al.: UNCERTAINTY VISUALIZATION FOR BIOMOLECULAR STRUCTURES: AN EMPIRICAL EVALUATION                                       10299

<a id="p004-b002"></a>

<!-- p004-b002 -->
Next, we outline methods that directly modify the molecular           several stacked opaque hulls. The individual levels can be seen
representation grouped according to their metaphor.                   as contour lines when the visualization is clipped at the image
   Color       Color is a very flexible metaphor for encoding         plane. Another option is the combination of conformations to
physicochemical properties. It is often used to encode positional     form opaque surfaces. Fisher et al. [44] visualized a consensus
uncertainty [9], [21], [22], but other types of uncertainty can       surface based on two maximally displaced protein surfaces.
also be displayed. Ashford et al. [23], for example, visualized       Schmidt-Ehrenberg et al. [30] visualized the conformational
the probability of an atom or residue belonging to a pocket.          density of an ensemble of up to three representative conforma-
The software Aquaria [24] infers the 3D structure of a protein        tions using volume rendering and isosurfaces.
based on its similarity to another protein’s sequence (homology          Sausages One popular variant of opaque hull visualizations
modeling). Modified colors in the representation encode the           for tube representations is the ‘sausage’ or ‘putty’ plot, where
similarity of the sequences. Black signals unconserved parts,         the tube width indicates the uncertainty [45], [46], [47].
gray insertions, and muted colors signal uncertain components.           Contours Sterzik et al. [12], [13] evaluated contours with
Heinrich et al. [11] evaluated the color mapping in Aquaria           modified line attributes for encoding biomolecular uncertainty.
in a crowdsourced study. They found a significant correlation         They used the line attributes blur, dashing, grayscale, sketch-
between the perceived quality of images and alignment quality.        iness, and width to distinguish several uncertainty values on
Rasheed et al. [25], [26] derived uncertainties for quantities of     molecular representations, with width leading to consistently
interest such as electrostatic potential. They proposed mapping       good results. Additionally, width was confirmed to be well
this uncertainty with colors to the surface. Schatz et al. [27]       distinguishable and popular for drawing uncertainty data in a
visualized the probability of a ligand reaching a point on the        more general evaluation of the line variables dashing, width,
surface using color mapping. Color mapping is common for              grayscale, and waves [48].
encoding uncertainty, but uncertainty is often only secondary            Texture Another option for encoding uncertainty through
information. Therefore, choosing another visual channel for           illustrative visualization [49] is the application of illustrative
UV is sometimes necessary to facilitate combined views of             textures such as stippling or hatching, where the density encodes
uncertainty and other quantities of interest.                         the uncertainty. Sterzik et al. [14] changed the primitive density
   Clouds       Cloud visualizations often present volume data        according to the uncertainty. Through a perceptual study, they
such as electron density maps [28]. But volumes can also be           developed approximately perceptually uniform density levels
derived from atomistic data, e.g., by calculating the probability     for the illustrative textures. Closely related is the method of
of a voxel being inside an atom sphere [25], [26]. Often, direct      Lawonn et al. [50] which uses line integral convolution for
volume rendering is used for presenting molecules as clouds [8],      highlighting salient regions and could also be used to highlight
[29], [30]. Knoll et al. [31] displayed two stacked clouds, where     other properties such as uncertainty.
the surface of the inner cloud corresponds to the covalent radii         Waves Distortions of molecular representations can encode
and the surface of the outer one to the vdW radii. Related to         uncertainty. Schulz et al. [51] added sine waves to ribbon and
cloud visualization are voxel maps, which present a wireframe         tube visualizations to encode uncertainty. In their visualizations,
visualization of feasible motions [32].                               they used the wave amplitude to encode the uncertainty.
   Ensemble         Another popular option for displaying po-            Noise      Geometrical distortions do not have to be regular
sitional uncertainty is ensemble visualization, where several         like these proposed sine waves. Grigoryan and Rheingans [52]
molecular conformations are aligned and superimposed [33],            encoded uncertainty by randomly displacing surface points.
[34], [35], [36], [37]. Heinrich et al. [38] used parallel coordi-    Although not originally applied to molecular representations,
nates to select a subset of the ensemble by brushing. Usually,        we see their approach as a viable alternative.
ensemble visualization uses abstract molecular representations
such as backbone or cartoon visualizations. In contrast, Punjani
                                                                           IV. REPRESENTATIVE UNCERTAINTY VISUALIZATIONS
et al. [39] created a series of isosurfaces from cryogenic-electron
microscopy data. The surfaces are assigned individual colors and         In this section, we present representative visualizations for the
displayed simultaneously. In the previously discussed papers,         metaphor categories discussed in the previous section. Given that
all conformations are drawn opaquely. However, two papers             evaluating all the previously proposed methods is infeasible, we
investigated transparency as an option for displaying ensembles.      selected these particular visualizations to represent the range
Rheingans et al. [8] superimposed semi-transparent conformers.        of methods within each metaphor category effectively. In the
Another method was proposed by Melvin et al. [40], who                following, we specify the design choices for the representatives
rendered an opaque representative geometry and superimposed           used in our studies. In Fig. 2, we illustrate our representatives
semi-transparent conformers. The superimposed conformers              using the NMR ensemble of the protein 1ADN [53], [54]. We
create a shadow- or cloud-like impression depending on the            applied the uncertainty metaphors to three popular representa-
accumulation of opacity.                                              tions that effectively cover the range of available methods: the
   Hulls       Hull visualizations represent uncertainty by ren-      tube representation as an abstract model, the SES as a surface
dering semi-transparent or opaque hulls around the molecule.          representation, and a stick visualization for atomic detail. Not all
Some methods display one semi-transparent hull by extracting          uncertainty metaphors can be applied to all three representations,
an isosurface from volumetric data [8], [9], [29]. Other methods      e.g., the sausage visualization is specifically designed for the
use several threshold values to create layers of semi-transparent     tube representation. Fig. 1 shows which uncertainty metaphors
hulls [41], [42], [43]. Goodsell et al. [29] proposed using           can be applied to each representation.

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
10300                                         IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 12, DECEMBER 2025

<a id="p005-b002"></a>

<!-- p005-b002 -->
In this work, the metaphors visualize positional uncertainty       This produces spatially coherent surface variations, with larger
derived from biomolecular ensembles. For scalar-based                 displacements in more uncertain regions.
techniques, we selected the ensemble member closest to the
average structure and computed RMSF values for each atomic                 V. QUALITATIVE ANALYSIS WITH DOMAIN EXPERTS
position. These scalar RMSF values were then mapped onto the
                                                                         As a first step in our evaluation of the uncertainty metaphors,
molecule using various visual encodings. For each molecule,
                                                                      we consulted six domain experts. Among them, three (SB1,
we identified the minimum and maximum RMSF values and
                                                                      SB2, SB3) specialize in structural biology with 23, 16, and
linearly mapped them to the respective visual encoding range
                                                                      10 years of experience in the field. The remaining three (MS1,
(e.g., smallest to largest tube radius). This approach ensures
                                                                      MS2, MS3) are experts in molecular simulations with 30, 29,
that the full dynamic range of each visual variable is utilized per
                                                                      and 6 years of experience. We conducted semi-structured in-
structure. In contrast, the cloud and ensemble metaphors depict
                                                                      terviews to explore the advantages and disadvantages of the
the full conformational variability directly, without reducing it
                                                                      metaphors. During the interviews, we presented representative
to a scalar summary per atom.
                                                                      visualizations for each metaphor one at a time. While the expert
   Color       There exists no single standard colormap for en-
                                                                      viewed the visualization, we asked whether they currently use
coding uncertainty in biomolecular visualizations. We chose
                                                                      or would consider using such visualizations in their work. We
increased lightness of our base color (blue) for increased uncer-
                                                                      also inquired about their perspectives on the advantages and
tainty since lightness is a popular indicator for uncertainty [15],
                                                                      disadvantages of the visualizations. Based on their responses, we
[55], [56]. The minimum RMSF observed across the structure
                                                                      asked follow-up questions to explore specific points in greater
is mapped to the base color (blue), and the maximum RMSF to
                                                                      depth. After discussing all metaphors, we concluded by asking
white, with intermediate values linearly interpolated. The hue
                                                                      for their opinions on key areas for future research.
of a monochrome colormap seems to have little influence on its
perception [57], [58].
                                                                      A. Metaphors
   Clouds        For creating the cloud representation, we com-
puted a density volume map based on the ensemble data with               Color All experts reported using color to display uncer-
VMD [59] and rendered the clouds with a linear transfer function      tainty information, but noted that the choice of colormap is non-
in ChimeraX [60]. Regions with higher density of conformations        trivial. The default red-white-blue (RWB) colormap found in
appear more opaque, and thus more transparent regions have            tools like VMD [59] and ChimeraX [60] was uniformly rejected,
higher positional uncertainty.                                        as it is strongly associated with electrostatic potential and thus
   Ensemble        For the ensemble representative, we rendered       risks misinterpretation. SB1 reported using a green-orange col-
our aligned NMR ensemble directly. We chose to render all             ormap, and MS2 used a green-yellow-red scheme; however, both
conformers opaquely since this is the most common approach in         may present accessibility issues for color vision deficiencies.
the literature. Uncertainty is conveyed through the visual spread     To address this, we chose a monochromatic colormap, which
and overlap of the conformers.                                        is common in UV across other domains [15], [56], [61]. SB2
   Hulls We rendered semi-transparent gray surfaces around            appreciated this channel, noting that color is “flexible, can be
the SES and the tube representations. The distance between the        applied to all representations, and is easy to grasp.”
hull and the molecular surface encodes uncertainty.                      Clouds Feedback on the clouds was more ambiguous than
   Sausages This metaphor is based on the tube representa-            for color. Three experts (SB1, SB2, SB3) stated they would
tion. The radius of the tube increases linearly with uncertainty,     not use cloud representations in publications, citing limited
leading to thicker tubes in more uncertain regions.                   perceptual clarity in 2D and lack of familiarity within the
   Contours We rendered black contours around the molec-              community—e.g., SB2 noted that “the metaphor is not widely
ular surface. The thickness of these contours increases propor-       known”, and SB1 commented that it can “look like a stain”
tionally with uncertainty.                                            on paper. MS1 also stressed that “the community wants to see
   Texture We used stippling density as the uncertainty at-           concrete conformers.”
tribute for the SES and hatching density for the tube represen-          However, in dynamic or interactive contexts (e.g., talks), most
tation. In both cases, higher uncertainty corresponds to lower        experts were more favorable. They noted that animation or expla-
texture density. To ensure more perceptually uniform variation        nation helps communicate how clouds result from overlapping
across the uncertainty range, we applied the reparameterizations      conformations. MS3 was particularly enthusiastic, stating that
by Sterzik et al. [14].                                               “clouds are well suited for communicating that molecules are
   Waves        The wave representation (sinusoidal surface dis-      not as rigid as machines” and can be “easily interpreted as
placements) is based on the method of Schulz et al. [51], where       probability densities.” MS1 added that cloud representations are
larger amplitudes encode higher uncertainty. Frequency and            important in quantum-chemical contexts or when ensembles are
direction of displacement are held constant to isolate amplitude      too large to visualize directly.
as the primary uncertainty cue.                                          MS1 and MS2 noted they would combine clouds and color to
   Noise      We apply 3D Perlin noise to distort the SES and         highlight individual conformers or emphasize specific regions of
tube representations. The scalar noise is sampled based on            interest within the cloud. Other experts emphasized simplicity:
spatial position and scaled by the uncertainty at each point.         SB2 preferred minimal representations, stating that “the models

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
STERZIK et al.: UNCERTAINTY VISUALIZATION FOR BIOMOLECULAR STRUCTURES: AN EMPIRICAL EVALUATION                                       10301

<a id="p006-b002"></a>

<!-- p006-b002 -->
themselves are already very complex and it is necessary to focus        considered contours sufficient for static images but inadequate
on the important things.” MS2 would only consider using clouds          for interactive 3D applications.
for space-filling representations and did not find them useful for         Texture The majority of experts (SB1, SB2, SB3, MS1, and
abstract visualizations.                                                MS3) found texture unconvincing as a representation of uncer-
   Ensemble       Ensemble representations are the standard for         tainty. Several reasons were given: SB2 considered the textures
NMR data, and all experts found them valuable for gaining a             distracting and unintuitive, while MS1 felt that hatching was not
spatial understanding of conformational variability. However,           sufficiently prominent, and stippling involved too many point
their visual complexity received mixed responses. Although              primitives. They reasoned that uncertainty, often a secondary
some appreciated the directness of the representation, SB3 de-          data aspect, benefits from more subtle visual metaphors. Some
scribed the visual result as an “absolute catastrophe” that “can’t      experts raised concerns about unintended associations: SB1
be shown to other people for demonstration purposes”. MS2 also          noted that stippling could be misinterpreted as indicating impor-
expressed reservations, noting they would only use ensembles            tance rather than uncertainty, potentially guiding user attention
for datasets with few conformers. SB2 proposed using color to           in unintended ways. Similarly, hatching was seen as potentially
highlight regions of structural equivalence across conformers to        confusable with structural details rather than uncertainty cues
improve interpretability.                                               by SB1 and SB3.
   The experts also disagreed on the usefulness of ensemble                In contrast, MS3 appreciated the aesthetic qualities of the
visualizations for stick representations. Since a single stick          texture visualizations but questioned their suitability for uncer-
model already introduces considerable visual clutter, ensemble          tainty communication, stating they “would be suited to visualize
overlays exacerbate this effect. SB2 and MS2 preferred to avoid         molecular properties, but do not look uncertain”. MS2 was
such combinations altogether, whereas SB1 and SB3 found them            the only expert to endorse the texture metaphor positively for
helpful in specific cases, for example, to illustrate the flexibility   uncertainty, interpreting the white areas as possibilities and the
of certain molecules.                                                   blue areas as certain. However, they acknowledged that the
   Hulls      Opinions on the hull metaphor were divided. The           actual spatial range accessible to the molecule was not directly
advantages of this representation include “reduced and therefore        depicted. MS2 favored applying the texture visualization specif-
unobtrusive design” (MS1) and “capability to represent isotropic        ically for surface (SES) and tube representations.
uncertainty” (SB2). MS1 also noted that hulls can be effective in          Waves       The waves metaphor was broadly rejected by the
“directing attention”. In contrast, several aspects of the design       experts, primarily due to concerns about misinterpretation. SB1,
received criticism. One concern was visual ambiguity: SB3               SB2, SB3, and MS2 noted that the sine wave pattern could
described the gray hull color as “confusing when placed on top          be mistaken for actual molecular geometry rather than an un-
the molecule’s own color”, and SB1 remarked that it provided            certainty cue. Additionally, several experts (SB1, SB2, SB3)
“only additional color information when seen on the SES”. MS3           saw no perceptual or interpretive advantage over established
mentioned the risk of misinterpretation, suggesting that hulls          representations such as sausages.
could be mistaken for a “water sheath around the molecule”.                Noise Expert opinions on the noise metaphor were mixed.
   Expert feedback also pointed to questions of directionality          A recurring concern was that the visual effect resembled ren-
and interaction possibilities. MS2 expressed a preference for           dering or simulation artifacts rather than intentional uncertainty
inverting the encoding—wanting wider hulls in regions of lower          cues. SB1, SB3, and MS3 associated the noise with poor visual
uncertainty. SB2 proposed making the hull size interactive,             quality and found it aesthetically unconvincing. Some experts
suggesting a slider that could morph the hulls from a minimal           also found the noise metaphor only appropriate for certain
indication of uncertainty to representing the full extent of the        representations. SB2 found it suitable only for the SES surface
ensemble’s conformational spread.                                       but not for tube representations, where it appeared like “bad
   Sausages       The sausage metaphor was generally well re-           quality”. In contrast, MS2 had the opposite view, favoring the
ceived, with four experts (SB1, SB3, MS1, MS3) appreciating             use of noise on tubes but not on SES surfaces. They argued that
its familiarity and established use in UV. MS1 specifically noted       “on the SES, the noise does not cover the actual space that is
its “reduced design” as a strength. However, some limitations           accessible to the molecule. Therefore, the uncertain space might
were mentioned. SB2 pointed out that the metaphor only applies          be underestimated.” MS1 was more positive and reported that
to the tube representation, reducing its generalizability. MS2          although the metaphor initially required some time to get used
highlighted a potential source of confusion: “in chemistry, wide        to, it ultimately conveyed uncertainty effectively.
and thin stands for back and front, respectively”, which may
interfere with intuitive interpretation. As with hulls, MS2 also
expressed a preference for inverting the encoding—using wider           B. Future Improvements
elements to represent greater certainty instead of uncertainty.            A commonly raised issue was the limited accessibility of UV
   Contours The contour metaphor was often compared to                  (SB2, MS1, MS3). If at all, many of the metaphors are only
hulls. Two experts (MS1, MS2) preferred it over hulls, with MS1         accessible through specialized software. As a result, they are
highlighting its “reduced design” and MS3 noting that, unlike           inconvenient or even inaccessible to most experts. Incorporating
hulls, contours “can’t be confused for water sheaths”. However,         them as plugins into popular molecular visualization software
MS3 also remarked that the metaphor “still does not imply               suites could significantly broaden their usage. Additionally, MS3
uncertainty”, pointing to a limitation in its expressiveness. SB2       advocated for such plugins to be capable of rendering only

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
10302                                         IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 12, DECEMBER 2025

<a id="p007-b002"></a>

<!-- p007-b002 -->
specified interesting sites of the protein with the uncertainty
metaphor. SB1 identified unresolved research problems regard-
ing intrinsically disordered proteins (IDPs). In current cartoon
representations, intrinsically disordered regions are depicted as
lines, lacking an intuitive encoding for these highly uncertain
areas. Additionally, in ensemble visualizations, the conforma-
tions do not have a uniform occupation density. Future work
should focus on ensemble visualizations that account for this
and illustrate the population of each conformation accurately.
                                                                      Fig. 3. Overview of the perceptual studies. Each study addresses a specific
SB1 also emphasized the need for a more effective metaphor for        research question, illustrated by the accompanying figures. The first study
flexible binding pockets, currently highlighted solely through        evaluates whether the representative metaphors are intuitively associated with
colors. A visual analytics tool was requested by MS1. They            uncertainty. The second investigates whether their directionality is interpreted
                                                                      as intended. The third examines how accurately participants can infer uncer-
stated that properly aligning ensembles of proteins is challeng-      tainty values from the metaphors. Illustrations of example tasks performed by
ing, and thus, a tool that guides this process or suggests several    participants are shown alongside each study objective.
versions of alignment would help. Furthermore, SB3 would like
to see more abstract visualizations for uncertain data, similar
                                                                      to determine whether the visualizations spontaneously bring
to the illustrations by Goodsell [62], [63], [64]. Such abstract
                                                                      uncertainty to the mind. In the second study, we determined
visualizations would avoid implying false accuracy, which is
                                                                      whether the directionality of the metaphors is appropriate, e.g.,
crucial for uncertainty representation.
                                                                      whether larger tube radii should encode uncertainty or certainty.
                                                                      In the last study, we tested how well uncertainty values can be
C. Summary of Expert Feedback                                         inferred from the metaphors.
   To summarize, based on the conducted expert interviews,               We received ethical approval for our research project from the
there is no superior uncertainty metaphor for proteins. Instead,      ethical commission of the University of Jena. All participants
preferences depended on both use case and representation type.        consented to take part in this research project. We recruited
Ensembles and clouds were valued primarily for exploring con-         participants using the crowdsourcing platform Prolific. The par-
formational space. While ensembles are the more established           ticipants received a compensation of approximately £9 (∼10€
option, clouds were often seen as suitable for presentations.         / $11) per hour. We deliberately recruited participants from the
When uncertainty is treated as secondary information, reduced         general public for our perceptual studies instead of relying on
metaphors are better suited. Color coding was seen as familiar        domain experts. Experts often exhibit biases towards familiar
and easy to interpret, but few additional benefits were raised.       visualizations due to perceived cognitive ease [65]. As observed
Sausages were generally received well, mainly because they            in our expert interviews, certain metaphors were more familiar to
are already established. However, few specific advantages were        experts than others. By recruiting participants from the general
named. Opinions on the newer metaphors—textures, noise, and           public, we mitigated potential biases and created a more neutral
waves—were more divided. These were often associated with             testing environment. This approach ensures a fair evaluation, as
unintended meanings: textures with structural or importance           experts might unknowingly favor suboptimal but familiar visual
cues, noise with rendering artifacts, and waves with actual           representations.
geometry. However, some experts pointed to specific use cases or         The participants were required to have normal or corrected-
reported that they came to appreciate these metaphors after some      to-normal vision, no color vision deficiencies, and fluency in
initial hesitation. There was also disagreement on the proper         English. The participants were prompted not to participate on
directionality for some metaphors. One expert suggested revers-       mobile devices and to maximize the browser window. Each
ing the mapping in sausage and hull visualizations: using wider       participant only participated in one of the three studies to prevent
geometry for certain areas and thinner geometry for uncertain         bias. All stimuli and study responses are available on OSF at
ones.                                                                 https://doi.org/10.17605/OSF.IO/DCTGU.
   We did not observe major differences between structural bi-
ologists and molecular simulation experts. Structural biologists      A. Intuitive Associations
showed somewhat more aversion to the cloud metaphor, though
                                                                         The intuitiveness of the uncertainty metaphors repeatedly
this may reflect individual preferences, rather than a general
                                                                      came up in the expert interviews. Often, the attributes that
trend within the discipline.
                                                                      were described as intuitive were attributes that were already
                                                                      established in the molecular biology community. Newer visu-
                 VI. PERCEPTUAL EVALUATION                            alizations were sometimes described as intuitive; however, for
  To ensure the objectivity of our results, we conducted three        these newer metaphors, the expert opinions were divided.
perceptual studies with a total of 1,756 participants. Fig. 3 shows      Setup: We conducted this crowdsourced study with 540 partic-
an overview of the conducted perceptual studies. In the first and     ipants to gain a more unbiased opinion on whether a metaphor
second studies, we addressed the most common disagreements            spontaneously evokes a sense of uncertainty. The participants
between the experts: intuitiveness and directionality. For test-      were shown two visualizations side-by-side. The visualization
ing intuitiveness, we presented the visualizations to unbiased        on the left side was a standard visualization of a protein; the
participants and asked them to describe the images. We tried          visualization on the right encoded the uncertainty with one of

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
STERZIK et al.: UNCERTAINTY VISUALIZATION FOR BIOMOLECULAR STRUCTURES: AN EMPIRICAL EVALUATION                                                10303

<a id="p008-b002"></a>

<!-- p008-b002 -->
TABLE I
          MENTIONS OF UNCERTAINTY OUT OF 540 RESPONSES

<a id="p008-b003"></a>

<!-- p008-b003 -->
the metaphors. The participants were prompted with: “On the
left side, you see a visualization of a protein. On the right side,
                                                                      Fig. 4. Percentage of participants using the respective uncertainty attribute
you see a different visualization of a protein. Please describe the   to identify the region of highest uncertainty when given a choice between the
relationship between the new visual elements and the protein.”        lowest and highest uncertainty areas. Black dots indicate the mean values over
They were required to write at least 200 characters to submit         all representations.
their answers. We discussed the formulation of this task in-depth
before conducting the study. The formulation was very open
so as not to bias the participants. By providing a side-by-side
view, we encouraged the participants to focus on the uncertainty      the area they believed had the higher uncertainty. Unlike in
metaphors, not the protein representation.                            the initial study, participants here received a brief explanation
   For variety, we used two NMR ensembles and one MD                  of positional uncertainty in proteins. To confirm whether the
simulation. For each of these proteins, we generated 18 images.       participants used the uncertainty metaphor, they explained their
One image was created for each possible combination of the            strategy for identifying the more uncertain point in a separate
metaphors and representations. For applicable metaphors per           question at the end of the study.
representation, please refer to Fig. 1. We recruited ten partici-        We used nine proteins as stimuli, consisting of seven NMR
pants per image; each participant saw one image.                      ensembles and two MD simulations. The protein served as a
   Two of the authors independently reviewed the answers. We          within-participant variable, and to avoid potential biases, the
classified them into describing uncertainty or not describing         uncertainty metaphor and protein representation were between-
uncertainty. If the two classifications differed, we discussed the    participant variables. Thus, each participant answered nine ques-
individual answers and reached a consensus.                           tions about the same uncertainty metaphor applied to the same
   Results: For metaphors that clearly symbolize uncertainty, we      molecular representation, with the order of proteins random-
expected a substantial number of answers that mention uncer-          ized. For each of the 18 groups—each possible combination of
tainty or a synonym in the image description. However, out of the     the uncertainty metaphors and molecular representations—we
540 answers we received, only 17 included a description of un-        had two conditions for the number of participants: to recruit
certainty. Most of the answers including an uncertainty descrip-      at least 20 participants, with at least 10 describing a strategy
tion, were for noise (4 out of 17). Three answers were given for      using the uncertainty metaphor. After three rounds of recruiting
clouds, hulls, and texture, while color, contours, sausages, and      participants, we recruited sufficient participants for all groups,
waves each received one answer. We did not find any uncertainty       793 in total.
answers for the ensemble metaphor. For a tabular breakdown of            Thus, in this study, we tested two properties of the metaphors:
the responses by uncertainty metaphor and representation type,        the intuitiveness when participants were aware they were as-
please refer to Table I. As our experts already hypothesized, the     sessing uncertainty and the dominant directionality of the map-
uncertainty metaphors sometimes got mistaken for additional           ping. If the metaphor clearly encodes uncertainty, we expected
structure like in this answer to the waves metaphor: “The second      participants to use it to identify areas of higher uncertainty. In
picture provides a more detailed visualization of [the] protein.      contrast to the first study, the participants were instructed to
It also shows amino acids and due to their size, we can imagine       focus on uncertainty. Regarding directionality, we expected that
how [the] protein is located in space.”                               most participants would correctly identify the area of greater
                                                                      uncertainty if the mapping direction was clear and intuitive. Two
                                                                      authors independently reviewed the explanations, resolving any
B. Directionality
                                                                      disagreements through discussion until reaching a consensus.
   For some of the metaphors, the intuitive directionality of the        Results: Fig. 4 shows the percentage of people who reported
mapping is unclear. During the expert interviews, one expert          using the uncertainty metaphor. Noise and ensembles were
repeatedly mentioned a preference for the opposite directional-       used most frequently to judge uncertainty, each by over 60 %
ity, such as wider sausages representing more certain data. To        of participants. In contrast, hulls and clouds were the least
investigate the suitability of the proposed mapping directional-      used, with usage around 30 %. This showed that even when
ity, we conducted a second perceptual study.                          biased—i. e., prompted that this is an UV—some metaphors
   Setup: The participants viewed UVs highlighting areas of           were not intuitive enough to be widely recognized as uncertainty
minimal and maximal uncertainty and were asked to identify            encodings.

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
10304                                                    IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 12, DECEMBER 2025

<a id="p009-b002"></a>

<!-- p009-b002 -->
accuracy between the metaphors stayed approximately the same.
                                                                                     For noise, the directionality was the most obvious. In the filtered
                                                                                     results, approximately 90% of the answers correctly identified
                                                                                     the area of maximal uncertainty. This is consistent with the re-
                                                                                     sults from the intuitiveness study, where most of the uncertainty
                                                                                     descriptions were given in response to the noise metaphor. The
                                                                                     results for texture, waves, contours, color, and hulls were similar,
                                                                                     with accuracies of approximately 0.7. For ensemble, clouds,
                                                                                     and sausages, the accuracies were not considerably different
                                                                                     from 0.5.
                                                                                        As previously mentioned, clouds and ensembles are more
                                                                                     commonly used to gain an understanding of the conformational
                                                                                     space than to estimate uncertainty values. However, for sausages,
                                                                                     this indicates that the perception of the directionality is unclear,
                                                                                     maybe even slightly skewed to being wrongly assigned if we
                                                                                     factor in the confounding factor of centrality.

<a id="p009-b003"></a>

<!-- p009-b003 -->
C. Inferring Uncertainty Values
                                                                                        After evaluating the intuitiveness and directionality of the
Fig. 5. Mean accuracy and 95% CI for identifying the area of maximum                 uncertainty metaphors, we assessed how well uncertainty values
uncertainty when given a choice between an area of maximal and minimal               can be inferred from the visualizations.
uncertainty. The dashed line indicates an accuracy of 0.5. The left facet shows
the non-filtered results, the right facet only includes participants that used the      Setup: For this purpose, 423 participants estimated the un-
uncertainty attribute for their judgment.                                            certainties in highlighted areas of the proteins. For intuitive
                                                                                     metaphors that clearly convey the level of uncertainty at spe-
                                                                                     cific positions on the molecule, we expect quick and highly
   The metaphors were used most often for the SES, followed by                       accurate responses. To prevent learning effects, we divided the
the tube, and least used for the stick representation. A notable                     participants into 18 groups. Each group corresponds to a unique
exception was the noise metaphor, which was used about 20                            combination of metaphor and representation. Each participant
percentage points more frequently for the tube representation                        had to estimate the uncertainty in 45 images (9 molecules × 5
compared to the SES. It might be easier to confuse noise for                         areas). The participants were prompted to judge the uncertainty
actual geometry on the SES as the tube representation is more                        in the highlighted area from very certain to very uncertain on a
cartoonish and abstract. For the SES, color was used most often                      9-point Likert scale. The 9-point Likert scale covers a wide range
to determine uncertainty: by more than 60% of participants.                          of answer options while not being overwhelmingly detailed. To
Surprisingly, for the tube and stick representations, color was                      ensure that the Likert scale can be considered an interval scale,
only used by less than 30%.                                                          we used the common adjectives (“very”, “slightly”, etc.) for
   Fig. 5 shows the mean accuracy for identifying the area of                        labeling the scale [68]. Each question also included an example
maximal uncertainty on a scale from 0 to 1. We report means                          visualization of a protein that was otherwise not part of the
and 95% confidence intervals (CI). If repeatedly computed from                       study. In the example image, the areas of highest and lowest
samples of the same distribution, 95,% of such intervals would                       uncertainty were highlighted. This was necessary for anchoring
contain the population mean [66]. CI are often preferred over null                   the Likert scale and for presenting the intended directionality
hypothesis significance testing as they reduce misinterpretations                    of the uncertainty metaphor. An alternative to the example
and dichotomous thinking [66], [67]. For metaphors where the                         images would be providing a legend for the uncertainty mapping.
directionality is clear and correctly assigned, we would expect                      However, since this is not feasible for the cloud and ensemble
an accuracy of approximately one. For incorrectly assigned                           metaphor, the example images are more appropriate to ensure
directionality, we would expect an accuracy of approximately                         comparable conditions.
zero. However, we cannot conclude that for an accuracy of 0.5,                          To analyze the ease of judgment, we timed the judgments.
the directionality was entirely unclear, as several confounding                      The participants were instructed to think about each question
factors were involved. The most significant of these is likely                       carefully while also trying to answer quickly. Following the 45
that central areas tend to be more stable than those further                         judgments, the participants assessed the visualizations across
from the center. We tried to include proteins where this is not                      three categories using five-point Likert scales: visual appeal,
immediately obvious. However, this only mitigates the problem                        level of confusion, and perceived task performance.
slightly. Indeed, 115 participants reported looking for decentral                       Stimuli generation: We created the stimuli from the same
parts of the protein as part of their strategy or deciding solely on                 proteins as in the directionality study. For each protein, we
that property.                                                                       generated five images with different areas highlighted. The areas
   Using only the answers filtered for using the uncertainty                         had a size of 75 × 75 px for images of size 1024 × 1024 px. To
attribute increased the mean accuracy of all metaphors, apart                        ensure a balanced distribution of uncertainty values, we used a
from ensemble, clouds, and sausages, but the general order of                        semi-automated process for identifying the areas.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
STERZIK et al.: UNCERTAINTY VISUALIZATION FOR BIOMOLECULAR STRUCTURES: AN EMPIRICAL EVALUATION                                                                  10305

<a id="p010-b002"></a>

<!-- p010-b002 -->
Fig. 6. Distributions of the participants’ answers. The plots display the differences between the participant estimates and the ground truth. The boxplots summarize
the distributions’ key statistics: the black line within the box represents the median. The box indicates the interquartile range (IQR) with its length, spanning from
the first (Q1) to the third (Q3) quartile. The whiskers extend to 1.5 IQR from each end of the box. The raw data values are overlaid as beeswarm plots.

<a id="p010-b003"></a>

<!-- p010-b003 -->
For each protein image, we created a ground truth image
showing the uncertainty values with a gray color map. We
convolved each ground truth image with a filter of the area size
and tracked three key metrics: mean uncertainty, uncertainty
variance, and coverage. Coverage represents the ratio of protein-
covered pixels to the total region size. To ensure adequate
representation of protein in the highlighted area, we set coverage
thresholds of 0.8 for SES and 0.2 for sticks and tubes. Next, we
divided the range of uncertainty values into nine intervals and
identified all area candidates meeting the required coverage for
each interval. We then selected the region with minimal variance
per interval to maintain relatively constant uncertainty values
within the highlighted area. It was not always possible to find
areas that satisfied every combination of the intervals and ground                  Fig. 7. MAE against the times required to answer. Mean and 95% CI are
truth images. Thus, we settled on five intervals per ground truth                   plotted in red and connected to metaphor icons.
image. Our selection criteria aimed for a uniform distribution of
mean uncertainty values across all molecules and regions, with                      variability, with higher mean absolute differences and IQRs
sufficient spacing between selected areas, high coverage, and                       exceeding 55. This result aligns with expectations, as clouds and
low variance.                                                                       ensembles were developed to convey conformational variability
   Analysis: Fig. 6 shows the differences between the partici-                      rather than precise scalar uncertainty values.
pants’ uncertainty estimates and the ground truths, aggregated                         Most metaphors tend to lead to overestimation of uncertainty
per metaphor and representation. The differences were measured                      (median differences > 2), except texture, where median differ-
on a scale of uncertainty from 0 to 100%. In this context, the                      ences are less than −2, and clouds, which cause underestimation
Likert scale responses were treated as the averages of nine                         on tubes and sticks (median differences < −12) but slight over-
intervals within this range. For instance, a Likert scale answer                    estimation on the SES (median difference ∼ 2). Color generally
of 2 (“Certain”) would correspond to approximately 16.67%                           leads to overestimation, except on sticks where the bias is near
uncertainty. If the ground truth of a stimulus was 50% uncer-                       zero. The estimation bias is highest for noise, with median
tainty, and a participant judged it to be “Certain” the difference                  differences greater than 13, especially on tube representation,
would thus be −33.33. Positive differences indicate an over-                        where the median difference is 16.7 and more than 75% of
estimation of the uncertainty, and negative differences indicate                    responses, excluding outliers, overestimate uncertainty.
an underestimation. Given that participants were restricted to                         Fig. 7 shows the mean absolute error (MAE) plotted against
respond using a 9-point Likert scale, an individual response                        the time it took the participants to answer the questions. Ideally,
can only have a difference of zero if the ground truth aligns                       we would like the participants to be able to accurately and
exactly with the midpoint of the chosen Likert scale interval.                      quickly infer uncertainty values from our visualizations.
Our stimuli were not selected to coincide with these midpoints.                        For the tube representation, clouds result in the largest mean
Therefore, the differences would differ from zero even if a                         absolute errors (MAE 39) but relatively fast response times
participant chose the option closest to the ground truth. However,                  (7 s). Ensembles perform slightly better in terms of accuracy
over several measurements and participants, the average of the                      (MAE 34) but require more time (8 s). Sausages, noise, contours,
answers will approach zero if the participants can correctly                        and color achieve medium accuracy (MAE 23) with similar
identify the uncertainty level [68].                                                response times (8 s). Hulls (MAE 28) fall between this group and
   Results: For color and texture, most estimates cluster rela-                     ensembles. Texture shows the best accuracy (MAE 14) and is
tively close to the ground truth: the interquartile range (IQR) of                  also fast (7 s), while waves reach moderate accuracy (MAE 22)
differences remains below 25. In contrast, clouds and ensembles                     with the shortest response times (6 s). On the SES representation,
show the largest differences in both average magnitude and                          texture and color produce the highest accuracy (MAE 13) and

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
10306                                              IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 12, DECEMBER 2025

<a id="p011-b002"></a>

<!-- p011-b002 -->
Fig. 8. Comparison of MAE for the color metaphor when excluding partic-
ipants with seemingly random answer patterns and overall color MAE. We
display means and 95% CI. Notably, for tube representations, a significant
proportion of participants displayed such random patterns.

<a id="p011-b003"></a>

<!-- p011-b003 -->
Fig. 9. Means and 95% CI of the ratings on confusion, perceived accuracy,
the fastest response times (6 s). Noise, contours, and hulls show            and aesthetics.
medium errors (MAE 24) and moderate response times (8 s).
Clouds perform worse (MAE 32) and are slower (10 s). For the                 rated their accuracy relatively similar for all metaphors. Texture,
sticks, color performs best, with an MAE more than 20 units                  noise, and waves are rated slightly better than ensemble and
lower than that of clouds and ensembles. The response times are              hulls, but the differences are small. Texture was perceived to be
similar (around 9 s), with ensembles being slightly faster.                  the most visually pleasing. The differences between the other
   For all metaphors except color, the results are similar across            metaphors were marginal.
all representations. In contrast, color shows notably worse per-
formance on the tube representation, with MAE approximately
                                                                             D. Summary of the Perceptual Evaluation
eight percentage points higher than on SES or sticks. We inves-
tigated this discrepancy further by examining the results of indi-              In our intuitiveness study, only few responses described un-
vidual participants. We observed that, for most metaphors, there             certainty, indicating that none of the visualization metaphors
were few instances of participants exhibiting seemingly random               strongly evoke it. As the study was intentionally open so as
answer distributions, such as uniform responses regardless of                not to bias the participant, further research is needed to detect
uncertainty value or random switching between minimal and                    weaker associations. Our next study gave additional insights into
maximal uncertainty. In contrast, many participants in the clouds            intuitiveness. In this setup, we explicitly informed the partici-
and ensemble groups submitted seemingly random responses.                    pants that the visualizations encoded uncertainty. If a metaphor
The overall accuracy for these metaphors was notably low—at                  naturally evoked associations with uncertainty, we would expect
least nine units higher in MAE than all others—suggesting                    most participants to use the metaphor to solve the given task.
that the associated tasks were particularly difficult for partic-            The results reinforced our earlier conclusion: none of the vi-
ipants to judge. In contrast, the other metaphors yielded higher             sualization metaphors are strongly associated with uncertainty.
overall accuracy. For these, we believe that seemingly random                Across all metaphors, fewer than 70% of participants employed
responses are more likely due to a small number of participants              the metaphor to complete the task, and for most metaphors, usage
not following the instructions. Such instances were relatively               was below 50%.
evenly distributed across representations. However, for the color               Regarding directionality, our results suggest that most
metaphor, the tube representation appeared to have a notably                 metaphors use an appropriate mapping direction. However, apart
higher frequency of random submissions. We filtered the partic-              from the noise metaphor, the other variables had less than 80%
ipants assigned to the color metaphor based on the correlation               accuracy in correctly identifying the directionality. Therefore,
coefficients of their answers. Six of the 24 participants assigned           proper labeling and/or training of the participants remains cru-
to the tube representation had negative correlation coefficients.            cial. The sausage metaphor is an exception. With less than 50%
For comparison, only 1 in 23 participants had negative correla-              accuracy, the directionality of this metaphor seems unintuitive.
tion coefficients for sticks and SES each.                                      In the last study, participants were less accurate in inferring
   When recomputing the MAE without those randomly an-                       uncertainty values from the conformational space visualizations.
swering participants, the results for the three representations are          This was expected since the other representations visualize the
much more similar. All data points—including those appearing                 scalar uncertainty value directly. In conformational space visu-
random—are depicted in Figs. 6 and 7. A comparison of MAE                    alizations, viewers must interpret and abstract the information
computed with and without these seemingly random responses                   on their own.
is depicted in Fig. 8. When excluding the random answers, the
MAE of the tube-color group is still higher than for texture                                           VII. DISCUSSION
but smaller than for the cluster of contours, sausages, waves,
                                                                               In the following, we discuss our evaluations in more detail.
and noise. It is unclear why about 25% of the participants in
the tube-color group answered this randomly. In future work, a
                                                                             A. Conformational Space Visualizations
closer evaluation of color perception differences on the repre-
sentations would be interesting.                                               According to the interviewed experts, ensembles are of utmost
   Participant Ratings: Fig. 9 shows the ratings of the metaphors            importance for a spatial understanding of the data. However,
by the participants. The participants seemed to find the texture,            ensemble visualizations tend to get crowded when the number
noise, and waves metaphors the least confusing and the clouds                of molecular conformations becomes large. Clouds are more
and ensemble representations the most confusing. Even so, they               uncommon. They also give an impression of the conformational

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
STERZIK et al.: UNCERTAINTY VISUALIZATION FOR BIOMOLECULAR STRUCTURES: AN EMPIRICAL EVALUATION                                      10307

<a id="p012-b002"></a>

<!-- p012-b002 -->
space and are suitable for large ensembles. In fact, they even ben-   the noise visualizations visually pleasing. Although closely re-
efit from more data. However, they are not established and need       lated to the noise metaphor, waves appeared less intuitive as
thorough explanations to be understood. Clouds and ensembles          they were used less frequently to determine the maximal uncer-
both consistently lead to poor results in our perceptual exper-       tainty. Furthermore, the directionality was less clear than that of
iments. However, since the tasks were more targeted towards           noise. For inferring uncertainty values, the waves metaphor had
estimating uncertainty values, this outcome was somewhat ex-          similar accuracy to noise but the fastest response times out of
pected. Surprisingly, these metaphors did not even seem to help       all uncertainty metaphors. The waves visualization was disliked
identify the area of higher uncertainty from a choice of the areas    by experts, who stated it could easily be confused with actual
with minimum and maximum uncertainty. Additionally, neither           geometry. Although our study did not explicitly evaluate whether
was intuitively perceived as visualizing uncertainty or possible      metaphors that manipulate geometry, such as waves, are more
conformational spaces. Thus, the metaphors do not seem to be          likely to be misinterpreted as molecular structure, we observed
self-explanatory. We suspect this might be due to them getting        examples of such misinterpretation in the free-text responses
crowded and overwhelming. Some work has already been done             of our directionality study. This suggests that metaphors with
to improve the clarity of ensembles. Brushing and linking in an       geometrically salient positional variation may be more prone
interactive tool [38] and selective filtering of conformers com-      to misinterpretation. While such confusion might be mitigated
bined with transparency [40] are promising approaches that need       through viewer training or explanatory legends, this type of
further evaluation regarding their perception. In general, a more     metaphor demands careful design consideration, particularly in
reduced or stylized visualization of the whole conformational         scientific communication contexts.
space might help while still providing a spatial understanding.          Color was the most widely used attribute for encoding scalar
                                                                      uncertainty values. The primary disadvantage of color mapping
                                                                      is that the color channel cannot be used to represent other
                                                                      attributes. As uncertainty is often secondary information, this
B. Representation of Summary Statistics                               can be problematic. Apart from this, color was liked by the
   Hulls can be used to visualize conformational spaces by visu-      experts for being a flexible metaphor that can be used for
alizing the probability density by rendering multiple isosurfaces.    any representation and is easily available. The directionality of
However, they are commonly used to indicate uncertainty levels        the mapping—increased lightness for increased uncertainty—
with only one isosurface. We evaluated the latter option. The         seemed to be suitable. Color also proved effective for inferring
hulls received mixed feedback from our experts. They were             uncertainty values. However, we noticed that for judgments of
liked for the possibility of displaying anisotropic uncertainty       uncertainty on the tube representation, about 25% of the partic-
information and their reduced design, but the experts stated the      ipants seemed to answer randomly, considerably more than for
hulls might be confused for additional elements. For inferring        the other representations. This effect needs further examination
values, the hulls had slightly worse results than similarly reduced   in future work.
metaphors such as sausages and contours. One of our experts              Only one of the interviewed experts found texture to be a
wished for an adjustable version of hulls where the extent of         convincing metaphor for uncertainty, but in the perceptual stud-
the hulls could be modified with a slider, from a small hull          ies, texture performed well. The percentage of people who used
serving as an indication of uncertainty to the maximal hull of all    texture to determine the uncertainty in the directionality study
conformations.                                                        was higher than for most other metaphors. The directionality of
   The sausages were valued by most of our experts as being           the mapping (low density for uncertain values) also worked well.
intuitive for visualizing uncertainty information. Contrarily,        Texture had the lowest absolute errors for inferring uncertainty
our perceptual evaluation showed that the directionality of           values and was judged to be the least confusing and the most
the mapping—large radii for uncertain data—is likely not              visually pleasing out of all metaphors.
perceived as intended. The sausages metaphor was the only
metaphor where the directionality seems counter-intuitive, with
less than 50% accuracy on average. Contours are an alternative        C. Limitations
to sausages that the experts found similar. In the perceptual            Our evaluations provided insights into the appropriateness of
evaluations, contours performed similarly to sausages, but their      various uncertainty metaphors for biomolecular structure visual-
directionality seemed more intuitive to the participants.             ization. However, there are some limitations. We chose represen-
   For noise, the directionality was clearest; approximately 90%      tatives that cover the range of proposed uncertainty metaphors.
of the answers were correct. Additionally, noise seemed to be         Despite this, variations within individual categories cannot be
the most intuitive as it was most frequently used to determine        fully addressed in a single set of studies. While our results
the point of maximal uncertainty across all metaphors in the          offered indications regarding the suitability of the categories,
directionality study. Thus, noise seemed to be most easily rec-       follow-up research should explore multiple variants within each
ognizable as an uncertainty encoding. The absolute errors in          category (e.g., different types of uncertainty hulls). Furthermore,
inferring uncertainty values for noise were relatively small.         our studies were conducted with 2D images, and the results
However, the estimations exhibited the highest bias towards           might differ in interactive or stereoscopic 3D environments. This
overestimating uncertainty among all uncertainty metaphors.           is particularly relevant for the hulls and clouds visualizations,
This might be due to noise most prominently encoding uncer-           which experts believed would perform better in 3D. While static
tainty. Contrary to the expert opinions, most participants found      2D images represent a common and practical use case, future

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
10308                                         IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 12, DECEMBER 2025

<a id="p013-b002"></a>

<!-- p013-b002 -->
work should also explore how these visualizations are perceived      equally well, as each has distinct strengths and limitations. As
in dynamic and immersive 3D settings, for example, by investi-       a result, there is no universally recommended approach for UV.
gating multiple viewing angles and interactive environments. In      Instead, the choice of metaphor should be guided by the specific
this evaluation, uncertainties were always compared within one       requirements of the task. For example, conformational space
molecule. Thus, the whole range of the uncertainty metaphor          visualizations, such as ensembles and cloud visualizations, are
could be utilized for each protein. When comparing results           particularly effective for providing a broad overview of the entire
between several proteins, the uncertainty attributes might need      conformational space. On the other hand, metaphors that repre-
to encode larger variances in uncertainty, which could change        sent summary statistics of uncertainty distributions are better
the results.                                                         suited for tasks where uncertainty is a secondary consideration,
                                                                     offering a more reduced representation.
D. Future Work                                                          The study also highlighted the influence of expert biases on
                                                                     the choice of visualization metaphor. Familiar representations,
   In our perceptual studies, we evaluated the appropriateness of
                                                                     such as ensembles, sausages, or color, were generally rated
the metaphors in the first two studies. The third study investi-
                                                                     more positively by experts compared to less familiar approaches.
gated the effectiveness by assessing how accurately uncertainty
                                                                     However, the perceptual study results showed that some less
values can be inferred from the metaphors. To further assess the
                                                                     conventional metaphors, such as noise and texture, performed
effectiveness of the metaphors, future work should examine how
                                                                     well, indicating potential value in exploring these alternatives.
uncertainty metaphors might influence domain-specific interpre-
                                                                     This suggests that established methods may not always be the
tations or conclusions. Our current evaluation focused on expert
                                                                     most effective and should be assessed critically rather than
preferences and the perception of metaphors. Understanding
                                                                     automatically favored.
how such visualizations affect scientific reasoning in applied
                                                                        One notable discrepancy between common practice and
contexts would require domain-specific evaluations involving
                                                                     our study results concerns the sausage metaphor. While this
concrete scientific tasks or decision-making scenarios.
                                                                     metaphor is commonly used to encode uncertainty with larger
   While our studies focused on structural molecule data, our
                                                                     radii, our perceptual study found that more than 50% of partic-
results might apply to more general use cases. Many of the
                                                                     ipants interpreted larger radii as representing higher certainty.
metaphors are relevant to other types of data, and the ques-
                                                                     This suggests that the typical mapping direction of the sausage
tions posed in studies 2 and 3 are easily transferable. In future
                                                                     metaphor might be inappropriate. When using this metaphor to
work, it will be important to assess the generalizability of our
                                                                     represent uncertainty, it is crucial to provide clear guidance to
results using a broader range of datasets. Similarly, insights
                                                                     ensure users understand the intended meaning.
from other application areas of UV could apply to biomolecular
structures. For example, sonification and animation techniques
such as blinking or oscillation [69] remain unexplored in this                     VIII. SUMMARY AND CONCLUSION
context. Another form of animation—Hypothetical Outcome
                                                                        We collected and categorized visualization methods for po-
Plots—animate finite draws from a probability distribution [70].
                                                                     sitional uncertainty in proteins. We selected nine representative
This could be a promising technique for biomolecular structures.
                                                                     visualization metaphors and evaluated them through expert
Furthermore, techniques for visualizing data distributions, such
                                                                     interviews and three crowdsourced studies. The metaphors
as Gaussian mixture models [71], could be tested for repre-
                                                                     have different strengths, weaknesses, and application areas.
senting conformational spaces. Exploring these approaches may
                                                                     Ensembles and clouds provide spatial overviews. Experts rely on
provide new strategies for UV in biomolecular applications.
                                                                     this to understand the protein’s conformational space. However,
   Additionally, our experts mentioned several areas of molec-
                                                                     our perceptual studies showed that these visualizations tend to
ular UV that require future work. They mentioned intuitive
                                                                     be confusing and unintuitive. Some metaphors, like contours,
representations for intrinsically disordered regions in proteins,
                                                                     hulls, and sausages, offer a very reduced design and thus
accounting for the non-uniform distribution of conformations in
                                                                     add uncertainty information to visualizations in a particularly
molecular ensembles, visual analytics guidance for aligning pro-
                                                                     unobtrusive way. Among these very reduced metaphors, we
tein ensembles, effective metaphors for flexible binding pock-
                                                                     recommend using contours. They appeared more intuitive than
ets, and more abstract, illustrative visualizations for proteins.
                                                                     sausages and provided better accuracy for inferring uncertainty
However, the most critical area for future work is increasing
                                                                     values compared to hulls. Metaphors that are neither very
the accessibility of UV. While all the metaphors evaluated in
                                                                     reduced nor display the whole conformational space are
our studies have been proposed for UV before, only a few are
                                                                     color, texture, waves, and noise. Noise seemed most easily
readily accessible to practitioners. This severely hinders their
                                                                     recognized as an uncertainty attribute but led to overestimated
widespread usage. Providing plugins for the commonly used
                                                                     uncertainty values. We recommend using the metaphor noise
molecular visualization tools could drastically increase the usage
                                                                     to create easy-to-understand visualizations where the accuracy
of UV for biomolecular structures.
                                                                     of estimating specific uncertainty values is not crucial. Texture
                                                                     was best for inferring uncertainty values and only slightly less
E. Key Insights
                                                                     intuitive than noise. Participants frequently recognized texture
   Our analysis of visualization methods, based on expert in-        as encoding uncertainty, and the directionality of the mapping
terviews and perceptual studies, revealed several key insights.      seems intuitive. Thus, texture emerged as the most well-rounded
First, no single visualization method can address all challenges     metaphor in our studies.

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
STERZIK et al.: UNCERTAINTY VISUALIZATION FOR BIOMOLECULAR STRUCTURES: AN EMPIRICAL EVALUATION                                                                     10309

<a id="p014-b002"></a>

<!-- p014-b002 -->
SUPPLEMENTAL MATERIAL POINTER                                      [22] M. F. Thorpe, M. Lei, A. J. Rader, D. J. Jacobs, and L. A. Kuhn,
                                                                                          “Protein flexibility and dynamics using constraint theory,” J. Mol. Graph.
  We made the stimuli and participant responses of all three                              Modelling, vol. 19, no. 1, pp. 60–69, 2001.
perceptual studies available on OSF at https://doi.org/10.17605/                     [23] P. Ashford et al., “Visualisation of variable binding pockets on protein
                                                                                          surfaces by probabilistic analysis of related structure sets,” BMC Bioinf.,
OSF.IO/DCTGU under a CC BY 4.0 license.                                                   vol. 13, 2012, Art. no. 39.
                                                                                     [24] S. I. O’Donoghue et al., “Aquaria: Simplifying discovery and insight from
                           ACKNOWLEDGMENT                                                 protein structures,” Nature Methods, vol. 12, no. 2, pp. 98–99, 2015.
                                                                                     [25] M. Rasheed, N. Clement, A. Bhowmick, and C. Bajaj, “Statistical frame-
   We sincerely thank our study participants and especially the                           work for uncertainty quantification in computational molecular modeling,”
interviewed experts for their valuable time and the insightful                            in Proc. 7th ACM Int. Conf. Bioinf., Comput. Biol., Health Inform., 2016,
discussions.                                                                              pp. 146–155.
                                                                                     [26] M. Rasheed, N. Clement, A. Bhowmick, and C. L. Bajaj, “Statistical frame-
                                   REFERENCES                                             work for uncertainty quantification in computational molecular modeling,”
                                                                                          IEEE/ACM Trans. Comput. Biol. Bioinf., vol. 16, no. 4, pp. 1154–1167,
 [1] B. Kozlíková et al., “Visualization of biomolecular structures: State of the         Jul./Aug. 2019.
     Art revisited,” Comput. Graph. Forum, vol. 36, no. 8, pp. 178–204, 2017.        [27] K. Schatz et al., “Visual analysis of large-scale protein-ligand inter-
 [2] G.-P. Bonneau et al., “Overview and state-of-the-art of uncertainty visu-            action data,” Comput. Graph. Forum, vol. 40, no. 6, pp. 394–408,
     alization,” in Scientific Visualization. Berlin, Germany: Springer, London,          2021.
     2014, pp. 3–27.                                                                 [28] M. Hu, W. Chen, T. Zhang, and Q. Peng, “Direct volume rendering of
 [3] C. Johnson, “Top scientific visualization research problems,” IEEE Com-              volumetric protein data,” in Proc. Adv. Comput. Graph., ser. Lecture Notes
     put. Graph. Appl., vol. 24, no. 4, pp. 13–17, Jul./Aug. 2004.                        in Computer Science, 2006, pp. 397–403.
 [4] A. Sterzik, C. Gillmann, M. Krone, and K. Lawonn, “Uncertainty-aware            [29] D. S. Goodsell, I. Mian, and A. J. Olson, “Rendering volumetric data in
     visualization of biomolecular structures,” in Computer Graphics Forum.               molecular systems,” J. Mol. Graph., vol. 7, no. 1, pp. 41–47, 1989.
     New York, NY, USA: Wiley, 2025, Art. no. e70155.                                [30] J. Schmidt-Ehrenberg, D. Baum, and H.-C. Hege, “Visualizing dynamic
 [5] F. U. Hartl, “Protein misfolding diseases,” Annu. Rev. Biochem., vol. 86,            molecular conformations,” in Proc. IEEE Visual., 2002, pp. 235–242.
     pp. 21–26, 2017.                                                                [31] A. Knoll et al., “Uncertainty classification and visualization of molecular
 [6] K. Henzler-Wildman and D. Kern, “Dynamic personalities of proteins,”                 interfaces,” Int. J. Uncertainty Quantification, vol. 3, no. 2, pp. 157–169,
     Nature, vol. 450, no. 7172, pp. 964–972, 2007.                                       2013.
 [7] H. J. Dyson and P. E. Wright, “Intrinsically unstructured proteins and their    [32] J. Cortés, S. Barbe, M. Erard, and T. Siméon, “Encoding molecular motions
     functions,” Nature Rev. Mol. Cell Biol., vol. 6, no. 3, pp. 197–208, 2005.           in voxel maps,” IEEE/ACM Trans. Comput. Biol. Bioinf., vol. 8, no. 2,
 [8] P. Rheingans and S. Joshi, “Visualization of molecules with positional               pp. 557–563, Mar./Apr. 2011.
     uncertainty,” in Proc. VisSym99: Joint Eurographics IEEE TCVG Symp.             [33] L. A. Kelley and M. J. Sutcliffe, “OLDERADO: On-line database of
     Visual., 1999, pp. 299–306.                                                          ensemble representatives and domains,” Protein Sci.: A Pub. Protein Soc.,
 [9] R. G. Maack, M. L. Raymer, T. Wischgoll, H. Hagen, and C. Gillmann,                  vol. 6, no. 12, pp. 2628–2630, 1997.
     “A framework for uncertainty-aware visual analytics of proteins,” Comput.       [34] C. Best and H.-C. Hege, “Visualizing and identifying conformational
     Graph., vol. 98, pp. 293–305, 2021.                                                  ensembles in molecular dynamics trajectories,” Comput. Sci. Eng., vol. 4,
[10] S. M. Dabdoub, R. Rumpf, A. D. Shindhelm, and W. C. Ray, “MoFlow:                    no. 3, pp. 68–75, 2002.
     Visualizing conformational changes in molecules as molecular flow im-           [35] P. Lai, W. Kaplan, W. B. Church, and R. K. Wong, “Informative 3D visu-
     proves understanding,” in BMC Proc., vol. 9, 2015, Art. no. S5.                      alization of multiple protein structures,” in Proc. 2nd Conf. Asia-Pacific
[11] J. Heinrich, S. Kaur, and S. O’Donoghue, “Evaluating the effectiveness of            Bioinf., 2004, pp. 201–208.
     color to convey alignment quality in macromolecular structures,” in Proc.       [36] F. S. Domingues, J. Rahnenführer, and T. Lengauer, “Conformational anal-
     2015 Big Data Vis. Analytics, 2015, pp. 1–8.                                         ysis of alternative protein structures,” Bioinformatics, (Oxford, England),
[12] A. Sterzik, N. Lichtenberg, M. Krone, D. W. Cunningham, and K. Lawonn,               vol. 23, no. 23, pp. 3131–3138, 2007.
     “Perceptual evaluation of common line variables for displaying uncertainty      [37] A. J. M. Martin, I. Walsh, and S. C. E. Tosatto, “MOBI: A web server
     on molecular surfaces,” in Proc. Eurographics Workshop Vis. Comput.                  to define and visualize structural mobility in NMR protein ensembles,”
     Biol. Med., 2022, pp. 41–51.                                                         Bioinformatics, (Oxford, England), vol. 26, no. 22, pp. 2916–2917,
[13] A. Sterzik, N. Lichtenberg, M. Krone, D. Baum, D. W. Cunningham, and                 2010.
     K. Lawonn, “Enhancing molecular visualization: Perceptual evaluation            [38] J. Heinrich, M. Krone, S. I. O’Donoghue, and D. Weiskopf, “Visualising
     of line variables with application to uncertainty visualization,” Comput.            intrinsic disorder and conformational variation in protein ensembles,”
     Graph., vol. 114, pp. 401–413, 2023.                                                 Faraday Discuss., vol. 169, pp. 179–193, 2014.
[14] A. Sterzik, M. Meuschke, D. W. Cunningham, and K. Lawonn, “Per-                 [39] A. Punjani and D. J. Fleet, “3DFlex: Determining structure and motion
     ceptually uniform construction of illustrative textures,” IEEE Trans. Vis.           of flexible proteins from cryo-EM,” Nature Methods, vol. 20, no. 6,
     Comput. Graph., vol. 30, no. 1, pp. 1052–1062, Jan. 2024.                            pp. 860–870, 2023.
[15] J. Sanyal, S. Zhang, G. Bhattacharya, P. Amburn, and R. J. Moorhead,            [40] R. L. Melvin and F. R. Salsbury, “Visualizing ensembles in structural
     “A user study to compare four uncertainty visualization methods for                  biology,” J. Mol. Graph. Modelling, vol. 67, pp. 44–53, 2016.
     1D and 2D datasets,” IEEE Trans. Vis. Comput. Graph., vol. 15, no. 6,           [41] C. H. Lee and A. Varshney, “Representing thermal vibrations and uncer-
     pp. 1209–1218, Nov./Dec. 2009.                                                       tainty in molecular surfaces,” in San Jose, CA, USA: Electron. Imag.,
[16] N. Boukhelifa, A. Bezerianos, T. Isenberg, and J. D. Fekete, “Evaluating             2002, 2002, pp. 80–90.
     sketchiness as a visual variable for the depiction of qualitative uncer-        [42] M. Krone, K. Bidmon, and T. Ertl, “Interactive visualization of molecular
     tainty,” IEEE Trans. Vis. Comput. Graph., vol. 18, no. 12, pp. 2769–2778,            surface dynamics,” IEEE Trans. Vis. Comput. Graph., vol. 15, no. 6,
     Dec. 2012.                                                                           pp. 1391–1398, Nov./Dec. 2009.
[17] S. Tak, A. Toet, and J. van Erp, “The perception of visual uncertainty          [43] T. Ertl, M. Krone, S. Kesselheim, K. Scharnowski, G. Reina, and C. Holm,
     representation by non-experts,” IEEE Trans. Vis. Comput. Graph., vol. 20,            “Visual analysis for space–time aggregation of biomolecular simulations,”
     no. 6, pp. 935–943, Jun. 2014.                                                       Faraday Discuss., vol. 169, pp. 167–178, 2014.
[18] J. Hullman, X. Qiao, M. Correll, A. Kale, and M. Kay, “In pursuit of            [44] C. L. Fisher, J. A. Tainer, M. E. Pique, and E. D. Getzoff, “Visualization
     error: A survey of uncertainty visualization evaluation,” IEEE Trans. Vis.           of molecular flexibility and its effects on electrostatic recognition,” J. Mol.
     Comput. Graph., vol. 25, no. 1, pp. 903–913, Jan. 2019.                              Graph., vol. 8, no. 3, pp. 125–132, 145, 1990.
[19] A. Bryden, G. N. Phillips, and M. Gleicher, “Automated illustration of          [45] R. Koradi, M. Billeter, and K. Wüthrich, “MOLMOL: A program for
     molecular flexibility,” IEEE Trans. Vis. Comput. Graph., vol. 18, no. 1,             display and analysis of macromolecular structures,” J. Mol. Graph., vol. 14,
     pp. 132–145, Jan. 2012.                                                              no. 1, pp. 51–55, 1996.
[20] D. Weiskopf, “Uncertainty visualization: Concepts, methods, and appli-          [46] W. R. P. Scott and S. K. Straus, “Determining and visualizing flexibility
     cations in biological data visualization,” Front. Bioinf., vol. 2, 2022, Art.        in protein structures,” Proteins: Struct., Funct., Bioinf., vol. 83, no. 5,
     no. 793819.                                                                          pp. 820–826, 2015.
[21] C.-D. Zachmann, S. M. Kast, and J. Brickmann, “Quantification and               [47] A. Jurčík, J. Parulek, J. Sochor, and B. Kozlikova, “Accelerated visualiza-
     visualization of molecular surface flexibility,” J. Mol. Graph., vol. 13,            tion of transparent molecular surfaces in molecular dynamics,” in Proc.
     no. 2, pp. 89–97, 1995.                                                              2016 IEEE Pacific Visual. Symp., 2016, pp. 112–119.

<a id="page-015"></a>

## PDF page 15

<a id="p015-b001"></a>

<!-- p015-b001 -->
10310                                                    IEEE TRANSACTIONS ON VISUALIZATION AND COMPUTER GRAPHICS, VOL. 31, NO. 12, DECEMBER 2025

<a id="p015-b002"></a>

<!-- p015-b002 -->
[48] A. Sterzik, N. Lichtenberg, J. Wilms, M. Krone, D. W. Cunningham, and                                     Anna Sterzik received the bachelor’s degree in
     K. Lawonn, “Perception of line attributes for visualization,” IEEE Trans.                                 physics from the University of Heidelberg and the
     Vis. Comput. Graph., vol. 30, no. 1, pp. 1041–1051, Jan. 2024.                                            master’s degree in computational and data science
[49] K. Lawonn, I. Viola, B. Preim, and T. Isenberg, “A survey of surface-based                                from the University of Jena. She is currently work-
     illustrative rendering for visualization,” Comput. Graph. Forum, vol. 37,                                 ing toward the PhD degree in the Visualization and
     no. 6, pp. 205–234, 2018.                                                                                 Exploratory Data Analysis group, the University of
[50] K. Lawonn, M. Krone, T. Ertl, and B. Preim, “Line integral convolution                                    Jena, Germany. Her research interests include the per-
     for real-time illustration of molecular surface shape and salient regions,”                               ception of visualization and uncertainty visualization,
     Comput. Graph. Forum, vol. 33, no. 3, pp. 181–190, 2014.                                                  with a focus on biomolecules.
[51] C. Schulz, K. Schatz, M. Krone, M. Braun, T. Ertl, and D. Weiskopf,
     “Uncertainty visualization for secondary structures of proteins,” in 2018
     IEEE Pacific Visual. Symp., 2018, pp. 96–105.
[52] G. Grigoryan and P. Rheingans, “Point-based probabilistic surfaces to
     show surface uncertainty,” IEEE Trans. Vis. Comput. Graph., vol. 10, no. 5,                            Michael Krone (Member, IEEE) received the PhD
     pp. 564–573, Sep./Oct. 2004.                                                                           (Dr. rer. nat.) degree in computer science from
[53] L. C. Myers, G. L. Verdine, and G. Wagner, “Solution structure of the                                  the University of Stuttgart. He is a professor for
     DNA methyl phosphotriester repair domain of Escherichia coli ADA,”                                     Virtual and Augmented Reality Engineering with
     Biochemistry, vol. 32, no. 51, pp. 14089–14094, 1993.                                                  the Stuttgart University of Applied Sciences (HFT
[54] L. Myers, G. Verdine, and G. Wagner, “Solution structure of the DNA                                    Stuttgart). Previously, he was a junior professor with
     methylphosphotriester repair domain of Escherichia coli ADA,” 1994,                                    the University of Tübingen, a visiting Professor, New
     doi: 10.2210/pdb1adn/pdb.                                                                              York University (NYU), and a guest lecturer with the
[55] B. Jiang, A. Brown, and F. Ormeling, “Some perceptual aspects of                                       Ludwig Maximilian University of Munich (LMU).
     colouring uncertainty,” in Proc. Adv. GIS Res. II Int. Symp. Spatial Data                              His main research interests include visualization, vi-
     Handling, 1997, pp. 29–42.                                                                             sual analytics, immersive analytics, computer graph-
[56] A. M. MacEachren, R. E. Roth, J. O’Brien, B. Li, D. Swingley, and               ics, and human-computer interaction, especially visual analysis of molecular
     M. Gahegan, “Visual semiotics & uncertainty visualization: An empirical         and biomedical data.
     study,” IEEE Trans. Vis. Comput. Graph., vol. 18, no. 12, pp. 2496–2505,
     Dec. 2012.
[57] S. Lewandowsky, D. J. Herrmann, J. T. Behrens, S.-C. Li, L. Pickle, and J.
     B. Jobe, “Perception of clusters in statistical maps,” Appl. Cogn. Psychol.,                              Daniel Baum received the diploma degree from HUB
     vol. 7, no. 6, pp. 533–551, 1993.                                                                         and the PhD (Dr. rer. nat.) degree from Freie Uni-
[58] Y. Liu and J. Heer, “Somewhere over the rainbow: An empirical assessment                                  versität Berlin, Germany. He is head of the research
     of quantitative colormaps,” in Proc. 2018 CHI Conf. Hum. Factors Comput.                                  group Visual Data Analysis with Zuse Institute Berlin
     Syst., New York, NY, USA, 2018, pp. 1–12.                                                                 (ZIB). He studied computer science with Humboldt
[59] W. Humphrey, A. Dalke, and K. Schulten, “VMD–visual molecular dy-                                         University Berlin (HUB), Germany, and the Uni-
     namics,” J. Mol. Graph., vol. 14, pp. 33–38, 1996.                                                        versity of Edinburgh, Scotland. His main research
[60] E. F. Pettersen et al., “UCSF ChimeraX: Structure visualization for re-                                   interests are visualization and image analysis in quite
     searchers, educators, and developers,” Protein Sci.: A Pub. Protein Soc.,                                 diverse, interdisciplinary projects with biologists, me-
     vol. 30, no. 1, pp. 70–82, 2021.                                                                          teorologists, geoscientists, and ancient historians.
[61] M. Correll, D. Moritz, and J. Heer, “Value-suppressing uncertainty
     palettes,” in Proc. 2018 CHI Conf. Hum. Factors Comput. Syst., 2018,
     pp. 1–11.
[62] D. S. Goodsell and J. Jenkinson, “Molecular illustration in research and
     education: Past, present, and future,” J. Mol. Biol., vol. 430, no. 21,                                    Douglas W. Cunningham received the PhD degree
     pp. 3969–3981, 2018.                                                                                       in cognitive psychology from Temple University,
[63] D. S. Goodsell, L. Autin, and A. J. Olson, “Illustrate: Software for                                       Philadelphia, PA, USA, in 1997. He is a professor for
     biomolecular illustration,” Structure (London, England : 1993), vol. 27,                                   graphical systems with the Brandenburg University
     no. 11, pp. 1716–1720.e1, 2019.                                                                            of Technology Cottbus - Senftenburg, Germany. In
[64] D. S. Goodsell, C. Zardecki, H. M. Berman, and S. K. Burley, “Insights                                     2007 he received his habilitation (venia legendi) in
     from 20 years of the molecule of the month,” Biochem. Mol. Biol. Educ.,                                    Cognitive Sciences from the University of Tübingen,
     vol. 48, no. 4, pp. 350–355, 2020.                                                                         Germany. His research focuses on integrating knowl-
[65] A. Dasgupta, “Experts’ familiarity versus optimality of visualization de-                                  edge and methods from Psychology and Informatics,
     sign: How familiarity affects perceived and objective task performance,”                                   with particular emphasis on perception and computer
     in Cognitive Biases in Visualizations. Berlin, Germany: Springer, 2018,                                    graphics. His research focuses on Facial perception
     pp. 75–86.                                                                      and animation, natural and art image statistics, low-level dynamic event classi-
[66] M. J. Gardner and D. G. Altman, “Confidence intervals rather than p values:     fication, AI in Music, and Computational Aesthetics.
     Estimation rather than hypothesis testing,” BMJ (Clinical research ed.),
     vol. 292, no. 6522, pp. 746–750, 1986.
[67] P. Dragicevic, “Fair statistical communication in HCI,” in Modern Statis-
     tical Methods for HCI, Berlin, Germany: Springer, 2016, pp. 291–330.
[68] D. Cunningham and C. Wallraven, Experimental Design: From User                                            Kai Lawonn received the PhD degree in computer
     Studies to Psychophysics, 1st ed. Natick, MA, USA: A. K. Ltd Peters,                                      science from the University of Magdeburg (UoM).
     2011.                                                                                                     He is a professor for visualization with the University
[69] A. T. Pang, C. M. Wittenbrink, and S. K. Lodha, “Approaches to uncer-                                     of Jena. Formerly, he was an assistant professor with
     tainty visualization,” Vis. Compu., vol. 13, no. 8, pp. 370–390, 1997.                                    the University of Koblenz-Landau. He studied math-
[70] J. Hullman, P. Resnick, and E. Adar, “Hypothetical outcome plots outper-                                  ematics with the Freie University of Berlin in 2014. In
     form error bars and violin plots for inferences about reliability of variable                             2017, he received a habilitation (venia legendi) with
     ordering,” PLoS One, vol. 10, no. 11, 2015, Art. no. e0142444.                                            the UoM. His research interests are illustrative visu-
[71] S. Liu, J. A. Levine, P.-T. Bremer, and V. Pascucci, “Gaussian mixture                                    alizations for medical and biological applications.
     model based volume visualization,” in Proc. IEEE Symp. Large Data Anal.
     Visual., 2012, pp. 73–77.
