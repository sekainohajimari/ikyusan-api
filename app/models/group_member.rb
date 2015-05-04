# == Schema Information
#
# Table name: group_members
#
#  id         :integer          not null, primary key
#  group_id   :integer
#  user_id    :integer
#  role       :integer
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_group_members_on_group_id  (group_id)
#  index_group_members_on_user_id   (user_id)
#

class GroupMember < ActiveRecord::Base
  belongs_to :group
  belongs_to :user

  enum role: { owner: 1, member: 2 }
  enum status: { join: 1, invite: 2, withdrawal: 3 }
end
