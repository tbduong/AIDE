class Patient < ApplicationRecord
  belongs_to :user

  has_uploadcare_file :file

  validates :bio, length: {maximum: 1000}
end
