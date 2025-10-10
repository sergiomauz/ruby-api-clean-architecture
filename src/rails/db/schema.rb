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

ActiveRecord::Schema[8.0].define(version: 2025_10_10_093652) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name", limit: 150
    t.string "country", limit: 2
    t.string "biography", limit: 450
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title", limit: 120
    t.string "genre", limit: 50
    t.string "isbn", limit: 18
    t.integer "publication_year"
    t.integer "available_copies"
    t.bigint "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
    t.index ["isbn"], name: "index_books_on_isbn", unique: true
  end

  create_table "loans", force: :cascade do |t|
    t.date "loan_date"
    t.date "due_date"
    t.date "return_date"
    t.bigint "reader_id", null: false
    t.bigint "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_loans_on_book_id"
    t.index ["reader_id"], name: "index_loans_on_reader_id"
  end

  create_table "readers", force: :cascade do |t|
    t.string "name", limit: 150
    t.string "code", limit: 8
    t.string "email", limit: 75
    t.string "phone", limit: 25
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_readers_on_code", unique: true
    t.index ["email"], name: "index_readers_on_email", unique: true
  end

  add_foreign_key "books", "authors"
  add_foreign_key "loans", "books"
  add_foreign_key "loans", "readers"
end
