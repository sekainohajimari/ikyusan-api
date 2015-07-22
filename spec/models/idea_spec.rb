# == Schema Information
#
# Table name: ideas
#
#  id          :integer          not null, primary key
#  topic_id    :integer
#  poster_id   :integer
#  content     :string(255)
#  anonymity   :boolean          default(FALSE), not null
#  likes_count :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_ideas_on_topic_id  (topic_id)
#

require 'rails_helper'

RSpec.describe Idea, type: :model do
  describe 'validate' do
    it 'when valid' do
      idea = Idea.new(
        topic_id: 1,
        poster_id: 1,
        content: 'hogehoge'
      )

      expect(idea).to be_valid
    end

    it 'when invalid' do
      idea = Idea.new(
        topic_id: 1,
        poster_id: 1,
        content: SecureRandom.base64(141)
      )

      expect(idea).to be_invalid
    end
  end

end
