class SpecialtiesController < ApplicationController

  def index
    @specialties = Specialty.all
  end

  def show
    @specialty = Specialty.find_by_id(params[:id])
  end

end
