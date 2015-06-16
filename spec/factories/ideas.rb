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

FactoryGirl.define do
  factory :idea do
    topic
    sequence(:content) { generate(:say_something_smart) }
    anonymity Idea.anonymities[:disabling]
    likes_count { (1..100).to_a.sample }

    trait :anonymity_disable do
      anonymity Idea.anonymities[:disabling]
    end

    trait :anonymity_enable do
      anonymity Idea.anonymities[:enabling]
    end
  end
end
