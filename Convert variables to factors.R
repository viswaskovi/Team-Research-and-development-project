fitness_hs$category <- factor(fitness_hs$category)

fitness_hs$attended_fac <- factor(
  fitness_hs$attended,
  levels = c(0, 1),
  labels = c("No", "Yes")
)
