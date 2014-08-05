class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.date  :date
      t.float :cost
      t.text  :description
      t.date  :waranty_time
      t.integer :mileage
    end
  end
end
