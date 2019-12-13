desc "Send email to users upon account creation in order to verify email"
task({ :send_message => :environment }) do

  require("mailgun-ruby")

  mg_api_key = "ffae42774070989d0af0b79b1c848243-5645b1f9-13f991c5"

  # First, instantiate the Mailgun Client with your API key
  mg_client = Mailgun::Client.new(mg_api_key)

  # Define your message parameters
  email_parameters =  { 
    :from => "pourts@gmail.com",
    :to => "mstroup@chicagobooth.edu",
    :subject => "TEST: MBA Housing Swap",
    :text => "Please confirm your email"
  }

  # Send your message through the client
  mg_client.send_message 'https://api.mailgun.net/v3/sandbox1713c7a84d4b4bb9b80e8bf88d8ebce2.mailgun.org', email_parameters
end 