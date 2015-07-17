# == Schema Information
#
# Table name: groups
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  membar_max_num :integer
#  topic_max_num  :integer
#  color_id       :integer          default(1), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Group, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
