module SessionsHelper
  
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  # def logged_in?
  #   if current_user == nil
  #     redirect_to ('/')
  #   end
  # end

  def logout
    @current_user = session[:user_id] = nil
  end

end
