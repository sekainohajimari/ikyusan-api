module Notifiable
  extend ActiveSupport::Concern

  included do
    has_one :notification, as: :notifiable

    after_create do
      create_notification!(
        notifiy_user: notifiy_user,
        title: title,
        body: body
      )
    end
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
end
