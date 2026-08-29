# Uncertainty in topoplots

<p align="center">
  <strong>How should uncertainty be communicated in topographic visualizations?</strong>
</p>

<p align="center">
  <a href="https://vladdez.github.io/Uncertainty-in-topoplots/">
    <img src="https://img.shields.io/badge/Explore_the_interactive_analysis-View_website-2563EB?style=for-the-badge&amp;logo=githubpages&amp;logoColor=white" alt="Explore the interactive analysis website">
  </a>
</p>

<p align="center">
  Browse the sample description, task results, subjective evaluations, and
  publication-ready figures.
</p>

This repository contains the R/Quarto analysis for a study investigating how
different visual representations of uncertainty influence the interpretation
of topographic plots (topoplots).

The study compares seven visualization types:

- adjacent plots;
- animation;
- bivariate corner;
- bivariate range;
- confidence intervals;
- uncertainty markers; and
- a basic topoplot.

## Analysis

The analysis includes:

- participant characteristics;
- accuracy and completion time for comparison and detection tasks;
- mixed-effects models and model-estimated contrasts;
- subjective ratings of helpfulness and aesthetic appeal; and
- summaries of open-ended participant feedback.

The website analysis is organized into separate Sample, Task 1, Task 2,
Subjective evaluation, Open-ended feedback, and Publication figures pages.
Each complete page analysis is stored directly in its corresponding file under
`pages/`, so no additional include file needs to be located. Shared data
preparation is defined in `scripts/analysis_setup.R`; the homepage remains at
`index.qmd`.

## Reproducing the analysis

Open `Analysis.Rproj` in RStudio and render the website, or run:

```sh
quarto render
```

The pages can also be rendered individually:

```sh
quarto render index.qmd
quarto render pages/sample.qmd
quarto render pages/task1.qmd
quarto render pages/task2.qmd
quarto render pages/subjective.qmd
quarto render pages/feedback.qmd
quarto render pages/figures.qmd
```

Task 1 and Task 2 regenerate their publication PNGs automatically. Other
optional standalone exports remain disabled during normal website rendering.

The analysis uses R packages including `dplyr`, `ggplot2`, `tidyr`, `forcats`,
`lme4`, `glmmTMB`, `ordinal`, `emmeans`, `purrr`, `patchwork`, `showtext`,
`sysfonts`, and `ragg`.

## Data availability

The raw survey data and participant feedback are not included in this
repository because they may contain sensitive research information. To run the
complete analysis, an authorized researcher must place the source data file in
the project directory as `data_uncertain_topoplots.csv`.

The rendered website is generated in `docs/` and is included in version
control for publication with GitHub Pages. It contains the figure gallery and
the complete rendered analysis, including respondent-level output and
open-ended feedback. Standalone feedback exports and local R/RStudio state
remain excluded.

## Website

Render the site locally with:

```sh
quarto render
```

The generated site is written to `docs/`. In the GitHub repository settings,
open **Pages**, select **Deploy from a branch**, and choose the `main` branch
and `/docs` folder. The published site will then be available at:

<https://vladdez.github.io/Uncertainty-in-topoplots/>

## License

The code in this repository is available under the [MIT License](LICENSE).
