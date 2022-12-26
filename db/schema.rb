# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_12_22_193222) do
  create_table "computers", force: :cascade do |t|
    t.integer "memory_num"
    t.integer "total_price"
    t.integer "User_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cpu_id"
    t.integer "videocard_id"
    t.integer "psu_id"
    t.integer "motherboard_id"
    t.integer "memory_id"
    t.integer "disk_id"
    t.integer "cooler_id"
    t.index ["User_id"], name: "index_computers_on_User_id"
  end

  create_table "coolers", force: :cascade do |t|
    t.text "socket"
    t.integer "tdp"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cpus", force: :cascade do |t|
    t.text "manufact"
    t.text "socket"
    t.text "model"
    t.integer "core_num"
    t.integer "tdp"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disks", force: :cascade do |t|
    t.text "storage_type"
    t.integer "volume"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memories", force: :cascade do |t|
    t.integer "volume_one"
    t.integer "max_freq"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "motherboards", force: :cascade do |t|
    t.text "socket"
    t.text "chipset"
    t.integer "price"
    t.integer "memory_slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "name"
  end

  create_table "psus", force: :cascade do |t|
    t.integer "wattage"
    t.text "certificate"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videocards", force: :cascade do |t|
    t.text "manufact"
    t.text "model"
    t.integer "gen"
    t.integer "volume"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "computers", "Users"
end
