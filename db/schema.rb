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

ActiveRecord::Schema.define(version: 20151018220413) do

  create_table "buildings", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.string   "street",      limit: 255
    t.string   "city",        limit: 255
    t.string   "state",       limit: 255
    t.string   "zip",         limit: 255
    t.string   "phone",       limit: 255
    t.string   "email",       limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "billing_period",  limit: 255
    t.float    "billing_rate",    limit: 24
    t.integer  "renter_id",       limit: 4
    t.integer  "storage_unit_id", limit: 4
    t.text     "notes",           limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "renters", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "company",    limit: 255
    t.string   "address",    limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "zip",        limit: 255
    t.string   "phone",      limit: 255
    t.string   "fax",        limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "storage_units", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "description",  limit: 255
    t.integer  "length",       limit: 4
    t.integer  "width",        limit: 4
    t.integer  "height",       limit: 4
    t.integer  "renter_id",    limit: 4
    t.float    "annual_rate",  limit: 24
    t.float    "monthly_rate", limit: 24
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "building_id",  limit: 4
  end

end
