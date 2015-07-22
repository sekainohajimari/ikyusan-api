# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  idea_id    :integer
#  liker_id   :integer
#  num        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_likes_on_idea_id  (idea_id)
#

FactoryGirl.define do
  factory :like do
    idea
    num { (1..100).to_a.sample }

    to_create do |instance|
      instance.save validate: false
    end
  end
end
