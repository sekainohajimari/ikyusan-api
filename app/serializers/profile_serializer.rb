# == Schema Information
#
# Table name: profiles
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  display_id   :string(255)
#  display_name :string(255)
#  icon_url     :string(255)
#  affiliation  :string(255)
#  place        :string(255)
#  website      :string(255)
#  introduction :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_profiles_on_display_id  (display_id)
#  index_profiles_on_user_id     (user_id)
#

class ProfileSerializer < ActiveModel::Serializer
  attributes :display_id, :display_name, :icon_url
end
