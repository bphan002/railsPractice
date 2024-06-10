class AddNullConstraintForUsers < ActiveRecord::Migration[7.1]
  def change
    create_table "users", force: :cascade do |t|
      t.string "username", null: false
      t.string "password_digest", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
