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
#  index_profiles_on_display_id  (display_id) UNIQUE
#  index_profiles_on_user_id     (user_id) UNIQUE
#

class ProfileSerializer < ActiveModel::Serializer
  attributes :display_id, :display_name, :icon_url, :in_use_default_icon

  def attributes
    data = super

    if serialization_options[:add_default_icon_url]
      data[:default_icon_url] = Global.profile.default_icon_url
    end

    data
  end
end
