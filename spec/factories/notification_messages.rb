# == Schema Information
#
# Table name: notification_messages
#
#  id              :integer          not null, primary key
#  notification_id :integer
#  user_id         :integer
#  open            :boolean          default(FALSE), not null
#  message         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_notification_messages_on_notification_id  (notification_id)
#  index_notification_messages_on_user_id          (user_id)
#

FactoryGirl.define do
  factory :notification_message do
    open false
    message { generate(:say_something_smart) }
  end
end
