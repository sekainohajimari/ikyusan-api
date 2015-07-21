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
    if display_id.blank?
      begin
        self.display_id = "temp_#{SecureRandom.hex(4)}#{Time.zone.now.to_i.to_s}"
      end while self.class.exists?(display_id: display_id)
    end
  end
end
