module Authenticater
  extend ActiveSupport::Concern

  # TODO 現状はiOSのみしか想定していない
  private
  def auth_token
    authenticate_or_request_with_http_token { |token, options| token }
  end

  def login(*credentials)
    @current_user = nil

    user = User.authenticate(*credentials)
    raise Error::ApiError.new('Authentication failure', 401) unless user

    AccessToken.clean_issuance(user_id: user.id, expired: 100.days)

    @current_user = user
  end

  def logout
    AccessToken.reset(user_id: current_user.id, token: auth_token)
  end

  def current_user
    return @current_user if @current_user.present?

    @current_user = login_from_token
  end

  def login_from_token
    Rails.cache.fetch(auth_token, expires_in: 1.hour) do
      AccessToken.find_by(token: auth_token).user
    end
  end

  def logged_in?
    access_token = Rails.cache.read(auth_token)
    return true if access_token.present?

    access_token = AccessToken.alive.find_by(token: auth_token)
    access_token.present?
  end

  def require_login
    return true if logged_in?

    raise Error::ApiError.new('No Login', 400)
  end
end
