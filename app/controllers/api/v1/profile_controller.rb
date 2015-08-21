class Api::V1::ProfileController < Api::V1::ApplicationController
  before_action :set_profile, only: [:index, :update, :default_icon]

  def index
    render json: @profile, root: 'profile'
  end

  def update
    update_params =
      {}.tap do |hash|
        hash[:display_id] = profile_params[:display_id] if profile_params[:display_id].present?
        hash[:display_name] = profile_params[:display_name]
        hash[:in_use_default_icon] = true if profile_params[:apply_default_icon].present?
      end

    @profile.update!(update_params)

    render json: @profile, root: 'profile'
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
      :display_name,
      :apply_default_icon
    )
  end
end
