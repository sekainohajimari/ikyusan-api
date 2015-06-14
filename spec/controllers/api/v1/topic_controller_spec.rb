require 'rails_helper'

describe 'Topic resource', type: :request, autodoc: true do
  let!(:group) { create(:group) }
  let!(:group_member) { create(:group_member, :owner, group: group, user: current_user) }
  let!(:topic) { create(:topic, group: group, build_user: current_user) }

  describe "GET /api/v1/g/:group_id/t" do
    let!(:group_id) { group.id }

    before do
      group_member
      topic
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('topics')
        expect(body).to have_json_size(1).at_path("topics")
        expect(body).to be_json_eql(topic.id.to_json).at_path('topics/0/id')
        expect(body).to be_json_eql(topic.name.to_json).at_path('topics/0/name')
        expect(body).to be_json_eql(topic.idea_max_num.to_json).at_path('topics/0/idea_max_num')

        expect(body).to have_json_path('topics/0/build_user')
        expect(body).to be_json_eql(current_user.id.to_json).at_path('topics/0/build_user/id')
        expect(body).to be_json_eql(current_user.profile.display_id.to_json).at_path('topics/0/build_user/profile/display_id')
        expect(body).to be_json_eql(current_user.profile.display_name.to_json).at_path('topics/0/build_user/profile/display_name')
      end
    end
  end

  describe "POST /api/v1/g/:group_id/t" do
    let!(:group_id) { group.id }
    let!(:params) { { name: 'hoge' } }

    before do
      group_member
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('topic')
        expect(body).to have_json_path('topic/id')
        expect(body).to have_json_path('topic/idea_max_num')
        expect(body).to be_json_eql('hoge'.to_json).at_path('topic/name')
      end
    end
  end

  describe "GET /api/v1/g/:group_id/t/:id/edit" do
    let!(:group_id) { group.id }
    let!(:id) { topic.id }
    let!(:params) { { name: 'hoge' } }

    before do
      group_member
      topic
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('topic')
        expect(body).to be_json_eql(topic.id.to_json).at_path('topic/id')
        expect(body).to be_json_eql(topic.idea_max_num.to_json).at_path('topic/idea_max_num')
        expect(body).to be_json_eql('hoge'.to_json).at_path('topic/name')
      end
    end
  end
end
