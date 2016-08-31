class CreateCaregiverSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :caregiver_specialties do |t|
      t.belongs_to :specialty, foreign_key: true
      t.belongs_to :caregiver, foreign_key: true

      t.timestamps
    end
  end
end
