class Api::V1::ApplicationController < ActionController::API
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  include ActionController::MimeResponds
  include ActionController::Serialization
  include ActionController::Helpers
  include ActionController::HttpAuthentication::Token::ControllerMethods

  # project local modules
  include Authenticater
  include ExceptionHandler

  before_action :store_request

  private
  def store_request
    RequestStore.store[:request] = request
  end
end
