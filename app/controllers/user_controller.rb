class UserController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password, :patient)
    @user = User.new(user_params)
    if @user.save
      if @user.patient
        Patient.create(user_id: @user.id)
      else
        Caregiver.create(user_id: @user.id)
      end
    end
  end
end
