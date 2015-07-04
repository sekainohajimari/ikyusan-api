require 'rails_helper'

describe 'Idea resource', type: :request, autodoc: true do
  let!(:group) { create(:group) }
  let!(:group_member) { create(:group_member, :owner, group: group, user: current_user) }
  let!(:topic) { create(:topic, group: group, build_user: current_user) }
  let!(:anonymity_enabled_topic) { create(:topic, group: group, anonymity: true, build_user: current_user) }
  let!(:ideas) { [].tap { |arr| 3.times { arr << create(:idea, topic: topic, post_user: current_user) } } }
  let!(:anonymity_disabled_idea) { create(:idea, anonymity: false, topic: topic, post_user: current_user) }
  let!(:anonymity_enabled_idea) { create(:idea, anonymity: true, topic: topic, post_user: current_user) }
  let!(:anonymity_enabled_topic_idea) { create(:idea, anonymity: false, topic: anonymity_enabled_topic, post_user: current_user) }

  describe "GET /api/v1/g/:group_id/t/:topic_id/i" do
    let!(:group_id) { group.id }
    let!(:topic_id) { topic.id }

    before do
      group_member
      ideas
    end

    context_user_authenticated do
      context 'when anonymity disabled' do
        before do
          anonymity_disabled_idea
        end

        it 'return 200' do
          anonymity_disabled_idea

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
      end

      context 'when anonymity enabled' do
        before do
          anonymity_enabled_idea
        end

        it 'success anonymity enable' do
          is_expected.to eq 200
          body = response.body

          expect(body).to have_json_path('ideas')
          expect(body).to be_json_eql('**********'.to_json).at_path('ideas/4/post_user/profile/display_id')
          expect(body).to be_json_eql('**********'.to_json).at_path('ideas/4/post_user/profile/display_name')
        end
      end

      context 'when topic anonymity enabled' do
        before do
          anonymity_enabled_topic
        end

        it 'success anonymity enable' do
          is_expected.to eq 200
          body = response.body

          expect(body).to have_json_path('ideas')
          expect(body).to be_json_eql('**********'.to_json).at_path('ideas/4/post_user/profile/display_id')
          expect(body).to be_json_eql('**********'.to_json).at_path('ideas/4/post_user/profile/display_name')
        end
      end
    end
  end

  describe "POST /api/v1/g/:group_id/t/:topic_id/i" do
    let!(:group_id) { group.id }
    let!(:topic_id) { topic.id }
    let!(:params) { { content: 'hogehoge'} }

    before do
      group_member
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 201
        body = response.body

        expect(body).to have_json_path('idea')
        expect(body).to be_json_eql(params[:content].to_json).at_path('idea/content')
        expect(body).to be_json_eql(current_user.id.to_json).at_path('idea/post_user/id')
        expect(body).to be_json_eql(current_user.profile.display_id.to_json).at_path('idea/post_user/profile/display_id')
        expect(body).to be_json_eql(current_user.profile.display_name.to_json).at_path('idea/post_user/profile/display_name')
      end
    end
  end

  describe "DELETE /api/v1/g/:group_id/t/:topic_id/i/:id" do
    let!(:group_id) { group.id }
    let!(:topic_id) { topic.id }
    let!(:id) { anonymity_enabled_idea.id }

    before do
      group_member
    end

    context_user_authenticated do
      it 'success' do
        is_expected.to eq 204
      end
    end
  end
end
