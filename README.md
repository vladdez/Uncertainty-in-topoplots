# Uncertainty in topoplots

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
Subjective evaluation, and Publication figures pages. Shared data preparation
is defined in `_analysis_setup.R`, and the analysis sections are stored in
`_sections/`.

## Reproducing the analysis

Open `Analysis.Rproj` in RStudio and render the website, or run:

```sh
quarto render
```

The five pages can also be rendered individually:

```sh
quarto render index.qmd
quarto render task1.qmd
quarto render task2.qmd
quarto render subjective.qmd
quarto render figures.qmd
```

Task 1 and Task 2 regenerate their publication PNGs automatically. Other
optional standalone exports remain disabled during normal website rendering.

The analysis uses R packages including `dplyr`, `ggplot2`, `tidyr`, `forcats`,
`lme4`, `glmmTMB`, `ordinal`, `emmeans`, `purrr`, `patchwork`, `showtext`, and
`sysfonts`.

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
