# De-identified copy of the survey export.
#
# Input (private, git-ignored): data/data_uncertain_topoplots.csv
#   SoSci Survey export, UTF-16LE, ";"-separated, row 1 = variable labels.
# Output (public, tracked):      data/data_uncertain_topoplots_deidentified.csv
#   Same rows, same columns, same order (participant IDs are row positions),
#   UTF-8, ";"-separated, row 1 = variable labels. Every analysis script reads
#   this copy, so the repository can be re-run without the private export.
#
# Changes relative to the export (data rows only; the label row is kept):
#   - SERIAL, REF, MAILSENT: blanked (SoSci invitation/panel fields; empty in
#     this open-link survey, blanked so a future export cannot leak them).
#   - STARTED, LASTDATA: reduced to the date (the analysis uses only the date).
#   - Email addresses in any column: replaced with "[email removed]".
#
# Run from the project root after every new export:
#   Rscript scripts/deidentify_survey.R
# scripts/check_data_refresh.R stops if the copy is out of date.

survey_raw_path <- file.path("data", "data_uncertain_topoplots.csv")
survey_deidentified_path <- file.path("data", "data_uncertain_topoplots_deidentified.csv")

survey_blank_columns <- c("SERIAL", "REF", "MAILSENT")
survey_date_only_columns <- c("STARTED", "LASTDATA")
survey_email_pattern <- "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"

read_survey_file <- function(path, encoding) {
  readr::read_delim(
    path,
    delim = ";",
    locale = readr::locale(encoding = encoding),
    col_types = readr::cols(.default = readr::col_character()),
    name_repair = "minimal",
    show_col_types = FALSE,
    progress = FALSE
  )
}

read_raw_survey <- function(path = survey_raw_path) {
  read_survey_file(path, "UTF-16LE")
}

read_deidentified_survey <- function(path = survey_deidentified_path) {
  read_survey_file(path, "UTF-8")
}

deidentify_survey <- function(raw) {
  data_rows <- seq_len(nrow(raw)) > 1L  # row 1 holds the variable labels
  for (column in intersect(survey_blank_columns, names(raw))) {
    raw[[column]][data_rows] <- NA_character_
  }
  for (column in intersect(survey_date_only_columns, names(raw))) {
    raw[[column]][data_rows] <- substr(raw[[column]][data_rows], 1L, 10L)
  }
  for (column in names(raw)) {
    raw[[column]][data_rows] <- gsub(
      survey_email_pattern, "[email removed]", raw[[column]][data_rows],
      perl = TRUE
    )
  }
  raw
}

write_deidentified_survey <- function(raw_path = survey_raw_path,
                                      out_path = survey_deidentified_path) {
  raw <- read_raw_survey(raw_path)
  deidentified <- deidentify_survey(raw)
  readr::write_delim(deidentified, out_path, delim = ";", na = "")

  reread <- read_deidentified_survey(out_path)
  if (!identical(as.data.frame(reread), as.data.frame(deidentified))) {
    stop("Round trip failed: ", out_path, " does not read back identically.")
  }
  if (any(vapply(reread[-1, ], \(x) any(grepl(survey_email_pattern, x, perl = TRUE)),
                 logical(1)))) {
    stop("An email address survived de-identification.")
  }
  n_redacted <- sum(vapply(
    raw[-1, ], \(x) sum(grepl(survey_email_pattern, x, perl = TRUE)), integer(1)
  ))
  cat("Wrote", out_path, "-", nrow(reread) - 1L, "records,", ncol(reread),
      "columns;", n_redacted, "email address(es) redacted.\n")
  invisible(deidentified)
}

if (sys.nframe() == 0L) {
  write_deidentified_survey()
}
