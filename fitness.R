library(ggplot2)

fitness <- read.csv("fitness_class_2212.csv")

str(fitness)
table(fitness$category)

fitness_hs <- subset(fitness, category %in% c("HIIT", "Strength"))

fitness_hs$category <- factor(fitness_hs$category)

fitness_hs$attended_fac <- factor(
  fitness_hs$attended,
  levels = c(0, 1),
  labels = c("No", "Yes")
)

attend_tab <- table(fitness_hs$category, fitness_hs$attended_fac)
attend_tab

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

