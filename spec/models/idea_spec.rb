# == Schema Information
#
# Table name: ideas
#
#  id         :integer          not null, primary key
#  topic_id   :integer
#  poster_id  :integer
#  content    :string(255)
#  anonymity  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_ideas_on_topic_id  (topic_id)
#

require 'rails_helper'

RSpec.describe Idea, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
