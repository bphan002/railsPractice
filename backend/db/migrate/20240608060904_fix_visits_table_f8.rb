class FixVisitsTableF8 < ActiveRecord::Migration[7.1]
  def change
    add_reference :visits, :patient, foreign_key: true, null: false, default: 1
  end
end
