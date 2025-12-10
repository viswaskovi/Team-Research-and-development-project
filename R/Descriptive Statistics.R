descriptives <- df %>%
  group_by(Time_Slot) %>%
  summarise(
    mean_cal = mean(Calories_Burned),
    sd_cal = sd(Calories_Burned),
    n = n(),
    .groups = "drop"
  )

print(descriptives)
