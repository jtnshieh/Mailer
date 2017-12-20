class Email < ApplicationRecord
  validates :subject, :body, :user_id, presence: true

  belongs_to :author,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

end
