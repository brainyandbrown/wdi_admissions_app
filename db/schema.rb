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

ActiveRecord::Schema.define(version: 20150219144651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "prospects", force: :cascade do |t|
    t.integer "students_id",    null: false
    t.integer "admissions_id"
    t.integer "instructors_id"
    t.integer "status",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "type"
    t.string   "f_name"
    t.string   "l_name"
    t.string   "sex"
    t.date     "born_on"
    t.string   "phone"
    t.string   "email",                  null: false
    t.string   "password_digest",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "portfolio_file_name"
    t.string   "portfolio_content_type"
    t.integer  "portfolio_file_size"
    t.datetime "portfolio_updated_at"
  end

end
