# == Schema Information
#
# Table name: profiles
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  display_id   :string(255)
#  display_name :string(255)
#  affiliation  :string(255)
#  place        :string(255)
#  website      :string(255)
#  introduction :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#

FactoryGirl.define do
  factory :profile do
    user nil
display_id "MyString"
display_name "MyString"
affiliation "MyString"
place "MyString"
website "MyString"
introduction "MyString"
  end

end
