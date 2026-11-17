# Export Task 2 hit/miss data for the Makie grid topoplots.
#
# Run from the analysis project root:
#   Rscript scripts/export_task2_hits_misses.R [makie_data_dir]
#
# makie_data_dir defaults to the Makie project in the UnfoldMakie worktree
# (branch uncert_bus, PR #427). Only the aggregated region and stimulus files
# are copied there; the anonymised trial-level file stays in this project.
#
# A response is a hit when the selected region has score 1 (the strongest region
# of that stimulus after min-max normalization); every other response is a miss.
# One stimulus has two regions tied at 1.00, so both count as correct there.
#
# Writes:
#   data/task2_hits_misses_trials.csv  - one row per participant trial, with the
#                                        selected region and correct region(s).
#   data/task2_hits_misses_regions.csv - one row per pattern x vistype x region
#                                        (64 regions, zero rows kept): where
#                                        hits and misses landed, and how often
#                                        the region was the correct answer.

source(file.path("scripts", "prepare_task2_region_plot_data.R"))

task2_correct_regions <- task2_region_scores |>
  dplyr::filter(score == 1) |>
  dplyr::group_by(stimulus) |>
  dplyr::summarise(
    correct_regions = paste(region_number, collapse = ";"),
    n_correct_regions = dplyr::n(),
    .groups = "drop"
  )

stopifnot(
  dplyr::n_distinct(task2_region_scores$stimulus) == nrow(task2_correct_regions)
)

task2_hm_trials <- task2_region_responses |>
  dplyr::left_join(task2_correct_regions, by = "stimulus") |>
  dplyr::mutate(
    hit = score == 1,
    outcome = dplyr::if_else(hit, "hit", "miss")
  ) |>
  dplyr::transmute(
    ID,
    trial,
    pattern,
    vistype,
    vistype_label,
    subject,
    stimulus,
    selected_region = region_number,
    selected_score = score,
    correct_regions,
    n_correct_regions,
    hit,
    outcome
  )

# "Correct" counts: for each trial, every peak region of its stimulus gets
# 1 / n_correct_regions, so each panel's expected map sums to n_trials,
# just like the observed map.
task2_hm_expected <- task2_hm_trials |>
  dplyr::select(pattern, vistype, correct_regions, n_correct_regions) |>
  tidyr::separate_rows(correct_regions, sep = ";") |>
  dplyr::mutate(region_number = as.integer(correct_regions)) |>
  dplyr::group_by(pattern, vistype, region_number) |>
  dplyr::summarise(n_correct = sum(1 / n_correct_regions), .groups = "drop")

task2_hm_observed <- task2_hm_trials |>
  dplyr::group_by(pattern, vistype, region_number = selected_region) |>
  dplyr::summarise(
    n_selected = dplyr::n(),
    n_hits = sum(hit),
    n_misses = sum(!hit),
    .groups = "drop"
  )

task2_hm_regions <- tidyr::expand_grid(
  pattern = factor(task2_pattern_levels, levels = task2_pattern_levels),
  vistype = factor(task2_vistype_levels, levels = task2_vistype_levels),
  region_number = 1:64
) |>
  dplyr::left_join(task2_hm_observed, by = c("pattern", "vistype", "region_number")) |>
  dplyr::left_join(task2_hm_expected, by = c("pattern", "vistype", "region_number")) |>
  dplyr::left_join(task2_panel_totals, by = c("pattern", "vistype")) |>
  dplyr::mutate(
    dplyr::across(c(n_selected, n_hits, n_misses), \(x) dplyr::coalesce(x, 0L)),
    n_correct = dplyr::coalesce(n_correct, 0),
    vistype_label = unname(task2_vistype_labels[as.character(vistype)]),
    region = sprintf("R%02d", region_number),
    prop_selected = n_selected / n_trials,
    prop_hits = n_hits / n_trials,
    prop_misses = n_misses / n_trials,
    prop_correct = n_correct / n_trials,
    selected_minus_correct = prop_selected - prop_correct
  ) |>
  dplyr::arrange(pattern, vistype, region_number) |>
  dplyr::select(
    pattern, vistype, vistype_label, region_number, region, n_trials,
    n_selected, n_hits, n_misses, n_correct,
    prop_selected, prop_hits, prop_misses, prop_correct, selected_minus_correct
  )

task2_hm_checks <- task2_hm_regions |>
  dplyr::group_by(pattern, vistype) |>
  dplyr::summarise(
    sel = sum(n_selected), hits = sum(n_hits), miss = sum(n_misses),
    corr = sum(n_correct), n = dplyr::first(n_trials), .groups = "drop"
  )

stopifnot(
  nrow(task2_hm_regions) == 3L * 7L * 64L,
  all(task2_hm_checks$sel == task2_hm_checks$n),
  all(task2_hm_checks$hits + task2_hm_checks$miss == task2_hm_checks$n),
  all(abs(task2_hm_checks$corr - task2_hm_checks$n) < 1e-9)
)

# Per-stimulus click maps: every stimulus x region, once pooled over
# visualization types (vistype = "all") and once per visualization type.
# Carries the true region score so the plot needs no other input.
task2_hm_stim_regions <- task2_region_scores |>
  dplyr::select(stimulus, region_number, score) |>
  dplyr::mutate(is_peak = score == 1)

task2_hm_stim_info <- task2_hm_trials |>
  dplyr::distinct(stimulus, pattern, subject)

task2_hm_stim_counts <- function(trials, vistype_value) {
  totals <- trials |>
    dplyr::group_by(stimulus) |>
    dplyr::summarise(
      n_trials = dplyr::n(),
      stimulus_hit_rate = mean(hit),
      .groups = "drop"
    )
  trials |>
    dplyr::count(stimulus, region_number = selected_region, name = "n_selected") |>
    dplyr::right_join(task2_hm_stim_regions, by = c("stimulus", "region_number")) |>
    dplyr::left_join(totals, by = "stimulus") |>
    dplyr::mutate(
      vistype = vistype_value,
      n_selected = dplyr::coalesce(n_selected, 0L),
      n_trials = dplyr::coalesce(n_trials, 0L),
      prop_selected = dplyr::if_else(n_trials > 0, n_selected / n_trials, 0)
    )
}

task2_hm_stimulus <- dplyr::bind_rows(
  task2_hm_stim_counts(task2_hm_trials, "all"),
  lapply(task2_vistype_levels, \(v) {
    task2_hm_stim_counts(
      dplyr::filter(task2_hm_trials, vistype == v), v
    )
  })
) |>
  dplyr::left_join(task2_hm_stim_info, by = "stimulus") |>
  dplyr::mutate(
    vistype_label = dplyr::if_else(
      vistype == "all", "All visualizations",
      unname(task2_vistype_labels[vistype])
    ),
    region = sprintf("R%02d", region_number)
  ) |>
  dplyr::arrange(pattern, stimulus, vistype, region_number) |>
  dplyr::select(
    pattern, stimulus, subject, vistype, vistype_label, region_number, region,
    score, is_peak, n_selected, n_trials, prop_selected, stimulus_hit_rate
  )

task2_hm_stim_checks <- task2_hm_stimulus |>
  dplyr::group_by(stimulus, vistype) |>
  dplyr::summarise(
    n_regions = dplyr::n(), sel = sum(n_selected), n = dplyr::first(n_trials),
    .groups = "drop"
  )
stopifnot(
  nrow(task2_hm_stimulus) == 30L * 8L * 64L,
  all(task2_hm_stim_checks$n_regions == 64L),
  all(task2_hm_stim_checks$sel == task2_hm_stim_checks$n)
)

readr::write_csv(task2_hm_trials, file.path("data", "task2_hits_misses_trials.csv"))
readr::write_csv(task2_hm_stimulus, file.path("data", "task2_hits_misses_stimulus.csv"))
readr::write_csv(task2_hm_regions, file.path("data", "task2_hits_misses_regions.csv"))

task2_hm_args <- commandArgs(trailingOnly = TRUE)
task2_hm_makie_dir <- if (length(task2_hm_args) >= 1L) {
  task2_hm_args[[1]]
} else {
  "C:/Users/Vlad/UnfoldMakie-uncert/uncertainty_project/data/task2_results"
}

if (dir.exists(dirname(task2_hm_makie_dir))) {
  dir.create(task2_hm_makie_dir, showWarnings = FALSE, recursive = TRUE)
  readr::write_csv(
    task2_hm_regions,
    file.path(task2_hm_makie_dir, "task2_hits_misses_regions.csv")
  )
  readr::write_csv(
    task2_hm_stimulus,
    file.path(task2_hm_makie_dir, "task2_hits_misses_stimulus.csv")
  )
  message("Aggregated files copied to ", task2_hm_makie_dir)
} else {
  warning("Makie project not found, skipped copy: ", task2_hm_makie_dir)
}

task2_hm_trials |>
  dplyr::count(vistype, outcome) |>
  tidyr::pivot_wider(names_from = outcome, values_from = n) |>
  dplyr::mutate(hit_rate = round(hit / (hit + miss), 3)) |>
  print()
