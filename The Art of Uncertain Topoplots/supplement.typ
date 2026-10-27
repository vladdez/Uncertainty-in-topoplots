#import "@preview/ieee-vgtc:0.0.4": journal

// Keep all supplementary content in this separate document.
#show: journal.with(
  review: false,
  submission-id: 0000,
  category: "Supplementary Material",
  title: [The Art of Uncertain Topoplots: Designing and Evaluating Uncertainty
    Visualizations for EEG/ERP Data],
  abstract: [TODO: Supplementary-material overview],
  authors: (
    (
      name: "Vladimir Mikheev",
      organization: [Computational Cognitive Science, Institute for Visualization and Interactive Systems (VIS), University of Stuttgart, Stuttgart, Germany],
      orcid: "0000-0002-4738-6655",
    ),
    (
      name: "Daniel Weiskopf",
      organization: [Visualization Research Center (VISUS) and Institute for Visualization and Interactive Systems (VIS), University of Stuttgart, Stuttgart, Germany],
      orcid: "0000-0003-1174-1026",
    ),
    (
      name: "Benedikt Ehinger",
      organization: [Computational Cognitive Science, Institute for Visualization and Interactive Systems (VIS), Stuttgart Center for Simulation Science (SC SimTech), University of Stuttgart, Stuttgart, Germany],
      orcid: "0000-0002-6276-3332",
    ),
  ),
  index-terms: ("TODO: Supplementary Material",),
  teaser: (
    image: box(),
    caption: none,
  ),
)

= Supplementary Material

#set figure(numbering: n => [S#n])

#figure(
  kind: table,
  caption: [Semi-structured interview guide used in nine qualitative interviews.],
  table(
    columns: (auto, 1fr),
    align: (center, left),
    inset: (x: 6pt, y: 5pt),
    stroke: 0.4pt + luma(210),

  table.header(
    [*ID*],
    [*Interview question*],
  ),

  table.cell(colspan: 2, fill: luma(240))[*Warm-up*],

  [Q1], [Could you briefly describe your background in EEG/ERP research?],

  [Q2], [What types of EEG visualizations do you most commonly use in your work, and for what purposes?],

  table.cell(colspan: 2, fill: luma(240))[*Thinking About Uncertainty*],

  [Q3], [When you think about quantifying uncertainty in EEG or ERP data, what kinds of methods come to mind?],

  [Q4], [Do you currently include uncertainty information when you visualize EEG/ERP data? If so, what type of uncertainty do you include, and why?],

  table.cell(colspan: 2, fill: luma(240))[*Use of Topoplots*],

  [Q5], [At what stages of your research do you use topoplots, and for which audiences?],

  [Q6], [When you create a topoplot, what purposes does it serve?],

  [Q7], [Why do you think other researchers use topoplots?],

  table.cell(colspan: 2, fill: luma(240))[*Uncertainty in Topoplots*],

  [Q8], [Do you ever show uncertainty in topoplots specifically? If not, why not?],

  [Q9], [If you wanted to show uncertainty in a topoplot, how might you visualize it?],

  table.cell(colspan: 2, fill: luma(240))[*Value and Barriers*],

  [Q10], [Do you think visualizing uncertainty in topoplots would be helpful? Why or why not?],

  [Q11], [Why do you think many researchers currently do not include uncertainty in their topoplots?],

  table.cell(colspan: 2, fill: luma(240))[*Future Needs*],

  [Q12], [Is there anything you wish topoplot tools did better?],

  [Q13], [What requirements would an ideal topoplot need to meet?],

  table.cell(colspan: 2, fill: luma(240))[*Closing*],

    [Q14], [Is there anything I did not ask about that you think is important regarding topoplots or uncertainty visualization?],
  ),
) <tab:interview-guide>
