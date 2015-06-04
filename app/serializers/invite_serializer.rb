class InviteSerializer < ActiveModel::Serializer
  attributes :id

  has_one :invite_user
end
