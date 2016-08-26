class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.confirm(user_params)
    if @user
      session[:user_id] = @user.id
      @current_user = @user
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
