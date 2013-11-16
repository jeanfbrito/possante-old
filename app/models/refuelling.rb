class Refuelling < ActiveRecord::Base
  belongs_to :vehicle
  before_save :calcula

  private
  def calcula
    lastRefill = Refuelling.where(vehicle: self.vehicle).last #carrega o ultimo abastecimento
    self.liters = (self.total_value / self.liter_price).round(3)

    unless lastRefill.nil?
      self.km_runned = self.km - lastRefill.km #calcula os quilometros rodados desde o ultimo abastecimento

      self.average_consumption = (self.km_runned / self.liters).round(3)
      #binding.pry
    end
  end

end