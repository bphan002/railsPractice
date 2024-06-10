class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :gender
      t.integer :age
      t.string :street
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
