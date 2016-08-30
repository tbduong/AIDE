class RemovePhotoColumnFromPatients2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :photo, :text
  end
end
