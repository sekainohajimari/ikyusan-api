# == Schema Information
#
# Table name: notification_messages
#
#  id              :integer          not null, primary key
#  notification_id :integer
#  user_id         :integer
#  progress        :integer
#  open            :integer
#  message         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_notification_messages_on_notification_id  (notification_id)
#  index_notification_messages_on_progress         (progress)
#  index_notification_messages_on_user_id          (user_id)
#

class NotificationMessage < ActiveRecord::Base
  belongs_to :notification
  belongs_to :user

  enum open: { no: 0 , yes: 1 }

  def self.notify_messages(notification)
    targets =
      case notification.notificationable_type
      when Like.name
        like = notification.notificationable
        target_user_ids = like.idea.topic.group
          .group_members.pluck(:user_id).delete(notification.notifier_id)

        return if target_user_ids.blank?

        message = "#{like.like_user.profile.display_name}さんが、「#{like.idea.short_content}」に対し、スキをしました"
        [].tap do |result|
          target_user_ids.each do |user_id|
            result << {
              user_id: user_id,
              message: message
            }
          end
        end
      end

    targets.each do |target|
      notify_message(notification, target)
    end
  end

  ##### private methods #####
  def self.notify_message(notification, target)
    notification_message = self.new(
      notification: notification,
      user_id: target[:user_id],
      message: target[:message]
    )
    notification_message.no!
    notification_message.save!
  end
  private_class_method :notify_message
end
