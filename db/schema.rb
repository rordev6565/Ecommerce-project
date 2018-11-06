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

ActiveRecord::Schema.define(version: 2018_11_06_134856) do

  create_table "ammunitions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapon_ammunitions", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "ammunition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ammunition_id"], name: "index_weapon_ammunitions_on_ammunition_id"
    t.index ["weapon_id"], name: "index_weapon_ammunitions_on_weapon_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "weight"
    t.decimal "price"
    t.string "image"
    t.boolean "in_stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
  end

end
