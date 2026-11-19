# Curated meaning units for the substantive A305 comment from participant 148
# (export of 19 Nov 2026). Coding approved by the user on 2026-11-19.
# Run from the Analysis project directory. Existing workbook rows are preserved.
#
# Non-substantive responses from this refresh (IDs 2, 60, 83, 85, 113) are
# listed in data/a305_excluded_ids.csv instead of being coded.
path <- file.path("data", "a305_content_analysis.xlsx")
sheet <- "A305 content analysis"

new_rows <- tibble::tribble(
  ~ID, ~Visualization, ~excerpt, ~Theme, ~`Evaluation intensity`,
  148, "General bivariates", "Bivariate are vary confusing", "Interpretability", "-2",
  148, "General bivariates", "very different from what we are used to, not necessarily because they would be worse in the long run", "Learnability", "0",
  148, "General bivariates", "adoption might be harder", "Learnability", "-1"
) |>
  dplyr::mutate(
    ID = as.integer(ID),
    # Curly quotes, as in the originally coded rows.
    `Meaning unit` = paste0('("', excerpt, '")')
  ) |>
  dplyr::select(ID, Visualization, `Meaning unit`, Theme, `Evaluation intensity`)

existing <- readxl::read_xlsx(path, sheet = sheet, col_types = "text")
stopifnot(
  identical(names(existing), names(new_rows)),
  !any(as.character(new_rows$ID) %in% existing$ID),
  all(new_rows$Visualization %in% existing$Visualization),
  all(new_rows$Theme %in% existing$Theme),
  all(new_rows$`Evaluation intensity` %in% existing$`Evaluation intensity`)
)

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
    dplyr::n_distinct(new_rows$ID), "participants.\n")
