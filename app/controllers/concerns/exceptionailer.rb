module Exceptionailer
  extend ActiveSupport::Concern

  unless Rails.env.development?
    included do
      rescue_from Exception, with: :handle_500
    end
  end

  def handle_500(exception = nil)
    render json: { error: 'システムエラーが発生しました' }, status: 500
  end
end
