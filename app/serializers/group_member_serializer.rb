class GroupMemberSerializer < ActiveModel::Serializer
  attributes :id

  has_one :group
end
