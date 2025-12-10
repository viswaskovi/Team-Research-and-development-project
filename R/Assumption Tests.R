shapiro.test(df$Calories_Burned[df$Time_Slot == "Morning"])
shapiro.test(df$Calories_Burned[df$Time_Slot == "Evening"])

leveneTest(Calories_Burned ~ Time_Slot, df)
