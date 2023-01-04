class User < ApplicationRecord
  has_many :orders
  has_one :adress

  validates :full_name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  
  enum type: { costumer: 'costumer', courier: 'courier' }
end
