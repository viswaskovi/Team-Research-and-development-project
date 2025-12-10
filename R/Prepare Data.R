df <- data %>%
  select(Time_Slot, Calories_Burned) %>%
  drop_na() %>%
  mutate(
    Time_Slot = factor(Time_Slot, levels = c("Morning", "Evening")),
    Calories_Burned = as.numeric(Calories_Burned)
  )

summary(df)
