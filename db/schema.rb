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

ActiveRecord::Schema.define(version: 20161008205329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bands_played_withs", force: :cascade do |t|
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "bands_id"
    t.index ["bands_id"], name: "index_bands_played_withs_on_bands_id", using: :btree
  end

  create_table "event_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "event_category_id"
    t.index ["event_category_id"], name: "index_events_on_event_category_id", using: :btree
  end

  create_table "expenses", force: :cascade do |t|
    t.date     "date"
    t.integer  "amount"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "income_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.date     "date"
    t.integer  "amount"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "income_category_id"
    t.integer  "event_id"
    t.integer  "event_category_id"
    t.index ["event_category_id"], name: "index_incomes_on_event_category_id", using: :btree
    t.index ["event_id"], name: "index_incomes_on_event_id", using: :btree
    t.index ["income_category_id"], name: "index_incomes_on_income_category_id", using: :btree
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bands_played_withs", "bands", column: "bands_id"
  add_foreign_key "events", "event_categories"
  add_foreign_key "incomes", "event_categories"
  add_foreign_key "incomes", "events"
  add_foreign_key "incomes", "income_categories"
end
