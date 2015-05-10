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
  include AASM

  belongs_to :notification
  belongs_to :user

  enum open: { no: 0 , yes: 1 }

  aasm column: :open, enum: true do
    state :no, initial: true
    state :yes

    event :be_open do
      transitions from: [:no], to: :yes
    end
  end

  ##### class methods #####
  class << self
    def notify_messages(notification)
      targets =
        case notification.notificationable_type
        when Like.name
          like_messages(notification)
        when Invite.name
          invite_messages(notification)
        end

      return if targets.blank?

      targets.each do |target|
        create!(
          notification: notification,
          user_id: target[:user_id],
          message: target[:message]
        )
      end
    end

    ##### private methods #####
    private
    def like_messages(notification)
      like = notification.notificationable
      target_users = like.idea.topic.group
        .group_members.where.not(user_id: notification.notifier_id)

      return nil if target_users.blank?

      [].tap do |result|
        target_users.pluck(:user_id).each do |user_id|
          result << {
            user_id: user_id,
            message: message(like)
          }
        end
      end
    end

    def invite_messages(notification)
      invite = notification.notificationable

      [].tap do |result|
        result << {
          user_id: invite.invite_user.id,
          message: message(invite)
        }
      end
    end

    def message(notificationable)
      relative_path = "#{Global.notification_message.template_file_dir}/#{notificationable.class.name.underscore}.txt.erb"
      ERB.new(File.read(relative_path)).result(binding)
    end
  end
end
