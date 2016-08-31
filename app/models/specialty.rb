class Specialty < ApplicationRecord
  has_many :caregiver_specialty
  has_many :caregivers, through: :caregiver_specialty
end
