class FoodEntry < ApplicationRecord
  belongs_to :meal
  belongs_to :food_item

  validates :food_item_id, uniqueness: { scope: :meal_id }
  validates :quantity, presence: true, numericality: { greater_than: 0 }

end
