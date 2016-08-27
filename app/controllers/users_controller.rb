class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      if @user.patient
        Patient.create(user_id: @user.id)
      else
        Caregiver.create(user_id: @user.id)
      end
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.update(user_params)
    redirect_to "/"
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :patient)
  end

end
