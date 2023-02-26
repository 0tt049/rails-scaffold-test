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

ActiveRecord::Schema[7.0].define(version: 2023_02_26_034658) do
  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "type"
    t.integer "year"
    t.integer "author_id", null: false
    t.integer "victim_id", null: false
    t.integer "crime_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["crime_id"], name: "index_books_on_crime_id"
    t.index ["victim_id"], name: "index_books_on_victim_id"
  end

  create_table "crimes", force: :cascade do |t|
    t.string "type"
    t.string "IAD"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "victims", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "social_class"
    t.string "marker"
    t.boolean "dead"
    t.boolean "active_voice"
    t.boolean "active_role"
    t.boolean "guilty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "books", "authors"
  add_foreign_key "books", "crimes"
  add_foreign_key "books", "victims"
end
