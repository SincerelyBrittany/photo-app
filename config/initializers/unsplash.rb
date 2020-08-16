Unsplash.configure do |config|
    config.application_access_key = "YOUR_ACCESS_KEY"
    config.application_secret = "YOUR_APPLICATION_SECRET"
    config.application_redirect_uri = "https://your-application.com/oauth/callback"
    config.utm_source = "alices_terrific_client_app"
  
    # optional:
    config.logger = MyCustomLogger.new
  end