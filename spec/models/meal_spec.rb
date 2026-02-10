require 'rails_helper'

RSpec.describe Meal, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:food_entries).dependent(:destroy) }
  it { should have_many(:foods).through(:food_entries) }
  it { should validate_presence_of(:date) }

  describe "#total_calories" do
    it "calculates the sum of calories correctly" do
      user = User.create!(name: "Test User")
      category = Category.create!(name: "Protein")
      egg = Food.create!(name: "Egg", calories: 78, protein: 6, carbs: 0.6, fat: 5, category: category)
      meal = Meal.create!(user: user, date: Date.today, meal_type: :breakfast)
      FoodEntry.create!(meal: meal, food: egg, quantity: 2)

      expect(meal.total_calories).to eq(156) # 78 * 2
    end
  end
end
