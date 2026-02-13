# Destroy existing data (optional, for clean seeding)
FoodEntry.destroy_all
Meal.destroy_all
FoodItem.destroy_all
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
dairy   = Category.create!(name: "dairy")
meat = Category.create!(name: "meat")
vegetables = Category.create!(name: "vegetables")
sea_foods = Category.create!(name: "sea foods")

# ---------------------
# food_items
# ---------------------
# 3 samples of fruits
apple = FoodItem.create!(name: "Apple", description: "A crisp and juicy apple", calories: 52, protein: 0.3, carbs: 14.0, fat: 0.2, category: fruits)
apple_pie = FoodItem.create!(name: "Apple Pie", description: "A traditional apple pie", calories: 237, protein: 2.1, carbs: 34.0, fat: 11.0, category: fruits)
apple_juice = FoodItem.create!(name: "Apple Juice", description: "Freshly squeezed apple juice", calories: 46, protein: 0.1, carbs: 11.0, fat: 0.1, category: fruits)
# 3 samples of dairy
milk = FoodItem.create!(name: "Milk", description: "Whole milk", calories: 42, protein: 3.4, carbs: 5.0, fat: 1.0, category: dairy)
milkshake = FoodItem.create!(name: "Milkshake", description:"A creamy milkshake with vanilla ice cream", calories: 200, protein: 8.0, carbs: 30.0, fat: 5.0, category: dairy)
milk_tea = FoodItem.create!(name: "Milk Tea", description: "A warm and comforting milk tea", calories: 150, protein: 4.0, carbs: 20.0, fat: 3.0, category: dairy)
# 3 samples of chicken
chicken_breast = FoodItem.create!(name: "Chicken Breast", description: "A lean and tender chicken breast", calories: 165, protein: 31.0, carbs: 0.0, fat: 3.6, category: meat)
chicken_thigh = FoodItem.create!(name: "Chicken Thigh", description: "A flavorful and juicy chicken thigh", calories: 209, protein: 26.0, carbs: 0.0, fat: 10.0, category: meat)
chicken_wings = FoodItem.create!(name: "Chicken Wings", description:"A crispy and delicious chicken wing", calories: 290, protein: 27.0, carbs: 0.0, fat: 19.0, category: meat)

# 3 samples of vegetables
carrot      = FoodItem.create!(name: "Carrot", description:"A crunchy and sweet root vegetable", calories: 41, protein: 0.9, carbs: 10.0, fat: 0.2, category: vegetables)
spinach     = FoodItem.create!(name: "Spinach", description:"A leafy green vegetable rich in iron and vitamins", calories: 23, protein: 2.9, carbs: 3.6, fat: 0.4, category: vegetables)
broccoli    = FoodItem.create!(name: "Broccoli", description:"A nutrient-dense vegetable with a distinctive flower head", calories: 34, protein: 2.8, carbs: 7.0, fat: 0.4, category: vegetables)

# 3 samples of sea foods
salmon      = FoodItem.create!(name: "Salmon", description: "A rich and flavorful fish", calories: 208, protein: 20.0, carbs: 0.0, fat: 13.0, category: sea_foods)
tuna        = FoodItem.create!(name: "Tuna", description: "A lean and protein-rich fish", calories: 132, protein: 28.0, carbs: 0.0, fat: 1.0, category: sea_foods)
shrimp      = FoodItem.create!(name: "Shrimp", description:"A small and delicious crustacean", calories: 99, protein: 24.0, carbs: 0.2, fat: 0.3, category: sea_foods)




# ---------------------
# Sample Meal
# ---------------------
meal = Meal.create!(user: user, date: Date.today, meal_type: :breakfast)

# Food Entries for the meal
FoodEntry.create!(meal: meal, food_item: apple, quantity: 1)       # 1 apple
FoodEntry.create!(meal: meal, food_item: broccoli, quantity: 1)    # 1 serving of broccoli
