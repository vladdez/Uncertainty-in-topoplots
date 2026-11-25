# Two-tone confidence intervals adapted from Gschwandtner et al. (2016), Fig. 1f.
make_ambiguation_plot <- function(summary_data, estimate, standard_error) {
  intervals <- summary_data |>
    mutate(
      half_width_99 = qt(0.995, df) * {{ standard_error }},
      lower_99 = {{ estimate }} - half_width_99,
      upper_99 = {{ estimate }} + half_width_99
    )
  plot_ambiguation_intervals(intervals)
}

plot_ambiguation_intervals <- function(intervals) {
  ggplot(intervals, aes(ymin = y_position - 0.31, ymax = y_position + 0.31)) +
    geom_rect(aes(xmin = lower_99, xmax = upper_99), fill = basic_accent_fill) +
    geom_rect(aes(xmin = lower_95, xmax = upper_95), fill = basic_accent)
}
