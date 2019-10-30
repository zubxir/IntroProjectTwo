# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_30_034315) do

  create_table "champions", force: :cascade do |t|
    t.string "champname"
    t.integer "location_id", null: false
    t.integer "mastery_id", null: false
    t.integer "quote_id", null: false
    t.integer "rank_id", null: false
    t.integer "spell_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_champions_on_location_id"
    t.index ["mastery_id"], name: "index_champions_on_mastery_id"
    t.index ["quote_id"], name: "index_champions_on_quote_id"
    t.index ["rank_id"], name: "index_champions_on_rank_id"
    t.index ["spell_id"], name: "index_champions_on_spell_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "locationname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "masteries", force: :cascade do |t|
    t.string "masteryname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string "quotename"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.string "rankname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string "spellname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "champions", "locations"
  add_foreign_key "champions", "masteries"
  add_foreign_key "champions", "quotes"
  add_foreign_key "champions", "ranks"
  add_foreign_key "champions", "spells"
end
