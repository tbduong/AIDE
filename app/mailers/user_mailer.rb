class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_email.subject
  #
  def welcome_email(user)
    @user = user

    mail to: @user.email, subject: 'Welcome to Aide!'
  end

  def caregiver_email(caregiver, current_user)
    @caregiver = caregiver
    @user = current_user

    mail to: @caregiver.user.email, subject: 'This is a test'
  end


end
