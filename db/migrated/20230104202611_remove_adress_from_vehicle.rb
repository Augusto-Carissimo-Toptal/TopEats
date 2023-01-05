class RemoveAdressFromVehicle < ActiveRecord::Migration[7.0]
  def change
    remove_reference :vehicles, :adress, null: false, foreign_key: true
  end
end
