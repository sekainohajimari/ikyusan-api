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

  before_create :gen_token

  scope :alive, -> (now: Time.now){ where{ expires_at > now } }

  def self.find_sti_class(type_name)
    type_name.camelize.constantize
  end

  def self.sti_name
    name.underscore
  end

  def self.clean_issuance(user_id: , expired:)
    IosAccessToken.transaction do
      reset(user_id: user_id)

      create!(
        user_id: user_id,
        expires_at: Time.now + expired
      )
    end
  end

  def self.reset(user_id:)
    token = find_by(user_id: user_id)
    token.destroy if token
  end

  private

  def gen_token
    self.token = SecureRandom.hex(24)
  end
end
