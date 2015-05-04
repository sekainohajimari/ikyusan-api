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
end
