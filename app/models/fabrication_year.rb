class FabricationYear < ActiveRecord::Base
  has_many :vehicle_models_fabrication_year
  has_many :vehicle_models, through: :vehicle_models_fabrication_year
end