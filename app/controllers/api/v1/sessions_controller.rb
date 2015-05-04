class Api::V1::SessionsController < ApplicationController
  def new
    login(request.env['omniauth.auth'])

    render json: current_user
  end

  def destroy
    logout

    render json: {}
  end
end
