class AddSocialColumnToPatient < ActiveRecord::Migration[7.1]
  def change
    add_column :patients, :social, :string
  end
end
