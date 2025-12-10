ggplot(df, aes(x = Calories_Burned, fill = Time_Slot)) +
  geom_histogram(alpha = 0.6, bins = 25, position = "identity") +
  facet_wrap(~ Time_Slot) +
  labs(
    title = "Distribution of Calories Burned by Class Time",
    x = "Calories Burned (kcal)",
    y = "Frequency"
  ) +
  theme_minimal()
