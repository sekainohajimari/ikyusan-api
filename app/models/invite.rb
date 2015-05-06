# == Schema Information
#
# Table name: invites
#
#  id         :integer          not null, primary key
#  group_id   :integer
#  hoster_id  :integer
#  inviter_id :integer
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_invites_on_group_id    (group_id)
#  index_invites_on_hoster_id   (hoster_id)
#  index_invites_on_inviter_id  (inviter_id)
#

class Invite < ActiveRecord::Base
  include AASM

  enum status: { inviting: 1, agreeing: 2, denialing: 3 }

  aasm column: :status, enum: true do
    state :inviting, initial: true
    state :agreeing
    state :denialing

    event :agree do
      transitions from: [:inviting], to: :agreeing
    end

    event :denial do
      transitions from: [:inviting], to: :denial
    end
  end
end
