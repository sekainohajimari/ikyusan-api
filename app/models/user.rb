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

class User < ActiveRecord::Base
  include AASM

  has_one :ios_access_token, -> { where(type: 'ios_access_token') }
  has_one :profile

  enum status: { activing: 1, baning: 2 }

  aasm column: :status, enum: true do
    state :activing, initial: true
    state :baning

    event :ban do
      transitions from: [:activing], to: :baning
    end
  end

  def self.authenticate(auth = {})
    User.find_or_create_by(provider: auth[:provider], uid: auth[:uid]) do |user|
      user.create_profile(
        display_id: auth[:info][:nickname],
        display_name: auth[:info][:name],
        icon_url: auth[:info][:image],
        place: auth[:info][:location]
      )
    end
  end
end
