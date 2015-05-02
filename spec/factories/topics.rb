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
    group nil
builder_id 1
name "MyString"
idea_max_num 1
  end

end
