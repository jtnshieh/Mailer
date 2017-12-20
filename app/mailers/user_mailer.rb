class UserMailer < ApplicationMailer

  def welcome_email(email)
    @email = email
    mail(to: @email.to_email_address, subject: @email.subject)
  end

end
