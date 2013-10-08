class FabricationYear < ActiveRecord::Base
  has_many :vehicle_models_fabrication_years
  has_many :vehicle_models, through: :vehicle_models_fabrication_years
end