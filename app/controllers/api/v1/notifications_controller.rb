class Api::V1::NotificationsController < Api::V1::ApplicationController
  before_action :set_notifications, only: [:index]

  def index
    render json: @notifications, root: 'notifications'
  end

  ##### private methods #####
  private
  def set_notifications
    @notifications = Notification.where(notifier_id: current_user.id)
  end
end
