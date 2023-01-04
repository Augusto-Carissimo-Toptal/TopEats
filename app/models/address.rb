class Address < ApplicationRecord
  validates :address_field, presence: true

  has_many :users
end
