class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :phone_number, :email
  has_many :address
  has_many :orders
end
