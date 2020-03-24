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

ActiveRecord::Schema.define(version: 20200324143602) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "establishment_city_id"
    t.string   "street",                null: false
    t.string   "neighborhood",          null: false
    t.integer  "number",                null: false
    t.string   "cep"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["establishment_city_id"], name: "index_addresses_on_establishment_city_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description", null: false
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "establishment_cities", force: :cascade do |t|
    t.integer  "city_id"
    t.integer  "establishment_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["city_id"], name: "index_establishment_cities_on_city_id", using: :btree
    t.index ["establishment_id"], name: "index_establishment_cities_on_establishment_id", using: :btree
  end

  create_table "establishments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "name",                   null: false
    t.string   "description",            null: false
    t.string   "additional_information"
    t.integer  "rating"
    t.string   "telephone"
    t.string   "photo"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["category_id"], name: "index_establishments_on_category_id", using: :btree
    t.index ["user_id"], name: "index_establishments_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "name",                                null: false
    t.integer  "role"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["city_id"], name: "index_users_on_city_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
