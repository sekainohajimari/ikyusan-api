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

class Profile < ActiveRecord::Base
  belongs_to :user

  before_create do
    while self.class.exists?(display_id: display_id) || display_id.blank?
      self.display_id = "temp_#{SecureRandom.hex(4)}#{Time.zone.now.to_i.to_s}"
    end
  end

  before_save do
    self.icon_url = Global.profile.default_icon_url if in_use_default_icon?
  end
end
