class ProfilesController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  after_action :verify_authorized, except: [:index, :show], unless: :skip_pundit?

  def show
    authorize @user
  end

  def edit
    authorize @user
  end

  def update
    authorize @user

    if @user.update(user_params)
      redirect_to profile_path, notice: 'Profile updated successfully.'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :telephone_number)
  end
end
