class RemoveAddressFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_reference :users, :address, null: false

  end
end
