# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  platform   :integer          not null
#  uuid       :string(255)      not null
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_uuid  (uuid) UNIQUE
#

FactoryGirl.define do
  factory :user do
    uuid { SecureRandom.uuid }
    platform { User.platforms[:ios] }
    status 1

    trait :ios do
      platform User.platforms[:ios]
    end
  end
end
