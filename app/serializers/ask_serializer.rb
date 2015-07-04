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

class AskSerializer < ActiveModel::Serializer
  attributes :id, :category, :content
end
