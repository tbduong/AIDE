class Patient < ApplicationRecord
  belongs_to :user

  VALID_DATE_REGEX = /\d{2}\/\d{2}\/\d{4}/

  validates :date_of_birth, presence: true,
            format:     { with: VALID_DATE_REGEX }
            # length:     { maximum: 10 }
end
