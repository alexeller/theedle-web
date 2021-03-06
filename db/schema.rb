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

ActiveRecord::Schema.define(version: 20140113191216) do

  create_table "categories", force: true do |t|
    t.string   "name",                 null: false
    t.integer  "parent_id"
    t.integer  "state_id"
    t.string   "active",     limit: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "title",                                                  null: false
    t.string   "description",                                            null: false
    t.decimal  "price",                          precision: 8, scale: 2, null: false
    t.string   "city",                                                   null: false
    t.integer  "zipcode",                                                null: false
    t.integer  "user_id",                                                null: false
    t.string   "active",               limit: 1,                         null: false
    t.decimal  "finders_fee",                    precision: 8, scale: 2, null: false
    t.string   "received_finders_fee", limit: 1,                         null: false
    t.string   "image_path"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "state_id"
  end

  add_index "items", ["category_id"], name: "fk_items_categories", using: :btree
  add_index "items", ["state_id"], name: "fk_items_states", using: :btree

  create_table "states", force: true do |t|
    t.string   "name",         null: false
    t.string   "abbreviation", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
