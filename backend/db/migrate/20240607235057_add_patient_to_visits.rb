class AddPatientToVisits < ActiveRecord::Migration[7.1]
  def change
    add_reference :visits, :patient, null: false, foreign_key: true
  end
end
