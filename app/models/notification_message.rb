# == Schema Information
#
# Table name: notification_messages
#
#  id              :integer          not null, primary key
#  notification_id :integer
#  user_id         :integer
#  open            :integer
#  message         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_notification_messages_on_notification_id  (notification_id)
#  index_notification_messages_on_user_id          (user_id)
#

class NotificationMessage < ActiveRecord::Base
  belongs_to :notification
  belongs_to :user

  enum open: { no: 0 , yes: 1 }

  class << self
    def notify_messages(notification)
      targets =
        case notification.notificationable_type
        when Like.name
          like = notification.notificationable
          target_user_ids = like.idea.topic.group
            .group_members.pluck(:user_id).delete(notification.notifier_id)

          return if target_user_ids.blank?

          [].tap do |result|
            target_user_ids.each do |user_id|
              result << {
                user_id: user_id,
                message: gen_message(like)
              }
            end
          end
        when Invite.name
          invite = notification.notificationable

          [].tap do |result|
            result << {
              user_id: invite.invite_user.id,
              message: gen_message(invite)
            }
          end
        end

      targets.each do |target|
        notify_message(notification, target)
      end
    end

    ##### private methods #####
    private
    def gen_message(notificationable)
      relative_path = "#{Global.notification_message.template_file_dir}/#{notificationable.class.name.underscore}.txt.erb"
      ERB.new(File.read(relative_path)).result(binding)
    end

    def notify_message(notification, target)
      notification_message = self.new(
        notification: notification,
        user_id: target[:user_id],
        message: target[:message]
      )
      notification_message.no!
      notification_message.save!
    end
  end
end
