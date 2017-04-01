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

ActiveRecord::Schema.define(version: 20170403012125) do

  create_table "activities", force: :cascade do |t|
    t.integer  "action_id",   limit: 4,   null: false
    t.integer  "user_id",     limit: 4,   null: false
    t.string   "action_type", limit: 255, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 255, null: false
    t.string   "description", limit: 255, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "lesson_words", force: :cascade do |t|
    t.integer  "lesson_id",      limit: 4,   null: false
    t.integer  "word_id",        limit: 4,   null: false
    t.integer  "word_answer_id", limit: 4,   null: false
    t.string   "correct",        limit: 255, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "result",      limit: 255, null: false
    t.integer  "user_id",     limit: 4,   null: false
    t.integer  "category_id", limit: 4,   null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "following_id", limit: 4, null: false
    t.integer  "follower_id",  limit: 4, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer  "user_id",    limit: 4, null: false
    t.integer  "role_id",    limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "email",      limit: 255, null: false
    t.string   "password",   limit: 255, null: false
    t.string   "avatar",     limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "word_answers", force: :cascade do |t|
    t.string   "content",    limit: 255, null: false
    t.integer  "word_id",    limit: 4,   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "words", force: :cascade do |t|
    t.string   "content",     limit: 255, null: false
    t.integer  "category_id", limit: 4,   null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
