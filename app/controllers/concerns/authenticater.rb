module Authenticater
  extend ActiveSupport::Concern

  private
  def auth_token  
    return @token if @token.present?

    authenticate_or_request_with_http_token { |token, options| @token = token }
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
      access_token = AccessToken.find_by(token: auth_token)
      raise Error::ApiError.new('No Token', 400) if access_token.blank?
      access_token.user
    end
  end

  def logged_in?
    return true if Rails.cache.read(auth_token).present?

    AccessToken.alive.find_by(token: auth_token).present?
  end

  def require_login
    return true if logged_in?
  end
end
