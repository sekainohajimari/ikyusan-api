# == Schema Information
#
# Table name: invites
#
#  id         :integer          not null, primary key
#  group_id   :integer
#  hoster_id  :integer
#  inviter_id :integer
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_invites_on_group_id    (group_id)
#  index_invites_on_hoster_id   (hoster_id)
#  index_invites_on_inviter_id  (inviter_id)
#

class Invite < ActiveRecord::Base
  include AASM
  include Notificationable

  belongs_to :group
  belongs_to :host_user, class_name: User.name, foreign_key: :hoster_id
  belongs_to :invite_user, class_name: User.name, foreign_key: :inviter_id

  enum status: { inviting: 1, agreeing: 2, denialing: 3 }

  aasm column: :status, enum: true do
    state :inviting, initial: true
    state :agreeing
    state :denialing

    event :agree do
      transitions from: [:inviting], to: :agreeing
    end

    event :denial do
      transitions from: [:inviting], to: :denial
    end
  end

  act_as_notification do
    config type: :app do
      notification_kind :immediately
    end
  end

  after_create :create_invite_group_member
  after_save :update_join_group_member

  ##### private methods #####
  private
  def create_invite_group_member
    return unless self.inviting?

    group_member = GroupMember.new(user: invite_user)
    group_member.member!
    group.group_members << group_member

    group.save!
  end

  def update_join_group_member
    return unless self.agreeing?

    group_member = group.group_member.inviting.find_by(user: invite_user)
    group_member.join

    group_member.save!
  end
end
