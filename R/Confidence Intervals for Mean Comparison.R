ci_results <- df %>%
  group_by(Time_Slot) %>%
  summarise(
    mean = mean(Calories_Burned),
    lower_CI = mean - qt(0.975, n()-1) * (sd(Calories_Burned) / sqrt(n())),
    upper_CI = mean + qt(0.975, n()-1) * (sd(Calories_Burned) / sqrt(n())),
    .groups = "drop"
  )

print(ci_results)
