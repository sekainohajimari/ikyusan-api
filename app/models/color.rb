# == Schema Information
#
# Table name: colors
#
#  id             :integer          not null, primary key
#  colorable_type :string(64)
#  colorable_id   :integer
#  color_code_id  :integer          default(1), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# Indexes
#
#  index_colors_on_colorable  (colorable_type,colorable_id) UNIQUE
#

class Color < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :colorable, polymorphic: true
  belongs_to :color_code
end
