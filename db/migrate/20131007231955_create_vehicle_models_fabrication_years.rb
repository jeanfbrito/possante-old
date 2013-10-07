class CreateVehicleModelsFabricationYears < ActiveRecord::Migration
  def change
    create_table :vehicle_models_fabrication_years do |t|
      t.integer :vehicle_model_id
      t.integer :fabrication_year_id
    end
  end
end
