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

ActiveRecord::Schema.define(version: 20170220040523) do

  create_table "bruits", force: :cascade do |t|
    t.string   "volume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forms", force: :cascade do |t|
    t.integer  "technologists_id"
    t.integer  "age"
    t.string   "gender"
    t.float    "bpRight"
    t.float    "bpLeft"
    t.string   "history"
    t.string   "symptoms"
    t.string   "prelimResults"
    t.string   "patientResults"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
  end

  add_index "forms", ["technologists_id"], name: "index_forms_on_technologists_id"
  add_index "forms", ["user_id"], name: "index_forms_on_user_id"

  create_table "mesenteric_forms", force: :cascade do |t|
    t.boolean  "abdominPain"
    t.boolean  "weightLoss"
    t.boolean  "chronicDiarrhea"
    t.boolean  "bowellInfarction"
    t.string   "otherHistory"
    t.float    "aortaFastPSV"
    t.float    "aortaPostPSV"
    t.float    "aortaFastEDV"
    t.float    "aortaPostEDV"
    t.float    "aortaFastRI"
    t.float    "aortaPostRI"
    t.float    "celiacOriginFastPSV"
    t.float    "celiacOriginPostPSV"
    t.float    "celiacOriginFastEDV"
    t.float    "celiacOriginPostEDV"
    t.float    "celiacOriginFastRI"
    t.float    "celiacOriginPostRI"
    t.float    "celiacMidFastPSV"
    t.float    "celiacMidPostPSV"
    t.float    "celiacMidFastEDV"
    t.float    "celiacMidPostEDV"
    t.float    "celiacMidFastRI"
    t.float    "celiacMidPostRI"
    t.float    "smaOriginFastPSV"
    t.float    "smaOriginPostPSV"
    t.float    "smaOriginFastEDV"
    t.float    "smaOriginPostEDV"
    t.float    "smaOriginFastRI"
    t.float    "smaOriginPostRI"
    t.float    "smaMidFastPSV"
    t.float    "smaMidPostPSV"
    t.float    "smaMidFastEDV"
    t.float    "smaMidPostEDV"
    t.float    "smaMidFastRI"
    t.float    "smaMidPostRI"
    t.float    "smaDistalFastPSV"
    t.float    "smaDistalPostPSV"
    t.float    "smaDistalFastEDV"
    t.float    "smaDistalPostEDV"
    t.float    "smaDistalFastRI"
    t.float    "smaDistalPostRI"
    t.float    "hepaticFastPSV"
    t.float    "hepaticPostPSV"
    t.float    "hepaticFastEDV"
    t.float    "hepaticPostEDV"
    t.float    "hepaticFastRI"
    t.float    "hepaticPostRI"
    t.float    "splenicFastPSV"
    t.float    "splenicPostPSV"
    t.float    "splenicFastEDV"
    t.float    "splenicPostEDV"
    t.float    "splenicFastRI"
    t.float    "splenicPostRI"
    t.float    "imaFastPSV"
    t.float    "imaPostPSV"
    t.float    "imaFastEDV"
    t.float    "imaPostEDV"
    t.float    "imaFastRI"
    t.float    "imaPostRI"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "technologist_id"
    t.integer  "form_id"
  end

  add_index "notes", ["form_id"], name: "index_notes_on_form_id"
  add_index "notes", ["technologist_id"], name: "index_notes_on_technologist_id"

  create_table "technologists", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ue_arterial_forms", force: :cascade do |t|
    t.boolean  "vasDisease"
    t.boolean  "smoking"
    t.boolean  "heartDisease"
    t.boolean  "meds"
    t.boolean  "injury"
    t.boolean  "prevSurgery"
    t.boolean  "diabetes"
    t.string   "otherHistory"
    t.boolean  "claudication"
    t.boolean  "numbness"
    t.boolean  "pain"
    t.boolean  "colorChange"
    t.string   "otherSymptoms"
    t.float    "subclavianPSVRight"
    t.float    "subclavianPSVLeft"
    t.float    "subclavianEDVRight"
    t.float    "subclavianEDVLeft"
    t.float    "axillaryPSVRight"
    t.float    "axillaryPSVLeft"
    t.float    "axillaryEDVRight"
    t.float    "axillaryEDVLeft"
    t.float    "brachialPSVRight"
    t.float    "brachialPSVLeft"
    t.float    "brachialEDVRight"
    t.float    "brachialEDVLeft"
    t.float    "radialPSVRight"
    t.float    "radialPSVLeft"
    t.float    "radialEDVRight"
    t.float    "radialEDVLeft"
    t.float    "ulnarPSVRight"
    t.float    "ulnarPSVLeft"
    t.float    "ulnarEDVRight"
    t.float    "ulnarEDVLeft"
    t.float    "palmarPSVRight"
    t.float    "palmarPSVLeft"
    t.float    "palmarEDVRight"
    t.float    "palmarEDVLeft"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "ue_venous_forms", force: :cascade do |t|
    t.boolean  "recentEvasiveProc"
    t.boolean  "recentAVFistula"
    t.string   "admittingDisease"
    t.boolean  "surgery"
    t.string   "otherSurgery"
    t.boolean  "diabetes"
    t.boolean  "myocardialInf"
    t.boolean  "conHeartFailure"
    t.string   "otherHistory"
    t.boolean  "pain"
    t.boolean  "numbness"
    t.boolean  "colorChange"
    t.string   "otherSymptoms"
    t.string   "subclavianWaveformRight"
    t.boolean  "subclavianCompressionRight"
    t.string   "subclavianWaveformLeft"
    t.boolean  "subclavianCompressionLeft"
    t.string   "axillaryWaveformRight"
    t.boolean  "axillaryCompressionRight"
    t.string   "axillaryWaveformLeft"
    t.boolean  "axillaryCompressionLeft"
    t.string   "brachialWaveformRight"
    t.boolean  "brachialCompressionRight"
    t.string   "brachialWaveformLeft"
    t.boolean  "brachialCompressionLeft"
    t.string   "radialWaveformRight"
    t.boolean  "radialCompressionRight"
    t.string   "radialWaveformLeft"
    t.boolean  "radialCompressionLeft"
    t.string   "ulnarWaveformRight"
    t.boolean  "ulnarCompressionRight"
    t.string   "ulnarWaveformLeft"
    t.boolean  "ulnarCompressionLeft"
    t.string   "basilicWaveformRight"
    t.boolean  "basilicCompressionRight"
    t.string   "basilicWaveformLeft"
    t.boolean  "basilicCompressionLeft"
    t.string   "cephalicWaveformRight"
    t.boolean  "cephalicCompressionRight"
    t.string   "cephalicWaveformLeft"
    t.boolean  "cephalicCompressionLeft"
    t.string   "medCubitalWaveformRight"
    t.boolean  "medCubitalCompressionRight"
    t.string   "medCubitalWaveformLeft"
    t.boolean  "medCubitalCompressionLeft"
    t.string   "intJugularWaveformRight"
    t.boolean  "intJugularCompressionRight"
    t.string   "intJugularWaveformLeft"
    t.boolean  "intJugularCompressionLeft"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "activation_digest"
    t.string   "reset_digest"
    t.string   "username"
    t.boolean  "activated",         default: false
    t.string   "remember_digest"
  end

end
