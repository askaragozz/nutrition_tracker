class User < ApplicationRecord

  has_many :meals, dependent: :destroy

  validates :name, presence: true
end
