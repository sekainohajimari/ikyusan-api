module Notifiable
  extend ActiveSupport::Concern

  included do
    has_many :notifications, as: :notifiable
    after_save :exec_notify, if: :notify?
  end

  def exec_notify
    notifiy_users.each do |notifiy_user|
      notifications.new(
        notifiy_user: notifiy_user,
        title: title,
        body: body
      )
    end
    Notification.import(notifications.to_a)
  end

  def notify?
    true
  end

  def notifiy_users
    raise NotImplementedError
  end

  def title
    raise NotImplementedError
  end

  def body
    raise NotImplementedError
  end
end
