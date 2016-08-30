class CaregiversController < ApplicationController
  def show
    @caregiver = Caregiver.find_by_id(params[:id])

    if current_user.patient
      render :show
    else
      if session[:user_id] != @caregiver[:user_id]
        flash[:error] = "You are NOT authorized to view this profile."
        redirect_to '/'
      end
    end
  end

  def index
    @caregivers = Caregiver.all
    render :index
  end

  def edit
    @caregiver = Caregiver.find_by_id(params[:id])
    if session[:user_id] != @caregiver[:user_id]
      flash[:error] = "You are NOT authorized to edit this profile."
      redirect_to '/'
    end
  end

  def update
    caregiver_params = params.require(:caregiver).permit(:experience, :file, :location, :credentials)
    @caregiver = Caregiver.find_by_id(params[:id])
    if @caregiver.update(caregiver_params)
      redirect_to caregiver_path(@caregiver)
    else
      redirect_to :back
    end
  end

  def send_email
    caregiver = Caregiver.find_by_id(params[:id])
    UserMailer.caregiver_email(caregiver, current_user).deliver
    redirect_to '/'
  end
end
