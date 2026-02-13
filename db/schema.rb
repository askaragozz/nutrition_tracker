# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2026_02_10_130944) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
  end

  create_table "food_entries", force: :cascade do |t|
    t.bigint "meal_id", null: false
    t.bigint "food_item_id", null: false
    t.decimal "quantity", precision: 10, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_item_id"], name: "index_food_entries_on_food_item_id"
    t.index ["meal_id", "food_item_id"], name: "index_food_entries_on_meal_id_and_food_item_id", unique: true
    t.index ["meal_id"], name: "index_food_entries_on_meal_id"
    t.check_constraint "quantity > 0::numeric", name: "food_entries_quantity_positive"
  end

  create_table "food_items", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.decimal "calories", precision: 10, scale: 2, null: false
    t.decimal "protein", precision: 10, scale: 2, null: false
    t.decimal "carbs", precision: 10, scale: 2, null: false
    t.decimal "fat", precision: 10, scale: 2, null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_food_items_on_category_id"
    t.index ["name"], name: "index_food_items_on_name"
  end

  create_table "meals", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.date "date", null: false
    t.integer "meal_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "date", "meal_type"], name: "index_meals_on_user_id_and_date_and_meal_type", unique: true
    t.index ["user_id", "date"], name: "index_meals_on_user_id_and_date"
    t.index ["user_id"], name: "index_meals_on_user_id"
    t.check_constraint "meal_type = ANY (ARRAY[0, 1, 2, 3])", name: "meal_type_range"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "food_entries", "food_items"
  add_foreign_key "food_entries", "meals"
  add_foreign_key "food_items", "categories"
  add_foreign_key "meals", "users"
end
