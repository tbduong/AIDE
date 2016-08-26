class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.integer :date_of_birth
      t.string :photo
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
