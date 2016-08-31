class Specialty < ApplicationRecord
  has_many :caregiver_specialties
  has_many :caregivers, through: :caregiver_specialties
end
