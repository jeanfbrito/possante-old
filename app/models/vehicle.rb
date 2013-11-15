class Vehicle < ActiveRecord::Base
  extend FriendlyId
  friendly_id :numberplate, use: :slugged

  has_many :refuellings
  belongs_to :user
  belongs_to :fabrication_year
  belongs_to :vehicle_model
end
