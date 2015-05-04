# == Schema Information
#
# Table name: ideas
#
#  id         :integer          not null, primary key
#  topic_id   :integer
#  poster_id  :integer
#  content    :string(255)
#  anonymity  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_ideas_on_topic_id  (topic_id)
#

class Idea < ActiveRecord::Base
  belongs_to :topic
  belongs_to :post_user, class_name: 'User', foreign_key: :poster_id

  enum anonymity: { disable: 0, enable: 1 }
end
