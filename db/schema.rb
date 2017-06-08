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

ActiveRecord::Schema.define(version: 20170607205458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.string   "tenant_id"
    t.string   "user_id"
    t.string   "customer_id"
    t.string   "portal_id"
    t.string   "status"
    t.string   "sys_state"
    t.string   "who_created"
    t.string   "who_updated"
    t.string   "first_name",   null: false
    t.string   "last_name",    null: false
    t.string   "phone_mobile"
    t.string   "referral"
    t.string   "email"
    t.string   "keywords"
    t.boolean  "is_processed"
    t.integer  "person_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["person_id"], name: "index_documents_on_person_id", using: :btree
  end

  create_table "people", force: :cascade do |t|
    t.string   "tenant_id"
    t.string   "user_id"
    t.string   "customer_id"
    t.string   "portal_id"
    t.string   "status"
    t.string   "sys_state"
    t.string   "who_created"
    t.string   "who_updated"
    t.string   "first_name",   null: false
    t.string   "last_name",    null: false
    t.string   "phone_mobile"
    t.string   "referral"
    t.string   "email"
    t.boolean  "is_processed"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
