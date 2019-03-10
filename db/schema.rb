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

ActiveRecord::Schema.define(version: 2019_03_10_223508) do

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.string "unit"
    t.float "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotations", force: :cascade do |t|
    t.integer "u_id"
    t.float "total_cost"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_quotations_on_user_id"
  end

  create_table "user_products", force: :cascade do |t|
    t.integer "quotation_id"
    t.string "type"
    t.date "start_date"
    t.date "end_date"
    t.string "recurring_on"
    t.time "start_time"
    t.time "end_time"
    t.integer "qty"
    t.float "cost"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "length"
    t.index ["product_id"], name: "index_user_products_on_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
