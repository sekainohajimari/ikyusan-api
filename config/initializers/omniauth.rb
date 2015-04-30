Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,
  Global.social.twitter.key,
  Global.social.twitter.secret,
  {
    secure_image_url: 'true',
    image_size: 'mini',
    callback_path: '/api/auth/twitter/callback'
  }
end
