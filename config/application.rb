require File.expand_path('../boot', __FILE__)

require "rails"
# # Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_view/railtie"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module IkyusanApi
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/lib/autoload)
    config.time_zone = 'Tokyo'
    config.active_record.raise_in_transactional_callbacks = true
    config.api_only = false
    config.cache_store = :file_store, 'tmp/cache'
    config.action_controller.action_on_unpermitted_parameters = :raise
  end
end
