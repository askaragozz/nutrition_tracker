# Destroy existing data (optional, for clean seeding)
FoodEntry.destroy_all
Meal.destroy_all
Food.destroy_all
Category.destroy_all
User.destroy_all

# ---------------------
# Users
# ---------------------
user = User.create!(name: "Demo User")

# ---------------------
# Categories
# ---------------------
fruits = Category.create!(name: "fruits")
vegetables   = Category.create!(name: "vegetables")
sea_foods = Category.create!(name: "sea_foods")

# ---------------------
# Foods
# ---------------------
# 3 samples of fruits
apple = Food.create!(name: "Apple", calories: 52, protein: 0.3, carbs: 14.0, fat: 0.2, category: fruits)
pear  = Food.create!(name: "Pear", calories: 57, protein: 0.4, carbs: 15.0, fat: 0.1, category: fruits)
peach = Food.create!(name: "Peach", calories: 39, protein: 0.9, carbs: 10.0, fat: 0.3, category: fruits)

# 3 samples of vegetables
carrot      = Food.create!(name: "Carrot", calories: 41, protein: 0.9, carbs: 10.0, fat: 0.2, category: vegetables)
spinach     = Food.create!(name: "Spinach", calories: 23, protein: 2.9, carbs: 3.6, fat: 0.4, category: vegetables)
broccoli    = Food.create!(name: "Broccoli", calories: 34, protein: 2.8, carbs: 7.0, fat: 0.4, category: vegetables)

# 3 samples of sea foods
salmon      = Food.create!(name: "Salmon", calories: 208, protein: 20.0, carbs: 0.0, fat: 13.0, category: sea_foods)
tuna        = Food.create!(name: "Tuna", calories: 132, protein: 28.0, carbs: 0.0, fat: 1.0, category: sea_foods)
shrimp      = Food.create!(name: "Shrimp", calories: 99, protein: 24.0, carbs: 0.2, fat: 0.3, category: sea_foods)




# ---------------------
# Sample Meal
# ---------------------
meal = Meal.create!(user: user, date: Date.today, meal_type: :breakfast)

# Food Entries for the meal
FoodEntry.create!(meal: meal, food: apple, quantity: 1)       # 1 apple
FoodEntry.create!(meal: meal, food: broccoli, quantity: 1)    # 1 serving of broccoli
