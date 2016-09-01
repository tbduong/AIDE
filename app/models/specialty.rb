class Specialty < ApplicationRecord
  has_many :caregiver_specialties
  has_many :caregivers, through: :caregiver_specialties

  #
  # extend FriendlyId
  # friendly_id :skill, use: :slugged

end
