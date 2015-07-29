# == Schema Information
#
# Table name: topics
#
#  id           :integer          not null, primary key
#  group_id     :integer
#  builder_id   :integer
#  name         :string(255)
#  idea_max_num :integer
#  anonymity    :boolean          default(FALSE), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_topics_on_group_id  (group_id)
#

require 'rails_helper'

RSpec.describe Topic, type: :model do
  describe 'validate' do
    it 'when valid' do
      topic = Topic.new(
        group_id: 1,
        builder_id: 1,
        name: 'hogehoge',
        idea_max_num: 10
      )

      expect(topic).to be_valid
    end

    it 'when invalid' do
      topic = Topic.new(
        group_id: 1,
        builder_id: 1,
        name: SecureRandom.base64(65),
        idea_max_num: 10
      )

      expect(topic).to be_invalid
    end
  end

end
