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

FactoryGirl.define do
  factory :group_member do
    group nil
user nil
role 1
status 1
  end

end
