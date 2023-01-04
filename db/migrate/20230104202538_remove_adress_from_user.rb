class RemoveAdressFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_reference :users, :adress, null: false, foreign_key: true
  end
end
