class CreateFabricationYears < ActiveRecord::Migration
  def change
    create_table :fabrication_years do |t|
    	t.integer :number

      t.timestamps
    end
  end
end
