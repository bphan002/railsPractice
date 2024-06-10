class FixVisitsTable2 < ActiveRecord::Migration[7.1]
  def change
    change_table :visits do |t|
      t.remove :patient_id
    end
  end
end
