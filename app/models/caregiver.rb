class Caregiver < ApplicationRecord
  belongs_to :user
  has_many :caregiver_specialty, dependent: :destroy
  has_many :specialty, through: :caregiver_specialty
end
