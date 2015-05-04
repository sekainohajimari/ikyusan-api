class ApiError < StandardError
  attr_reader :status_code, :render_message

  def initialize(message, status_code = 500, render_message = nil)
    super(message)
    @status_code = status_code
    @render_message = render_message.present? ? render_message : message
  end
end
