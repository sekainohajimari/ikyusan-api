module Notificationable
  extend ActiveSupport::Concern

  included do
    has_many :notifications, as: :notificationable

    after_save :create_notification

    def create_notification
      self.class.fire_notification
    end
  end

  class_methods do
    def act_as_notificaton(option = {}, &block)
      @notice = ActAsNotificaton.new
      @notice.instance_eval(&block)
    end

    def fire_notification
      @notice.configs.each do |config|
        # Notificationに登録する
        notifications.create!(
          type: Notification.type_of(config.type),
          notification_kind: Notification.notification_kinds(config.notification_kind)
        )
      end
    end
  end

  class ActAsNotificaton
    attr_reader :configs

    def config(option = {}, &block)
      @configs ||= []
      config = ActAsNotificaton::Config.new(option[:type])
      config.instance_eval(&block)
      @configs << config
    end

    class Config
      attr_reader :type, :notification_kind

      def initialize(type)
        @type = type
      end

      def notification_kind(val)
        @notification_kind = val
      end
    end
  end
end
