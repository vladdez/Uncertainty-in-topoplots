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

# Print figures (audit V7): vector PDFs laid out at their final size in the
# journal (IEEE VGTC template, US letter, 54 pt side margins, 2 columns with a
# 12.24 pt gutter): full width 504 pt = 7 in, one column about 246 pt. Body text
# is 9 pt and captions 8 pt, so print figures use 8 pt text (7 pt for tick and
# value labels) and carry no title: the caption is the title (Wilke ch. 22).
print_width <- c(full = 504 / 72, column = 246 / 72)  # inches
print_text <- list(text = 8, small = 7)               # pt

# Save a print PDF with Lato embedded as a real font (selectable text).
# showtext would draw the text as outlines, so it is switched off here and the
# Cairo device uses Lato directly. On Windows R's Cairo devices find fonts
# through GDI; if Lato is not installed, the Lato files that
# sysfonts::font_add_google() downloaded are registered with GDI for the
# duration of the export and removed again (nothing is installed). Elsewhere,
# without an installed Lato, the export falls back to showtext outlines.
ggsave_print <- function(filename, plot, width, height) {
  lato_installed <- "Lato" %in% systemfonts::system_fonts()$family
  lato_files <- character()
  if (!lato_installed && .Platform$OS.type == "windows") {
    ttf <- list.files(tempdir(), "[.]ttf$", full.names = TRUE)
    if (length(ttf) > 0) {
      lato_files <- ttf[systemfonts::font_info(path = ttf)$family == "Lato"]
    }
  }
  if (lato_installed || length(lato_files) > 0) {
    if (length(lato_files) > 0) {
      gdi <- file.path(Sys.getenv("SystemRoot"), "System32", "gdi32.dll")
      if (!is.loaded("AddFontResourceA", PACKAGE = "gdi32")) dyn.load(gdi)
      c_path <- function(path) c(charToRaw(normalizePath(path)), as.raw(0))
      for (f in lato_files) .C("AddFontResourceA", c_path(f), PACKAGE = "gdi32")
      on.exit(
        for (f in lato_files) .C("RemoveFontResourceA", c_path(f), PACKAGE = "gdi32"),
        add = TRUE
      )
    }
    showtext::showtext_auto(FALSE)
    on.exit(showtext::showtext_auto(), add = TRUE)
  } else {
    message("Lato is not installed: ", basename(filename), " gets outlined text.")
  }
  ggplot2::ggsave(
    filename, plot,
    width = width, height = height, units = "in",
    device = grDevices::cairo_pdf, bg = "white"
  )
}

# Sizes of the dot-and-interval figures (estimates and contrasts by
# visualization, Tasks 1 and 2): the site version (nominal sizes, drawn at 96/180
# of nominal by showtext; see above) or the print version (true pt; label and
# point sizes in mm as ggplot2 expects).
interval_figure_sizes <- function(print = FALSE) {
  if (print) {
    list(base = print_text$text, axis_y = print_text$text, axis_x = print_text$small,
         label = print_text$small / ggplot2::.pt, caption = print_text$text,
         point = 1.5, line = 0.4, margin = 4)
  } else {
    list(base = 20, axis_y = 24, axis_x = 20, label = 5.5, caption = 20,
         point = 3, line = 0.55, margin = 12)
  }
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

# Figures (audit V5, V6): every figure names the visualizations with the same
# labels and shows Basic topoplot, the reference, in the same blue accent.
basic_accent <- "#377EB8"
basic_accent_fill <- "#B9D8F2"

# Figure label of a visualization: the one-line name from table_vistype(), or with
# stacked = TRUE one word per line, for narrow columns on a horizontal axis.
figure_vistype <- function(x, stacked = FALSE) {
  labels <- table_vistype(x)
  if (stacked) labels <- sub(" ", "\n", labels, fixed = TRUE)
  labels
}

# Axis-label colours: the accent for Basic topoplot, `other` for the rest. Use
# with figure_vistype() labels and element_text(colour = ...), in the order of
# the axis breaks. (ggtext is not used for these labels: with showtext it draws
# the spaces between words too narrow.)
vistype_label_colours <- function(x, other = "#222222") {
  ifelse(as.character(x) == "basic", basic_accent, other)
}

# The same labels as ggtext markdown, with Basic topoplot in the accent colour,
# for use with ggtext::element_markdown(). Only for stacked labels (one word per
# line, no spaces; see vistype_label_colours()).
markdown_vistype <- function(x, stacked = FALSE) {
  labels <- gsub("\n", "<br>", figure_vistype(x, stacked), fixed = TRUE)
  ifelse(
    as.character(x) == "basic",
    sprintf("<span style='color:%s'>%s</span>", basic_accent, labels),
    labels
  )
}

# Axis caption "<prefix> Basic topoplot" under a contrast figure, with the
# accent on Basic topoplot, as in the contrast figures of the main results.
# Stack it under the plot with patchwork: plot / basic_axis_caption(...).
basic_axis_caption <- function(prefix, size = 20) {
  # The whole caption ("<prefix> Basic topoplot") is centred under the panel:
  # the two pieces' positions are computed at draw time from their real widths,
  # so the centre is the middle of the full text, not the join between pieces.
  # Stacked under a plot with patchwork, this panel lines up with the plot's.
  prefix_grob <- grid::textGrob(
    prefix,
    gp = grid::gpar(fontfamily = "Lato", fontsize = size, col = "#222222")
  )
  basic_grob <- grid::textGrob(
    "Basic topoplot",
    gp = grid::gpar(fontfamily = "Lato", fontsize = size, col = basic_accent)
  )
  gap <- grid::unit(0.28 * size, "points")
  total <- grid::grobWidth(prefix_grob) + gap + grid::grobWidth(basic_grob)
  # Centred under the panel; if the text is wider than the panel (narrow print
  # column), it ends at the panel's right edge instead of running off the page.
  start <- grid::unit.pmin(
    grid::unit(0.5, "npc") - 0.5 * total,
    grid::unit(1, "npc") - total
  )
  caption <- grid::grobTree(
    grid::editGrob(prefix_grob, x = start, hjust = 0),
    grid::editGrob(
      basic_grob,
      x = start + grid::grobWidth(prefix_grob) + gap,
      hjust = 0
    )
  )
  ggplot() +
    annotation_custom(caption) +
    coord_cartesian(xlim = c(0, 1), ylim = c(0, 1), clip = "off") +
    theme_void()
}

# Value label beside its point, on the side away from zero, so labels never
# straddle the dashed zero line of a contrast figure. Use as
# geom_text(aes(hjust = side_away_from_zero(difference)), nudge_x = ...).
side_away_from_zero <- function(x) ifelse(x >= 0, -0.15, 1.15)

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

# Shared figure theme: theme_classic in Lato (the site's one typeface, Wilke
# ch. 21) with the shared title style. Chunks add their own theme() on top.
plot_theme <- function(base_size = 20) {
  theme_classic(base_size = base_size, base_family = "Lato") +
    theme(
      plot.title = element_text(hjust = 0.5, face = "bold", size = 22)
    )
}

# Probabilities (binomial) or means (beta) of a logit-link glmmTMB model with
# scalar random intercepts, per visualization: averaged equally over ERP patterns
# at the middle presentation position.
# - marginal: random intercepts integrated out (their independent normal
#   intercepts sum to one normal with the summed variance), i.e. the expected
#   rate for a new participant, stimulus and image. This is the value to report,
#   as for the Task 2 expected score (Gelman, Hill & Vehtari 2020, sec. 14.4).
# - conditional: random intercepts set to zero (a typical participant and image),
#   which is what emmeans(type = "response") returns.
# Intervals: 2.5th and 97.5th percentiles over draws of all fixed parameters
# (coefficients and random-intercept SDs) from their joint sampling distribution.
marginal_response_by_vistype <- function(model, n_draws = 4000, seed = 20261118) {
  re_terms <- model$modelInfo$reTrms$cond$cnms
  stopifnot(
    family(model)$link == "logit",
    all(vapply(re_terms, \(x) identical(x, "(Intercept)"), logical(1)))
  )
  grid <- emmeans::ref_grid(model, at = list(position_c = 0))
  x <- grid@linfct
  rows <- grid@grid
  par <- model$fit$par
  is_beta <- names(par) == "beta"
  is_theta <- names(par) == "theta"
  stopifnot(ncol(x) == sum(is_beta), sum(is_theta) == length(re_terms))
  nodes <- qnorm((seq_len(201) - 0.5) / 201)

  from_par <- function(p) {
    eta <- drop(x %*% p[is_beta])
    re_sd <- sqrt(sum(exp(2 * p[is_theta])))
    tibble::tibble(
      vistype = rows$vistype,
      conditional = plogis(eta),
      marginal = rowMeans(plogis(outer(eta, re_sd * nodes, `+`)))
    ) |>
      dplyr::group_by(vistype) |>
      dplyr::summarise(
        dplyr::across(c(conditional, marginal), mean),
        .groups = "drop"
      )
  }

  set.seed(seed)
  draws <- MASS::mvrnorm(n_draws, par, model$sdr$cov.fixed)
  purrr::map_dfr(seq_len(n_draws), \(i) from_par(draws[i, ])) |>
    dplyr::group_by(vistype) |>
    dplyr::summarise(
      marginal_lower = quantile(marginal, 0.025),
      marginal_upper = quantile(marginal, 0.975),
      conditional_lower = quantile(conditional, 0.025),
      conditional_upper = quantile(conditional, 0.975),
      .groups = "drop"
    ) |>
    dplyr::left_join(from_par(par), by = "vistype")
}

# Numbers quoted in the manuscript and supplement (Typst reads them with
# json("numbers.json")). Each page writes its own section when it renders, so
# a data refresh only needs a re-render and a recompile. Values that appear in
# prose are stored already formatted (strings), counts also as integers.
manuscript_numbers_path <- project_path("The Art of Uncertain Topoplots", "numbers.json")

write_manuscript_numbers <- function(section, values) {
  numbers <- if (file.exists(manuscript_numbers_path)) {
    jsonlite::read_json(manuscript_numbers_path)
  } else {
    list()
  }
  numbers[[section]] <- values
  numbers <- numbers[order(names(numbers))]
  jsonlite::write_json(
    numbers, manuscript_numbers_path,
    auto_unbox = TRUE, pretty = TRUE, digits = NA, null = "null"
  )
  invisible(values)
}

# "five" for 0-10, digits above (manuscript style for counts in prose).
number_word <- function(n) {
  words <- c("zero", "one", "two", "three", "four", "five", "six", "seven",
             "eight", "nine", "ten")
  ifelse(n >= 0 & n <= 10 & n == round(n), words[n + 1], format(n, big.mark = ","))
}

# APA-style p value without the leading zero: ".024", "< .001".
p_text <- function(p) {
  ifelse(p < .001, "< .001", sub("^0", "", sprintf("%.3f", p)))
}

# Signed number with a real minus sign: "+1.0", "−4.8".
signed_text <- function(x, digits = 1) {
  out <- sprintf(paste0("%+.", digits, "f"), x)
  sub("^-", "−", out)
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
  # Reached page 51, the last questionnaire page (pages 52-53: optional raffle).
  filter(!is.na(readr::parse_number(TIME051))) %>%
  # CASE is SoSci Survey's record number: stable across exports, unlike ID
  # (a row position after the filters). The A305 coding workbook is keyed on it.
  mutate(CASE = as.integer(CASE)) %>%
  select(-c(SERIAL, REF, QUESTNNR, MODE)) %>%
  mutate(ID = row_number(), .before = 1)
stopifnot(!anyNA(data$CASE), !anyDuplicated(data$CASE))

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
