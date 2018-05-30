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

ActiveRecord::Schema.define(version: 0) do

  create_table "courses", force: :cascade do |t|
    t.string "code_id"
    t.text "name"
    t.float "credit"
    t.text "discipline"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["code_id"], name: "index_courses_on_code_id"
  end

  create_table "coursesessions", force: :cascade do |t|
    t.integer "course_id"
    t.integer "faculty_id"
    t.text "term"
    t.integer "year"
    t.integer "first_round_cost"
    t.integer "first_round_num_bids"
    t.integer "first_round_seats"
    t.integer "second_round_cost"
    t.integer "second_round_num_bids"
    t.integer "second_round_seats"
    t.integer "course_score"
    t.integer "faculty_score"
    t.integer "learning_score"
    t.integer "difficult_score"
    t.integer "global_score"
    t.integer "examples_score"
    t.integer "workload_score"
    t.text "campus"
    t.text "schedule"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["course_id"], name: "index_coursesessions_on_course_id"
    t.index ["faculty_id"], name: "index_coursesessions_on_faculty_id"
  end

  create_table "faculties", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "raw_name"
    t.float "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_items", force: :cascade do |t|
    t.text "name"
    t.text "link"
    t.boolean "requires_login", default: false
    t.boolean "requires_admin", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "start"
    t.datetime "end"
    t.text "traffic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "password_digest"
    t.integer "user_type", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "course_preference", default: 5
    t.integer "faculty_preference", default: 5
    t.integer "learning_preference", default: 5
    t.integer "difficult_preference", default: 5
    t.integer "global_preference", default: 5
    t.integer "examples_preference", default: 5
    t.integer "workload_preference", default: 5
  end

end
