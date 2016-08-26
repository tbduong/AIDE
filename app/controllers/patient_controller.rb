class PatientController < ApplicationController

  def show
    @patient = Patient.find_by_id(params[:id])
  end

  def edit
    @patient = Patient.find_by_id(params[:id])
  end

  def update
    patient_params = params.require(:patient).permit(:date_of_birth, :photo, :location)
    @patient = Patient.find_by_id(params[:id])
    @patient.update(patient_params)
  end

end
