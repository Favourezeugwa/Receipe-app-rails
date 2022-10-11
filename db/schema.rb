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

ActiveRecord::Schema[7.0].define(version: 2022_10_11_142748) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "measurement_unit"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id", null: false
    t.index ["users_id"], name: "index_inventories_on_users_id"
  end

  create_table "inventory_foods", force: :cascade do |t|
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "inventories_id", null: false
    t.bigint "foods_id", null: false
    t.index ["foods_id"], name: "index_inventory_foods_on_foods_id"
    t.index ["inventories_id"], name: "index_inventory_foods_on_inventories_id"
  end

  create_table "receipe_foods", force: :cascade do |t|
    t.string "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "receipes_id", null: false
    t.bigint "foods_id", null: false
    t.index ["foods_id"], name: "index_receipe_foods_on_foods_id"
    t.index ["receipes_id"], name: "index_receipe_foods_on_receipes_id"
  end

  create_table "receipes", force: :cascade do |t|
    t.string "name"
    t.string "preparation_time"
    t.string "cooking_time"
    t.text "description"
    t.boolean "public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id", null: false
    t.index ["users_id"], name: "index_receipes_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "inventories", "users", column: "users_id"
  add_foreign_key "inventory_foods", "foods", column: "foods_id"
  add_foreign_key "inventory_foods", "inventories", column: "inventories_id"
  add_foreign_key "receipe_foods", "foods", column: "foods_id"
  add_foreign_key "receipe_foods", "receipes", column: "receipes_id"
  add_foreign_key "receipes", "users", column: "users_id"
end
