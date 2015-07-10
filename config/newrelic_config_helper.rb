require 'open-uri'

class NewrelicConfigHelper
  METADATA_ENDPOINT = 'http://169.254.169.254/latest/meta-data'

  # Note: タグで判定するようにしたい
  TARGET_INSTANCE_IDS = [
    'i-76c8ca85'
  ].freeze

  class << self
    def license_key
      ENV['NEWRELIC_LICENSE_KEY']
    end

    def app_name
      "#{Rails.application.class.parent_name.underscore.dasherize}-#{Rails.env}"
    end

    def enable_monitor?
      TARGET_INSTANCE_IDS.include?(own_host_instance_id)
    end

    private

    def own_host_instance_id
      return '' unless Rails.env.production?

      open("#{METADATA_ENDPOINT}/instance-id").read
    end
  end
end
