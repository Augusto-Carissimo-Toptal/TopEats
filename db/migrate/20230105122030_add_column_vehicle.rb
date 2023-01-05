class AddColumnVehicle < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :courier_id, :integer
  end
end
