class Api::V1::TwitterController < Api::V1::ApplicationController
  def tweet
    message = twitter_params[:message]
    if message.blank?
      raise Error::ApiError.new('Request parameter invalid', 400)
    end

    client.update(message)

    head :no_content
  end

  private

    def client
      @client ||= Twitter::REST::Client.new(
        consumer_key: Global.social.twitter.key,
        consumer_secret: Global.social.twitter.secret,
        access_token: current_user.oauth_token,
        access_token_secret: current_user.oauth_token_secret
      )
    end

    def twitter_params
      params.permit(
        :message
      )
    end
end
