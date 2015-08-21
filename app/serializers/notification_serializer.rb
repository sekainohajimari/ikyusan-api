# == Schema Information
#
# Table name: notifications
#
#  id              :integer          not null, primary key
#  notifier_id     :integer
#  notifiable_type :string(64)
#  notifiable_id   :integer
#  title           :string(255)
#  body            :text(65535)
#  opened          :boolean          default(FALSE), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_notifications_on_notifiable   (notifiable_type,notifiable_id)
#  index_notifications_on_notifier_id  (notifier_id)
#

class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :notifiable_type, :title, :body, :opened, :created_at

  def created_at
    object.created_at.strftime('%Y-%m-%d %H:%M:%S')
  end
end
