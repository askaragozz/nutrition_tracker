class Meal < ApplicationRecord
  belongs_to :user
  has_many :food_entries, dependent: :destroy
  has_many :foods, through: :food_entries

  validates :date, presence: true

  enum meal_type: { breakfast: 0, lunch: 1, dinner: 2, snack: 3 }


  def total_calories
    food_entries.includes(:food).sum { |fe| fe.food.calories * fe.quantity }
  end

end
