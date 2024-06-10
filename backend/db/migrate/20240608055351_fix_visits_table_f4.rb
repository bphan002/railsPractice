class FixVisitsTableF4 < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :visits, :patients
  end
end
