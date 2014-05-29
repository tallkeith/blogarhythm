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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140529144504) do

  create_table "providers", force: true do |t|
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
=======
ActiveRecord::Schema.define(version: 20140529142938) do
>>>>>>> b038a8bcb6a56aadcd4173317f8d1f0f0433b990

  create_table "timelines", force: true do |t|
    t.integer  "user_id"
    t.string   "imageurl"
    t.string   "dateofimage"
    t.string   "sourceofimage"
    t.integer  "numcomments"
    t.integer  "likes"
    t.integer  "shares"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

=======
>>>>>>> b038a8bcb6a56aadcd4173317f8d1f0f0433b990
end
