class RemovePhotoColumnFromPatients < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :photo, :string
  end
end
