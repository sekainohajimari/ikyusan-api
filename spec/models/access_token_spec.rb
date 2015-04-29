# == Schema Information
#
# Table name: access_tokens
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  type       :string(255)
#  token      :string(255)
#  expires_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_access_tokens_on_type_and_token    (type,token) UNIQUE
#  index_access_tokens_on_type_and_user_id  (type,user_id) UNIQUE
#

require 'rails_helper'

RSpec.describe AccessToken, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
