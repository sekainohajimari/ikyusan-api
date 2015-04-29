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
# Indexes
#
#  index_users_on_provider_and_uid  (provider,uid) UNIQUE
#

class User < ActiveRecord::Base
  has_one :ios_access_token, -> { where(type: 'ios_access_token') }

  enum status: { active: 1, ban: 2 }

  before_create :change_status_active

  def self.authenticate(auth = {})
    User.find_or_create_by(provider: auth[:provider], uid: auth[:uid]) do |user|
      user.screen_name = auth[:info][:nickname]
      user.screen_url = auth[:info][:image]
    end
  end

  private

  def change_status_active
    self.status = :active
  end
end
