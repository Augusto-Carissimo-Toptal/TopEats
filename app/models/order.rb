class Order < ApplicationRecord
  enum status: { pending: 'pending', accepted: 'accepted', preparing: 'preparing', delivered: 'delivered' }
  validates :total_price, presence: true

  belongs_to :courier, class_name: 'User'
  belongs_to :customer, class_name: 'User'
  has_many :order_menu
  has_many :menu_items, through: :order_menu 
end
