class InviteSerializer < ActiveModel::Serializer
  attributes :id

  has_one :host_user
  has_one :invite_user
end
