class CreateMeals < ActiveRecord::Migration[7.1]
  def change
    create_table :meals do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date, null: false
      t.integer :meal_type, null: false

      t.timestamps
    end

    add_index :meals, [:user_id, :date]
    add_index :meals, [:user_id, :date, :meal_type], unique: true
    add_check_constraint :meals, "meal_type IN (0,1,2,3)", name: "meal_type_range"

  end
end
