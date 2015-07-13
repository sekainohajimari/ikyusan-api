module Notifiable
  extend ActiveSupport::Concern

  included do
    has_one :notification, as: :notifiable

    after_create :create_notification
  end

  def notifiy_user
    raise NotImplementedError
  end

  def title
    raise NotImplementedError
  end

  def body
    raise NotImplementedError
  end

  def create_notification
    Notification.create(
      notifiy_user: notifiy_user,
      notifiable_type: self.class.name,
      notifiable_id: id,
      title: title,
      body: body
    )
  end
end
