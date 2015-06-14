# == Schema Information
#
# Table name: topics
#
#  id           :integer          not null, primary key
#  group_id     :integer
#  builder_id   :integer
#  name         :string(255)
#  idea_max_num :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_topics_on_group_id  (group_id)
#

FactoryGirl.define do
  factory :topic do
    group
    sequence(:name) { |n| "topic_#{n}" }
    idea_max_num Global.topic.default_idea_max_num
  end
end
