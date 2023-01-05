class Courier < User
  has_many :vehicles
  has_many :orders
end
