class Address < ApplicationRecord
  validates :address_field, presence: true

  has_many :user_address
  has_many :users, through: :user_address
end
