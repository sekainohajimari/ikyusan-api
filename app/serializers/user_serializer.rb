class UserSerializer < ActiveModel::Serializer
  attributes :id, :screen_name, :screen_url, :token

  def token
    object.ios_access_token.token
  end
end
