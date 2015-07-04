# == Schema Information
#
# Table name: ideas
#
#  id          :integer          not null, primary key
#  topic_id    :integer
#  poster_id   :integer
#  content     :string(255)
#  anonymity   :boolean          default(FALSE), not null
#  likes_count :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_ideas_on_topic_id  (topic_id)
#

class Idea < ActiveRecord::Base
  belongs_to :topic
  belongs_to :post_user, class_name: User.name, foreign_key: :poster_id

  has_many :likes
  has_many :favorites, as: :favoritable

  def short_content
    self.content.truncate(25, omission: '...')
  end
end
