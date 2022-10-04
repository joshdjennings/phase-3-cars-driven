puts '🌱 Seeding spices...'

# Seed your database here

make = ['Acura', 'Alfa-Romeo', 'Aston Martin', 'Audi', 'BMW', 'Bentley', 'Buick', 'Cadillac', 'Chevrolet', 'Chrysler', 'Daewoo', 'Dodge', 'Ferrari', 'Fiat', 'Fisker', 'Ford', 'GMC', 'Genesis', 'Geo', 'Honda', 'Hummer', 'Hyundai', 'Infiniti', 'Isuzu', 'Jaguar', 'Jeep', 'Kia', 'Lamborghini', 'Land Rover', 'Lexus', 'Lincoln', 'Lotus', 'Mazda', 'Maserati', 'Maybach', 'McLaren', 'Mercedes Benz', 'Mercury', 'Mini', 'Mitsubishi', 'Nissan', 'Oldsmobile', 'Plymouth', 'Polestar', 'Pontiac', 'Porsche', 'Ram', 'Rivian', 'Rolls_Royce', 'Saab', 'Saturn', 'Smart', 'Subaru', 'Suzuki', 'Tesla', 'Toyota', 'Volkswagen', 'Volvo']
model = ['NSX', 'Giulia Quadafoglio', 'Vantage', 'R8', 'M2 CS', 'Continental', 'CTS-V Blackwing', 'Camaro SS', 'Viper', 'F12 Berlinetta', 'GTC4 Lusso', 'Spyder', 'Karma', 'GT', 'Prelude', 'H1', 'IONIQ 5', 'Q50 Red Sport', 'Trooper', 'I-Pace', 'Trackhawk', 'EV6', 'Countach', 'Discovery Sport', 'LFA', 'Miata', 'MC20', '765 LT', 'SLS Black Series', 'Villager', 'Cooper GP', 'Eclipse', '300 SX', 'Cutlass Supreme', '1', 'Grand Am', '918 Spyder', 'Power Wagon', 'R1T', 'Cullinan', '9-3', 'Ion Red Line', 'Impreza WRX STI', 'Model S', 'Supra', 'Golf R', 'V60 Polestar']
color = ['White', 'Black', 'Gray', 'Silver', 'Red', 'Blue', 'Brown', 'Green', 'Beige', 'Orange', 'Gold', 'Yellow', 'Purple']
category = ['SUV', 'Sedan', 'Coupe', 'Convertible', 'Hatchback', 'Pickup', 'Van', 'Minivan', 'Wagon']
motor = ['4-cyl', '5-cyl', '6-cyl', '8-cyl', '10-cyl', '12-cyl', 'Electric Motor(s)']
transmission = ['manual', 'automatic']
drive = ['FWD', 'RWD', 'AWD', '4WD']
fuel_type = ['gas', 'diesel', 'hybrid', 'electricity']

5.times {
    Driver.create({name:Faker::Name.name, age:rand(16..65), quote:Faker::ChuckNorris.fact})
}

10.times {
    Car.create({make:make.sample, model:model.sample, year:rand(1971..2020), color:color.sample, category:category.sample, motor:motor.sample, fuel_type:fuel_type.sample,transmission:transmission.sample, drive:drive.sample, sold:true})
}

Car.all.each{|c| c.update(driver_name:Driver.all.sample.name, year_bought:(c.year+rand(0..5)))}

puts '✅ Done seeding!' 