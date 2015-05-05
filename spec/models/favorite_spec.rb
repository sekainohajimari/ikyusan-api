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

require 'rails_helper'

RSpec.describe Favorite, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
