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
  include Notifiable

  belongs_to :idea
  belongs_to :like_user, class_name: User.name, foreign_key: :liker_id

  after_save :update_counter_cache

  validates :num, inclusion: { in: 1..100 }

  ##### class methods #####
  class << self
    def create_or_update_by!(idea_id:, like_user:, num:)
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
  end

  ##### private methods #####
  private
  def notifiy_users
    [idea.post_user]
  end

  def title
    "あなたのアイディアが「スキ」されました"
  end

  def body
    "#{like_user.display_name}さんが、#{idea.short_content}にスキをしました"
  end

  def update_counter_cache
    idea.likes_count = Like.where(idea_id: idea_id).sum(:num)

    idea.save!
  end
end
