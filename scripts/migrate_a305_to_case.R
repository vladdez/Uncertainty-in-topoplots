# One-time migration (audit A3, 24 Nov 2026): key the A305 coding workbook and
# the exclusion list on SoSci Survey's CASE number instead of the participant
# ID, which is only a row position after the inclusion filters.
#
# Run once from the Analysis project directory, after the 24 Nov 2026 refresh
# (N = 150). It refuses to run if the workbook is already keyed on CASE.
# Only the key column changes: every other cell and the row order stay the same.
suppressPackageStartupMessages(library(dplyr))

source_lines <- readLines("scripts/analysis_setup.R", warn = FALSE)
data_start <- grep("^get_field <- function", source_lines)
data_end <- grep("^configure_analysis_cache <- function", source_lines) - 1L
project_path <- function(...) file.path(normalizePath(".", winslash = "/"), ...)
eval(parse(text = source_lines[data_start:data_end]))
id_to_case <- setNames(data$CASE, data$ID)

# 1. Workbook ------------------------------------------------------------------
path <- file.path("data", "a305_content_analysis.xlsx")
sheet <- "A305 content analysis"
before <- readxl::read_xlsx(path, sheet = sheet, col_types = "text")
stopifnot(names(before)[1] == "ID", !"CASE" %in% names(before))

ids <- as.integer(before$ID)
cases <- unname(id_to_case[as.character(ids)])
stopifnot(!anyNA(ids), !anyNA(cases))

# The sheet holds an Excel table ("Table3"), whose header openxlsx cannot
# overwrite, and whose range (A1:E251) no longer covered the rows appended
# later. Re-create it over all rows with the same name and style.
rekeyed <- before
rekeyed$ID <- cases
names(rekeyed)[1] <- "CASE"
workbook <- openxlsx::loadWorkbook(path)
stopifnot(identical(as.character(openxlsx::getTables(workbook, sheet)), "Table3"))
openxlsx::removeTable(workbook, sheet = sheet, table = "Table3")
openxlsx::writeDataTable(
  workbook, sheet = sheet, x = rekeyed, startCol = 1, startRow = 1,
  tableStyle = "TableStyleLight9", tableName = "Table3", withFilter = TRUE
)
openxlsx::saveWorkbook(workbook, path, overwrite = TRUE)

after <- readxl::read_xlsx(path, sheet = sheet, col_types = "text")
stopifnot(
  identical(names(after), c("CASE", names(before)[-1])),
  nrow(after) == nrow(before),
  identical(after[-1], before[-1]),
  identical(as.integer(after$CASE), cases),
  # Round trip: CASE -> ID gives back the original IDs.
  identical(data$ID[match(as.integer(after$CASE), data$CASE)], ids)
)
cat("Workbook:", nrow(after), "rows re-keyed from ID to CASE (",
    n_distinct(after$CASE), "participants ).\n")

# 2. Exclusion list ------------------------------------------------------------
excluded_path <- file.path("data", "a305_excluded_ids.csv")
excluded <- readr::read_csv(excluded_path, col_types = "ic")
stopifnot(identical(names(excluded), c("ID", "reason")))
excluded_cases <- unname(id_to_case[as.character(excluded$ID)])
stopifnot(!anyNA(excluded_cases))
readr::write_csv(tibble(CASE = excluded_cases, reason = excluded$reason), excluded_path)
cat("Exclusion list:", nrow(excluded), "rows re-keyed from ID to CASE.\n")
