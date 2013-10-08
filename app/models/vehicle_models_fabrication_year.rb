class VehicleModelsFabricationYear < ActiveRecord::Base
  belongs_to :vehicle_model
  belongs_to :fabrication_year
end
