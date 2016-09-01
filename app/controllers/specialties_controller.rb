class SpecialtiesController < ApplicationController
  def index
    @specialties = Specialty.all
    @q = Caregiver.ransack(params[:q])
    @caregivers = @q.result(distinct: true)
    @specialty = Specialty.find_by(params[:id])
  end


  def show
    @specialty = Specialty.find_by_id(params[:id])
    @caregiver = Caregiver.find_by_id(params[:id])
  end

end
