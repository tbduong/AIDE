class RemoveDateOfBirthFromPatients < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :date_of_birth, :integer
  end
end
