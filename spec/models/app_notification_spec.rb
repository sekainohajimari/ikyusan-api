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

require 'rails_helper'

RSpec.describe AppNotification, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
