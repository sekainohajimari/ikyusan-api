class Api::V1::ProfileController < Api::V1::ApplicationController
  before_action :set_profile, only: [:index, :edit]
  
  def index
    render json: @profile
  end

  def edit
    @profile.update!(
      display_id: profile_params[:display_id],
      display_name: profile_params[:display_name]
    )

    render json: current_user.profile
  end

  def enabled
    render json: { enabled: !Profile.where(display_id: params[:display_id]).exists? }
  end

  private

  def set_profile
    @profile = current_user.profile
  end

  def profile_params
    params.permit(
      :display_id,
      :display_name
    )
  end
end
