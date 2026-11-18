# Sample definition and data-quality screen (audit U14).
# Sourced after scripts/analysis_setup.R, which defines `survey_raw` and `data`.
#
# Sample definition (applied in analysis_setup.R):
#   1. Records started on or after the study launch date (2026-07-24). Earlier
#      records are test/pilot runs of the questionnaire.
#   2. Records that reached the last page (TIME051 present).
#
# Quality screen (flags only; the main analyses keep everyone, the flagged
# participants are dropped in sensitivity analyses):
#   - Speeding: SoSci Survey's relative speed index TIME_RSI > 2 (completed at
#     more than twice the typical speed; Leiner, 2019).
#   - Straight-lining: the same rating for all 28 rating items (A301–A304).

study_launch_date <- as.Date("2026-07-24")

survey_records <- survey_raw %>% dplyr::slice(-1)
completed_records <- survey_records %>%
  filter(!is.na(readr::parse_number(TIME051)))

pre_launch_completed <- completed_records %>%
  filter(as.Date(STARTED) < study_launch_date)
n_pre_launch_completed <- nrow(pre_launch_completed)
pre_launch_dates <- sort(unique(as.Date(pre_launch_completed$STARTED)))

n_started_after_launch <- survey_records %>%
  filter(as.Date(STARTED) >= study_launch_date) %>%
  nrow()
n_incomplete_after_launch <- n_started_after_launch - nrow(data)

rating_item_columns <- grep("^A30[1-4]_[0-9]{2}$", names(data), value = TRUE)

quality_flags <- data %>%
  transmute(
    ID,
    time_rsi = readr::parse_number(TIME_RSI),
    speeding = !is.na(time_rsi) & time_rsi > 2
  ) %>%
  left_join(
    data %>%
      select(ID, all_of(rating_item_columns)) %>%
      tidyr::pivot_longer(-ID, values_to = "response") %>%
      mutate(rating = readr::parse_number(as.character(response))) %>%
      group_by(ID) %>%
      summarise(
        n_ratings = sum(!is.na(rating)),
        straight_lining = n_ratings == length(rating_item_columns) &
          dplyr::n_distinct(rating, na.rm = TRUE) == 1,
        .groups = "drop"
      ),
    by = "ID"
  ) %>%
  mutate(flagged = speeding | straight_lining)

flagged_ids <- quality_flags$ID[quality_flags$flagged]
