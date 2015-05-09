module Notificationable
  extend ActiveSupport::Concern

  included do
    has_many :notifications, as: :notificationable

    after_save :fire_notification

    def fire_notification
      self.class.fire_notification(notifications)
    end
  end

  class_methods do
    def act_as_notification(option = {}, &block)
      @notice = ActAsNotification.new
      @notice.instance_eval(&block)
    end

    def fire_notification(notifications)
      @notice.configs.each do |config|
        notifications.create!(
          type: Notification.to_subclass_name(config.type),
          notification_kind: Notification.notification_kinds[config.notification_kind]
        )
      end
    end
  end

  class ActAsNotification
    attr_reader :configs

    def config(option = {}, &block)
      @configs ||= []
      config = ActAsNotification::Config.new(option[:type])
      config.instance_eval(&block) if block_given?
      @configs << config
    end

    class Config
      attr_reader :type

      def initialize(type)
        @type = type
      end

      def notification_kind(val = nil)
        return @notification_kind if val.blank?

        @notification_kind = val
      end
    end
  end
end
