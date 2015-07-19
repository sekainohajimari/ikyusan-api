require 'rails_helper'

describe 'Invite resource', type: :request, autodoc: true do
  let!(:group) { create(:group) }

  describe "GET /api/v1/g/:group_id/invite/doing/:inviter_id" do
    let!(:group_id) { group.id }
    let!(:inviter_id) { invite_user.id }
    let!(:invite_user) { create(:user) }
    let!(:inviter_user_profile) { create(:profile, user: invite_user) }
    let!(:group_member) { create(:group_member, :owner, group: group, user: current_user) }

    context_user_authenticated do
      before do
        group_member
        inviter_user_profile
      end

      it 'success' do
        is_expected.to eq 201
        body = response.body

        expect(body).to have_json_path('invite')
        expect(body).to have_json_path('invite/id')
        expect(body).to be_json_eql(current_user.id.to_json).at_path('invite/host_user/id')
        expect(body).to be_json_eql(current_user.profile.display_id.to_json).at_path('invite/host_user/profile/display_id')
        expect(body).to be_json_eql(current_user.profile.display_name.to_json).at_path('invite/host_user/profile/display_name')
        expect(body).to be_json_eql(current_user.profile.icon_url.to_json).at_path('invite/host_user/profile/icon_url')

        expect(body).to be_json_eql(invite_user.id.to_json).at_path('invite/invite_user/id')
        expect(body).to be_json_eql(invite_user.profile.display_id.to_json).at_path('invite/invite_user/profile/display_id')
        expect(body).to be_json_eql(invite_user.profile.display_name.to_json).at_path('invite/invite_user/profile/display_name')
        expect(body).to be_json_eql(invite_user.profile.icon_url.to_json).at_path('invite/invite_user/profile/icon_url')
      end
    end
  end

  describe "PATCH /api/v1/g/:group_id/invite/agree" do
    let!(:invite_group) { create(:group) }
    let!(:group_id) { invite_group.id }
    let!(:host_user) { create(:user) }
    let!(:host_user_profile) { create(:profile, user: host_user) }
    let!(:invite) { create(:invite, group: invite_group, host_user: host_user, invite_user: current_user)}

    context_user_authenticated do
      before do
        host_user_profile
        invite
      end

      it 'success' do
        is_expected.to eq 204

        target_invite = Invite.find(invite.id)
        expect(target_invite.agreeing?).to be true
      end
    end
  end

  describe "PATCH /api/v1/g/:group_id/invite/denial" do
    let!(:invite_group) { create(:group) }
    let!(:group_id) { invite_group.id }
    let!(:host_user) { create(:user) }
    let!(:host_user_profile) { create(:profile, user: host_user) }
    let!(:invite) { create(:invite, group: invite_group, host_user: host_user, invite_user: current_user)}

    context_user_authenticated do
      before do
        host_user_profile
        invite
      end

      it 'success' do
        is_expected.to eq 204

        target_invite = Invite.find(invite.id)
        expect(target_invite.denialing?).to be true
      end
    end
  end

end
