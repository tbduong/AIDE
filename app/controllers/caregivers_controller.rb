class CaregiversController < ApplicationController
  def show
    # TODO: Indentation is inconsistent.  Fix if/else Indentation
    # TODO: Use single quotes on flash error.
    # TODO: Should you use two 'elsif's in control flow?
    @caregiver = Caregiver.find_by_id(params[:id])
    @specialties = Specialty.all
      if logged_in?
      elsif current_user.patient
        render :show
      elsif session[:user_id] != @caregiver[:user_id]
        flash[:error] = "You are NOT authorized to view this profile."
        redirect_to '/'
      end
  end

  def index
    @q = Caregiver.ransack(params[:q])
    @caregivers = @q.result(distinct: true)
    @specialties = Specialty.all
  end

  def edit
    @caregiver = Caregiver.find_by_id(params[:id])
    if logged_in?
    elsif session[:user_id] != @caregiver[:user_id]
      # TODO: single quotes on flash
      flash[:error] = "You are NOT authorized to edit this profile."
      redirect_to '/'
    end
  end

  def update
    caregiver_params = params.require(:caregiver).permit(:experience, :file, :location, :credentials)
    @caregiver = Caregiver.find_by_id(params[:id])
    # TODO: fix indentation
    if @caregiver.update(caregiver_params)
      redirect_to caregiver_path(@caregiver)
    else
      redirect_to :back
    end
  end

  def send_email
    caregiver = Caregiver.find_by_id(params[:id])
    UserMailer.caregiver_email(caregiver, current_user).deliver
    flash[:success] = "Thank you for your inquiry! An email has been sent to #{caregiver.user.first_name} #{caregiver.user.last_name}."
    redirect_to patient_path(patient)
  end
end

# TODO: Create a private method for the caregiver_params
# this will make your code more DRY
