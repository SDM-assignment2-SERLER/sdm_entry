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

ActiveRecord::Schema.define(version: 20151004030340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bibliographics", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.date     "year"
    t.string   "source"
    t.string   "book"
    t.string   "publisher"
    t.string   "doi"
    t.integer  "number"
    t.string   "page"
    t.string   "month"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "states",     default: "waiting"
    t.integer  "rating",     default: 0
    t.integer  "user_id"
  end

  create_table "entities", force: :cascade do |t|
    t.string   "research_aim"
    t.string   "research_metric"
    t.string   "evidence_benefit"
    t.string   "evidence_context"
    t.string   "evidence_result"
    t.string   "evidence_intergrity"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "bibliographic_id"
  end

  create_table "entities_evidence_methods", id: false, force: :cascade do |t|
    t.integer "entity_id"
    t.integer "evidence_method_id"
  end

  add_index "entities_evidence_methods", ["entity_id"], name: "index_entities_evidence_methods_on_entity_id", using: :btree
  add_index "entities_evidence_methods", ["evidence_method_id"], name: "index_entities_evidence_methods_on_evidence_method_id", using: :btree

  create_table "entities_methodologies", id: false, force: :cascade do |t|
    t.integer "entity_id"
    t.integer "methodology_id"
  end

  add_index "entities_methodologies", ["entity_id"], name: "index_entities_methodologies_on_entity_id", using: :btree
  add_index "entities_methodologies", ["methodology_id"], name: "index_entities_methodologies_on_methodology_id", using: :btree

  create_table "entities_research_methods", id: false, force: :cascade do |t|
    t.integer "entity_id"
    t.integer "research_method_id"
  end

  add_index "entities_research_methods", ["entity_id"], name: "index_entities_research_methods_on_entity_id", using: :btree
  add_index "entities_research_methods", ["research_method_id"], name: "index_entities_research_methods_on_research_method_id", using: :btree

  create_table "entities_research_participants", id: false, force: :cascade do |t|
    t.integer "entity_id"
    t.integer "research_participant_id"
  end

  add_index "entities_research_participants", ["entity_id"], name: "index_entities_research_participants_on_entity_id", using: :btree

  create_table "evidence_methods", force: :cascade do |t|
    t.string   "name"
    t.integer  "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "methodologies", force: :cascade do |t|
    t.string   "name"
    t.integer  "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "desc"
  end

  create_table "research_methods", force: :cascade do |t|
    t.string   "name"
    t.integer  "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "research_participants", force: :cascade do |t|
    t.string   "name"
    t.integer  "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: "",     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "role",                   default: "user"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
