puts "🌱 Seeding spices..."

# Seed your database here
# 5.times{
#     Car.create({make: make.sample, model: "911", year: rand(1971..2022), color: color.sample, category: category.sample, motor: motor.sample, transmission: transmission.sample, drive: drive.sample, fuel_type: fuel_type.sample, active: true})
# }

Car.create({make:make.sample})

make = ["Acura", "Alfa-Romeo", "Aston Martin", "Audi", "BMW", "Bentley", "Buick", "Cadilac", "Chevrolet", "Chrysler", "Daewoo", "Daihatsu", "Dodge", "Eagle", "Ferrari", "Fiat", "Fisker", "Ford", "GMC", "Genesis", "Geo", "Honda", "Hummer", "Hyundai", "Infiniti", "Isuzu", "Jaguar", "Jeep", "Kia", "Lamborghini", "Land Rover", "Lexus", "Lincoln", "Lotus", "Mazda", "Maserati", "Maybach", "McLaren", "Mercedes Benz", "Mercury", "Mini", "Mitsubishi", "Nissan", "Oldsmobile", "Panoz", "Plymouth", "Polestar", "Pontiac", "Porsche", "Ram", "Rivian", "Rolls_Royce", "Saab", "Saturn", "Smart", "Subaru", "Suzuki", "Tesla", "Toyota", "Volkswagen", "Volvo"]

color = ["White", "Black", "Gray", "Silver", "Red", "Blue", "Brown", "Green", "Beige", "Orange", "Gold", "Yellow", "Purple"]

category = ["SUV", "Sedan", "Coupe", "Convertible", "Hatchback", "Pickup", "Van", "Minivan", "Wagon"]

motor = ["2-cyl", "3-cyl", "4-cyl", "5-cyl", "6-cyl", "8-cyl", "10-cyl", "12-cyl", "Electric Motor(s)"]

transmission = ["manual", "automatic", "CVT"]

drive = ['FWD', 'RWD', 'AWD', "4WD"]

fuel_type = ["gas", "diesel", "hybrid", "electricity"]
puts "✅ Done seeding!" 