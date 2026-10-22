Analyze the open-ended responses to survey item `A305_01`, which contains
participants' feedback about the uncertainty visualizations used in the study.
Exclude missing, blank, and non-substantive responses.

For each eligible response:

1. Divide the response into evaluative meaning units. Each meaning unit should
   express one coherent evaluation of a visualization or visual-encoding
   feature. If a sentence evaluates different visualizations or different
   aspects of a visualization, split it into separate meaning units.
2. Retain the participant's wording as closely as possible in the `Meaning
   unit` field. Do not improve, paraphrase, or correct the wording merely for
   style. Enclose the retained wording in parentheses and quotation marks.
3. Assign each meaning unit to the visualization it evaluates, using only one
   of these labels:
   - `Basic`
   - `Adjacent`
   - `Bivariate corner`
   - `Bivariate range`
   - `Confidence interval`
   - `Uncertainty markers`
   - `Animation`
   - `General bivariates`
4. Use `General bivariates` only when the response evaluates bivariate plots in
   general and does not identify the corner or range variant. Do not infer a
   specific variant when the participant has not identified one.
5. Assign one primary theme to each meaning unit using only the codebook below.
   Use the theme that best represents the main focus of the unit. Do not create
   new themes.
6. Assign an evaluation intensity to every included meaning unit:
   - `-2`: strongly negative
   - `-1`: negative
   - `0`: neutral or mixed
   - `+1`: positive
   - `+2`: strongly positive
7. Code the expressed strength of the evaluation, not the presumed importance
   of the topic. Do not infer sentiment that is not supported by the text.
8. Exclude proposed redesigns or suggestions that do not evaluate a displayed
   visualization. If a redesign or suggestion also expresses an evaluation,
   include only the evaluative meaning unit and code its intensity.
9. Preserve ambiguity where necessary. Do not infer a visualization, variant,
   theme, or evaluation that is not supported by the participant's response.
10. Produce one row per meaning unit with exactly these columns, in this order:
    `ID`, `Visualization`, `Meaning unit`, `Theme`, and
    `Evaluation intensity`.
11. Preserve all previously coded rows unchanged when updating an existing
    analysis. Add only uncoded responses or participants, sort the completed
    table by participant `ID`, and report the number of added meaning units,
    total meaning units, and unique participants.

Theme codebook:

- `Accessibility`: usability across color vision, devices, or other viewer
  needs.
- `Aesthetics`: visual attractiveness, cleanliness, or perceived ugliness.
- `Information integration`: how well multiple quantities are combined without
  obscuring one another.
- `Informativeness`: amount or usefulness of information communicated.
- `Interpretability`: ease or difficulty of understanding what the
  visualization means.
- `Learnability`: whether interpretation becomes easier with exposure or
  practice.
- `Legend/color mapping`: clarity and intuitiveness of colors, scales, and
  their legends.
- `Medium compatibility`: suitability for print, papers, presentations,
  screens, or animation.
- `Preference`: an explicit choice, ranking, liking, or dislike.
- `Reading effort`: time, attention, or cognitive effort required to extract
  information.
- `SNR visibility`: how clearly signal-to-noise ratio or uncertainty can be
  identified.
- `Space/scalability`: figure size, visual density, or ability to accommodate
  multiple plots.
- `Task suitability`: usefulness for a particular analytical or comparison
  task.

Read the responses from `A305_01` in `data/data_uncertain_topoplots.csv`. Save the
completed table to the `A305 content analysis` worksheet in
`data/a305_content_analysis.xlsx`.
