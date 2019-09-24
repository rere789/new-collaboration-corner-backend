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

ActiveRecord::Schema.define(version: 2019_09_05_213154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.bigint "post_id"
    t.string "title"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_events_on_post_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "description"
    t.string "needed_skillset"
    t.string "comments"
    t.bigint "user_id"
    t.string "snippet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "userprojects", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "post_id"
    t.boolean "interested", default: false
    t.boolean "collaborating", default: false
    t.string "comment", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_userprojects_on_post_id"
    t.index ["user_id"], name: "index_userprojects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "skillset", default: ""
    t.string "img", default: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuQ9n1hpkcy_qwoZsYSVu6W0PrYhgyA-8HHvv6reVdjPUh5Oy4GA"
    t.string "school", default: ""
    t.string "name", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "posts"
  add_foreign_key "userprojects", "posts"
  add_foreign_key "userprojects", "users"
end
