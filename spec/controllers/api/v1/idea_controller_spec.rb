require 'rails_helper'

describe 'Idea resource', type: :request, autodoc: true do
  let!(:group) { create(:group) }
  let!(:group_member) { create(:group_member, :owner, group: group, user: current_user) }
  let!(:topic) { create(:topic, group: group, build_user: current_user) }
  let!(:ideas) { [].tap { |arr| 3.times { arr << create(:idea, :anonymity_disable, topic: topic, post_user: current_user) } } }
  let!(:anonymity_enable_idea) { create(:idea, :anonymity_enable, topic: topic, post_user: current_user) }

  describe "GET /api/v1/g/:group_id/t/:topic_id/i" do
    let!(:group_id) { group.id }
    let!(:topic_id) { topic.id }

    before do
      group_member
      ideas
      anonymity_enable_idea
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('ideas')
        expect(body).to be_json_eql(ideas.first.id.to_json).at_path('ideas/0/id')
        expect(body).to be_json_eql(ideas.first.content.to_json).at_path('ideas/0/content')
        expect(body).to be_json_eql(ideas.first.likes_count.to_json).at_path('ideas/0/likes_count')
        expect(body).to be_json_eql(current_user.id.to_json).at_path('ideas/0/post_user/id')
        expect(body).to be_json_eql(current_user.profile.display_id.to_json).at_path('ideas/0/post_user/profile/display_id')
        expect(body).to be_json_eql(current_user.profile.display_name.to_json).at_path('ideas/0/post_user/profile/display_name')
      end

      it 'success anonymity enable' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('ideas')
        expect(body).to be_json_eql('**********'.to_json).at_path('ideas/3/post_user/profile/display_id')
        expect(body).to be_json_eql('**********'.to_json).at_path('ideas/3/post_user/profile/display_name')
      end
    end
  end
end
