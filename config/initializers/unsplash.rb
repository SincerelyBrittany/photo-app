# Unsplash.configure do |config|
  
#     config.application_access_key = "KEY"
#     config.application_secret = "SECRET"
#     # config.application_redirect_uri = "https://photo_app.com/oauth/callback"
#     config.application_redirect_uri = "urn:ietf:wg:oauth:2.0:oob"
    
#     config.utm_source = "photo_app"
  
#     # optional:
#     # config.logger = MyCustomLogger.new
#   end

Unsplash.configure do |config|
  config.application_access_key = ENV['KEY']
  config.application_secret = ENV['SECRET']
  config.utm_source = 'photo_app'
end