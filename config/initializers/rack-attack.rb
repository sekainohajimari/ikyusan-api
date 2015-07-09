class Rack::Attack
  # Throttle requests to 5 requests per second per ip
  throttle('req/ip', :limit => 5, :period => 1.second) do |req|
    req.ip if Rails.env.production?
  end

  self.throttled_response = lambda do |env|
    [429, {}, [{ message: 'Rate Limit Exceeded'}.to_json]]
  end

  ActiveSupport::Notifications.subscribe('rack.attack') do |name, start, finish, request_id, req|
    Rails.logger.warn "Rate Limit Exceeded. path: #{req.path}, ip: #{req.ip}"
  end
end
