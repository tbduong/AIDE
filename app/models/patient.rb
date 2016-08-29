class Patient < ApplicationRecord
  belongs_to :user

VALID_DATE_REGEX = 

  validates :bio, length: {maximum: 1000}
            :date_of_birth, format: {with: VALID_DATE_REGEX}


end
