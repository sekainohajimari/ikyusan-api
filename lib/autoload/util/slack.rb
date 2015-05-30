require 'slack-notifier'

module Util
  class Slack
    class << self
      def notify(channel:, username:, message:)
        notifier = ::Slack::Notifier.new(
          ENV['IKYUSAN_SLACK_WEBHOCK_URL'],
          username: username,
          channel: channel
        )

        notifier.ping(message)
      end
    end
  end
end
