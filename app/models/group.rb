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

class Group < ActiveRecord::Base
  include Colorable

  has_many :group_members
  has_many :topics
  has_many :ideas, through: :topics
  has_many :likes, through: :ideas
  has_many :invites

  before_create :setting_default

  validates :name, length: { in: 1..30 }

  def referenceable?(user_id:)
    group_members.exists?(user_id: user_id)
  end

  def owner?(user)
    group_members.owner.exists?(user: user)
  end

  def member(user)
    group_members.member.joining.find_by(user: user)
  end

  def update_with_color!(params:, color_code_id: nil)
    ActiveRecord::Base.transaction do
      update!(params)
      color.update!(color_code_id: color_code_id) if color_code_id
    end
  end

  ##### class methods #####
  class << self
    def regist(name:, user:, color_code_id:)
      ActiveRecord::Base.transaction do
        group = Group.new(
          name: name
        )

        # TODO: tapでスコープ作ったほうがスマートな気がするので後程検討
        group_member = GroupMember.new(
          user: user,
          role: GroupMember.roles[:owner]
        )
        group.group_members << group_member
        group_member.join!

        group.create_color!(
          color_code_id: color_code_id
        )

        group
      end
    end
  end

  ##### private methods #####
  private
  def setting_default
    self.membar_max_num = Global.group.default_membar_max_num
    self.topic_max_num = Global.group.default_topic_max_num
  end
end
