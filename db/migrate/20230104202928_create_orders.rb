class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.float :total_price

      t.belongs_to :courier, class_name: "User", index: true, foreign_key: "courier_id"
      t.belongs_to :customer, class_name: "User", index: true, foreign_key: "customer_id"
      
      t.timestamps
    end
  end
end
