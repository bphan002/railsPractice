class CreateAttributeValueTables < ActiveRecord::Migration[7.1]
  def change
    create_table :attribute_value_tables do |t|
      t.string :question
      t.string :val_str
      t.integer :value_int
      t.date :val_date
      t.boolean :val_boolean
      t.references :patient, null: false, foreign_key: true
      t.references :visit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
