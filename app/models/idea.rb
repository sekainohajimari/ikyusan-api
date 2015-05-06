# == Schema Information
#
# Table name: ideas
#
#  id          :integer          not null, primary key
#  topic_id    :integer
#  poster_id   :integer
#  content     :string(255)
#  anonymity   :integer
#  likes_count :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_ideas_on_topic_id  (topic_id)
#

class Idea < ActiveRecord::Base
  include AASM
  
  belongs_to :topic
  belongs_to :post_user, class_name: 'User', foreign_key: :poster_id

  has_many :likes
  has_many :favorites, as: :favoritable

  enum anonymity: { disabling: 0, enabling: 1 }

  aasm column: :anonymity, enum: true do
    state :disabling, initial: true
    state :enabling

    event :enable do
      transitions from: [:disabling], to: :enabling
    end
  end
end
