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

ActiveRecord::Schema.define(version: 20170331163133) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.integer  "str"
    t.integer  "str_mod"
    t.integer  "dex"
    t.integer  "dex_mod"
    t.integer  "con"
    t.integer  "con_mod"
    t.integer  "int"
    t.integer  "int_mod"
    t.integer  "wis"
    t.integer  "wis_mod"
    t.integer  "cha"
    t.integer  "cha_mod"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["character_id"], name: "index_abilities_on_character_id", using: :btree
  end

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "class_type"
    t.integer  "level"
    t.string   "race"
    t.string   "alignment"
    t.string   "deity"
    t.string   "size"
    t.integer  "age"
    t.string   "gender"
    t.integer  "height"
    t.integer  "weight"
    t.string   "eyes"
    t.string   "hair"
    t.string   "skin"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "abilities", "characters"
end
