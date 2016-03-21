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

ActiveRecord::Schema.define(version: 20160321205731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string   "name"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_url"
  end

  create_table "characters", force: :cascade do |t|
    t.string   "player_name"
    t.string   "char_name"
    t.string   "klass"
    t.integer  "level"
    t.string   "race"
    t.string   "background"
    t.string   "alignment"
    t.string   "archetype"
    t.integer  "xp"
    t.integer  "hp_max"
    t.integer  "hp_current"
    t.integer  "armor_class"
    t.integer  "initiative"
    t.integer  "speed"
    t.integer  "prof_bonus"
    t.integer  "inspiration"
    t.text     "languages"
    t.text     "features"
    t.text     "equipment"
    t.text     "personality"
    t.text     "ideals"
    t.text     "bonds"
    t.text     "flaws"
    t.integer  "campaign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img_url"
  end

  add_index "characters", ["campaign_id"], name: "index_characters_on_campaign_id", using: :btree

  create_table "dmasters", force: :cascade do |t|
    t.string   "name"
    t.integer  "campaign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dmasters", ["campaign_id"], name: "index_dmasters_on_campaign_id", using: :btree

  add_foreign_key "characters", "campaigns"
  add_foreign_key "dmasters", "campaigns"
end
