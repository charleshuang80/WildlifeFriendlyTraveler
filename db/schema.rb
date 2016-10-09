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

ActiveRecord::Schema.define(version: 20161009000102) do

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

  create_table "country_issues", force: :cascade do |t|
    t.integer  "country_id"
    t.integer  "issueable_id"
    t.string   "issueable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "top_concern",    default: false, null: false
  end

  add_index "country_issues", ["issueable_id", "issueable_type"], name: "index_country_issues_on_issueable_id_and_issueable_type"

  create_table "pictures", force: :cascade do |t|
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "name"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pictures", ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable_type_and_imageable_id"

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
