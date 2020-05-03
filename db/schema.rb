# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_26_144416) do

  create_table "breadcrumb_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "breadcrumb_masters", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "breadcrumb_masters_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "breadcrumb_master_id"
    t.bigint "breadcrumb_category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["breadcrumb_category_id"], name: "index_breadcrumb_masters_categories_on_breadcrumb_category_id"
    t.index ["breadcrumb_master_id"], name: "index_breadcrumb_masters_categories_on_breadcrumb_master_id"
  end

  create_table "breadcrumbs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "breadcrumb_master_id", null: false
    t.bigint "user_id", null: false
    t.string "content", null: false
    t.integer "content_status", limit: 1, default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["breadcrumb_master_id"], name: "index_breadcrumbs_on_breadcrumb_master_id"
    t.index ["user_id"], name: "index_breadcrumbs_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
  end

  add_foreign_key "breadcrumb_masters_categories", "breadcrumb_categories"
  add_foreign_key "breadcrumb_masters_categories", "breadcrumb_masters"
  add_foreign_key "breadcrumbs", "breadcrumb_masters"
  add_foreign_key "breadcrumbs", "users"
end
