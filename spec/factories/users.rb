# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  provider           :string(255)
#  uid                :string(255)
#  oauth_token        :string(255)
#  oauth_token_secret :string(255)
#  status             :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_users_on_provider_and_uid  (provider,uid) UNIQUE
#

FactoryGirl.define do
  factory :user do
    uid "1234567890"
    status 1

    trait :twitter do
      provider "twitter"
    end
  end
end
