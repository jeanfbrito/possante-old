class AddSlugToVehicles < ActiveRecord::Migration
  def change
    # Address informations
    add_column :vehicles, :slug, :string
  end
end
