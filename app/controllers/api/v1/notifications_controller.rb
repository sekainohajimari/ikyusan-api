class Api::V1::NotificationsController < Api::V1::ApplicationController
  before_action :require_login, only: [:index]
  before_action :set_notification_messages, only: [:index]

  def index
    render json: @notification_messages, root: 'notification_messages'
  end

  ##### private methods #####
  private
  def set_notification_messages
    @notification_messages = NotificationMessage.where(user_id: current_user.id)
  end
end
