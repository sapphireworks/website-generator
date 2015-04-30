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

ActiveRecord::Schema.define(version: 20150428201455) do

  create_table "about_sections", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "path",         limit: 255
    t.integer  "templates_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "themes_id",    limit: 4
  end

  create_table "catalogue_sections", force: :cascade do |t|
    t.string   "path",         limit: 255
    t.integer  "templates_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "themes_id",    limit: 4
  end

  create_table "clients", force: :cascade do |t|
    t.string   "username",     limit: 255
    t.integer  "templates_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "contact_us_sections", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "path",         limit: 255
    t.integer  "templates_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "themes_id",    limit: 4
  end

  create_table "footers", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "path",         limit: 255
    t.integer  "templates_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "themes_id",    limit: 4
  end

  create_table "home_sections", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "path",         limit: 255
    t.integer  "templates_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "themes_id",    limit: 4
  end

  create_table "nav_bars", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "path",         limit: 255
    t.integer  "templates_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "themes_id",    limit: 4
  end

  create_table "photos", force: :cascade do |t|
    t.string  "path",      limit: 255
    t.integer "client_id", limit: 4
  end

  create_table "templates", force: :cascade do |t|
    t.string   "template_path",  limit: 255
    t.string   "thumbnail_path", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "name",           limit: 255
    t.string   "catalogue_path", limit: 255
  end

  create_table "themes", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "templates_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
