# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  platform   :integer          not null
#  uuid       :string(255)      not null
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_uuid  (uuid) UNIQUE
#

class User < ActiveRecord::Base
  include AASM

  has_one :ios_access_token, -> { where(type: AccessToken.types[:ios]) }
  has_one :profile

  has_many :notifications, foreign_key: :notifier_id

  enum platform: {
    ios: 1,
    android: 2
  }
  enum status: {
    activing: 1,
    baning: 2
  }

  aasm column: :status, enum: true do
    state :activing, initial: true
    state :baning

    event :ban do
      transitions from: [:activing], to: :baning
    end
  end

  delegate :display_name, to: :profile

  ##### class methods #####
  class << self
    def authenticate_with_uuid(uuid)
      User.find_or_create_by(uuid: uuid) do |user|
        user.platform = User.platforms[:ios]

        begin
          display_id = SecureRandom.hex[0...6]
        end while Profile.exists?(display_id: display_id)
        user.create_profile!(
          display_id: display_id,
          display_name: Gimei.first.katakana,
          icon_url: Global.profile.default_icon_url
        )
      end
    end

    def authenticate_with_social(auth = {})
      # TODO: 一旦コメントアウト
      # User.find_or_create_by(provider: auth[:provider], uid: auth[:uid]) do |user|
      #   user.oauth_token = auth[:credentials][:token]
      #   user.oauth_token_secret = auth[:credentials][:secret]
      #
      #   user.create_profile!(
      #     display_id: auth[:info][:nickname],
      #     display_name: auth[:info][:name],
      #     icon_url: auth[:info][:image],
      #     place: auth[:info][:location]
      #   )
      # end
    end
  end
end
