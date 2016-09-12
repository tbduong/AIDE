class Patient < ApplicationRecord
  belongs_to :user

  has_uploadcare_file :file
  # TODO: add a space between curly brackets { maximum: 1000 }
  validates :bio, length: {maximum: 1000}
end
