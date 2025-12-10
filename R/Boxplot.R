ggplot(df, aes(x = Time_Slot, y = Calories_Burned, fill = Time_Slot)) +
  geom_boxplot() +
  labs(
    title = "Calories Burned by Time Slot",
    x = "Time Slot",
    y = "Calories Burned"
  ) +
  theme_minimal()
