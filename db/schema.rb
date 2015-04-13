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

ActiveRecord::Schema.define(version: 20150327172004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "macros", force: :cascade do |t|
    t.string   "calories"
    t.string   "carbs"
    t.string   "fat"
    t.string   "protein"
    t.date     "logged_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "name",               limit: 255
    t.string   "email",              limit: 255, null: false
    t.string   "encrypted_password", limit: 128, null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "weighins", force: :cascade do |t|
    t.integer  "withings_id"
    t.string   "weight"
    t.string   "bodyfat_mass"
    t.string   "bodyfat_percentage"
    t.string   "lean_mass"
    t.datetime "taken_at"
  end

end