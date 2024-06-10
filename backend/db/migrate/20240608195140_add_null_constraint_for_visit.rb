class AddNullConstraintForVisit < ActiveRecord::Migration[7.1]
  def change
    create_table "visits", force: :cascade do |t|
      t.date "visit_date", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.bigint "patient_id", default: 1, null: false
      t.index ["patient_id"], name: "index_visits_on_patient_id"
    end
  end
end
