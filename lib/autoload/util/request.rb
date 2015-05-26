module Util
  class Request
    class << self
      def ios?
        ua.include?('Mobile')
      end

      def android?
        ua.include?('Android')
      end

      def ua
        RequestStore.store[:request].user_agent
      end
    end
  end
end
