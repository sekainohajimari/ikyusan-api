# == Schema Information
#
# Table name: groups
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  membar_max_num :integer
#  topic_max_num  :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :group do
    sequence(:name) {|i|"group name #{i}"}
    membar_max_num Global.group.default_membar_max_num
    topic_max_num Global.group.default_topic_max_num

    to_create do |instance|
      instance.save validate: false
    end
  end
end
