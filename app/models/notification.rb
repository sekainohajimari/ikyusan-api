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

class Notification < ActiveRecord::Base
  belongs_to :notifiable, polymorphic: true
  belongs_to :notifiy_user, class_name: User.name, foreign_key: :notifier_id

  enum notifiable_type: {
    like: 'Like',
    invite: 'Invite',
    group_member: 'GroupMember'
  }

  scope :unopend, -> { where(opened: false) }
  
  # TODO: push通知とかmail送信とか
  # def deliver
  # end
end
