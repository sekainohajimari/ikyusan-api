# == Schema Information
#
# Table name: asks
#
#  id         :integer          not null, primary key
#  category   :integer
#  content    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_asks_on_category  (category) UNIQUE
#

require 'rails_helper'

RSpec.describe Ask, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
