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

ActiveRecord::Schema.define(version: 20180925195908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_classes", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.string "resource"
    t.string "specializations", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "main_color"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name", limit: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "level"
    t.integer "health", default: 0
    t.string "location"
    t.integer "stamina", default: 5
    t.integer "strength", default: 5
    t.integer "spirit", default: 5
    t.integer "agility", default: 5
    t.integer "intelligence", default: 5
    t.integer "gold"
    t.integer "achievement_points"
    t.string "professions", default: [], array: true
    t.bigint "character_class_id"
    t.integer "spec_id"
    t.index ["character_class_id"], name: "index_characters_on_character_class_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.string "visibility"
    t.integer "likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "account_name"
    t.index ["account_name"], name: "index_users_on_account_name", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "characters", "users"
end
