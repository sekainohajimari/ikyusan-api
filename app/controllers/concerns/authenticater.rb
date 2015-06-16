module Authenticater
  extend ActiveSupport::Concern

  private
  def login(*credentials)
    @current_user = nil

    user = User.authenticate(*credentials)
    raise Error::ApiError.new('Authentication failure', 401) unless user

    AccessToken.clean_issuance(user_id: user.id, expired: 100.days)

    @current_user = user
  end

  def logout
    AccessToken.reset(user_id: current_user.id, token: @access_token.token)
    Rails.cache.delete(@access_token.token)
    @current_user = nil
  end

  def auth_token
    authenticate_or_request_with_http_token do |token, options|
      return false if token.blank?

      @access_token =
        Rails.cache.fetch(token, expires_in: 1.hour) do
          AccessToken.alive.find_by(token: token)
        end

      @access_token.present?
    end
  end

  def current_user
    return @current_user if @current_user.present?

    @current_user = login_from_token
  end

  def login_from_token
    @access_token.user
  end

  def require_login
    auth_token

    @access_token.present?
  end
end
