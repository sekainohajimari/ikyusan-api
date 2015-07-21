Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, Global.social.twitter.key, Global.social.twitter.secret,
    secure_image_url: true,
    image_size: 'normal',
    callback_path: '/api/v1/auth/twitter/callback'

  provider :facebook, Global.social.facebook.key, Global.social.facebook.secret,
    scope: 'basic_info, email, public_profile',
    secure_image_url: true,
    image_size: 'normal',
    callback_path: '/api/v1/auth/facebook/callback'
end

OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}
