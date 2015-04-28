module Authable
  extend ActiveSupport::Concern

  private
  def login(*credentials)
    @current_user = nil

    user = User.authenticate(credentials)
    if user
      reset_token
      token = gen_token

      Rails.cache.write(token, user)

      @current_user = user
    else
      nil
    end
  end

  def gen_token
    # AccessToken用のテーブル作ったほうがよいかも
    '123456789'
  end

  def reset_token
    # TODO: Tokenのリセット
  end

  def current_user
    return @current_user if logged_in?

    login_from_cache
  end

  def login_from_cache
    @current_user =
      if params[:token]
        Rails.cache.read(params[:token])
      end
  end

  def logged_in?
    !!Rails.cache.read(params[:token])
  end
end
