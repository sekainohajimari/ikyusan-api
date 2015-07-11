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

require 'rails_helper'

RSpec.describe GroupMember, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
