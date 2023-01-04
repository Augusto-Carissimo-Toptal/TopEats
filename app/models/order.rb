class Order < ApplicationRecord
  enum status: { pending: 'pending', accepted: 'accepted', preparing: 'preparing',delivered: 'delivered' }

  belongs_to :courier, class_name: 'User'
  belongs_to :customer, class_name: 'User'
  has_many :menu_items
end
