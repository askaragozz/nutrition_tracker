require 'rails_helper'

RSpec.describe Food, type: :model do
  it { should belong_to(:category) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:calories) }
  it { should validate_numericality_of(:calories).is_greater_than_or_equal_to(0) }
end
