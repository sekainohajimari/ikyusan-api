# == Schema Information
#
# Table name: groups
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  membar_max_num :integer
#  topic_max_num  :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'validate' do
    it 'when valid' do
      group = Group.new(
        name: 'abcde'
      )

      expect(group).to be_valid
    end

    it 'when invalid' do
      group = Group.new(
        name: SecureRandom.base64(31)
      )

      expect(group).to be_invalid
    end
  end
end
