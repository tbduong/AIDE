class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.confirm(user_params)
    if @user
      session[:user_id] = @user.id
      @current_user = @user
      if @user.patient
        redirect_to patient_path(@user)
      else redirect_to caregiver_path(@user)
      end
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
