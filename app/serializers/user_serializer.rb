# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  platform   :integer          not null
#  uuid       :string(255)      not null
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_uuid  (uuid) UNIQUE
#

class UserSerializer < ActiveModel::Serializer
  attributes :id

  has_one :profile

  def attributes
    data = super
    data[:token] = serialization_options[:token] if serialization_options[:token].present?
    data
  end
end
