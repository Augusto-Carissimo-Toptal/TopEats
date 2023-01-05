class MenuItem < ApplicationRecord
  validates :name, presence: true

  has_many :order_menu
  has_many :orders, through: :order_menu
end
