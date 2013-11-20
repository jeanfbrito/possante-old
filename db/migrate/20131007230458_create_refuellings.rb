class CreateRefuellings < ActiveRecord::Migration
  def change
    create_table :refuellings do |t|
      t.date :date
      t.integer :km
      t.decimal :liter_price
      t.float :liters
      t.string :gas_station
      t.float :average_consumption
      t.integer :km_runned
      t.integer :vehicle_id
      t.float :total_value
      t.integer :result

      t.timestamps
    end
  end
end
