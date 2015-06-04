# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  provider   :string(255)
#  uid        :string(255)
#  status     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_provider_and_uid  (provider,uid) UNIQUE
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
