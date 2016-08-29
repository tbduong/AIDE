class PatientsController < ApplicationController

  def show
    @patient = Patient.find_by_id(params[:id])
    if session[:user_id] != @patient[:user_id]
      flash[:error] = "You are NOT authorized to view this profile."
      redirect_to '/'
    end
  end

  def edit
    @patient = Patient.find_by_id(params[:id])
    if session[:user_id] != @patient[:user_id]
      flash[:error] = "You are NOT authorized to edit this profile."
      redirect_to '/'
    end
  end

  def update
    patient_params = params.require(:patient).permit(:date_of_birth, :photo, :location, :bio)
    @patient = Patient.find_by_id(params[:id])
    if @patient.update(patient_params)
      redirect_to patient_path(@patient)
    else
      redirect_to :back
    end
  end
end
