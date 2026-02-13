class FoodItem < ApplicationRecord
    belongs_to :category

    validates :name, uniqueness: { scope: :category_id }, presence: true
    validates :calories, :protein, :carbs, :fat,
          presence: true,
          numericality: { greater_than_or_equal_to: 0 }


    def kcal
      calories
    end

    def kj
      calories * 4.184
    end

    def similar_food_items
      # Trigram index will be added to the name column and simillarity search will be implemented using pg_search gem in the future.
      FoodItem
        .where("LOWER(name) LIKE ?", "%#{name[0..3].downcase.split.first}%")
        .where.not(id: id)
        .limit(5)
    end

end
