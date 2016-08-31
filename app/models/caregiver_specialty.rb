class CaregiverSpecialty < ApplicationRecord
  belongs_to :specialty
  belongs_to :caregiver
end
