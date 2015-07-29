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

require 'rails_helper'

RSpec.describe Invite, type: :model do
  describe 'create invite' do
    let!(:host_user) { create(:user) }
    let!(:host_user_profile) { create(:profile, user: host_user) }
    let!(:current_user) { create(:user) }
    let!(:current_user_profile) { create(:profile, user: current_user) }
    let!(:group) { create(:group) }

    before do
      current_user_profile
      group
    end

    context 'when after create notification' do
      it 'success' do
        invite = Invite.create!(
          group: group,
          host_user: host_user,
          invite_user: current_user,
          status: Invite.statuses[:inviting]
        )

        expect(invite.notifications.present?).to be true
        expect(invite.notifications.first.invite?).to be true
        expect(invite.notifications.first.notifiable_id).to eq invite.id
        expect(invite.notifications.first.title.present?).to be true
        expect(invite.notifications.first.body.present?).to be true
        expect(invite.notifications.first.opened?).to be false
      end
    end
  end

  describe 'invite denial' do
    let!(:host_user) { create(:user) }
    let!(:host_user_profile) { create(:profile, user: host_user) }
    let!(:current_user) { create(:user) }
    let!(:current_user_profile) { create(:profile, user: current_user) }
    let!(:group) { create(:group) }
    let!(:group_member_host) { create(:group_member, :owner, group: group, user: host_user) }

    before do
      current_user_profile
      group_member_host
    end

    context 'when after create notification' do
      it 'success' do
        invite = Invite.new(
          group: group,
          host_user: host_user,
          invite_user: current_user,
          status: Invite.statuses[:inviting],

        )
        invite.save(validate: false)
        invite.denial!

        expect(invite.notifications.present?).to be true
        expect(invite.notifications.last.invite?).to be true
        expect(invite.notifications.last.notifiable_id).to eq invite.id
        expect(invite.notifications.last.title).to eq invite.title
        expect(invite.notifications.last.body).to eq invite.body
        expect(invite.notifications.last.opened?).to be false
      end
    end
  end

  describe 'invite agree' do
    let!(:host_user) { create(:user) }
    let!(:host_user_profile) { create(:profile, user: host_user) }
    let!(:current_user) { create(:user) }
    let!(:current_user_profile) { create(:profile, user: current_user) }
    let!(:member2) { create(:user) }
    let!(:member3) { create(:user) }
    let!(:group) { create(:group) }
    let!(:group_member_host) { create(:group_member, :owner, group: group, user: host_user) }
    let!(:group_member_1) { create(:group_member, :member, group: group, user: member2) }
    let!(:group_member_2) { create(:group_member, :member, group: group, user: member3) }

    before do
      current_user_profile
      group_member_host
      group_member_1
      group_member_2
    end

    context 'when after create notification' do
      it 'success' do
        invite = Invite.create!(
          group: group,
          host_user: host_user,
          invite_user: current_user,
          status: Invite.statuses[:inviting]
        )
        invite.agree!

        expect(invite.notifications.present?).to be true
        expect(invite.notifications.length).to be invite.group.group_members.count
        expect(invite.notifications.first.invite?).to be true
        expect(invite.notifications.first.notifiable_id).to eq invite.id
        expect(invite.notifications.last.title).to eq invite.title
        expect(invite.notifications.last.body).to eq invite.body

        expect(invite.group.group_members.find_by(user: current_user).joining?).to be true
      end
    end
  end
end
