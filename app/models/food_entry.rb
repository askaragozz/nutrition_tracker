class FoodEntry < ApplicationRecord
  belongs_to :meal
  belongs_to :food

  validates :food_id, uniqueness: { scope: :meal_id }
  validates :quantity, presence: true, numericality: { greater_than: 0 }

end
