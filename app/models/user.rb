class User < ApplicationRecord
  validates :full_name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :type, { inclusion: { in: %w[Customer Courier] } } Existe algo de este estilo

  # has_many :orders
  has_one :user_address
  has_one :address, through: :user_address
end
