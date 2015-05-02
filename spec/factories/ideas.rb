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

FactoryGirl.define do
  factory :idea do
    topic nil
poster_id 1
content "MyString"
anonymity 1
  end

end
