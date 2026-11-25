# Curated meaning units for the substantive A305 comment from participant 150
# (export of 24 Nov 2026). Coding proposed during the 24 Nov 2026 refresh and
# approved (relayed by the coordinating agent) on 2026-11-24: three rows under
# "General bivariates", not split into Bivariate corner / Bivariate range.
# Run from the Analysis project directory. Existing workbook rows are preserved.
#
# Template for later appends: the workbook is keyed on SoSci Survey's CASE
# number (audit A3, 24 Nov 2026); participant 150 is CASE 3000. This file was
# converted to the CASE key after it had been run; re-running it stops because
# CASE 3000 is already coded.
#
# No exclusions were added in this refresh.
suppressPackageStartupMessages(library(dplyr))
path <- file.path("data", "a305_content_analysis.xlsx")
sheet <- "A305 content analysis"

new_rows <- tibble::tribble(
  ~CASE, ~Visualization, ~excerpt, ~Theme, ~`Evaluation intensity`,
  3000, "General bivariates", "The two bivariate color plots are probably the most informative", "Informativeness", "+2",
  3000, "General bivariates", "the more complex to read", "Reading effort", "-1",
  3000, "General bivariates", "The effect does not appear at a glance and one has to study the plot to understand it", "Interpretability", "-1"
) |>
  dplyr::mutate(
    CASE = as.integer(CASE),
    # Straight quotes only.
    `Meaning unit` = paste0('("', excerpt, '")')
  ) |>
  dplyr::select(CASE, Visualization, `Meaning unit`, Theme, `Evaluation intensity`)

existing <- readxl::read_xlsx(path, sheet = sheet, col_types = "text")
stopifnot(
  identical(names(existing), names(new_rows)),
  !any(as.character(new_rows$CASE) %in% existing$CASE),
  all(new_rows$Visualization %in% existing$Visualization),
  all(new_rows$Theme %in% existing$Theme),
  all(new_rows$`Evaluation intensity` %in% existing$`Evaluation intensity`),
  !grepl("[‘’“”]", new_rows$`Meaning unit`)
)

# Unknown CASE numbers: every new CASE must be in the analytic sample.
source_lines <- readLines("scripts/analysis_setup.R", warn = FALSE)
data_start <- grep("^get_field <- function", source_lines)
data_end <- grep("^configure_analysis_cache <- function", source_lines) - 1L
project_path <- function(...) file.path(normalizePath(".", winslash = "/"), ...)
eval(parse(text = source_lines[data_start:data_end]))
stopifnot(all(new_rows$CASE %in% data$CASE))

workbook <- openxlsx::loadWorkbook(path)
openxlsx::writeData(
  workbook,
  sheet = sheet,
  x = new_rows,
  startRow = nrow(existing) + 2L,
  colNames = FALSE,
  rowNames = FALSE
)
openxlsx::saveWorkbook(workbook, path, overwrite = TRUE)

after <- readxl::read_xlsx(path, sheet = sheet, col_types = "text")
stopifnot(
  nrow(after) == nrow(existing) + nrow(new_rows),
  identical(after[seq_len(nrow(existing)), ], existing)
)
cat("Appended", nrow(new_rows), "meaning units for",
    dplyr::n_distinct(new_rows$CASE), "participants.\n")
