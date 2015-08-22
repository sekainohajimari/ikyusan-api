class Api::V1::NotificationsController < Api::V1::ApplicationController
  before_action :set_notifications, only: [:index, :unopened_count]

  def index
    page = notification_params[:page].present? ? notification_params[:page].to_i : 1

    render json: @notifications.page(page), root: 'notifications', serializer: PaginationSerializer
  end

  def unopened_count
    render json: { unopened_count: @notifications.unopend.count }
  end

  ##### private methods #####
  private
  def set_notifications
    @notifications = Notification.where(notifier_id: current_user.id)
  end

  def notification_params
    params.permit(
      :page
    )
  end
end
