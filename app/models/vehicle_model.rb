class VehicleModel < ActiveRecord::Base
  has_many :fabrication_years, through: :vehicle_models_fabrication_years
  belongs_to :brand
end
