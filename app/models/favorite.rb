# == Schema Information
#
# Table name: favorites
#
#  id               :integer          not null, primary key
#  favoritable_id   :integer
#  favoritable_type :string(255)
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_favorites_on_favoritable_id_and_favoritable_type  (favoritable_id,favoritable_type)
#

class Favorite < ActiveRecord::Base
  belongs_to :favoritable, polymorphic: true
  belongs_to :user
end
