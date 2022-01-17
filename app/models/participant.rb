class Participant < ApplicationRecord
    validates :first_name, presence: true, on: :create,
    allow_nil: false
    validates :last_name, presence: true, on: :create, allow_nil: false
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } ,on: :create, allow_nil: false
    validates :slogan,presence: true,length: {maximum: 50},on: :create, allow_nil: false
end
