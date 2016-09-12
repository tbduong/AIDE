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
        UserMailer.welcome_email(@user).deliver
        login(@user)
          if @user.patient
            create_patient
          else
            create_caregiver
          end
      else
        flash[:error] = @user.errors.full_messages.join(', ')
        redirect_to new_user_path
      end
  end

  def edit
    @user = User.find_by_id(params[:id])
    if session[:user_id] != @user[:id]
        flash[:error] = 'You are NOT authorized to edit this profile.'
        redirect_to '/'
    end
  end

  def update
    @user = User.find_by_id(params[:id])
      if @user.update(user_params)
        if @user.patient
          edit_patient
        else
          edit_caregiver
        end
      else
          flash[:error] = 'Could not save changes to User information. Please try again.'
          redirect_to :back
      end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :patient)
  end
end

# TODO:  Indent two spaces for 'user_params' method after private designation
