# == Schema Information
#
# Table name: profiles
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  display_id          :string(255)
#  display_name        :string(255)
#  icon_url            :string(255)
#  in_use_default_icon :boolean          default(FALSE), not null
#  affiliation         :string(255)
#  place               :string(255)
#  website             :string(255)
#  introduction        :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_profiles_on_display_id  (display_id)
#  index_profiles_on_user_id     (user_id)
#

FactoryGirl.define do
  factory :profile do
    user
    display_id { generate(:internet_name) }
    icon_url { generate(:avatar_image) }
    display_name { generate(:name_jp) }
    affiliation "セカハマ部"
    place { generate(:city) }
    website { generate(:internet_url) }
    introduction "はじめまして"
  end
end
