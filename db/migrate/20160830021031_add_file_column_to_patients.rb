class AddFileColumnToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :file, :text
  end
end
