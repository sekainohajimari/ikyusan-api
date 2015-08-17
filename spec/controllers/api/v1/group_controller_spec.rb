require 'rails_helper'

describe 'Group resource', type: :request, autodoc: true do
  describe "GET /api/v1/g" do
    let!(:groups) { create_list(:group, 10) }
    let!(:group_members) do
      groups.each do |group|
        create(:group_member, :owner, group: group, user: current_user)
      end
    end
    let!(:colors) do
      groups.each do |group|
        group.create_color(color_code_id: 1)
      end
    end

    before do
      group_members
      colors
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('groups')
        expect(body).to have_json_size(10).at_path("groups")
        expect(body).to have_json_path('groups/0/id')
        expect(body).to have_json_path('groups/0/name')
        expect(body).to have_json_path('groups/0/membar_max_num')
        expect(body).to have_json_path('groups/0/topic_max_num')
        expect(body).to have_json_path('groups/0/color/color_code_id')
        expect(body).to have_json_path('groups/0/own_group_member')
        expect(body).to have_json_path('groups/0/own_group_member/status')
        expect(body).to have_json_path('groups/0/own_group_member/role')
      end
    end
  end

  describe "POST /api/v1/g", type: :request, autodoc: true do
    let(:params) do
      { name: 'hoge', color_code_id: 3 }
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 201
        body = response.body

        expect(body).to have_json_path('id')
        expect(body).to have_json_path('name')
        expect(body).to have_json_path('membar_max_num')
        expect(body).to have_json_path('topic_max_num')
        expect(body).to have_json_path('color/color_code_id')
        expect(body).to be_json_eql(params[:name].to_json).at_path('name')
        expect(body).to be_json_eql(params[:color_code_id].to_json).at_path('color/color_code_id')
      end
    end
  end

  describe "PATCH /api/v1/g/:id", type: :request, autodoc: true do
    let(:group) { create(:group) }
    let(:group_member) { create(:group_member, :owner, group: group, user: current_user) }
    let(:color) { create(:color, colorable: group) }
    let(:id) { group.id }
    let(:params) do
      { name: 'foo', color_code_id: 4 }
    end

    before do
      group_member
      color
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('id')
        expect(body).to have_json_path('name')
        expect(body).to have_json_path('membar_max_num')
        expect(body).to have_json_path('topic_max_num')
        expect(body).to have_json_path('color/color_code_id')
        expect(body).to be_json_eql(group.id.to_json).at_path('id')
        expect(body).to be_json_eql(params[:name].to_json).at_path('name')
        expect(body).to be_json_eql(params[:color_code_id].to_json).at_path('color/color_code_id')
        expect(body).to be_json_eql(group.membar_max_num.to_json).at_path('membar_max_num')
        expect(body).to be_json_eql(group.topic_max_num.to_json).at_path('topic_max_num')
      end
    end
  end

  describe "GET /api/v1/g/:id/detail", type: :request, autodoc: true do
    let(:id) { group.id }
    let(:group) { create(:group) }
    let(:color) { create(:color, colorable: group) }
    let(:group_member_owner) { create(:group_member, :owner, :joining, group: group, user: current_user) }
    let(:group_member_inviter) { create(:group_member, :member, :inviting, group: group, user: invite_user) }
    let(:invite_user) { create(:user) }
    let(:invite_user_profile) { create(:profile, user: invite_user) }

    before do
      group_member_owner
      group_member_inviter
      invite_user_profile
      color
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        # group
        expect(body).to have_json_path('id')
        expect(body).to have_json_path('name')
        expect(body).to have_json_path('membar_max_num')
        expect(body).to have_json_path('topic_max_num')
        expect(body).to have_json_path('color/color_code_id')
        expect(body).to be_json_eql(group.id.to_json).at_path('id')
        expect(body).to be_json_eql(group.name.to_json).at_path('name')
        expect(body).to be_json_eql(group.membar_max_num.to_json).at_path('membar_max_num')
        expect(body).to be_json_eql(group.topic_max_num.to_json).at_path('topic_max_num')
        expect(body).to be_json_eql(color.color_code_id.to_json).at_path('color/color_code_id')

        # group member
        expect(body).to be_json_eql(group_member_owner.id.to_json).at_path('group_members/0/id')
        expect(body).to be_json_eql(group_member_owner.role.to_json).at_path('group_members/0/role')
        expect(body).to be_json_eql(group_member_owner.status.to_json).at_path('group_members/0/status')
        expect(body).to be_json_eql(current_user.id.to_json).at_path('group_members/0/user/id')
        expect(body).to be_json_eql(profile.display_id.to_json).at_path('group_members/0/user/profile/display_id')
        expect(body).to be_json_eql(profile.display_name.to_json).at_path('group_members/0/user/profile/display_name')
        expect(body).to be_json_eql(group_member_inviter.id.to_json).at_path('group_members/1/id')
        expect(body).to be_json_eql(group_member_inviter.role.to_json).at_path('group_members/1/role')
        expect(body).to be_json_eql(group_member_inviter.status.to_json).at_path('group_members/1/status')
        expect(body).to be_json_eql(invite_user.id.to_json).at_path('group_members/1/user/id')
        expect(body).to be_json_eql(invite_user_profile.display_id.to_json).at_path('group_members/1/user/profile/display_id')
        expect(body).to be_json_eql(invite_user_profile.display_name.to_json).at_path('group_members/1/user/profile/display_name')
      end
    end
  end

  describe "DELETE /api/v1/g/:id", type: :request, autodoc: true do
    let!(:id) { group.id }
    let!(:group) { create(:group) }
    let!(:group_member_owner) { create(:group_member, :owner, :joining, group: group, user: current_user) }

    before do
      group_member_owner
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 204
      end
    end
  end

  describe "PATCH /api/v1/g/:id/escape", type: :request, autodoc: true do
    let!(:id) { group.id }
    let!(:group) { create(:group) }
    let!(:group_member) { create(:group_member, :member, :joining, group: group, user: current_user) }
    let!(:group_member_2) { create(:group_member, :owner, :joining, group: group, user: user_2) }
    let!(:user_2) { create(:user) }
    let!(:user_profile_2) { create(:profile, user: user_2) }

    before do
      group_member
      group_member_2
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 204

        expect(Notification.group_member.exists?(notifiable_id: group_member.id)).to eq(true)
      end
    end
  end
end
