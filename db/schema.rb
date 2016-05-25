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

ActiveRecord::Schema.define(version: 20160525052543) do

  create_table "bruits", force: :cascade do |t|
    t.string   "volume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carotid_exams", force: :cascade do |t|
    t.float    "blood_pressure_right"
    t.float    "blood_pressure_left"
    t.float    "carotid_right"
    t.float    "carotid_left"
    t.float    "temporal_right"
    t.float    "temporal_left"
    t.float    "radial_right"
    t.float    "radial_left"
    t.integer  "neck_high_right"
    t.integer  "neck_high_left"
    t.integer  "neck_mid_right"
    t.integer  "neck_low_right"
    t.integer  "neck_low_left"
    t.integer  "supraclavicular_right"
    t.integer  "supraclavicular_left"
    t.integer  "chest_right"
    t.integer  "chest_left"
    t.boolean  "retrograde_right"
    t.boolean  "retrograde_left"
    t.float    "eca_right"
    t.float    "eca_left"
    t.float    "dica_right"
    t.float    "dica_left"
    t.float    "mica_right"
    t.float    "mica_left"
    t.float    "pica_right"
    t.float    "pica_left"
    t.float    "dcca_right"
    t.float    "dcca_left"
    t.float    "mcca_right"
    t.float    "mcca_left"
    t.float    "pcca_right"
    t.float    "pcca_left"
    t.float    "vertebral_right"
    t.float    "vertebral_left"
    t.float    "subclavian_right"
    t.float    "subclavian_left"
    t.text     "technologists_preliminary_impression"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "technician_id"
    t.integer  "user_id"
    t.text     "notes"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "notes", ["technician_id"], name: "index_notes_on_technician_id"
  add_index "notes", ["user_id"], name: "index_notes_on_user_id"

  create_table "technicians", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "activation_digest"
    t.string   "reset_digest"
    t.string   "username"
  end

end
