Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '620729860798-90ghhjafgbuvb5s3t8beoo1odir8b6hs.apps.googleusercontent.com', 'VxtlR9ypcVt75KMinPUZpbEP', skip_jwt: true
  # provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"],ENV["GOOGLE_CLIENT_SECRET"], skip_jwt: true
end