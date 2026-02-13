class CreateFoodItems < ActiveRecord::Migration[7.1]
  def change
    create_table :food_items do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :calories, precision: 10, scale: 2, null: false
      t.decimal :protein, precision: 10, scale: 2, null: false
      t.decimal :carbs, precision: 10, scale: 2, null: false
      t.decimal :fat, precision: 10, scale: 2, null: false

      t.references :category, null: false, foreign_key: true

      t.timestamps
    end

    add_index :food_items, :name
  end
end
