class RemovePhotoColumnFromCaregivers2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :caregivers, :photo, :text
  end
end
