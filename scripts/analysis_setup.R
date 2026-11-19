library(dplyr)
library(ggplot2)
library(forcats)
library(tidyr)
library(glmmTMB)
library(emmeans)
library(ordinal)
library(purrr)
library(lme4)
library(patchwork)

analysis_project_dir <- normalizePath(".", winslash = "/")
project_path <- function(...) file.path(analysis_project_dir, ...)

sysfonts::font_add_google("Lato", family = "Lato")
showtext::showtext_auto()

# showtext draws text relative to its own dpi setting. Figures were designed with
# showtext at 96 dpi on 180-dpi devices, so text renders at 96/180 of its nominal
# size; all font sizes on the site assume that ratio.
# Web figures now render at 2x (fig-retina: 2 in _quarto.yml, device 360 dpi) for
# sharper text, so showtext's dpi is doubled too, keeping the same ratio.
showtext::showtext_opts(dpi = 96 * 2)

# Exported figures (ggsave at 180 dpi) keep the original 96 setting, so their
# output is unchanged. Use ggsave_st() instead of ggsave().
ggsave_st <- function(...) {
  old_dpi <- showtext::showtext_opts()$dpi
  showtext::showtext_opts(dpi = 96)
  on.exit(showtext::showtext_opts(dpi = old_dpi), add = TRUE)
  ggplot2::ggsave(...)
}

dir.create(project_path("figures"), showWarnings = FALSE)

vistypes <- c(
  "adjacent", "animation", "bivariate_corner", "bivariate_range",
  "triple_CI", "uncert_markers", "basic"
)

vistype_labels <- c(
  adjacent = "Adjacent plots",
  animation = "Animation",
  bivariate_corner = "Bivariate corner",
  bivariate_range = "Bivariate range",
  triple_CI = "Confidence\nintervals",
  uncert_markers = "Uncertainty\nmarkers",
  basic = "Basic topoplot"
)

table_vistype <- function(x) {
  raw_labels <- as.character(x)
  display_labels <- stringr::str_replace_all(vistype_labels, "\n", " ")
  matched_labels <- unname(display_labels[raw_labels])

  ifelse(is.na(matched_labels), raw_labels, matched_labels)
}

table_contrast <- function(x) {
  stringr::str_split(as.character(x), " - ") |>
    purrr::map_chr(
      \(parts) paste(table_vistype(parts), collapse = " vs ")
    )
}

kable_table_attributes <-
  "class='table table-striped table-hover table-sm'"

model_table_note <- function(text, label = "Model") {
  knitr::asis_output(
    paste0(
      "\n<div class=\"model-table-note\" role=\"note\"><strong>",
      label,
      ":</strong> ",
      text,
      "</div>\n"
    )
  )
}

format_pvalue_html <- function(
  p,
  threshold = 0.05,
  digits = 3,
  eps = 0.001
) {
  formatted <- format.pval(p, digits = digits, eps = eps)
  significant <- !is.na(p) & p < threshold

  formatted[significant] <- sprintf(
    '<span style="color:#B2182B;font-weight:700">%s</span>',
    formatted[significant]
  )

  formatted
}

plot_theme <- function(base_size = 20) {
  theme_classic(base_size = base_size) +
    theme(
      plot.title = element_text(hjust = 0.5, face = "bold", size = 22),
      axis.ticks.y = element_blank()
    )
}

remove_group_iqr_outliers <- function(df, value, group) {
  value <- rlang::enquo(value)
  group <- rlang::enquo(group)

  df %>%
    group_by(!!group) %>%
    mutate(
      .q1 = quantile(!!value, 0.25, na.rm = TRUE),
      .q3 = quantile(!!value, 0.75, na.rm = TRUE),
      .iqr = .q3 - .q1
    ) %>%
    filter(
      !!value >= .q1 - 1.5 * .iqr,
      !!value <= .q3 + 1.5 * .iqr
    ) %>%
    ungroup() %>%
    select(-.q1, -.q3, -.iqr)
}

get_field <- function(x, field) {
  stringr::str_match(
    x,
    paste0("(?:^|\\|)", field, "=([^|\\n]*)")
  )[, 2]
}

# De-identified copy of the SoSci export, written by scripts/deidentify_survey.R
# (same rows and columns as the private export; row 1 = variable labels).
survey_raw <- readr::read_delim(
  project_path("data", "data_uncertain_topoplots_deidentified.csv"),
  delim = ";",
  locale = readr::locale(encoding = "UTF-8"),
  col_types = readr::cols(.default = readr::col_character()),
  name_repair = "minimal",
  show_col_types = FALSE,
  progress = FALSE
)

legend <- survey_raw %>% dplyr::slice(1)

required_columns <- c("STARTED", "TIME051", "TIME_SUM", "A001")
missing_columns <- setdiff(required_columns, names(survey_raw))
if (length(missing_columns) > 0) {
  stop("Missing required columns: ", paste(missing_columns, collapse = ", "))
}

data_full <- survey_raw
data <- survey_raw %>%
  dplyr::slice(-1) %>%
  filter(as.Date(STARTED) >= as.Date("2026-07-24")) %>%
  filter(!is.na(readr::parse_number(TIME051))) %>%
  select(-(1:5)) %>%
  mutate(ID = row_number(), .before = 1)

configure_analysis_cache <- function(extra_files = character()) {
  inputs <- c(
    project_path("data", "data_uncertain_topoplots_deidentified.csv"),
    project_path("scripts", "analysis_setup.R"),
    extra_files
  )
  if (!all(file.exists(inputs))) {
    stop("Missing cache input: ", paste(inputs[!file.exists(inputs)], collapse = ", "))
  }
  knitr::opts_chunk$set(
    cache.extra = unname(tools::md5sum(inputs)),
    autodep = TRUE
  )
}

configure_analysis_cache()
