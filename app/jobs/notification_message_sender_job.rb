class NotificationMessageSenderJob < ActiveJob::Base
  queue_as :default

  def perform(notification)
    NotificationMessage.notify_messages(notification)
  end
end
