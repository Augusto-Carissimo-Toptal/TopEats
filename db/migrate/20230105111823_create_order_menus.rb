class CreateOrderMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :order_menus do |t|
      t.references :order, null: false, foreign_key: true
      t.references :menu_items, null: false, foreign_key: true

      t.timestamps
    end
  end
end
