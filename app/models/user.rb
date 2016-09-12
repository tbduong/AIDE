class User < ApplicationRecord
  has_secure_password
  # TODO: add spaces between curly brackets { maximum: 50 }
  validates :first_name, :last_name, presence: true, length: {maximum: 50}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email,
            presence:   true,
            format:     { with: VALID_EMAIL_REGEX },
            uniqueness: true,
            length:     { maximum: 255 }

  def self.confirm(params)
    # TODO: add spaces between curly brackets
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
end
