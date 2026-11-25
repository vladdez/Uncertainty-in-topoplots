# HISTORICAL (already applied): written when the A305 workbook was keyed on the
# participant ID. Since audit A3 (24 Nov 2026) the workbook is keyed on CASE;
# do not re-run. New appends follow scripts/append_a305_ids_150_150.R.
# Curated meaning units for substantive A305 comments from participants 115-146.
# Run from the Analysis project directory. Existing workbook rows are preserved.
path <- file.path("data", "a305_content_analysis.xlsx")
sheet <- "A305 content analysis"

new_rows <- tibble::tribble(
  ~ID, ~Visualization, ~excerpt, ~Theme, ~`Evaluation intensity`,
  115, "Adjacent", "adjacent plots separate the two nicely", "Information integration", "+1",
  115, "Adjacent", "you get the information from both and just combine them", "Interpretability", "+1",
  115, "General bivariates", "look like such a mess", "Aesthetics", "-2",
  115, "General bivariates", "really have to stare at the legend", "Reading effort", "-2",
  119, "Adjacent", "easiest to explain to a general audience", "Task suitability", "+2",
  119, "Adjacent", "combine them mentally in a way that works for them", "Information integration", "+1",
  119, "Bivariate corner", "for specifically an audience familiar with ERPs and/or matrix correlations ... very useful", "Task suitability", "+1",
  119, "Bivariate corner", "it takes some time to get used to", "Learnability", "-1",
  124, "General bivariates", "clearer and more intuitive representation of the measurement scale", "Interpretability", "+2",
  124, "General bivariates", "color distinctions make it easier to identify the most positive and negative responses", "Legend/color mapping", "+1",
  124, "General bivariates", "more effective for interpreting and comparing response patterns at a glance", "Task suitability", "+2",
  125, "General bivariates", "quite aesthetically pleasing for the viewer", "Aesthetics", "+2",
  125, "Animation", "appealing as a dynamic visualisation", "Aesthetics", "+1",
  125, "Uncertainty markers", "not aesthetically my favorite", "Aesthetics", "-1",
  125, "Uncertainty markers", "accessible and intuitive means of displaying error", "Accessibility", "+2",
  128, "General bivariates", "very unintuintive", "Interpretability", "-2",
  128, "Animation", "not very transparent in what is depicted", "Interpretability", "-2",
  128, "Animation", "looks like a time-course at first notice", "Interpretability", "-1",
  128, "Basic", "most straight-forward", "Interpretability", "+2",
  128, "Basic", "crucial information is missing to critically evaluate the data", "Informativeness", "-2",
  129, "General bivariates", "a lot of mental gymnastics", "Reading effort", "-2",
  129, "General bivariates", "not intuitive", "Interpretability", "-2",
  129, "Confidence interval", "most intuitive; I can quickly gather the information I need", "Interpretability", "+2",
  129, "Animation", "most intuitive; I can quickly gather the information I need", "Interpretability", "+2",
  132, "Animation", "probably the best in terms of both visualisation and functionality", "Preference", "+2",
  134, "Adjacent", "as simple as possible--where is the response, where is it reliable", "Interpretability", "+2",
  135, "General bivariates", "limitation of the dynamical range of the colormap", "Informativeness", "-1",
  135, "Bivariate corner", "relationship between the colors is somewhat arbitrary", "Legend/color mapping", "-1",
  135, "Bivariate corner", "really diffucult to understand the plot at a glance", "Interpretability", "-2",
  135, "Uncertainty markers", "probably the most elegant one", "Preference", "+1",
  135, "Uncertainty markers", "not aesthetically really pleasing", "Aesthetics", "-1",
  135, "Adjacent", "really clear and easy to understand", "Interpretability", "+2",
  135, "Animation", "really hard to grasp", "Interpretability", "-2",
  135, "Animation", "loses the information of a static average topoplot", "Informativeness", "-2",
  137, "Uncertainty markers", "do the job the best", "Preference", "+2",
  137, "Uncertainty markers", "without having to hop from between two views", "Information integration", "+1",
  137, "Uncertainty markers", "they are ugly", "Aesthetics", "-2",
  138, "Basic", "I liked the basic topoplot", "Preference", "+1",
  138, "Confidence interval", "I liked the ... confidence interval plot", "Preference", "+1",
  138, "Basic", "used in two stages: first for artifact rejection and second for active area visualization", "Task suitability", "+1",
  138, "Uncertainty markers", "not very appealing", "Aesthetics", "-1",
  138, "Uncertainty markers", "cause a lot of distraction", "Information integration", "-1",
  138, "General bivariates", "confusing, as there are too many colors", "Interpretability", "-2",
  138, "Adjacent", "could be meaningful", "Task suitability", "+1",
  139, "General bivariates", "my favorite wold e the bivariate color plot", "Preference", "+2",
  145, "Confidence interval", "mean+SE and Mean-SE ... is perfect and less complex", "Preference", "+2",
  145, "General bivariates", "less complex than those with color plot", "Reading effort", "-1",
  145, "Adjacent", "2-maps ... really simple and more understandable", "Interpretability", "+2"
) |>
  dplyr::mutate(
    ID = as.integer(ID),
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
cat("Appended", nrow(new_rows), "meaning units for",
    dplyr::n_distinct(new_rows$ID), "participants.\n")
