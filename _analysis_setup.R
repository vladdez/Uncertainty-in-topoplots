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

sysfonts::font_add_google("Lato", family = "Lato")
showtext::showtext_auto()

dir.create("figures", showWarnings = FALSE)

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

survey_raw <- read.csv2(
  "data_uncertain_topoplots.csv",
  fileEncoding = "UTF-16LE",
  check.names = FALSE
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
  filter(!is.na(suppressWarnings(as.numeric(TIME051)))) %>%
  select(-(1:5)) %>%
  mutate(ID = row_number(), .before = 1)
