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

class Topic < ActiveRecord::Base
  belongs_to :group
  belongs_to :build_user, class_name: User.name, foreign_key: :builder_id

  has_many :ideas

  before_create :setting_default

  validates :name, length: { in: 1..64 }

  ##### private methods #####
  private
  def setting_default
    self.idea_max_num = Global.topic.default_idea_max_num
  end
end
