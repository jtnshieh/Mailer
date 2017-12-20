class UserMailer < ApplicationMailer

  def welcome_email(email)
    @email = email
    mail(to: @email.to_email_address, subject: 'Incoming Email')
  end

end
