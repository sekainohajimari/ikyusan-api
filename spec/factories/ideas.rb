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

FactoryGirl.define do
  factory :idea do
    topic
    sequence(:content) { generate(:say_something_smart) }
    anonymity false
    likes_count { (1..100).to_a.sample }
  end
end
