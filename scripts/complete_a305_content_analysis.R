workbook <- file.path(
  "C:/Users/Vlad/Nextcloud/staff-only/project-2025-The Art of Uncertainty/Analysis",
  "data",
  "a305_content_analysis.xlsx"
)

analysis <- openxlsx::read.xlsx(
  workbook,
  sheet = "A305 content analysis",
  colNames = TRUE,
  check.names = FALSE
)

missing_units <- data.frame(
  ID = c(21, 25, 67, 67),
  Visualization = rep("General bivariates", 4),
  `Meaning unit` = c(
    "(“Bivariate color plots are difficult to interpret in general”)",
    "(“I find the bivariate plots difficult to read and understand”)",
    "(“clearly showed voltage and range in a single color”)",
    "(“quick to determine which region(s) I should be attending to”)") ,
  Theme = c(
    "Interpretability",
    "Interpretability",
    "Legend/color mapping",
    "Task suitability"
  ),
  `Evaluation intensity` = c("-1", "-2", "+1", "+2"),
  check.names = FALSE
)

names(analysis) <- c(
  "ID",
  "Visualization",
  "Meaning unit",
  "Theme",
  "Evaluation intensity"
)
analysis <- rbind(analysis, missing_units)
analysis <- analysis[order(as.integer(analysis$ID)), , drop = FALSE]

openxlsx::write.xlsx(
  analysis,
  workbook,
  sheetName = "A305 content analysis",
  overwrite = TRUE,
  asTable = TRUE
)

message(
  nrow(analysis), " meaning units from ",
  length(unique(analysis$ID)), " participants"
)
