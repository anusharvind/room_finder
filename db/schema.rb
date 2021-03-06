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

ActiveRecord::Schema.define(version: 20160507081904) do

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.string   "area"
    t.integer  "room_type"
    t.string   "total_limit_integer"
    t.integer  "current_vacancy"
    t.string   "city"
    t.string   "gender_preference"
    t.boolean  "visibility"
    t.float    "total_rent"
    t.float    "expected_rent"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "rooms", ["user_id"], name: "index_rooms_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email_id"
    t.string   "city"
    t.integer  "gender"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
  end

end
