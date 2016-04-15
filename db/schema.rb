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

ActiveRecord::Schema.define(version: 20160415193145) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkins", force: true do |t|
    t.integer  "mood"
    t.boolean  "is_sober"
    t.boolean  "needs_help"
    t.text     "content"
    t.integer  "user_id"
    t.boolean  "is_private"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "checkins", ["user_id"], name: "index_checkins_on_user_id", using: :btree

  create_table "friendships", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friendships", ["user_id"], name: "index_friendships_on_user_id", using: :btree

  create_table "goals", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "category"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_memberships", force: true do |t|
    t.string   "status"
    t.integer  "user_id"
    t.integer  "group_id"
    t.integer  "inviter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_memberships", ["group_id"], name: "index_group_memberships_on_group_id", using: :btree
  add_index "group_memberships", ["user_id"], name: "index_group_memberships_on_user_id", using: :btree

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "group_id"
    t.integer  "user_recipient_id"
    t.integer  "friendship_id"
    t.integer  "resource_page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["friendship_id"], name: "index_messages_on_friendship_id", using: :btree
  add_index "messages", ["group_id"], name: "index_messages_on_group_id", using: :btree
  add_index "messages", ["resource_page_id"], name: "index_messages_on_resource_page_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "resource_pages", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_goals", force: true do |t|
    t.integer  "goal_id"
    t.string   "title"
    t.text     "description"
    t.datetime "due_date_time"
    t.integer  "user_id"
    t.string   "category"
    t.integer  "points"
    t.string   "recurring_type"
    t.integer  "group_id"
    t.integer  "friendship_id"
    t.boolean  "is_private"
    t.string   "completed_status"
    t.integer  "times_completed"
    t.time     "reminder_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_goals", ["friendship_id"], name: "index_user_goals_on_friendship_id", using: :btree
  add_index "user_goals", ["goal_id"], name: "index_user_goals_on_goal_id", using: :btree
  add_index "user_goals", ["group_id"], name: "index_user_goals_on_group_id", using: :btree
  add_index "user_goals", ["user_id"], name: "index_user_goals_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "username"
    t.string   "user_name"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "sober_date"
    t.text     "about_description"
    t.date     "date_of_birth"
    t.string   "phone_number"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
