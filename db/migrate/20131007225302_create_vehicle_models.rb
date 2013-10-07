class CreateVehicleModels < ActiveRecord::Migration
  def change
    create_table :vehicle_models do |t|
    	t.integer :brand_id
    	t.string :name
    	t.string :years
    end
  end
end
