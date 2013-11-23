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
  name: 'Corolla Xli 110cv Aut.', brand_id: 2 },{
  name: 'Focus bla bla.', brand_id: 3 },{
  name: 'Uno Mille 1.0', brand_id: 4
  }])

VehicleModelsFabricationYear.create( vehicle_model_id: 1, fabrication_year_id: 1)
VehicleModelsFabricationYear.create( vehicle_model_id: 1, fabrication_year_id: 2)
VehicleModelsFabricationYear.create( vehicle_model_id: 1, fabrication_year_id: 3)


Vehicle.create( vehicle_model_id: 1, fabrication_year_id: 2, user_id: 1, mileage: 123456, numberplate: 'IMP-4233', status: :ok)
Vehicle.create( vehicle_model_id: 2, fabrication_year_id: 1, user_id: 1, mileage: 123456, numberplate: 'IOY-9926', status: :warning)
Vehicle.create( vehicle_model_id: 4, fabrication_year_id: 4, user_id: 1, mileage: 123456, numberplate: 'INU-3636', status: :danger)


#Refuelling.create( date: 90.day.ago, km: 10000, liter_price: 2.759, total_value: 130.00, gas_station: 'Ipiranguinha', vehicle_id: 1)
#Refuelling.create( date: 75.day.ago, km: 10564, liter_price: 2.759, total_value: 120.00, gas_station: 'Ipiranguinha', vehicle_id: 1)
#Refuelling.create( date: 60.day.ago, km: 11021, liter_price: 2.859, total_value: 132.30, gas_station: 'Ipiranguinha', vehicle_id: 1)
#Refuelling.create( date: 45.day.ago, km: 11509, liter_price: 2.859, total_value: 124.00, gas_station: 'Ipiranguinha', vehicle_id: 1)
#Refuelling.create( date: 30.day.ago, km: 12001, liter_price: 2.819, total_value: 129.45, gas_station: 'Ipiranguinha', vehicle_id: 1)
#Refuelling.create( date: 15.day.ago, km: 12625, liter_price: 2.819, total_value: 140.00, gas_station: 'Ipiranguinha', vehicle_id: 1)
#Refuelling.create( date: Time.zone.now,   km: 13023, liter_price: 2.819, total_value: 128.00, gas_station: 'Ipiranguinha', vehicle_id: 1)

kmanterior = 0
for i in 0..50
  thatdate = 780 - i * 15
  kmatual = kmanterior + rand(420..590)
  kmanterior = kmatual
  Refuelling.create( date: thatdate.day.ago, km: kmatual, liter_price: rand(2.791..2.899), total_value: 100 + rand(25..45), gas_station: 'Ipiranguinha', vehicle_id: 3)
end

kmanterior = 10000
for i in 0..50
  thatdate = 780 - i * 15
  kmatual = kmanterior + rand(420..590)
  kmanterior = kmatual
  Refuelling.create( date: thatdate.day.ago, km: kmatual, liter_price: rand(2.791..2.899), total_value: 100 + rand(25..45), gas_station: 'Ipiranguinha', vehicle_id: 1)
end

kmanterior = 45000
for i in 0..50
  thatdate = 780 - i * 15
  kmatual = kmanterior + rand(420..590)
  kmanterior = kmatual
  Refuelling.create( date: thatdate.day.ago, km: kmatual, liter_price: rand(2.791..2.899), total_value: 100 + rand(25..45), gas_station: 'Ipiranguinha', vehicle_id: 2)
end

User.create(id: 1, email: 'admin@example.com', password: 'password');