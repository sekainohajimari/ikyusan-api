# == Schema Information
#
# Table name: social_accounts
#
#  id                 :integer          not null, primary key
#  user_id            :integer          not null
#  provider           :string(255)      not null
#  uid                :string(255)      not null
#  image_url          :string(255)
#  oauth_token        :string(255)
#  oauth_token_secret :string(255)
#
# Indexes
#
#  index_social_accounts_on_user_id_and_provider  (user_id,provider) UNIQUE
#

class SocialAccount < ActiveRecord::Base
end
