# == Schema Information
#
# Table name: ideas
#
#  id          :integer          not null, primary key
#  topic_id    :integer
#  poster_id   :integer
#  content     :string(255)
#  anonymity   :integer
#  likes_count :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_ideas_on_topic_id  (topic_id)
#

class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :content, :likes_count

  has_one :post_user

  def post_user
    if object.disabling?
      UserSerializer.new(object.post_user)
    else
      AnonymityUserSerializer.new(object.post_user)
    end
  end
end
