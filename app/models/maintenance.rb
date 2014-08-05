class Maintenance < ActiveRecord::Base
  extend Enumerize

  scope :previous, lambda { |id, vehicle| where("id < ? and vehicle_id = ?",id,vehicle).order("id DESC") }

  belongs_to :vehicle

  enumerize :maintenance_type, :in => {
    :preventive => 0,
    :corrective => 1,
  }

  enumerize :warranty_status, :in => {
    :valid => 0, 
    :expired => 1
  }, default: :valid

  def previous
    Maintenance.previous(self.id, self.vehicle).first
  end

end
