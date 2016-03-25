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

ActiveRecord::Schema.define(version: 20160325175636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.integer  "strength"
    t.string   "strength_mod"
    t.integer  "dexterity"
    t.string   "dexterity_mod"
    t.integer  "constitution"
    t.string   "constitution_mod"
    t.integer  "intelligence"
    t.string   "intelligence_mod"
    t.integer  "wisdom"
    t.string   "wisdom_mod"
    t.integer  "charisma"
    t.string   "charisma_mod"
    t.string   "acrobatics"
    t.string   "animal_handling"
    t.string   "arcana"
    t.string   "athletics"
    t.string   "deception"
    t.string   "history"
    t.string   "insight"
    t.string   "intimidation"
    t.string   "investigation"
    t.string   "medicine"
    t.string   "nature"
    t.string   "perception"
    t.string   "performance"
    t.string   "persuasion"
    t.string   "religion"
    t.string   "sleight_hand"
    t.string   "stealth"
    t.string   "survival"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "abilities", ["character_id"], name: "index_abilities_on_character_id", using: :btree

  create_table "adventures", force: :cascade do |t|
    t.string   "name"
    t.text     "summary"
    t.string   "img_url"
    t.integer  "campaign_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "adventures", ["campaign_id"], name: "index_adventures_on_campaign_id", using: :btree

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

  create_table "spells", force: :cascade do |t|
    t.string   "name"
    t.string   "level"
    t.string   "casting_time"
    t.string   "range"
    t.string   "components"
    t.string   "duration"
    t.string   "description"
    t.string   "notes"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spells", ["character_id"], name: "index_spells_on_character_id", using: :btree

  add_foreign_key "abilities", "characters"
  add_foreign_key "adventures", "campaigns"
  add_foreign_key "characters", "campaigns"
  add_foreign_key "dmasters", "campaigns"
  add_foreign_key "spells", "characters"
end
