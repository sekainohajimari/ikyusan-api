class Api::V1::ProfileController < Api::V1::ApplicationController
  before_action :set_profile, only: [:index, :edit, :default_icon]

  def index
    render json: @profile, root: 'profile'
  end

  def edit
    update_params =
      {}.tap do |hash|
        hash[:display_id] = profile_params[:display_id] if profile_params[:display_id].present?
        hash[:display_name] = profile_params[:display_name]
      end

    @profile.update!(update_params)

    render json: @profile, root: 'profile'
  end

  def enabled
    render json: { enabled: !Profile.where(display_id: params[:display_id]).exists? }
  end

  def default_icon
    @profile.update!(
      icon_url: Global.profile.default_icon_url,
      in_use_default_icon: true
    )

    render json: @profile, root: 'profile'
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
