class VehicleModel < ActiveRecord::Base
  has_many :vehicle_models_fabrication_year
  has_many :fabrication_years, through: :vehicle_models_fabrication_year
  belongs_to :brand
end
