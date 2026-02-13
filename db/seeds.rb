# =====================================
# RESET DATA
# =====================================
FoodEntry.destroy_all
Meal.destroy_all
FoodItem.destroy_all
Category.destroy_all
User.destroy_all

# =====================================
# USER
# =====================================
user = User.create!(name: "Demo User")

# =====================================
# CATEGORIES
# =====================================
category_names = %w[
  beans_legumes
  beverages
  breads_cereals
  dairy
  eggs
  fast_food
  sea_foods
  fruits
  meat
  nuts
  other
  pasta_rice
  salads
  sauces
  snacks
  soup
  sweets_desserts
  vegetables
]

categories = {}

category_names.each do |name|
  categories[name] = Category.create!(name: name)
end

# =====================================
# FOOD ITEMS
# =====================================

def create_food(category, name, description, calories, protein, carbs, fat)
  FoodItem.create!(
    name: name,
    description: description,
    calories: calories,
    protein: protein,
    carbs: carbs,
    fat: fat,
    category: category
  )
end

# ---- Fruits
create_food(categories["fruits"], "Apple", "Fresh red apple", 52, 0.3, 14.0, 0.2)
create_food(categories["fruits"], "Banana", "Ripe banana", 89, 1.1, 23.0, 0.3)
create_food(categories["fruits"], "Orange", "Juicy orange", 47, 0.9, 12.0, 0.1)

# ---- Dairy
create_food(categories["dairy"], "Milk", "Whole milk", 42, 3.4, 5.0, 1.0)
create_food(categories["dairy"], "Cheese", "Cheddar cheese", 402, 25.0, 1.3, 33.0)
create_food(categories["dairy"], "Yogurt", "Plain yogurt", 59, 10.0, 3.6, 0.4)

# ---- Meat
create_food(categories["meat"], "Chicken Breast", "Grilled chicken breast", 165, 31.0, 0.0, 3.6)
create_food(categories["meat"], "Beef Steak", "Grilled beef steak", 271, 25.0, 0.0, 19.0)
create_food(categories["meat"], "Turkey", "Roasted turkey", 189, 29.0, 0.0, 7.0)

# ---- Vegetables
create_food(categories["vegetables"], "Carrot", "Fresh carrot", 41, 0.9, 10.0, 0.2)
create_food(categories["vegetables"], "Broccoli", "Steamed broccoli", 34, 2.8, 7.0, 0.4)
create_food(categories["vegetables"], "Spinach", "Raw spinach", 23, 2.9, 3.6, 0.4)

# ---- Sea Foods
create_food(categories["sea_foods"], "Salmon", "Grilled salmon", 208, 20.0, 0.0, 13.0)
create_food(categories["sea_foods"], "Tuna", "Fresh tuna", 132, 28.0, 0.0, 1.0)
create_food(categories["sea_foods"], "Shrimp", "Boiled shrimp", 99, 24.0, 0.2, 0.3)

# ---- Eggs
create_food(categories["eggs"], "Boiled Egg", "Hard boiled egg", 155, 13.0, 1.1, 11.0)
create_food(categories["eggs"], "Omelette", "Plain omelette", 154, 11.0, 2.0, 12.0)
create_food(categories["eggs"], "Scrambled Eggs", "Scrambled eggs", 148, 10.0, 1.6, 11.0)

# ---- Fast Food
create_food(categories["fast_food"], "Burger", "Beef burger", 295, 17.0, 30.0, 12.0)
create_food(categories["fast_food"], "Pizza", "Cheese pizza slice", 266, 11.0, 33.0, 10.0)
create_food(categories["fast_food"], "Fries", "French fries", 312, 3.4, 41.0, 15.0)

# ---- Nuts
create_food(categories["nuts"], "Almonds", "Raw almonds", 579, 21.0, 22.0, 50.0)
create_food(categories["nuts"], "Walnuts", "Fresh walnuts", 654, 15.0, 14.0, 65.0)
create_food(categories["nuts"], "Peanuts", "Salted peanuts", 567, 26.0, 16.0, 49.0)

# ---- Pasta & Rice
create_food(categories["pasta_rice"], "White Rice", "Cooked white rice", 130, 2.7, 28.0, 0.3)
create_food(categories["pasta_rice"], "Brown Rice", "Cooked brown rice", 111, 2.6, 23.0, 0.9)
create_food(categories["pasta_rice"], "Spaghetti", "Boiled spaghetti", 158, 6.0, 31.0, 1.0)

# ---- Salads
create_food(categories["salads"], "Greek Salad", "Salad with feta", 150, 4.0, 8.0, 12.0)
create_food(categories["salads"], "Caesar Salad", "Classic caesar salad", 190, 7.0, 10.0, 15.0)
create_food(categories["salads"], "Garden Salad", "Mixed greens", 80, 2.0, 15.0, 1.0)

# ---- Sauces
create_food(categories["sauces"], "Ketchup", "Tomato ketchup", 112, 1.3, 26.0, 0.2)
create_food(categories["sauces"], "Mayonnaise", "Classic mayo", 680, 1.0, 0.6, 75.0)
create_food(categories["sauces"], "Soy Sauce", "Salty soy sauce", 53, 8.0, 5.0, 0.6)

# ---- Snacks
create_food(categories["snacks"], "Popcorn", "Air popped popcorn", 387, 13.0, 78.0, 4.5)
create_food(categories["snacks"], "Protein Bar", "Chocolate protein bar", 250, 20.0, 23.0, 7.0)
create_food(categories["snacks"], "Crackers", "Salted crackers", 502, 7.0, 61.0, 24.0)

# ---- Soup
create_food(categories["soup"], "Lentil Soup", "Warm lentil soup", 116, 9.0, 20.0, 0.4)
create_food(categories["soup"], "Chicken Soup", "Classic chicken soup", 75, 6.0, 8.0, 2.0)
create_food(categories["soup"], "Tomato Soup", "Creamy tomato soup", 74, 2.0, 15.0, 1.0)

# ---- Sweets & Desserts
create_food(categories["sweets_desserts"], "Chocolate Cake", "Slice of cake", 371, 4.0, 50.0, 17.0)
create_food(categories["sweets_desserts"], "Ice Cream", "Vanilla ice cream", 207, 3.5, 24.0, 11.0)
create_food(categories["sweets_desserts"], "Donut", "Glazed donut", 452, 4.9, 51.0, 25.0)

# ---- Bean Legumes
create_food(categories["beans_legumes"], "Lentils", "Boiled lentils", 116, 9.0, 20.0, 0.4)
create_food(categories["beans_legumes"], "Chickpeas", "Cooked chickpeas", 164, 9.0, 27.0, 2.6)
create_food(categories["beans_legumes"], "Kidney Beans", "Boiled kidney beans", 127, 8.7, 23.0, 0.5)

# ---- Beverages
create_food(categories["beverages"], "Water", "Plain water", 0, 0.0, 0.0, 0.0)
create_food(categories["beverages"], "Orange Juice", "Fresh orange juice", 45, 0.7, 10.0, 0.2)
create_food(categories["beverages"], "Black Coffee", "Unsweetened coffee", 2, 0.3, 0.0, 0.0)

# ---- Other
create_food(categories["other"], "Tofu", "Soy tofu", 76, 8.0, 1.9, 4.8)
create_food(categories["other"], "Honey", "Natural honey", 304, 0.3, 82.0, 0.0)
create_food(categories["other"], "Granola", "Mixed granola", 471, 10.0, 64.0, 20.0)

# =====================================
# SAMPLE MEAL
# =====================================
meal = Meal.create!(
  user: user,
  date: Date.today,
  meal_type: :breakfast
)

FoodEntry.create!(meal: meal, food_item: FoodItem.first, quantity: 1)
FoodEntry.create!(meal: meal, food_item: FoodItem.last, quantity: 1)

puts "Seeding completed successfully!"
