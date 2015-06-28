class Api::V1::SessionsController < Api::V1::ApplicationController
  before_action :require_login, except: [:new]

  def new
    login(request.env['omniauth.auth'])

    render json: current_user, token: current_user.ios_access_token.token
  end

  def destroy
    logout

    head :no_content
  end
end
