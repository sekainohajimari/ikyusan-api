class Api::V1::ProfileController < ApplicationController
  def index
    render json: current_user.profile
  end

  def edit
    current_user.profile.update!(
      :display_id,
      :display_name
    )
  end

  def profile_params
    params.permit(
      :display_id,
      :display_name
    )
  end
end
