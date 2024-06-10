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

ActiveRecord::Schema[7.1].define(version: 2024_06_08_195140) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attribute_value_tables", force: :cascade do |t|
    t.string "question"
    t.string "val_str"
    t.integer "value_int"
    t.date "val_date"
    t.boolean "val_boolean"
    t.bigint "patient_id", null: false
    t.bigint "visit_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_attribute_value_tables_on_patient_id"
    t.index ["visit_id"], name: "index_attribute_value_tables_on_visit_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.date "dob", null: false
    t.string "gender", null: false
    t.integer "age", null: false
    t.string "street", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.integer "zipcode", null: false
    t.string "social", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.date "visit_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "patient_id", default: 1, null: false
    t.index ["patient_id"], name: "index_visits_on_patient_id"
  end

end
