# Uncertainty in topoplots

Analysis code for an online study with EEG/ERP researchers comparing seven ways of
showing uncertainty in topoplots.

**Website:** <https://vladdez.github.io/Uncertainty-in-topoplots/> — results, figures and
the audit of the analysis.

## Contents

| Folder | What it holds |
|---|---|
| `pages/` | One Quarto page per analysis (sample, tasks, time, ratings, feedback, figures) |
| `scripts/` | Shared setup (`analysis_setup.R`), trial reconstruction, data checks |
| `data/` | De-identified survey export and the feedback coding workbook |
| `figures/` | Exported figures |
| `reports/` | Audit of the analysis (rendered to `audit/`) |
| `docs/` | Rendered website (GitHub Pages) |

## Run

```sh
Rscript install_dependencies.R
quarto render
```

## Data

The analysis reads `data/data_uncertain_topoplots_deidentified.csv`: the SoSci Survey
export with invitation fields blanked, timestamps reduced to dates and email addresses
removed. The original export is not included.

## License

[MIT](LICENSE)
