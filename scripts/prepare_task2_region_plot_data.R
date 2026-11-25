# Prepare Task 2 region-selection data for later plotting.
#
# Source this file from the project root. It creates:
#   - task2_region_responses: one row per participant trial;
#   - task2_region_plot_data: one row per pattern, visualization type, and
#     region, including regions that were never selected.
#
# `region` is the stable key for joining the exact polygon geometry. Region
# numbers are not converted to row/column coordinates because the experiment's
# authored polygon order is not a simple documented 8 x 8 traversal.
#
# The file intentionally does not create plots, pages, or exported artifacts.

task2_region_project_dir <- normalizePath(
  ".",
  winslash = "/",
  mustWork = TRUE
)

task2_region_data_path <- file.path(
  task2_region_project_dir,
  "data",
  "data_uncertain_topoplots_deidentified.csv"
)
task2_region_scores_path <- file.path(
  task2_region_project_dir,
  "regions.txt"
)

task2_region_required_files <- c(
  task2_region_data_path,
  task2_region_scores_path
)
task2_region_missing_files <- task2_region_required_files[
  !file.exists(task2_region_required_files)
]

if (length(task2_region_missing_files) > 0L) {
  stop(
    "Run this script from the analysis project root. Missing: ",
    paste(task2_region_missing_files, collapse = ", ")
  )
}

task2_vistype_levels <- c(
  "adjacent",
  "animation",
  "bivariate_corner",
  "bivariate_range",
  "triple_CI",
  "uncert_markers",
  "basic"
)
task2_vistype_labels <- c(
  adjacent = "Adjacent plots",
  animation = "Animation",
  bivariate_corner = "Bivariate corner",
  bivariate_range = "Bivariate range",
  triple_CI = "Confidence intervals",
  uncert_markers = "Uncertainty markers",
  basic = "Basic topoplot"
)
task2_pattern_levels <- c("MMN", "N170", "P3")

task2_get_field <- function(x, field) {
  stringr::str_match(
    x,
    paste0("(?:^|\\|)", field, "=([^|\\n]*)")
  )[, 2]
}

# Survey data and the analytic sample come from the shared setup, so this script
# cannot drift from the sample definition used on the analysis pages.
source(file.path(task2_region_project_dir, "scripts", "analysis_setup.R"))
task2_survey_raw <- survey_raw

task2_required_columns <- c(
  "STARTED",
  "TIME051",
  "A205_01",
  sprintf("A201_%02d", 1:21)
)
task2_missing_columns <- setdiff(
  task2_required_columns,
  names(task2_survey_raw)
)

if (length(task2_missing_columns) > 0L) {
  stop(
    "Missing required survey columns: ",
    paste(task2_missing_columns, collapse = ", ")
  )
}

# The shared analytic sample (analysis_setup.R: started on or after launch,
# reached page 51), with the same participant IDs as on the analysis pages.
task2_survey <- data

task2_design <- task2_survey |>
  dplyr::select(ID, A205_01) |>
  tidyr::separate_rows(A205_01, sep = "###") |>
  dplyr::filter(A205_01 != "") |>
  dplyr::transmute(
    ID = as.character(ID),
    trial = as.integer(task2_get_field(A205_01, "trial")),
    vistype = task2_get_field(A205_01, "vistype"),
    pattern = task2_get_field(A205_01, "pattern"),
    subject = as.integer(task2_get_field(A205_01, "subject")),
    stimulus = task2_get_field(A205_01, "stim"),
    input_id = task2_get_field(A205_01, "inputId")
  )

task2_selected_regions <- task2_survey |>
  dplyr::select(ID, dplyr::all_of(sprintf("A201_%02d", 1:21))) |>
  tidyr::pivot_longer(
    -ID,
    names_to = "input_id",
    values_to = "selected_region"
  ) |>
  dplyr::mutate(ID = as.character(ID))

task2_score_text <- paste(
  readLines(task2_region_scores_path, encoding = "UTF-8"),
  collapse = "\n"
)
task2_score_matches <- stringr::str_match_all(
  task2_score_text,
  '"([^"]+)"\\s*=>\\s*array\\(([^)]*)\\)'
)[[1]]

if (nrow(task2_score_matches) == 0L) {
  stop("No region-score entries could be parsed from regions.txt.")
}

task2_region_scores <- tibble::tibble(
  stimulus = task2_score_matches[, 2],
  values = task2_score_matches[, 3]
) |>
  tidyr::separate_rows(values, sep = ",\\s*") |>
  dplyr::group_by(stimulus) |>
  dplyr::mutate(
    region_number = dplyr::row_number(),
    score = as.numeric(values)
  ) |>
  dplyr::ungroup() |>
  dplyr::transmute(
    stimulus,
    region_number,
    region = sprintf("R%02d", region_number),
    score
  )

task2_score_counts <- task2_region_scores |>
  dplyr::count(stimulus, name = "n_regions")

if (any(task2_score_counts$n_regions != 64L)) {
  stop("Every stimulus in regions.txt must have exactly 64 region scores.")
}

task2_region_responses <- task2_design |>
  dplyr::left_join(
    task2_selected_regions,
    by = c("ID", "input_id")
  ) |>
  dplyr::mutate(
    region_number = as.integer(readr::parse_number(selected_region)),
    region = sprintf("R%02d", region_number)
  ) |>
  dplyr::left_join(
    task2_region_scores,
    by = c("stimulus", "region_number", "region")
  ) |>
  dplyr::transmute(
    ID = factor(ID),
    trial,
    vistype = factor(vistype, levels = task2_vistype_levels),
    vistype_label = unname(task2_vistype_labels[as.character(vistype)]),
    pattern = factor(pattern, levels = task2_pattern_levels),
    subject,
    stimulus,
    region_number,
    region,
    score
  )

task2_incomplete_responses <- task2_region_responses |>
  dplyr::filter(
    is.na(vistype) |
      is.na(pattern) |
      is.na(region_number) |
      !dplyr::between(region_number, 1L, 64L) |
      is.na(score)
  )

if (nrow(task2_incomplete_responses) > 0L) {
  stop(
    nrow(task2_incomplete_responses),
    " Task 2 responses have missing or invalid plotting fields."
  )
}

task2_cell_counts <- task2_region_responses |>
  dplyr::count(ID, pattern, vistype, name = "n_trials")

if (
  nrow(task2_cell_counts) !=
    dplyr::n_distinct(task2_region_responses$ID) *
      length(task2_pattern_levels) *
      length(task2_vistype_levels) ||
  any(task2_cell_counts$n_trials != 1L)
) {
  stop("Expected one Task 2 trial per participant, pattern, and visualization type.")
}

task2_panel_totals <- task2_region_responses |>
  dplyr::count(pattern, vistype, name = "n_trials")

# Balanced data for a 3 x 7 series of 64-region plots. Zero-selection regions
# are retained so all panels have an identical spatial structure.
task2_region_plot_data <- task2_region_responses |>
  dplyr::group_by(pattern, vistype, region_number) |>
  dplyr::summarise(
    n_selected = dplyr::n(),
    mean_selected_score = mean(score),
    .groups = "drop"
  ) |>
  tidyr::complete(
    pattern = factor(task2_pattern_levels, levels = task2_pattern_levels),
    vistype = factor(task2_vistype_levels, levels = task2_vistype_levels),
    region_number = 1:64,
    fill = list(n_selected = 0L)
  ) |>
  dplyr::left_join(
    task2_panel_totals,
    by = c("pattern", "vistype")
  ) |>
  dplyr::mutate(
    vistype_label = unname(task2_vistype_labels[as.character(vistype)]),
    region = sprintf("R%02d", region_number),
    selection_proportion = n_selected / n_trials
  ) |>
  dplyr::arrange(pattern, vistype, region_number) |>
  dplyr::select(
    pattern,
    vistype,
    vistype_label,
    region_number,
    region,
    n_selected,
    n_trials,
    selection_proportion,
    mean_selected_score
  )

task2_plot_panel_checks <- task2_region_plot_data |>
  dplyr::group_by(pattern, vistype) |>
  dplyr::summarise(
    n_regions = dplyr::n(),
    selected_total = sum(n_selected),
    trial_total = dplyr::first(n_trials),
    proportion_total = sum(selection_proportion),
    .groups = "drop"
  )

stopifnot(
  nrow(task2_region_plot_data) ==
    length(task2_pattern_levels) * length(task2_vistype_levels) * 64L,
  all(task2_plot_panel_checks$n_regions == 64L),
  all(task2_plot_panel_checks$selected_total == task2_plot_panel_checks$trial_total),
  all(abs(task2_plot_panel_checks$proportion_total - 1) < 1e-12)
)
