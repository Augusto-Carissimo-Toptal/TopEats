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

ActiveRecord::Schema[7.0].define(version: 2023_01_05_123542) do
  create_table "addresses", force: :cascade do |t|
    t.string "address_field"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_menus", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "menu_items_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_items_id"], name: "index_order_menus_on_menu_items_id"
    t.index ["order_id"], name: "index_order_menus_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.float "total_price"
    t.integer "courier_id"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courier_id"], name: "index_orders_on_courier_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "user_addresses", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "address_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_user_addresses_on_address_id"
    t.index ["user_id"], name: "index_user_addresses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.integer "phone_number"
    t.string "email"
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "address_id", null: false
    t.index ["address_id"], name: "index_users_on_address_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vehicle_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "courier_id"
  end

  add_foreign_key "order_menus", "menu_items", column: "menu_items_id"
  add_foreign_key "order_menus", "orders"
  add_foreign_key "orders", "couriers"
  add_foreign_key "orders", "customers"
  add_foreign_key "user_addresses", "addresses"
  add_foreign_key "user_addresses", "users"
  add_foreign_key "users", "addresses"
end
