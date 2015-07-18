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

  has_one :color

  def attributes
    data = super

    if serialization_options[:additional]
      own_group_member =
        object.group_members.find_by(group_id: object.id, user_id: scope.current_user.id)
      data[:own_group_member] = {
        status: own_group_member.status,
        role: own_group_member.role
      }
    end

    data
  end
end
