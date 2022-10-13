puts '🌱 Seeding spices...'

# Seeds for car attributes
make = ['Acura', 'Alfa-Romeo', 'Aston Martin', 'Audi', 'BMW', 'Bentley', 'Cadillac', 'Chevrolet', 'Daewoo', 'Dodge', 'Ferrari', 'Fiat', 'Fisker', 'Ford', 'GMC', 'Genesis', 'Honda', 'Hummer', 'Hyundai', 'Infiniti', 'Isuzu', 'Jaguar', 'Jeep', 'Kia', 'Lamborghini', 'Land Rover', 'Lexus', 'Lincoln', 'Lotus', 'Mazda', 'Maserati', 'Maybach', 'McLaren', 'Mercedes Benz', 'Mini', 'Mitsubishi', 'Nissan', 'Polestar', 'Pontiac', 'Porsche', 'Ram', 'Rivian', 'Rolls_Royce', 'Saab', 'Saturn', 'Subaru', 'Suzuki', 'Tesla', 'Toyota', 'Volkswagen', 'Volvo']
model = ['NSX', 'Giulia Quadafoglio', 'Vantage', 'R8', 'M2 CS', 'Continental', 'CTS-V Blackwing', 'Camaro SS', 'Viper', 'F12 Berlinetta', 'GTC4 Lusso', 'Spyder', 'Karma', 'GT', 'Prelude', 'H1', 'IONIQ 5', 'Q50 Red Sport', 'Trooper', 'I-Pace', 'Trackhawk', 'EV6', 'Countach', 'Discovery Sport', 'LFA', 'Miata', 'MC20', '765 LT', 'SLS Black Series', 'Villager', 'Cooper GP', 'Eclipse', '300 SX', 'Cutlass Supreme', '1', 'Grand Am', '918 Spyder', 'Power Wagon', 'R1T', 'Cullinan', '9-3', 'Ion Red Line', 'Impreza WRX STI', 'Model S', 'Supra', 'Golf R', 'V60 Polestar']
# color = ['White', 'Black', 'Gray', 'Silver', 'Red', 'Blue', 'Brown', 'Green', 'Beige', 'Orange', 'Gold', 'Yellow', 'Purple']
# category = ['SUV', 'Sedan', 'Coupe', 'Convertible', 'Hatchback', 'Pickup', 'Van', 'Minivan', 'Wagon']
# motor = ['4-cyl', '5-cyl', '6-cyl', '8-cyl', '10-cyl', '12-cyl', 'Electric Motor(s)']
# transmission = ['manual', 'automatic']
# drive = ['FWD', 'RWD', 'AWD', '4WD']
# fuel_type = ['gas', 'diesel', 'hybrid', 'electricity']

#Create 5 drivers (used faker gem and made sure the age of the driver is at least 16)
5.times {
    Driver.create({name:Faker::Name.name, age:rand(16..65), quote:Faker::ChuckNorris.fact})
}

#Create 10 cars
20.times {
    Car.create({make:make.sample, model:model.sample, year:rand(1971..2020), not_sold:true})
}

#Based on the 5 Drivers that were created, update the driver name
#Based on the year the car was made, update the year bought to make sure it is greater than the year made
Car.all.each{|c| c.update(driver_id: Driver.all.sample.id, year_bought:(c.year+rand(0..5)))}
Driver.all.each{|d| d.update(num_of_cars: d.cars.count)}

puts '✅ Done seeding!' 