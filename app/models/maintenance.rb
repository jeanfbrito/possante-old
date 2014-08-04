class Maintenance < ActiveRecord::Base
  extend Enumerize

  scope :previous, lambda { |id, vehicle| where("id < ? and vehicle_id = ?",id,vehicle).order("id DESC") }

  belongs_to :vehicle

  def previous
    Maintenance.previous(self.id, self.vehicle).first
  end

end
