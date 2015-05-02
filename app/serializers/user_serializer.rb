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

class UserSerializer < ActiveModel::Serializer
  attributes :id, :screen_name, :screen_url, :token

  def token
    object.ios_access_token.token
  end
end
