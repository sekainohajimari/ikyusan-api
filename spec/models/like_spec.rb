# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  idea_id    :integer
#  liker_id   :integer
#  num        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_likes_on_idea_id  (idea_id)
#

require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'create like' do
    let!(:current_user) { create(:user) }
    let!(:current_user_profile) { create(:profile, user: current_user) }
    let!(:group) { create(:group) }
    let!(:group_member) { create(:group_member, :owner, group: group, user: current_user) }
    let!(:topic) { create(:topic, group: group, build_user: current_user) }
    let!(:idea) { create(:idea, topic: topic, post_user: current_user) }
    let!(:like_user) { create(:user) }
    let!(:like_user_profile) { create(:profile, user: like_user) }

    before do
      current_user_profile
      group_member
    end

    context 'when after create notification' do
      it 'success' do
        like = Like.create!(
          idea: idea,
          like_user: like_user,
          num: 10
        )

        expect(like.notification.present?).to be true
        expect(like.notification.like?).to be true
        expect(like.notification.notifiable_id).to eq like.id
        expect(like.notification.title.present?).to be true
        expect(like.notification.body.present?).to be true
        expect(like.notification.opened?).to be false
      end
    end
  end
end
