module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from Exception, with: :handle_500
    rescue_from ::ApiError, with: :handle_api_error
  end

  def handle_500(e = nil)
    if e
      logger.fatal("Rendering 500 with exception: #{e.message}")
      logger.fatal(e.backtrace.join("\n"))
    end

    render json: { message: 'システムエラーが発生しました' }, status: 500
  end

  def handle_api_error(e)
    logger.fatal("Rendering Application Error: #{e.message}")
    logger.fatal(e.backtrace.join("\n"))

    render json: { message: e.render_message }, status: e.status_code
  end
end
