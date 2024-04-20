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

ActiveRecord::Schema[7.1].define(version: 2024_04_20_215438) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.integer "product_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
  end

  create_table "customer_profiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "phone"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "cart_id"
    t.date "date"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "order_id"
    t.integer "cart_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.text "description"
    t.decimal "price"
    t.integer "categories_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.integer "customer_id"
    t.date "data"
  end

  add_foreign_key "carts", "products"
  add_foreign_key "orders", "carts"
  add_foreign_key "orders", "customers"
  add_foreign_key "payments", "carts"
  add_foreign_key "payments", "customers"
  add_foreign_key "payments", "orders"
  add_foreign_key "shipments", "customers"
end
