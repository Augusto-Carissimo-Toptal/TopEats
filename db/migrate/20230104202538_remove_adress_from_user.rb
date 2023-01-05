class RemoveAdressFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_reference :users, :adress, null: false
  end
end
