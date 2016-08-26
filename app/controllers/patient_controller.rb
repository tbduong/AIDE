class PatientController < ApplicationController

  def show
    @patient.find_by_id(params[:id])
  end

  def edit
    @patient.find_by_id(params[:id])
  end

  def update
    patient_params = params.require(:patient).permit(:date_of_birth, :photo, :location)
    @patient.find_by_id(params[:id])
    @patient.update_attributes(patient_params)
  end

end
