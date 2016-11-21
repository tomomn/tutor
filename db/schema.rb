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

ActiveRecord::Schema.define(version: 20161116022501) do

  create_table "ages", force: :cascade do |t|
    t.string   "age",        limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bun_ris", force: :cascade do |t|
    t.string   "bun_ri",     limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cram_exps", force: :cascade do |t|
    t.string   "cram_exp",   limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders", force: :cascade do |t|
    t.string   "gender",     limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "junior_exams", force: :cascade do |t|
    t.string   "junior_exam", limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prefectures", force: :cascade do |t|
    t.string   "prefecture", limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "school_years", force: :cascade do |t|
    t.string   "school_year", limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: :cascade do |t|
    t.integer  "user_id",               limit: 4,     null: false
    t.string   "nickname",              limit: 255,   null: false
    t.integer  "prefecture_id",         limit: 4,     null: false
    t.string   "city",                  limit: 255,   null: false
    t.integer  "gender_id",             limit: 4,     null: false
    t.integer  "school_year_id",        limit: 4,     null: false
    t.string   "fee",                   limit: 255,   null: false
    t.string   "traffic_fee",           limit: 255
    t.string   "subject",               limit: 255,   null: false
    t.string   "station",               limit: 255
    t.string   "station_distance",      limit: 255
    t.string   "station_etc",           limit: 255
    t.string   "instruction_frequency", limit: 255
    t.string   "instruction_hour",      limit: 255
    t.string   "instruction_week",      limit: 255
    t.string   "instruction_term",      limit: 255
    t.text     "purpose",               limit: 65535
    t.text     "request",               limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: :cascade do |t|
    t.integer  "user_id",           limit: 4,     null: false
    t.string   "nickname",          limit: 255,   null: false
    t.integer  "prefecture_id",     limit: 4,     null: false
    t.string   "city",              limit: 255,   null: false
    t.integer  "age_id",            limit: 4,     null: false
    t.integer  "gender_id",         limit: 4,     null: false
    t.string   "university",        limit: 255,   null: false
    t.string   "department",        limit: 255,   null: false
    t.integer  "univ_year_id",      limit: 4,     null: false
    t.integer  "bun_ri_id",         limit: 4,     null: false
    t.string   "junior",            limit: 255
    t.string   "high",              limit: 255
    t.integer  "junior_exam_id",    limit: 4,     null: false
    t.string   "fee",               limit: 255,   null: false
    t.string   "subject_primary",   limit: 255,   null: false
    t.string   "subject_junior",    limit: 255,   null: false
    t.string   "subject_high",      limit: 255,   null: false
    t.string   "station",           limit: 255
    t.string   "traffic",           limit: 255
    t.integer  "traffic_time_id",   limit: 4
    t.integer  "tutor_exp_id",      limit: 4
    t.string   "pass_result",       limit: 255
    t.integer  "cram_exp_id",       limit: 4
    t.string   "instruction_area",  limit: 255
    t.string   "instruction_week",  limit: 255
    t.string   "traffic_fee",       limit: 255
    t.string   "traffic_setion",    limit: 255
    t.string   "favorite_subject",  limit: 255
    t.string   "hobby",             limit: 255
    t.string   "qualification",     limit: 255
    t.string   "club",              limit: 255
    t.text     "instruction_exp",   limit: 65535
    t.text     "self_introduction", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traffic_times", force: :cascade do |t|
    t.string   "traffic_time", limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tutor_exps", force: :cascade do |t|
    t.string   "tutor_exp",  limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "univ_years", force: :cascade do |t|
    t.string   "univ_year",  limit: 255, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
