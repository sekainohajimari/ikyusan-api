Rails.application.config.sorcery.submodules = [:core]

Rails.application.config.sorcery.configure do |config|
  config.user_config do |user|
    user.username_attribute_names = [:provider, :uid]
  end
  config.user_class = 'User'
end
