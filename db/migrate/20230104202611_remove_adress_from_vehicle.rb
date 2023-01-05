class RemoveAdressFromVehicle < ActiveRecord::Migration[7.0]
  def change
    remove_reference :vehicles, :adress, null: false
  end
end
