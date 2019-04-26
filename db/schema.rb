# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181130141525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "document_number"
    t.string "address"
    t.string "phone"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "numberings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "number"
  end

  create_table "people", force: :cascade do |t|
    t.bigint "people_category_id"
    t.string "name"
    t.boolean "status"
    t.string "document"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["people_category_id"], name: "index_people_on_people_category_id"
  end

  create_table "people_categories", force: :cascade do |t|
    t.string "name"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "brand_id"
    t.bigint "category_id"
    t.decimal "cost"
    t.integer "min_stock"
    t.integer "max_stock"
    t.string "barcode"
    t.integer "stock"
    t.bigint "numbering_id"
    t.integer "code"
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["numbering_id"], name: "index_products_on_numbering_id"
  end

  create_table "sale_products", force: :cascade do |t|
    t.bigint "sale_id"
    t.bigint "product_id"
    t.integer "quantity"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number"
    t.index ["product_id"], name: "index_sale_products_on_product_id"
    t.index ["sale_id"], name: "index_sale_products_on_sale_id"
  end

  create_table "sales", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "seller_id"
    t.integer "client_id"
  end

  create_table "stocking_products", force: :cascade do |t|
    t.bigint "stocking_id"
    t.bigint "product_id"
    t.bigint "numbering_id"
    t.integer "entry"
    t.integer "out", default: 0
    t.integer "balance"
    t.bigint "sale_product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["numbering_id"], name: "index_stocking_products_on_numbering_id"
    t.index ["product_id"], name: "index_stocking_products_on_product_id"
    t.index ["sale_product_id"], name: "index_stocking_products_on_sale_product_id"
    t.index ["stocking_id"], name: "index_stocking_products_on_stocking_id"
  end

  create_table "stockings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "provider_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "people", "people_categories"
  add_foreign_key "products", "brands"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "numberings"
  add_foreign_key "sale_products", "products"
  add_foreign_key "sale_products", "sales"
  add_foreign_key "stocking_products", "numberings"
  add_foreign_key "stocking_products", "products"
  add_foreign_key "stocking_products", "sale_products"
  add_foreign_key "stocking_products", "stockings"
end
