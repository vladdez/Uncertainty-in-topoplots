# Install the CRAN packages required by this analysis project.
#
# Run from the project root with:
#   Rscript install_dependencies.R

required_packages <- c(
  "countrycode",
  "data.table",
  "dplyr",
  "emmeans",
  "forcats",
  "ggbeeswarm",
  "ggplot2",
  "ggtext",
  "glmmTMB",
  "htmltools",
  "knitr",
  "lme4",
  "openxlsx",
  "ordinal",
  "pagedown",
  "patchwork",
  "purrr",
  "ragg",
  "reactable",
  "readr",
  "readxl",
  "rlang",
  "scales",
  "showtext",
  "stringr",
  "sysfonts",
  "tibble",
  "tidyr"
)

repos <- getOption("repos")
cran_repo <- unname(repos["CRAN"])

if (length(cran_repo) == 0L || is.na(cran_repo) || cran_repo == "@CRAN@") {
  repos["CRAN"] <- "https://cloud.r-project.org"
  options(repos = repos)
}

is_installed <- vapply(
  required_packages,
  requireNamespace,
  quietly = TRUE,
  FUN.VALUE = logical(1)
)
missing_packages <- required_packages[!is_installed]

if (length(missing_packages) > 0L) {
  message(
    "Installing missing packages into ",
    .libPaths()[1],
    ":\n- ",
    paste(missing_packages, collapse = "\n- ")
  )
  install.packages(missing_packages)
} else {
  message("All required packages are already installed.")
}

still_missing <- required_packages[
  !vapply(
    required_packages,
    requireNamespace,
    quietly = TRUE,
    FUN.VALUE = logical(1)
  )
]

if (length(still_missing) > 0L) {
  stop(
    "Failed to install: ",
    paste(still_missing, collapse = ", "),
    call. = FALSE
  )
}

message("Dependency check complete.")
