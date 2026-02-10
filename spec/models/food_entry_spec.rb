require 'rails_helper'

RSpec.describe FoodEntry, type: :model do
  it { should belong_to(:meal) }
  it { should belong_to(:food) }
  it { should validate_presence_of(:quantity) }
  it { should validate_numericality_of(:quantity).is_greater_than(0) }
end
