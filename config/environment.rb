# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
MonopolyExchange::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.smtp_settings = {  
  :address        => "smtp.gmail.com",  
  :domain         => "www.monopolyexchange.com",  
  :port           => 587,  
  :user_name      => "monopolyexchange@gmail.com",
  :password       => "Monopoly123",  
  :authentication => :plain,
  :enable_starttls_auto => true
}