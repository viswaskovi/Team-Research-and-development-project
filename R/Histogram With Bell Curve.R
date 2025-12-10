ggplot(df, aes(x = Calories_Burned)) +
  geom_histogram(aes(y = ..density..),
                 bins = 30, fill = "skyblue", color = "black", alpha = 0.7) +
  stat_function(
    fun = dnorm,
    args = list(
      mean = mean(df$Calories_Burned),
      sd = sd(df$Calories_Burned)
    ),
    color = "red",
    linewidth = 1.2
  ) +
  labs(
    title = "Histogram of Calories Burned with Bell Curve",
    x = "Calories Burned (kcal)",
    y = "Density"
  ) +
  theme_minimal()
