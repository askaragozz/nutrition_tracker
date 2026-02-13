class Category < ApplicationRecord
    has_many :food_items

    validates :name, presence: true

end
