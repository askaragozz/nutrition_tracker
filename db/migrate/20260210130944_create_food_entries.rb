class CreateFoodEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :food_entries do |t|
      t.references :meal, null: false, foreign_key: true
      t.references :food_item, null: false, foreign_key: true
      t.decimal :quantity, precision: 10, scale: 2, null: false

      t.timestamps
    end

    add_index :food_entries, [:meal_id, :food_item_id], unique: true
    add_check_constraint :food_entries, "quantity > 0", name: "food_entries_quantity_positive"

  end
end
