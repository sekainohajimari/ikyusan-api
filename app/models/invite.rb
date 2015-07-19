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
  include Notifiable

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
      transitions from: [:inviting], to: :denialing
    end
  end

  after_create :create_invite_group_member
  after_save :update_group_member

  def notifiy_users
    return [invite_user] if inviting?
    return group.group_members.exclude_user(invite_user).map(&:user) if agreeing?
    return [host_user] if denialing?
  end

  def title
    return "グループへの招待がきています" if inviting?
    return "グループへの参加者がいます" if agreeing?
    return "グループへの参加を拒否されました" if denialing?
  end

  def body
    return "#{host_user.display_name}さんが、グループ「#{group.name}」にあなたを招待しています" if inviting?
    return "#{invite_user.display_name}さんが、グループ「#{group.name}」へ参加しました" if agreeing?
    return "#{invite_user.display_name}さんが、グループ「#{group.name}」への参加を拒否しました" if denialing?
  end

  ##### private methods #####
  private
  def create_invite_group_member
    return unless inviting?

    group_member = GroupMember.new(user: invite_user)
    group_member.member!
    group.group_members << group_member

    group.save!
  end

  def update_group_member
    return if inviting?

    group_member = group.group_members.find_by(user: invite_user)
    if agreeing?
      group_member.join!
    elsif denialing?
      group_member.destroy
    end
  end
end
