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

class Like < ActiveRecord::Base
  belongs_to :idea
  belongs_to :like_user, class_name: 'User', foreign_key: :liker_id

  after_save :update_counter_cache

  def self.create_or_update!(idea_id: , like_user: , num: )
    like = find_or_initialize_by(
      idea_id: idea_id,
      like_user: like_user
    )
    like.num =
      if like.num.blank?
        num
      else
        like.num + num
      end

    like.save!

    like
  end

  ##### private methods #####
  private

  def update_counter_cache
    idea.likes_count = Like.where(idea_id: self.idea_id).sum(:num)

    idea.save!
  end
end
