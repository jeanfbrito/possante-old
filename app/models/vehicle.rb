class Vehicle < ActiveRecord::Base
  extend FriendlyId  
  extend Enumerize

  enumerize :status, :in => {
    :ok => 0, 
    :warning => 1, 
    :danger => 2
  }, default: :ok #, scope: true

  friendly_id :numberplate, use: :slugged

  has_many :refuellings
  has_many :maintenances
  belongs_to :user
  belongs_to :fabrication_year
  belongs_to :vehicle_model
end
