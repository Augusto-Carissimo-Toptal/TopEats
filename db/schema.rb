ActiveRecord::Schema[7.0].define(version: 2023_01_04_144338) do
  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.integer "phone_number"
    t.string "email"
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
