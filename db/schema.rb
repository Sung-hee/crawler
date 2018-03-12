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

ActiveRecord::Schema.define(version: 20180312105735) do

  create_table "djis", force: :cascade do |t|
    t.string   "title"
    t.string   "date"
    t.string   "current"
    t.string   "high"
    t.string   "low"
    t.string   "variancce"
    t.string   "variance_per"
    t.string   "hours"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "golds", force: :cascade do |t|
    t.string   "title"
    t.string   "date"
    t.string   "closed"
    t.string   "high"
    t.string   "low"
    t.string   "variance"
    t.string   "variance_per"
    t.string   "hours"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "nasdaqs", force: :cascade do |t|
    t.string   "title"
    t.string   "date"
    t.string   "current"
    t.string   "high"
    t.string   "low"
    t.string   "variancce"
    t.string   "variance_per"
    t.string   "hours"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "nikkeis", force: :cascade do |t|
    t.string   "title"
    t.string   "current"
    t.string   "high"
    t.string   "low"
    t.string   "variance"
    t.string   "variance_per"
    t.string   "hours"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "sp500s", force: :cascade do |t|
    t.string   "title"
    t.string   "date"
    t.string   "current"
    t.string   "high"
    t.string   "low"
    t.string   "variancce"
    t.string   "variance_per"
    t.string   "hours"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "ssecs", force: :cascade do |t|
    t.string   "title"
    t.string   "current"
    t.string   "high"
    t.string   "low"
    t.string   "variance"
    t.string   "variance_per"
    t.string   "hours"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "usdkrws", force: :cascade do |t|
    t.string   "title"
    t.string   "event"
    t.string   "current"
    t.string   "high"
    t.string   "low"
    t.string   "variance"
    t.string   "variance_per"
    t.string   "hours"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "wtis", force: :cascade do |t|
    t.string   "title"
    t.string   "date"
    t.string   "closed"
    t.string   "high"
    t.string   "low"
    t.string   "variance"
    t.string   "variance_per"
    t.string   "hours"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
