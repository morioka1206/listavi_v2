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

ActiveRecord::Schema.define(version: 2021_05_28_130402) do

  create_table "grapes", charset: "utf8", force: :cascade do |t|
    t.string "grape_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shops", charset: "utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_shops_on_email", unique: true
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "wholesalers", charset: "utf8", force: :cascade do |t|
    t.string "company_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "winaries", charset: "utf8", force: :cascade do |t|
    t.string "winary_name"
    t.string "winary_name_kana"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wine_grapes", charset: "utf8", force: :cascade do |t|
    t.bigint "wine_id"
    t.bigint "grape_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grape_id"], name: "index_wine_grapes_on_grape_id"
    t.index ["wine_id"], name: "index_wine_grapes_on_wine_id"
  end

  create_table "wines", charset: "utf8", force: :cascade do |t|
    t.string "wine_name", null: false
    t.string "wine_name_kana"
    t.integer "vintage"
    t.text "comment"
    t.integer "purchase_price"
    t.integer "selling_price"
    t.integer "stock"
    t.bigint "shop_id", null: false
    t.bigint "winary_id", null: false
    t.bigint "wholesaler_id"
    t.boolean "onlist", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "state"
    t.integer "country_id"
    t.index ["shop_id"], name: "index_wines_on_shop_id"
    t.index ["wholesaler_id"], name: "index_wines_on_wholesaler_id"
    t.index ["winary_id"], name: "index_wines_on_winary_id"
  end

  add_foreign_key "wine_grapes", "grapes"
  add_foreign_key "wine_grapes", "wines"
  add_foreign_key "wines", "shops"
  add_foreign_key "wines", "wholesalers"
  add_foreign_key "wines", "winaries"
end
