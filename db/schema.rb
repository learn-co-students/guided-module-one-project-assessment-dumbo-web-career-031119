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

ActiveRecord::Schema.define(version: 2019_03_25_191835) do

  create_table "dispensaries", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "town"
    t.string "zip_code"
  end

  create_table "dispensary_inventories", force: :cascade do |t|
    t.integer "strain_id"
    t.integer "dispensary_id"
  end

  create_table "strains", force: :cascade do |t|
    t.string "name"
    t.integer "indica"
    t.integer "sativa"
    t.string "benefits"
    t.string "medical"
    t.float "thc"
    t.float "cbd"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

end
