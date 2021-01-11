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

ActiveRecord::Schema.define(version: 2021_01_11_114520) do

  create_table "colors", force: :cascade do |t|
    t.integer "color_id"
    t.integer "rgb"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "product_id"
    t.string "product_name"
    t.string "description"
    t.decimal "retail_price"
    t.integer "sales"
    t.string "image_directory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "color_id"
    t.integer "size_id"
    t.integer "type_id"
    t.index ["color_id"], name: "index_products_on_color_id"
    t.index ["size_id"], name: "index_products_on_size_id"
    t.index ["type_id"], name: "index_products_on_type_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.integer "size_id"
    t.string "size_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.integer "type_id"
    t.string "product_type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
