t_test_result <- t.test(Calories_Burned ~ Time_Slot, data = df)
print(t_test_result)
