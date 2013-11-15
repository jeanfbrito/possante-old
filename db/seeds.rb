# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

brand = Brand.create([{ name: 'Honda' }, { name: 'Toyota' }, { name: 'Ford' }, { name: 'Fiat' }])
year = FabricationYear.create([{ number: '2000' }, { number: '2005' }, { number: '2010' }, { number: '2013' }])
models = VehicleModel.create([ { 
  name: 'Civic LX 16V 115cv 4p', brand_id: 1 },{
  name: 'Corolla Xlei 110cv Aut.', brand_id: 2 },{
  name: 'Focus bla bla.', brand_id: 3 },{
  name: 'Uno Mille 1.0', brand_id: 4 
  }])
Vehicle.create( vehicle_model_id: 1, fabrication_year_id: 2, user_id: 1, mileage: 123456, numberplate: 'IMP-4233', status: 'ok')
VehicleModelsFabricationYear.create( vehicle_model_id: 1, fabrication_year_id: 1)
VehicleModelsFabricationYear.create( vehicle_model_id: 1, fabrication_year_id: 2)
VehicleModelsFabricationYear.create( vehicle_model_id: 1, fabrication_year_id: 3)

Refuelling.create( date: 30.day.from_now, km: 1000, liter_price: 2.819, liters: 45, gas_station: 'Ipiranguinha', vehicle_id: 1)
Refuelling.create( date: 15.day.from_now, km: 1500, liter_price: 2.819, liters: 45, gas_station: 'Ipiranguinha', vehicle_id: 1)
Refuelling.create( date: Time.zone.now, km: 2000, liter_price: 2.819, liters: 45, gas_station: 'Ipiranguinha', vehicle_id: 1)
  