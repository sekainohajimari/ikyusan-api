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
#  index_group_members_on_group_id_and_user_id  (group_id,user_id) UNIQUE
#

class GroupMember < ActiveRecord::Base
  include AASM

  belongs_to :group
  belongs_to :user, -> { includes :profile }

  enum role: { owner: 1, member: 2 }
  enum status: { joining: 1, inviting: 2, withdrawaling: 3 }

  aasm column: :status, enum: true do
    state :inviting, initial: true
    state :joining
    state :withdrawaling

    event :join do
      transitions from: [:inviting], to: :joining
    end

    event :withdrawal do
      transitions from: [:joining], to: :withdrawaling
    end
  end
end
