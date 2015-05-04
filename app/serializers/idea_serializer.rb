class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :content, :post_user

  has_one :post_user
end
