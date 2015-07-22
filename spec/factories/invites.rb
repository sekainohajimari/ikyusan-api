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

FactoryGirl.define do
  factory :invite do
    trait :inviting do
      status Invite.statuses[:inviting]
    end

    trait :agreeing do
      status Invite.statuses[:agreeing]
    end

    trait :denialing do
      status Invite.statuses[:denialing]
    end

    to_create do |instance|
      instance.save validate: false
    end
  end
end
