class RemovePhotoFromCaregivers < ActiveRecord::Migration[5.0]
  def change
    remove_column :caregivers, :photo, :string
  end
end
