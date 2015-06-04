# == Schema Information
#
# Table name: groups
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  membar_max_num :integer
#  topic_max_num  :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :membar_max_num, :topic_max_num

  has_many :invites
  has_many :group_members
end
