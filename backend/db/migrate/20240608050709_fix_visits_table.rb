class FixVisitsTable < ActiveRecord::Migration[7.1]
  def change
    remove_column :visits, :patient, :string
    remove_column :visits, :references, :string
  end
end
