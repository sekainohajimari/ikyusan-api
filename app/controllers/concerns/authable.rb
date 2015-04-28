module Authable
  extend ActiveSupport::Concern

  private
  def login(*credentials)
    # binding.pry
    @current_user = nil
    user = User.authenticate(request.env['omniauth.auth'])
    if user
      reset_token

      @current_user = user
    else
      # TODO: 例外投げる
    end
  end

  def reset_token
    # TODO: Tokenのリセット
  end

  def current_user
    @current_user = login_from_session
  end

  def login_from_session
    @current_user =
      if session[:user_id]
        User.find_by_id(session[:user_id])
      end
  end
end
