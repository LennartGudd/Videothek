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

ActiveRecord::Schema.define(version: 20140218183945) do

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

  create_table "rates", force: true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.float    "stars",         null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], name: "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], name: "index_rates_on_rater_id"

  create_table "rating_caches", force: true do |t|
    t.integer  "cacheable_id"
    t.string   "cacheable_type"
    t.float    "avg",            null: false
    t.integer  "qty",            null: false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rating_caches", ["cacheable_id", "cacheable_type"], name: "index_rating_caches_on_cacheable_id_and_cacheable_type"

  create_table "rentals", force: true do |t|
    t.integer  "film_id"
    t.date     "rental_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rentals", ["film_id"], name: "index_rentals_on_film_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "firstname"
    t.date     "birthday"
    t.string   "street"
    t.string   "city"
    t.string   "zipcode"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
