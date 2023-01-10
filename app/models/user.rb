class User < ApplicationRecord
  validates :full_name, presence: true
  validates_format_of :phone_number, with: /\(?[0-9]{3}\)?-[0-9]{3}-[0-9]{4}/,
  message: "- Phone numbers must be in xxx-xxx-xxxx format."
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :type, inclusion: { in: %w(Customer Courier)}

  has_one :user_address
  has_one :address, through: :user_address
end
