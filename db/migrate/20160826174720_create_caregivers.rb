class CreateCaregivers < ActiveRecord::Migration[5.0]
  def change
    create_table :caregivers do |t|
      t.text :experience
      t.string :photo
      t.string :location
      t.string :credentials
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
