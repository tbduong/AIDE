module UserHelper

  def create_patient
    @patient = Patient.create(user_id: @user.id)
    flash[:success] = 'Successfully created a patient account'
    redirect_to patient_path(@patient.id)
  end

  def create_caregiver
    @caregiver = Caregiver.create(user_id: @user.id)
    flash[:success] = 'Successfully created a caregiver account'
    redirect_to caregiver_path(@caregiver.id)
  end

  def edit_patient
    @patient = Patient.find_by_user_id(current_user[:id])
    flash[:notice] = 'Successfully saved changes to User information.'
    redirect_to patient_path(@patient.id)
  end

  def edit_cargiver
    @caregiver = Caregiver.find_by_user_id(current_user[:id])
    flash[:notice] = 'Successfully saved changes to User information.'
    redirect_to caregiver_path(@caregiver.id)
  end

end
