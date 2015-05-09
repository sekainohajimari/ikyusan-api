# == Schema Information
#
# Table name: notifications
#
#  notifier_id           :integer
#  id                    :integer          not null, primary key
#  type                  :string(255)
#  notificationable_type :string(255)
#  notificationable_id   :string(255)
#  notification_kind     :integer
#  progress              :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#
# Indexes
#
#  index_notifications_on_notificationable  (notificationable_type,notificationable_id)
#  index_notifications_on_notifier_id       (notifier_id)
#

class Notification < ActiveRecord::Base
  include AASM

  has_many :notification_messages

  belongs_to :notifiy_user, class_name: 'User', foreign_key: :notifier_id
  belongs_to :notificationable, polymorphic: true

  enum notification_kind: { immediately: 1, job: 2, batch: 3 }
  enum progress: { incompleting: 1, processing: 2, completing: 3 }

  aasm column: :progress, enum: true do
    state :incompleting, initial: true
    state :processing
    state :completing

    event :process do
      transitions from: [:incompleting], to: :processing
    end

    event :complete do
      transitions from: [:processing], to: :completing
    end
  end

  after_save :create_notification_message

  def self.to_subclass_name(type)
    "#{type.to_s}_#{Notification.name}".camelize
  end

  ##### private methods #####
  private
  def create_notification_message
    return if self.immediately?

    # create
  end
end
