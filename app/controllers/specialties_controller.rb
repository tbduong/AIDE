class SpecialtiesController < ApplicationController
  def index
    @specialties = Specialty.all
  end

  def show
    @specialty = Specialty.find_by(params[:skill])
  end

end
