module Authenticater
  extend ActiveSupport::Concern

  # TODO 現状はiOSのみしか想定していない
  private
  def login(*credentials)
    @current_user = nil

    user = User.authenticate(*credentials)
    raise "Authentication failure" unless user

    IosAccessToken.clean_issuance(user_id: user.id, expired: 100.days)

    @current_user = user
  end

  def logout
    IosAccessToken.reset(user_id: current_user.id)
  end

  def current_user
    return @current_user if @current_user.present?

    @current_user = login_from_token
  end

  def login_from_token
    token =
      if params[:token]
        params[:token]
      else
        raise "No token"
      end

    Rails.cache.fetch(token, expires_in: 1.hour) do
      IosAccessToken.find_by(token: token).user
    end
  end

  def logged_in?
    !!IosAccessToken.find_by(token: params[:token]).try(:alive)
  end
end
