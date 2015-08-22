class Api::V1::ProfilesController < Api::V1::ApplicationController
  before_action :set_profile, only: [:show, :update]

  def show
    render json: @profile, root: 'profile'
  end

  def update
    update_params =
      {}.tap do |hash|
        hash[:display_id] = profile_params[:display_id] if profile_params[:display_id].present?
        hash[:display_name] = profile_params[:display_name]
        if profile_params[:apply_default_icon].present?
          if profile_params[:apply_default_icon].presence.to_i == 1
            hash[:in_use_default_icon] = true
          else
            hash[:in_use_default_icon] = false
          end
        end
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
