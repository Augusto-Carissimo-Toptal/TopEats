class Courier < User
  has_many :vehicles, dependent: :destroy_async
  has_many :orders, dependent: :destroy_async
end
