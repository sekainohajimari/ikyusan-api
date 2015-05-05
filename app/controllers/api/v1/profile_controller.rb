class Api::V1::ProfileController < ApplicationController
  def index
    render json: current_user.profile
  end

  def edit
    current_user.profile.update!(
      profile_params[:display_id],
      profile_params[:display_name]
    )

    render json: current_user.profile
  end

  def enabled
    render json: { enabled: !Profile.where(display_id: params[:display_id]).exists? }
  end

  def profile_params
    params.permit(
      :display_id,
      :display_name
    )
  end
end
