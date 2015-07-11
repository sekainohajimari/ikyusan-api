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

FactoryGirl.define do
  factory :group_member do
    group
    user
    role 1
    status 1

    trait :owner do
      role GroupMember.roles[:owner]
    end

    trait :member do
      role GroupMember.roles[:member]
    end

    trait :joining do
      status GroupMember.statuses[:joining]
    end
    
    trait :inviting do
      status GroupMember.statuses[:inviting]
    end
  end
end
