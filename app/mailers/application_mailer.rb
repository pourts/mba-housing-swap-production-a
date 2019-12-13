class ApplicationMailer < ActionMailer::Base
  default from: 'mstroup@chicagobooth.edu'
  layout 'mailer'

  # def new_record_notification(record)
  #   @record = record
  #   mail to: "mstroup@chicagobooth.edu", subject: "Success! You did it."
  # end

  # def send_simple_message
  #   RestClient.post "https://api:YOUR_API_KEY"\
  #   "@api.mailgun.net/v3/YOUR_DOMAIN_NAME/messages",
  #   :from => "Excited User <mailgun@YOUR_DOMAIN_NAME>"
  #   :to => "bar@example.com, YOU@YOUR_DOMAIN_NAME",
  #   :subject => "Hello",
  #   :text => "Testing some Mailgun awesomness!"
  # end
end
