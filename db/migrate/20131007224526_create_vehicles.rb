class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
    	t.integer  :vehicle_model_id
    	t.integer  :fabrication_year_id
    	t.integer  :user_id
    	t.string   :image
      t.integer   :mileage
      t.string    :status
      t.string    :numberplate

      t.timestamps
    end
  end
end
