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

ActiveRecord::Schema.define(version: 20131115220333) do

  create_table "brands", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fabrication_years", force: true do |t|
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "pages", force: true do |t|
    t.string   "title",      null: false
    t.text     "body"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["slug"], name: "index_pages_on_slug"
  add_index "pages", ["title"], name: "index_pages_on_title"

  create_table "refuellings", force: true do |t|
    t.date     "date"
    t.integer  "km"
    t.decimal  "liter_price"
    t.float    "liters"
    t.string   "gas_station"
    t.float    "average_consumption"
    t.integer  "km_runned"
    t.integer  "vehicle_id"
    t.float    "total_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicle_models", force: true do |t|
    t.integer  "brand_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicle_models_fabrication_years", force: true do |t|
    t.integer  "vehicle_model_id"
    t.integer  "fabrication_year_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: true do |t|
    t.integer  "vehicle_model_id"
    t.integer  "fabrication_year_id"
    t.integer  "user_id"
    t.string   "image"
    t.integer  "mileage"
    t.string   "status"
    t.string   "numberplate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
  end

end
