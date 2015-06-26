require 'rails_helper'

describe 'Like resource', type: :request, autodoc: true do
  let!(:like_user) { create(:user) }
  let!(:like_user_profile) { create(:profile, user: like_user) }
  let!(:group) { create(:group) }
  let!(:group_member) { create(:group_member, :owner, group: group, user: current_user) }
  let!(:topic) { create(:topic, group: group, build_user: current_user) }
  let!(:idea) { create(:idea, :anonymity_disable, topic: topic, post_user: current_user) }
  let!(:like) { create(:like, idea: idea, like_user: like_user) }

  describe "GET /api/v1/g/:group_id/t/:topic_id/i/:idea_id/l" do
    let!(:group_id) { group.id }
    let!(:topic_id) { topic.id }
    let!(:idea_id) { idea.id }

    before do
      group_member
      like
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('likes')
        expect(body).to have_json_size(1).at_path("likes")
        expect(body).to be_json_eql(like.id.to_json).at_path('likes/0/id')
        expect(body).to be_json_eql(like.num.to_json).at_path('likes/0/num')

        expect(body).to be_json_eql(idea.id.to_json).at_path('likes/0/idea/id')
        expect(body).to be_json_eql(idea.content.to_json).at_path('likes/0/idea/content')
        expect(body).to be_json_eql(idea.likes_count.to_json).at_path('likes/0/idea/likes_count')

        expect(body).to be_json_eql(current_user.id.to_json).at_path('likes/0/idea/post_user/id')
        expect(body).to be_json_eql(current_user.profile.display_id.to_json).at_path('likes/0/idea/post_user/profile/display_id')
        expect(body).to be_json_eql(current_user.profile.display_name.to_json).at_path('likes/0/idea/post_user/profile/display_name')
        expect(body).to be_json_eql(current_user.profile.icon_url.to_json).at_path('likes/0/idea/post_user/profile/icon_url')

        expect(body).to be_json_eql(like_user.id).at_path('likes/0/like_user/id')
        expect(body).to be_json_eql(like_user_profile.display_id.to_json).at_path('likes/0/like_user/profile/display_id')
        expect(body).to be_json_eql(like_user_profile.display_name.to_json).at_path('likes/0/like_user/profile/display_name')
      end
    end
  end

  describe 'POST /api/v1/g/:group_id/t/:topic_id/i/:idea_id/l/doing' do
    let!(:group_id) { group.id }
    let!(:topic_id) { topic.id }
    let!(:idea_id) { idea.id }
    let!(:params) { { num: 10 } }
    before do
      group_member
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 200
        body = response.body

        expect(body).to have_json_path('like')
        expect(body).to have_json_path('like/id')
        expect(body).to have_json_path('like/num')

        expect(body).to be_json_eql(idea.id.to_json).at_path('like/idea/id')
        expect(body).to be_json_eql(idea.content.to_json).at_path('like/idea/content')
        expect(body).to be_json_eql((idea.likes_count + params[:num]).to_json).at_path('like/idea/likes_count')

        expect(body).to be_json_eql(current_user.id.to_json).at_path('like/idea/post_user/id')
        expect(body).to be_json_eql(current_user.profile.display_id.to_json).at_path('like/idea/post_user/profile/display_id')
        expect(body).to be_json_eql(current_user.profile.display_name.to_json).at_path('like/idea/post_user/profile/display_name')
        expect(body).to be_json_eql(current_user.profile.icon_url.to_json).at_path('like/idea/post_user/profile/icon_url')

        expect(body).to be_json_eql(current_user.id).at_path('like/like_user/id')
        expect(body).to be_json_eql(current_user.profile.display_id.to_json).at_path('like/like_user/profile/display_id')
        expect(body).to be_json_eql(current_user.profile.display_name.to_json).at_path('like/like_user/profile/display_name')
      end
    end
  end
end
