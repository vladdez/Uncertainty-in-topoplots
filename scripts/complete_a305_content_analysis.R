workbook <- file.path(
  "C:/Users/Vlad/Nextcloud/staff-only/project-2025-The Art of Uncertainty/Analysis",
  "data",
  "a305_content_analysis.xlsx"
)

analysis <- readxl::read_xlsx(
  workbook,
  sheet = "A305 content analysis",
  col_types = "text"
)

left_quote <- intToUtf8(8220)
right_quote <- intToUtf8(8221)
quote_unit <- function(x) paste0("(", left_quote, x, right_quote, ")")

candidate_units <- data.frame(
  ID = rep("114", 10),
  Visualization = c(
    "Bivariate corner",
    "Confidence interval",
    "Adjacent",
    "Adjacent",
    "Uncertainty markers",
    "Animation",
    "Animation",
    "Confidence interval",
    "Bivariate corner",
    "Bivariate corner"
  ),
  `Meaning unit` = quote_unit(c(
    "The corner plots are just too complicated for my brain, sorry",
    "The CI plots are my favorite",
    "The adjacent plots are fine",
    paste0(
      "also distracting because a high SE makes that area visually ",
      "salient and is thus a bit misleading, perhaps"
    ),
    paste0(
      "also distracting because a high SE makes that area visually ",
      "salient and is thus a bit misleading, perhaps, and the same goes ",
      "for the uncertainty markers"
    ),
    "The gifs were straightforward to understand",
    "are nice for presentations",
    paste0(
      "super easy to understand in terms of where there is a reliable ",
      "signal"
    ),
    paste0(
      "Strictly for the SNR evaluation, only the corner plots are ",
      "more useful"
    ),
    paste0(
      "it's really difficult for me to wrap my head around ",
      "them"
    )
  )),
  Theme = c(
    "Interpretability",
    "Preference",
    "Preference",
    "Information integration",
    "Information integration",
    "Interpretability",
    "Medium compatibility",
    "SNR visibility",
    "Task suitability",
    "Interpretability"
  ),
  `Evaluation intensity` = c(
    "-2", "+2", "+1", "-1", "-1", "+2", "+1", "+2", "+1", "-2"
  ),
  check.names = FALSE
)

names(analysis) <- c(
  "ID",
  "Visualization",
  "Meaning unit",
  "Theme",
  "Evaluation intensity"
)
row_key <- function(df) {
  normalize_text <- function(x) {
    x <- gsub("<U+201C>", left_quote, as.character(x), fixed = TRUE)
    x <- gsub("<U+201D>", right_quote, x, fixed = TRUE)
    enc2utf8(x)
  }

  do.call(
    paste,
    c(
      lapply(df, normalize_text),
      sep = " ||| "
    )
  )
}

duplicate_rows <- duplicated(row_key(analysis))
duplicates_removed <- sum(duplicate_rows)
analysis <- analysis[!duplicate_rows, , drop = FALSE]

units_to_add <- candidate_units[
  !row_key(candidate_units) %in% row_key(analysis),
  ,
  drop = FALSE
]

analysis <- rbind(analysis, units_to_add)
analysis <- analysis[order(as.integer(analysis$ID)), , drop = FALSE]

if (nrow(units_to_add) > 0 || duplicates_removed > 0) {
  output_workbook <- tempfile(fileext = ".xlsx")
  on.exit(unlink(output_workbook), add = TRUE)

  openxlsx::write.xlsx(
    analysis,
    output_workbook,
    sheetName = "A305 content analysis",
    overwrite = TRUE,
    asTable = TRUE
  )

  written_analysis <- readxl::read_xlsx(
    output_workbook,
    sheet = "A305 content analysis",
    col_types = "text"
  )

  stopifnot(
    identical(names(written_analysis), names(analysis)),
    nrow(written_analysis) == nrow(analysis)
  )

  if (!file.copy(output_workbook, workbook, overwrite = TRUE)) {
    stop("Could not replace workbook: ", workbook)
  }
}

message(
  nrow(units_to_add), " meaning units added; ",
  duplicates_removed, " exact duplicates removed; ",
  nrow(analysis), " meaning units from ",
  length(unique(analysis$ID)), " participants"
)
