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

ActiveRecord::Schema.define(version: 20150502142248) do

  create_table "access_tokens", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "type",       limit: 255
    t.string   "token",      limit: 255
    t.datetime "expires_at"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "access_tokens", ["type", "token"], name: "index_access_tokens_on_type_and_token", unique: true, using: :btree
  add_index "access_tokens", ["type", "user_id"], name: "index_access_tokens_on_type_and_user_id", unique: true, using: :btree

  create_table "group_members", force: :cascade do |t|
    t.integer  "group_id",   limit: 4
    t.integer  "user_id",    limit: 4
    t.integer  "role",       limit: 1
    t.integer  "status",     limit: 1
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "group_members", ["group_id"], name: "index_group_members_on_group_id", using: :btree
  add_index "group_members", ["user_id"], name: "index_group_members_on_user_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.integer  "membar_max_num", limit: 2
    t.integer  "topic_max_num",  limit: 2
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "ideas", force: :cascade do |t|
    t.integer  "topic_id",   limit: 4
    t.integer  "poster_id",  limit: 4
    t.string   "content",    limit: 255
    t.integer  "anonymity",  limit: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "ideas", ["topic_id"], name: "index_ideas_on_topic_id", using: :btree

  create_table "likes", force: :cascade do |t|
    t.integer  "idea_id",    limit: 4
    t.integer  "liker_id",   limit: 4
    t.integer  "num",        limit: 2
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "likes", ["idea_id"], name: "index_likes_on_idea_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.string   "display_id",   limit: 255
    t.string   "display_name", limit: 255
    t.string   "affiliation",  limit: 255
    t.string   "place",        limit: 255
    t.string   "website",      limit: 255
    t.string   "introduction", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "topics", force: :cascade do |t|
    t.integer  "group_id",     limit: 4
    t.integer  "builder_id",   limit: 4
    t.string   "name",         limit: 255
    t.integer  "idea_max_num", limit: 2
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "topics", ["group_id"], name: "index_topics_on_group_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "provider",    limit: 255
    t.string   "uid",         limit: 255
    t.string   "screen_name", limit: 255
    t.string   "screen_url",  limit: 255
    t.integer  "status",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true, using: :btree

end
