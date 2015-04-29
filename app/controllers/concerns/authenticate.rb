module Authenticate
  extend ActiveSupport::Concern

  # TODO 現状はiOSのみしか想定していない
  private
  def login(*credentials)
    @current_user = nil

    user = User.authenticate(*credentials)
    if user
      IosAccessToken.clean_issuance(user_id: user.id, expired: 7.days)

      @current_user = user
    else
      nil
    end
  end

  def logout
    IosAccessToken.reset(user_id: current_user.id)
  end

  def current_user
    return @current_user if @current_user.present?

    @current_user = login_from_token
  end

  def login_from_token
    if params[:token]
      IosAccessToken.find_by(token: params[:token]).user
    else
      nil
    end
  end

  def logged_in?
    !!IosAccessToken.find_by(token: params[:token]).try(:alive)
  end
end
