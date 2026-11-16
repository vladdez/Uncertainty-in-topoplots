# Task 2 trial reconstruction and region scoring, shared by pages/task2.qmd and
# pages/time.qmd. Requires `data`, `get_field()` and `project_path()` from
# scripts/analysis_setup.R.

task2_order <- data %>%
  select(ID, A207_01:A207_21) %>%
  pivot_longer(
    -ID,
    names_to = "trial",
    names_prefix = "A207_",
    values_to = "position"
  ) %>%
  mutate(
    ID = as.character(ID),
    trial = as.integer(trial),
    position = as.integer(position)
  )

task2_design <- data %>%
  select(ID, A205_01) %>%
  tidyr::separate_rows(A205_01, sep = "###") %>%
  filter(A205_01 != "") %>%
  transmute(
    ID,
    trial   = as.integer(get_field(A205_01, "trial")),
    vistype = get_field(A205_01, "vistype"),
    pattern = get_field(A205_01, "pattern"),
    subject = as.integer(get_field(A205_01, "subject")),
    stimulus = get_field(A205_01, "stim"),
    img_url  = get_field(A205_01, "imgUrl"),
    input_id = get_field(A205_01, "inputId")
  )

task2_responses <- data %>%
  select(ID, A201_01:A201_21) %>%
  pivot_longer(
    -ID,
    names_to = "input_id",
    values_to = "selected_region"
  )

score_text <- paste(
  readLines(project_path("regions.txt"), encoding = "UTF-8"),
  collapse = "\n"
)
score_matches <- stringr::str_match_all(
  score_text,
  '"([^"]+)"\\s*=>\\s*array\\(([^)]*)\\)'
)[[1]]
region_scores <- tibble::tibble(
  stimulus = score_matches[, 2],
  values = score_matches[, 3]
) %>%
  tidyr::separate_rows(values, sep = ",\\s*") %>%
  group_by(stimulus) %>%
  mutate(
    region = sprintf("R%02d", row_number()),
    score = as.numeric(values)
  ) %>%
  ungroup() %>%
  select(stimulus, region, score)

task2 <- task2_design %>%
  mutate(ID = as.character(ID)) %>%
  left_join(task2_responses %>% mutate(ID = as.character(ID)),
            by = c("ID", "input_id")) %>%
  mutate(
    region_number = readr::parse_number(selected_region),
    region = sprintf("R%02d", region_number)
  ) %>%
  left_join(region_scores, by = c("stimulus", "region")) %>%
  left_join(task2_order, by = c("ID", "trial")) %>%
  select(ID, trial, position, vistype, pattern, stimulus, region, score)
