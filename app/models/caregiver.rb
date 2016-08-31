class Caregiver < ApplicationRecord
  belongs_to :user
  has_many :caregiver_specialties, dependent: :destroy
  has_many :specialties, through: :caregiver_specialties
end
