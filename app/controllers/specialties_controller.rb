class SpecialtiesController < ApplicationController

  def index
    @specialties = Specialty.all
  end

  def show
    @specialty = Specialty.find_by_id(params[:id])
  end

  def edit
    @specialty = Specialty.find_by_id(params[:id])
    if session[:user_id] != @patient[:user_id]
      flash[:error] = "You are NOT authorized to edit this profile."
      redirect_to '/'
    end
  end

  def update
    specialty_params = params.require(:specialty).permit(:skill)
    @specialty = Caregiver.find_by_id(params[:id])
    if @specialty.update(specialty_params)
      redirect_to specialty_path(@specialty)
    else
      redirect_to :back
    end
  end

end
