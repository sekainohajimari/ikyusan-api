# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  platform   :integer          not null
#  uuid       :string(255)      not null
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_uuid  (uuid) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
