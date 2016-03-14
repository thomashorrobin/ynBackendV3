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

ActiveRecord::Schema.define(version: 20160314060644) do

  create_table "announcements", force: :cascade do |t|
    t.datetime "announced_at"
    t.string   "message",      limit: 255
    t.integer  "Exec_id",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "announcements", ["Exec_id"], name: "index_announcements_on_Exec_id", using: :btree

  create_table "apple_phones", force: :cascade do |t|
    t.integer  "City_id",      limit: 4
    t.string   "first_name",   limit: 255
    t.string   "last_name",    limit: 255
    t.string   "email",        limit: 255
    t.string   "device_token", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "apple_phones", ["City_id"], name: "index_apple_phones_on_City_id", using: :btree

  create_table "blog_posts", force: :cascade do |t|
    t.string   "title",         limit: 255
    t.string   "content",       limit: 255
    t.date     "posted_on"
    t.integer  "Blog_id",       limit: 4
    t.integer  "Individual_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "blog_posts", ["Blog_id"], name: "index_blog_posts_on_Blog_id", using: :btree
  add_index "blog_posts", ["Individual_id"], name: "index_blog_posts_on_Individual_id", using: :btree

  create_table "blogs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "start_at"
    t.integer  "duration_minutes", limit: 4
    t.string   "title",            limit: 255
    t.string   "description",      limit: 255
    t.integer  "City_id",          limit: 4
    t.string   "address",          limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "events", ["City_id"], name: "index_events_on_City_id", using: :btree

  create_table "exec_members", force: :cascade do |t|
    t.string   "possition",     limit: 255
    t.integer  "Exec_id",       limit: 4
    t.integer  "Individual_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "exec_members", ["Exec_id"], name: "index_exec_members_on_Exec_id", using: :btree
  add_index "exec_members", ["Individual_id"], name: "index_exec_members_on_Individual_id", using: :btree

  create_table "execs", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "individuals", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "bio",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "announcements", "Execs"
  add_foreign_key "apple_phones", "Cities"
  add_foreign_key "blog_posts", "Blogs"
  add_foreign_key "blog_posts", "Individuals"
  add_foreign_key "events", "Cities"
  add_foreign_key "exec_members", "Execs"
  add_foreign_key "exec_members", "Individuals"
end
