class Caregiver < ApplicationRecord
  belongs_to :user
  has_many :caregiver_specialties
  has_many :specialties, through: :caregiver_specialties
end
