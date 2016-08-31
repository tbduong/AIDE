class AddSlugToSpecialties < ActiveRecord::Migration[5.0]
  def change
    add_column :specialties, :slug, :string
    add_index :specialties, :slug

  end
end
