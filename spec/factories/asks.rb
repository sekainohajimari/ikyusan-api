# == Schema Information
#
# Table name: asks
#
#  id         :integer          not null, primary key
#  category   :integer
#  content    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_asks_on_category  (category) UNIQUE
#

FactoryGirl.define do
  factory :ask do
    content { generate(:say_something_smart) }

    trait :unset do
      category Ask.categories[:unset]
    end
  end
end
