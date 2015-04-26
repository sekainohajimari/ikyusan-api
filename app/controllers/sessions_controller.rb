class SessionsController < ApplicationController
  def create
    login(request.env['omniauth.auth'])

    # redirect_to '/home/show'
  end

  def destroy
    logout

    # redirect_to root_path
  end
end
