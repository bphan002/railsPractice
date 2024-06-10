class AddNullConstraint < ActiveRecord::Migration[7.1]
  def change
    create_table "patients", force: :cascade do |t|
      t.string "first_name", null: false
      t.string "last_name", null: false
      t.date "dob", null: false
      t.string "gender", null: false
      t.integer "age" # This might be nullable if calculated from `dob`
      t.string "street", null: false
      t.string "city", null: false
      t.string "state", null: false
      t.integer "zipcode", null: false
      t.string "social", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    
  end
end
