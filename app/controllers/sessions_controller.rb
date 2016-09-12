class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.confirm(user_params)
    if @user
      login(@user)
      if @user.patient
        find_patient_and_redirect
      else
        find_caregiver_and_redirect
      end
    else
      flash[:error] = "Incorrect email or password. Please try again"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
    flash[:notice] = "Successfully logged out."
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
# TODO: All flash messages need single quotes
# Remove excessive line on 33.
