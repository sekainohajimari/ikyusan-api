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

        expect(invite.notification.present?).to be_truthy
        expect(invite.notification.invite?).to be_truthy
        expect(invite.notification.notifiable_id).to eq invite.id
        expect(invite.notification.title.present?).to be_truthy
        expect(invite.notification.body.present?).to be_truthy
        expect(invite.notification.opened?).to be_falsey
      end
    end
  end
end
