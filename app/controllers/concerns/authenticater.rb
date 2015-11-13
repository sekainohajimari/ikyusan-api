module Authenticater
  extend ActiveSupport::Concern

  included do
    helper_method :current_user, :require_login
  end

  private

    def login(uuid, hv)
      @current_user = nil

      check_hv!(uuid, hv)

      user = User.authenticate_with_uuid(uuid)
      raise Error::ApiError.new('Authentication failure', 401) unless user

      AccessToken.find_or_create_by(user_id: user.id)

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

    def check_hv!(uuid, hv)
      if uuid.blank? || hv.blank?
        raise Error::ApiError.new('UUID is invalid.', 400)
      end

      unless hv == Digest::MD5.hexdigest(uuid + Global.application.uuid_hash_salt)
        raise Error::ApiError.new('UUID is invalid.', 400)
      end
    end
end
