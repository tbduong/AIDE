module SessionsHelper

  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    # TODO: you can use 'if current_user nil?' instead
    if current_user == nil
    # TODO: don't use parenthesis around a literal
      redirect_to ('/')
    end
  end

  def logout
    @current_user = session[:user_id] = nil
  end

  def patient
   # TODO: use two spaces for indentation
   Patient.find_by_user_id(current_user.id)
  end

  def caregiver
   # TODO: use two spaces for indentation
   Caregiver.find_by_user_id(current_user.id)
  end

  def find_patient_and_redirect
    @patient = Patient.find_by_user_id(@user.id)
    flash[:notice] = "Successfully logged in!"
    redirect_to patient_path(@patient)
  end

  def find_caregiver_and_redirect
    @caregiver = Caregiver.find_by_user_id(@user.id)
    flash[:notice] = "Successfully logged in!"
    redirect_to caregiver_path(@caregiver)
  end

end
# TODO: remove empty line 2
# TODO: single quotes on flash messages
# TODO: remove empty line 45
