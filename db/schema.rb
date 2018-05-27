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

  create_table "authors", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: :cascade do |t|
    t.text "title"
    t.integer "price"
    t.boolean "hardcover", default: false
    t.text "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "author_id"
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "menu_items", force: :cascade do |t|
    t.text "name"
    t.text "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "requires_login", default: false
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

  create_table "stocks", force: :cascade do |t|
    t.text "symbol"
    t.text "co_name"
    t.integer "last_price"
    t.integer "mkt_cap"
    t.text "ipo_year"
    t.text "sector"
    t.text "industry"
    t.text "exchange"
    t.text "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_type", default: 0
  end

end
