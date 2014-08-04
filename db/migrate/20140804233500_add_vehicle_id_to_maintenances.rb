class AddVehicleIdToMaintenances < ActiveRecord::Migration
  def change
      add_column :maintenances, :vehicle_id, :integer
  end
end
