class ApplicationController < ActionController::API
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # include ActionController::MimeResponds
  # include ActionController::Helpers
  # include ActionController::Cookies

  include ActionController::ImplicitRender
  include Authable
end
