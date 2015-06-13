# == Schema Information
#
# Table name: access_tokens
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  type       :string(255)
#  token      :string(255)
#  expires_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_access_tokens_on_type_and_token    (type,token) UNIQUE
#  index_access_tokens_on_type_and_user_id  (type,user_id) UNIQUE
#

FactoryGirl.define do
  factory :access_token do
    user
    token SecureRandom.hex(40)
    expires_at Time.now + 100.days

    trait :ios do
      type AccessToken.types[:ios]
    end

    trait :android do
      type AccessToken.types[:android]
    end
  end
end
