class User < ApplicationRecord
  enum type: { customer: 'customer', courier: 'courier' }
  
  validates :full_name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
   
  has_many :orders
  has_one :address
end
