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

ActiveRecord::Schema.define(version: 20160311091231) do

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone_no"
    t.text     "address"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image"
    t.string   "password"
  end

  add_index "students", ["teacher_id"], name: "index_students_on_teacher_id"

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone_no"
    t.text     "address"
    t.string   "subject"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "password"
  end
end
