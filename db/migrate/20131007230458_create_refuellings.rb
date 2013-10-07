class CreateRefuellings < ActiveRecord::Migration
  def change
    create_table :refuellings do |t|
      t.date :date
      t.integer :km
      t.float :liter_price
      t.float :liters
      t.string :gas_station
      t.float :average_consumption
      t.integer :km_runned
      t.integer :vehice_id
    end
  end
end
