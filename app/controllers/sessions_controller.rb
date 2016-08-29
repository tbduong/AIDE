class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.confirm(user_params)
    if @user
      login(@user)
      if @user.patient
        @patient = Patient.find_by_user_id(@user.id)
        flash[:notice] = "Successfully logged in!"
        redirect_to patient_path(@patient)
      else
        @caregiver = Caregiver.find_by_user_id(@user.id)
        flash[:notice] = "Successfully logged in!"
        redirect_to caregiver_path(@caregiver)
      end
    else
      flash[:error] = "Incorrect email or password. Please try again"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
    flash[:notice] = "Successfully logged out."
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
