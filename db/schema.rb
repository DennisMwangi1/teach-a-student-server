# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_13_070936) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accepted_sessions", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "parent_id", null: false
    t.bigint "teacher_id", null: false
    t.string "start_time"
    t.string "end_time"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_accepted_sessions_on_parent_id"
    t.index ["student_id"], name: "index_accepted_sessions_on_student_id"
    t.index ["teacher_id"], name: "index_accepted_sessions_on_teacher_id"
  end

  create_table "parents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "email"
    t.integer "id_number"
    t.string "location"
    t.string "password_digest"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_parents_on_student_id", unique: true
  end

  create_table "requested_sessions", force: :cascade do |t|
    t.bigint "parent_id", null: false
    t.bigint "teacher_id", null: false
    t.string "start_time"
    t.string "end_time"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_requested_sessions_on_parent_id"
    t.index ["teacher_id"], name: "index_requested_sessions_on_teacher_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "school"
    t.integer "form"
    t.string "avg_grade"
    t.string "trgt_grade"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.integer "age"
    t.string "email"
    t.string "campus"
    t.integer "id_number"
    t.text "strong_subjects", default: [], array: true
    t.string "location"
    t.integer "campus_year"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accepted_sessions", "parents"
  add_foreign_key "accepted_sessions", "students"
  add_foreign_key "accepted_sessions", "teachers"
  add_foreign_key "parents", "students"
  add_foreign_key "requested_sessions", "parents"
  add_foreign_key "requested_sessions", "teachers"
end
