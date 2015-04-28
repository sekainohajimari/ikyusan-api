Rails.application.config.sorcery.submodules = [:core]

Rails.application.config.sorcery.configure do |config|
  config.user_class = 'User'
end
