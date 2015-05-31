# == Schema Information
#
# Table name: topics
#
#  id           :integer          not null, primary key
#  group_id     :integer
#  builder_id   :integer
#  name         :string(255)
#  idea_max_num :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_topics_on_group_id  (group_id)
#

class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :idea_max_num, :builder_user_name

  def builder_user_name
    object.build_user.display_name
  end
end
