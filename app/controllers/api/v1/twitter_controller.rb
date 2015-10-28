class Api::V1::TwitterController < Api::V1::ApplicationController
  def tweet
    client.update(twitter_params[:message])

    head :no_content
  end

  private

    def client
      @client ||= Twitter::REST::Client.new(
        consumer_key: consumer_key,
        consumer_secret: consumer_secret,
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
