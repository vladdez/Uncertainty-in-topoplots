# Pre-render checks after data/data_uncertain_topoplots.csv is replaced.
#
# Run from the project root:
#   Rscript scripts/check_data_refresh.R
#
# The script is read-only. It reports:
#   1. the analytic sample size and its change since the last coded workbook;
#   2. whether existing A305 codes still match the participant they are keyed
#      to (the workbook is keyed on SoSci's CASE number since audit A3; this
#      check still guards against wrong or invented wording);
#   3. substantive A305 responses that have not been coded or explicitly
#      excluded;
#   4. free-text country and software entries that may need normalization;
#   5. prose files that still contain the previous sample size.
#
# It stops with an error only for problems that would corrupt the analysis
# (codes filed under the wrong participant or invalid codes); everything else
# is reported for review.

suppressPackageStartupMessages({
  library(dplyr)
})

# 0. De-identified copy ------------------------------------------------------
# The analysis reads data/data_uncertain_topoplots_deidentified.csv. It must
# be regenerated from the private export after every new export.
source("scripts/deidentify_survey.R")
cat("\n== De-identified copy ==\n")
if (!file.exists(survey_deidentified_path)) {
  stop("Missing ", survey_deidentified_path,
       ". Run: Rscript scripts/deidentify_survey.R")
}
if (file.exists(survey_raw_path)) {
  expected <- deidentify_survey(read_raw_survey())
  current <- read_deidentified_survey()
  if (!identical(as.data.frame(expected), as.data.frame(current))) {
    stop(survey_deidentified_path, " is out of date with the private export. ",
         "Run: Rscript scripts/deidentify_survey.R")
  }
  cat("Up to date with the private export (", nrow(current) - 1L, " records).\n",
      sep = "")
} else {
  cat("Private export not present; checking the de-identified copy only.\n")
}

source_lines <- readLines("scripts/analysis_setup.R", warn = FALSE)
# Load only the data-preparation part of the shared setup; plotting libraries
# and fonts are not needed here.
data_start <- grep("^get_field <- function", source_lines)
data_end <- grep("^configure_analysis_cache <- function", source_lines) - 1L
project_path <- function(...) file.path(normalizePath(".", winslash = "/"), ...)
eval(parse(text = source_lines[data_start:data_end]))

normalize_text <- function(x) {
  x |>
    tolower() |>
    stringr::str_replace_all("[‘’“”]", "'") |>
    stringr::str_replace_all("[^a-z0-9]+", " ") |>
    stringr::str_squish()
}

word_match_share <- function(fragment, response) {
  fragment_words <- strsplit(fragment, " ", fixed = TRUE)[[1]]
  response_words <- unique(strsplit(normalize_text(coalesce(response, "")), " ",
                                    fixed = TRUE)[[1]])
  if (length(fragment_words) == 0 || length(response_words) == 0) return(0)
  mean(vapply(fragment_words, \(word) {
    max_distance <- if (nchar(word) >= 5) 2 else if (nchar(word) >= 3) 1 else 0
    any(utils::adist(word, response_words)[1, ] <= max_distance)
  }, logical(1)))
}

options(width = 200)
problems <- character()
section <- function(title) cat("\n==", title, "==\n")

# 1. Sample -------------------------------------------------------------------
section("Sample")
n_raw <- nrow(survey_raw) - 1L
cat("Raw export rows:", n_raw, "\n")
cat("Analytic sample (started >= 2026-07-24, TIME051 present):", nrow(data), "\n")

workbook_path <- project_path("data", "a305_content_analysis.xlsx")
coded <- readxl::read_xlsx(
  workbook_path,
  sheet = "A305 content analysis",
  col_types = "text"
)
# The workbook is keyed on CASE (stable across exports); ID is looked up.
stopifnot(names(coded)[1] == "CASE")
coded <- coded |>
  mutate(CASE = as.integer(CASE)) |>
  left_join(select(data, CASE, ID), by = "CASE")
coded_cases <- sort(unique(coded$CASE))
coded_ids <- sort(unique(coded$ID))
cat("Coded A305 participants:", length(coded_cases), "\n")

# 2. Participant alignment ----------------------------------------------------
section("A305 participant alignment")
responses <- data |>
  transmute(CASE, ID, response = stringr::str_squish(as.character(A305_01)))

fragments <- coded |>
  mutate(
    row = row_number(),
    unit = stringr::str_remove_all(`Meaning unit`, '^\\(\\s*"|"\\s*\\)$')
  ) |>
  tidyr::separate_longer_delim(unit, delim = stringr::regex("\\.\\.\\.|…")) |>
  mutate(fragment = normalize_text(unit)) |>
  filter(nchar(fragment) >= 4) |>
  left_join(select(responses, CASE, response), by = "CASE") |>
  mutate(word_share = purrr::map2_dbl(fragment, response, word_match_share))

# A unit matches when most of its words occur in the participant's response,
# allowing small spelling differences (coders corrected typos such as
# "comfising" -> "confusing").
unit_scores <- fragments |>
  group_by(row, CASE, ID, `Meaning unit`) |>
  summarise(word_share = min(word_share), .groups = "drop")
unit_misses <- filter(unit_scores, word_share < 0.75)

cat("Meaning units matching their participant's response:",
    nrow(unit_scores) - nrow(unit_misses), "of", nrow(unit_scores), "\n")
if (nrow(unit_misses) > 0) {
  cat("Meaning units NOT found in the response of the participant they are",
      "keyed to (wrong CASE or invented wording):\n")
  for (i in seq_len(nrow(unit_misses))) {
    cat(sprintf("  workbook row %d, CASE %d (ID %d): %s\n", unit_misses$row[i] + 1L,
                unit_misses$CASE[i], unit_misses$ID[i], unit_misses$`Meaning unit`[i]))
  }
  # One unmatched unit is usually a paraphrase; several unmatched units for the
  # same participant indicate a wrong CASE.
  suspicious_ids <- unit_scores |>
    group_by(CASE) |>
    summarise(misses = sum(word_share < 0.75), share = mean(word_share < 0.75)) |>
    filter(misses >= 2 | share >= 0.5)
  if (nrow(suspicious_ids) > 0) {
    problems <- c(problems, paste0(
      "A305 meaning units keyed to the wrong participant (CASE ",
      paste(suspicious_ids$CASE, collapse = ", "), ")"
    ))
  } else {
    cat("  Single unmatched units only: check they are faithful paraphrases.\n")
  }
}

# Codes must stay within the fixed codebook.
allowed_visualizations <- c(
  "Basic", "Adjacent", "Bivariate corner", "Bivariate range",
  "Confidence interval", "Uncertainty markers", "Animation",
  "General bivariates"
)
allowed_themes <- c(
  "Accessibility", "Aesthetics", "Information integration", "Informativeness",
  "Interpretability", "Learnability", "Legend/color mapping",
  "Medium compatibility", "Preference", "Reading effort", "SNR visibility",
  "Space/scalability", "Task suitability"
)
allowed_intensity <- c("-2", "-1", "0", "+1", "+2")
invalid <- coded |>
  filter(
    !Visualization %in% allowed_visualizations |
      !Theme %in% allowed_themes |
      !`Evaluation intensity` %in% allowed_intensity |
      is.na(ID)
  )
if (nrow(invalid) > 0) {
  cat("Rows with invalid codes or CASE numbers outside the analytic sample:\n")
  print(as.data.frame(invalid), row.names = FALSE)
  problems <- c(problems, "A305 workbook contains invalid codes or unknown CASE numbers")
} else {
  cat("All codes are within the codebook and every CASE is in the analytic sample.\n")
}

# 3. Uncoded responses --------------------------------------------------------
section("Uncoded A305 responses")
excluded_path <- project_path("data", "a305_excluded_ids.csv")
excluded_cases <- if (file.exists(excluded_path)) {
  excluded <- readr::read_csv(excluded_path, col_types = "ic")
  stopifnot(identical(names(excluded), c("CASE", "reason")))
  excluded$CASE
} else {
  integer()
}
uncoded <- responses |>
  filter(
    !is.na(response), response != "", response != "-9",
    !CASE %in% coded_cases, !CASE %in% excluded_cases
  )
cat("Non-empty responses neither coded nor listed in",
    basename(excluded_path), ":", nrow(uncoded), "\n")
if (nrow(uncoded) > 0) {
  for (i in seq_len(nrow(uncoded))) {
    cat(sprintf("\n[CASE %d, ID %d] %s\n", uncoded$CASE[i], uncoded$ID[i],
                uncoded$response[i]))
  }
}

# 4. Free-text categories -----------------------------------------------------
section("Free-text country and software entries")
country_other <- data |>
  filter(A004 == "-2") |>
  count(A004s, name = "n")
cat("Free-text country entries (check normalization in pages/sample.qmd):\n")
print(as.data.frame(country_other), row.names = FALSE)

software_text_columns <- intersect("A006_27a", names(data))
for (column in software_text_columns) {
  values <- data[[column]]
  values <- sort(unique(values[!is.na(values) & values != "" & values != "-9"]))
  if (length(values) > 0) {
    cat("\n", column, " free-text values:\n  ",
        paste(values, collapse = "\n  "), "\n", sep = "")
  }
}

# 5. Hard-coded sample sizes in prose ------------------------------------------
section("Hard-coded sample sizes")
prose_files <- c(
  list.files("pages", pattern = "\\.qmd$", full.names = TRUE),
  "index.qmd", "README.md",
  file.path("The Art of Uncertain Topoplots", c("journal.typ", "supplement.typ"))
)
previous_n <- unique(c(114L, length(coded_ids)))
for (file in prose_files[file.exists(prose_files)]) {
  lines <- readLines(file, warn = FALSE, encoding = "UTF-8")
  hits <- grep(
    paste0("\\b(", paste(setdiff(previous_n, nrow(data)), collapse = "|"), ")\\b"),
    lines
  )
  hits <- hits[!grepl("^\\s*(#|//)", lines[hits])]
  for (h in hits) cat(sprintf("%s:%d: %s\n", file, h, stringr::str_trim(lines[h])))
}

# Result ----------------------------------------------------------------------
section("Result")
if (length(problems) > 0) {
  stop("Blocking problems:\n- ", paste(problems, collapse = "\n- "), call. = FALSE)
}
cat("No blocking problems. Review the items above before rendering.\n")
