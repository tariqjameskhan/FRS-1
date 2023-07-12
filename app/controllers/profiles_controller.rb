class ProfilesController < ApplicationController
  after_action :verify_authorized, except: [:index, :show], unless: :skip_pundit?

  def show
    @user = current_user
    authorize @user # Add this line to perform Pundit authorization
  end
end
