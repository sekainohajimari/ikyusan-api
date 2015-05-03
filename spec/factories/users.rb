# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  provider   :string(255)
#  uid        :string(255)
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_provider_and_uid  (provider,uid) UNIQUE
#

FactoryGirl.define do
  factory :user do
    provider "MyString"
uid "MyString"
screen_name "MyString"
screen_url "MyString"
status 1
  end

end
