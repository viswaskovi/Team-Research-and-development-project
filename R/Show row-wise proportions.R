prop.table(attend_tab, margin = 1)

library(ggplot2)

ggplot(fitness_hs, aes(x = category, fill = attended_fac)) +
  geom_bar(position = "fill") +
  labs(
    title = "Proportion of Attendance by Class Type (HIIT vs Strength)",
    x = "Class Type",
    y = "Proportion of Bookings",
    fill = "Attended"
  ) +
  theme_minimal()
chisq_res <- chisq.test(attend_tab)

chisq_res
chisq_res$expected
