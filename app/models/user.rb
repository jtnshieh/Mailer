class User < ApplicationRecord
  validates :name, :email_address, presence: true

  has_many :emails,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Email
end
