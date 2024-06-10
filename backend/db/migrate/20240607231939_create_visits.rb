class CreateVisits < ActiveRecord::Migration[7.1]
  def change
    create_table :visits do |t|
      t.string :patient
      t.string :references
      t.date :visit_date

      t.timestamps
    end
  end
end
