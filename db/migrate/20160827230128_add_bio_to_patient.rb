class AddBioToPatient < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :bio, :text
  end
end
