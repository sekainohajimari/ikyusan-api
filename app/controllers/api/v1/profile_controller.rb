class Api::V1::ProfileController < Api::V1::ApplicationController
  def index
    render json: @profile
  end

  def edit
    update_params =
      {}.tap do |hash|
        hash[:display_id] = profile_params[:display_id] if profile_params[:display_id].present?
        hash[:display_name] = profile_params[:display_name]
      end

    @profile.update!(update_params)

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
