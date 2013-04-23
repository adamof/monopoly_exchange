# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
MonopolyExchange::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.smtp_settings = {  
  :address        => "smtpout.europe.secureserver.net",  
  :domain         => "www.monopolyexchange.com",  
  :port           => 80,  
  :user_name      => "hi@monopolyexchange.com",
  :password       => "batkan",  
  :authentication => :plain,
  :enable_starttls_auto => true
}