# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Santeh::Application.initialize!

Santeh::Application.configure do
  config.action_mailer.delivery_method = :smtp
  
  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "google.com",
    authentication: "plain",
    user_name: "secret",
    password: "secret,
    enable_starttls_auto: true
  }
end
