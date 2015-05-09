# == Schema Information
#
# Table name: notifications
#
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
#

require 'rails_helper'

RSpec.describe Notification, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
