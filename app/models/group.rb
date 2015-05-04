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
  has_many :group_members
  has_many :topics

  before_create :default_membar_max_num
  before_create :default_topic_max_num

  def referenceable?(user_id: )
    group_members.exists?(user_id: user_id)
  end

  private

  def default_membar_max_num
    self.membar_max_num = Global.group.default_membar_max_num
  end

  def default_topic_max_num
    self.topic_max_num = Global.group.default_topic_max_num
  end
end
