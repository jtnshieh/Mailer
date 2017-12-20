class Email < ApplicationRecord
  validates :subject, :body, :to_email_address, presence: true

end
