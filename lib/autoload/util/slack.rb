require 'slack-notifier'

module Util
  class Slack
    WEBHOOK_URL = 'https://hooks.slack.com/services/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'

    class << self
      def notify(channel:, username:, message:)
        notifier = ::Slack::Notifier.new(
          WEBHOOK_URL,
          username: username,
          channel: channel
        )

        notifier.ping(message)
      end
    end
  end
end
