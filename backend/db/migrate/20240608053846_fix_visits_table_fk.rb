class FixVisitsTableFk < ActiveRecord::Migration[7.1]
  def change
    add_reference :visits, :patient, foreign_key: true
  end
end
