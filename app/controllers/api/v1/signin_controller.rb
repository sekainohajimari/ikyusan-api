class Api::V1::SigninController < Api::V1::ApplicationController
  before_action :require_login, except: [:create]

  def create
    login(signin_params[:uuid], signin_params[:hv])

    render json: current_user, token: current_user.ios_access_token.token
  end

  private

    def signin_params
      params.permit(
        :uuid,
        :hv
      )
    end
end
