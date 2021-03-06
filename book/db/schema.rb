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

ActiveRecord::Schema.define(version: 20160311110610) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "zip_id",     limit: 4
    t.string   "street",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "no_of_seats", limit: 4
    t.string   "show_type",   limit: 255
    t.integer  "cost",        limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "custmers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.integer  "password",   limit: 4
    t.integer  "mobile",     limit: 4
    t.string   "role",       limit: 255
    t.integer  "zip_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "movie_theaters", force: :cascade do |t|
    t.integer  "movie_id",   limit: 4
    t.integer  "theater_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "movie_name",     limit: 255
    t.string   "movie_director", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "theaters", force: :cascade do |t|
    t.string   "t_name",        limit: 255
    t.string   "t_owner",       limit: 255
    t.integer  "t_no_of_seats", limit: 4
    t.integer  "address_id",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "zips", force: :cascade do |t|
    t.string   "district",   limit: 255
    t.string   "state",      limit: 255
    t.string   "country",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
