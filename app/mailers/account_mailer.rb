class AccountMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.account_mailer.new_account_notification.subject
  #
  def new_account_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
