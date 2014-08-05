class AddTypeAndWarrantyStatusToMaintenances < ActiveRecord::Migration
  def change
    add_column :maintenances, :warranty_status, :integer
    add_column :maintenances, :type, :integer
  end
end
