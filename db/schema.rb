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

ActiveRecord::Schema.define(version: 20160317000000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "answer_text",    null: false
    t.boolean  "right_or_wrong", null: false
    t.integer  "quiz_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "answers", ["quiz_id"], name: "index_answers_on_quiz_id", using: :btree

  create_table "quiz_titles", force: :cascade do |t|
    t.string   "title",      null: false
    t.text     "url",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.string   "quiz_statement", null: false
    t.integer  "quiz_title_id",  null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "quizzes", ["quiz_title_id"], name: "index_quizzes_on_quiz_title_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       null: false
    t.binary   "password",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "quizzes"
  add_foreign_key "quizzes", "quiz_titles"
end
