module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from Exception, with: :handle_500
    rescue_from ::ApiError, with: :handle_api_error
  end

  def handle_500(exception = nil)
    logger.info("Rendering 500 with exception: #{exception.message}") if exception

    render json: { message: 'システムエラーが発生しました' }, status: 500
  end

  def handle_api_error(exception)
    logger.info("Rendering Application Error: #{exception.message}")

    render json: { message: exception.render_message }, status: exception.status_code
  end
end
