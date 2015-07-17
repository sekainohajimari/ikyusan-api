# == Schema Information
#
# Table name: groups
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  membar_max_num :integer
#  topic_max_num  :integer
#  color_id       :integer          default(1), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :group do
    sequence(:name) { generate(:title) }
    membar_max_num Global.group.default_membar_max_num
    topic_max_num Global.group.default_topic_max_num
  end
end
