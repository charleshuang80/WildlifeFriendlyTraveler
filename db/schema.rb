# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161008184619) do

  create_table "animal_groups", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "aliases"
    t.string   "primary_photo_file_name"
    t.string   "primary_photo_content_type"
    t.integer  "primary_photo_file_size"
    t.datetime "primary_photo_updated_at"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "animal_groups", ["section_id"], name: "index_animal_groups_on_section_id"

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_groups", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "primary_photo_file_name"
    t.string   "primary_photo_content_type"
    t.integer  "primary_photo_file_size"
    t.datetime "primary_photo_updated_at"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_groups", ["section_id"], name: "index_product_groups_on_section_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "product_group_id"
    t.integer  "animal_group_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "products", ["animal_group_id"], name: "index_products_on_animal_group_id"
  add_index "products", ["product_group_id"], name: "index_products_on_product_group_id"

  create_table "sections", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
