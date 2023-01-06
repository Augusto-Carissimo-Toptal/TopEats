class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total_price
  belongs_to :customer
end
