puts '🌱 Seeding spices...'

# Seed your database here

active = [true, false]
make = ['Acura', 'Alfa-Romeo', 'Aston Martin', 'Audi', 'BMW', 'Bentley', 'Buick', 'Cadillac', 'Chevrolet', 'Chrysler', 'Daewoo', 'Daihatsu', 'Dodge', 'Eagle', 'Ferrari', 'Fiat', 'Fisker', 'Ford', 'GMC', 'Genesis', 'Geo', 'Honda', 'Hummer', 'Hyundai', 'Infiniti', 'Isuzu', 'Jaguar', 'Jeep', 'Kia', 'Lamborghini', 'Land Rover', 'Lexus', 'Lincoln', 'Lotus', 'Mazda', 'Maserati', 'Maybach', 'McLaren', 'Mercedes Benz', 'Mercury', 'Mini', 'Mitsubishi', 'Nissan', 'Oldsmobile', 'Panoz', 'Plymouth', 'Polestar', 'Pontiac', 'Porsche', 'Ram', 'Rivian', 'Rolls_Royce', 'Saab', 'Saturn', 'Smart', 'Subaru', 'Suzuki', 'Tesla', 'Toyota', 'Volkswagen', 'Volvo']

model = ['NSX', 'Giulia Quadafoglio', 'Vantage', 'R8', 'M2 CS', 'Continental', 'CTS-V Blackwing', 'Camaro SS', 'Viper', 'F12 Berlinetta', 'GTC4 Lusso', 'Spyder', 'Karma', 'GT', 'Prelude', 'H1', 'IONIQ 5', 'Q50 Red Sport', 'Trooper', 'I-Pace', 'Trackhawk', 'EV6', 'Countach', 'Discovery Sport', 'LFA', 'Miata', 'MC20', '765 LT', 'SLS Black Series', 'Villager', 'Cooper GP', 'Eclipse', '300 SX', 'Cutlass Supreme', '1', 'Grand Am', '918 Spyder', 'Power Wagon', 'R1T', 'Cullinan', '9-3', 'Ion Red Line', 'Impreza WRX STI', 'Model S', 'Supra', 'Golf R', 'V60 Polestar']

color = ['White', 'Black', 'Gray', 'Silver', 'Red', 'Blue', 'Brown', 'Green', 'Beige', 'Orange', 'Gold', 'Yellow', 'Purple']

category = ['SUV', 'Sedan', 'Coupe', 'Convertible', 'Hatchback', 'Pickup', 'Van', 'Minivan', 'Wagon']

motor = ['4-cyl', '5-cyl', '6-cyl', '8-cyl', '10-cyl', '12-cyl', 'Electric Motor(s)']

transmission = ['manual', 'automatic', 'CVT']

drive = ['FWD', 'RWD', 'AWD', '4WD']

fuel_type = ['gas', 'diesel', 'hybrid', 'electricity']

10.times {
    Driver.create({name:Faker::Name.name, age:rand(16..80), phone:Faker::PhoneNumber.cell_phone, nationality: Faker::Nation.nationality, quote:Faker::ChuckNorris.fact})
}

20.times {
    Car.create({active:active.sample, make:make.sample, model:model.sample, year:rand(1971..2022), color:color.sample, category:category.sample, motor:motor.sample, transmission:transmission.sample, drive:drive.sample, fuel_type:fuel_type.sample, car_id:rand(911)})
}
puts '✅ Done seeding!' 