class AddFileColumnToCaregivers < ActiveRecord::Migration[5.0]
  def change
    add_column :caregivers, :file, :text
  end
end
