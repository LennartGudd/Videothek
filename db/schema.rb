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

ActiveRecord::Schema.define(version: 20140218175723) do

  create_table "actors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "film_id"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["film_id"], name: "index_comments_on_film_id"

  create_table "directors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "film_actors", force: true do |t|
    t.integer  "film_id"
    t.integer  "actor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "film_actors", ["actor_id"], name: "index_film_actors_on_actor_id"
  add_index "film_actors", ["film_id"], name: "index_film_actors_on_film_id"

  create_table "film_categories", force: true do |t|
    t.integer  "film_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "film_categories", ["category_id"], name: "index_film_categories_on_category_id"
  add_index "film_categories", ["film_id"], name: "index_film_categories_on_film_id"

  create_table "film_directors", force: true do |t|
    t.integer  "film_id"
    t.integer  "director_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "film_directors", ["director_id"], name: "index_film_directors_on_director_id"
  add_index "film_directors", ["film_id"], name: "index_film_directors_on_film_id"

  create_table "films", force: true do |t|
    t.string   "title"
    t.integer  "runtime"
    t.string   "cover"
    t.date     "release_date"
    t.text     "plot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
