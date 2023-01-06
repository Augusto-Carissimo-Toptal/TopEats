class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :full_name
  has_many :address
  has_many :orders
end
