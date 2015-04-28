# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  provider    :string(255)
#  uid         :string(255)
#  screen_name :string(255)
#  screen_url  :string(255)
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
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
