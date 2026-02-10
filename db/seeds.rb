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
protein = Category.create!(name: "Protein")
carbs   = Category.create!(name: "Carbs")
fat     = Category.create!(name: "Fat")

# ---------------------
# Foods
# ---------------------
egg     = Food.create!(name: "Egg", calories: 78, protein: 6.0, carbs: 0.6, fat: 5.0, category: protein)
chicken = Food.create!(name: "Chicken Breast", calories: 165, protein: 31.0, carbs: 0.0, fat: 3.6, category: protein)
rice    = Food.create!(name: "Rice", calories: 130, protein: 2.7, carbs: 28.0, fat: 0.3, category: carbs)

# ---------------------
# Sample Meal
# ---------------------
meal = Meal.create!(user: user, date: Date.today, meal_type: :breakfast)

# Food Entries for the meal
FoodEntry.create!(meal: meal, food: egg, quantity: 2)       # 2 eggs
FoodEntry.create!(meal: meal, food: rice, quantity: 1.5)    # 1.5 servings of rice
