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

ActiveRecord::Schema.define(version: 20170724053301) do

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "advertisements", force: :cascade do |t|
    t.boolean "inactive"
    t.integer "user_id", null: false
    t.string "title", null: false
    t.integer "status", null: false
    t.integer "product_type", null: false
    t.integer "ad_type", null: false
    t.integer "game_type"
    t.integer "game_id", null: false
    t.integer "sum"
    t.text "text", null: false
    t.text "services"
    t.integer "rating_to_employee"
    t.integer "rating_to_user"
    t.text "mention_to_employee"
    t.text "mention_to_user"
    t.integer "employee_id"
    t.datetime "finished_at"
    t.integer "response_count"
    t.integer "watches_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_advertisements_on_employee_id"
    t.index ["game_id"], name: "index_advertisements_on_game_id"
    t.index ["user_id"], name: "index_advertisements_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.boolean "inactive"
    t.string "name", null: false
    t.integer "game_type"
    t.index ["name"], name: "index_games_on_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "login", default: "", null: false
    t.integer "day_in_service"
    t.string "contacts"
    t.string "personal_info"
    t.integer "rate_employer"
    t.integer "rate_contractor"
    t.integer "user_type"
    t.boolean "inactive"
    t.date "locked_to_date"
    t.boolean "blocked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "role"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["login"], name: "index_users_on_login", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
