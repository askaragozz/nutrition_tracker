class Food < ApplicationRecord
    belongs_to :category

    validates :name, uniqueness: { scope: :category_id }, presence: true
    validates :calories, :protein, :carbs, :fat,
          presence: true,
          numericality: { greater_than_or_equal_to: 0 }


end
