# Task 1 trial reconstruction, shared by pages/task1.qmd and pages/time.qmd.
# Requires `data` and `get_field()` from scripts/analysis_setup.R.

task1_order <- data %>%
  dplyr::select(ID, A125_02) %>%
  tidyr::separate_rows(A125_02, sep = "\n") %>%
  dplyr::filter(A125_02 != "") %>%
  dplyr::transmute(
    ID,
    position = as.integer(get_field(A125_02, "position")),
    trial    = as.integer(get_field(A125_02, "trial")),
    question = get_field(A125_02, "question"),
    stimulus = get_field(A125_02, "stimulus"),
    expected = as.integer(get_field(A125_02, "expected")),
    answered = as.integer(get_field(A125_02, "answered")),
    correct  = as.integer(get_field(A125_02, "correct"))
  ) %>%
  dplyr::arrange(ID, position)

task1_design <- data %>%
  dplyr::select(ID, A124_01) %>%
  tidyr::separate_rows(A124_01, sep = "\n") %>%
  dplyr::filter(A124_01 != "") %>%
  dplyr::transmute(
    ID,
    trial       = as.integer(get_field(A124_01, "trial")),
    question    = get_field(A124_01, "question"),
    vistype     = get_field(A124_01, "vistype"),
    target      = get_field(A124_01, "target"),
    correct     = get_field(A124_01, "correct"),
    wrong       = get_field(A124_01, "wrong"),
    pair        = get_field(A124_01, "pair"),
    solution    = as.integer(get_field(A124_01, "solution")),
    opt1        = get_field(A124_01, "opt1"),
    opt2        = get_field(A124_01, "opt2")
  )

task1 <- task1_order %>%
  left_join(
    task1_design %>%
      transmute(
        ID,
        trial,
        question,
        vistype,
        pattern = target,
        correct_image = correct,
        wrong_image = wrong,
        pair,
        solution,
        opt1,
        opt2
      ),
    by = c("ID", "trial", "question")
  )

task1_n_responses <- nrow(task1)
task1_n_participants <- n_distinct(task1$ID)
task1_n_trials <- n_distinct(task1$trial)

task1_model <- task1 %>%
  transmute(
    ID = factor(ID),
    trial = factor(trial),
    vistype = relevel(factor(vistype), ref = "basic"),
    pattern = relevel(factor(pattern), ref = "MMN"),
    stimulus = factor(stimulus),
    wrong_image = factor(wrong_image),
    position = as.integer(position),
    correct = as.integer(correct)
  ) %>%
  filter(
    !is.na(correct),
    !is.na(position),
    !is.na(vistype),
    !is.na(pattern),
    !is.na(stimulus),
    !is.na(wrong_image)
  ) %>%
  mutate(position_c = position - mean(position))
