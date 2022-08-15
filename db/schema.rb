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

ActiveRecord::Schema[7.0].define(version: 2022_08_15_170103) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "name"
    t.string "designation"
    t.integer "colour"
    t.integer "purchase_price"
    t.integer "sale_price"
    t.string "code"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles_categories", id: false, force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "article_id", null: false
  end

  create_table "articles_suppliers", id: false, force: :cascade do |t|
    t.bigint "supplier_id", null: false
    t.bigint "article_id", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "compagny_id", null: false
    t.index ["compagny_id"], name: "index_categories_on_compagny_id"
  end

  create_table "compagnies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "compagny_id", null: false
    t.index ["compagny_id"], name: "index_suppliers_on_compagny_id"
  end

  add_foreign_key "categories", "compagnies"
  add_foreign_key "suppliers", "compagnies"
end
