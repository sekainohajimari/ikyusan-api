# == Schema Information
#
# Table name: access_tokens
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  type       :string(255)
#  token      :string(255)
#  expires_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_access_tokens_on_type_and_token    (type,token) UNIQUE
#  index_access_tokens_on_type_and_user_id  (type,user_id) UNIQUE
#

class AccessToken < ActiveRecord::Base
  belongs_to :user

  enum type: {
    ios: 'IosAccessToken',
    android: 'AndroidAccessToken'
  }

  before_create :set_default

  scope :alive, -> (now: Time.now){ where{ expires_at > now } }

  ##### class methods #####
  class << self
    def clean_issuance(user_id:, expired:)
      AccessToken.transaction do
        reset(user_id: user_id)

        create!(
          user_id: user_id,
          type: get_type,
          expires_at: Time.now + expired
        )
      end
    end

    def reset(user_id:)
      token = find_by(user_id: user_id)
      token.destroy if token
    end
  end

  ##### private methods #####
  private

    def set_default
      self.token = SecureRandom.hex(40)
      self.type = get_type
      self.expires_at = Time.now + Global.application.token_expire_days.days
    end

    def get_type
      # TODO: 本番OPEN前には変更する
      return IosAccessToken.name
      # return IosAccessToken.name if Util::Request.ios?
      # return AndroidAccessToken.name if Util::Request.android?
    end
end
