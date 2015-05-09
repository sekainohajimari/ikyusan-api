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
end
