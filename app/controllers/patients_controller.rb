class PatientsController < ApplicationController
  def show
    @patient = Patient.find_by_id(params[:id])
    if logged_in?
    elsif session[:user_id] != @patient[:user_id]
          flash[:error] = "You are NOT authorized to view this profile."
          redirect_to '/'

    end
  end

  def edit
    @patient = Patient.find_by_id(params[:id])
    if logged_in?
    elsif session[:user_id] != @patient[:user_id]
          flash[:error] = "You are NOT authorized to edit this profile."
          redirect_to '/'
    end
  end

  def update
    patient_params = params.require(:patient).permit(:date_of_birth, :file, :location, :bio)
    @patient = Patient.find_by_id(params[:id])
    if @patient.update(patient_params)
      redirect_to patient_path(@patient)
    else
      redirect_to :back
    end
  end
end

# TODO: create a private method for patients_params
# TODO: Single quotes on flash error (line 6 and 16)
