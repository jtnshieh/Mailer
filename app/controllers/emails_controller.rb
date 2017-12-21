class EmailsController < ApplicationController

  def create
    @email = Email.new(email_params)
    if @email.save
      UserMailer.welcome_email(@email).deliver_now
    end
  end

  def index
    @emails = Email.all
    render json: ["It's working."]
  end

  private

  def email_params
    params.require(:email).permit(:subject, :body, :to_email_address)
  end

end
