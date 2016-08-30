class AddSpecialtyToCaregivers < ActiveRecord::Migration[5.0]
  def change
    add_column :caregivers, :specialty, :string
  end
end
