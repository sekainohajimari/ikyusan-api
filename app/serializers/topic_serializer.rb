# == Schema Information
#
# Table name: topics
#
#  id           :integer          not null, primary key
#  group_id     :integer
#  builder_id   :integer
#  name         :string(255)
#  idea_max_num :integer
#  anonymity    :boolean          default(FALSE), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_topics_on_group_id  (group_id)
#

class TopicSerializer < ActiveModel::Serializer
  attributes :id, :name, :idea_max_num, :anonymity

  has_one :build_user
end
