class Driver < ActiveRecord::Base
    has_many :cars

    #returns all cars that belong to each Driver
    # def cars
    #     Car.all.filter{|c| c.driver_id == self.id}
    # end

    #returns how many cars a driver has
    # def car_count
    #     self.cars.count
    # end

    #returns all the years of a Driver's cars
    # def car_year
    #     self.cars.map{|c| c.year}
    # end

    #returns all the makes of a Driver's cars
    # def car_make
    #     self.cars.map{|c| c.make}
    # end

    #returns all the models of a Driver's cars
    # def car_model
    #     self.cars.map{|c| c.model}
    # end

    #which driver has the most cars
    # def self.most_cars
    #     self.all.max_by(2){|d| d.cars.length}
    # end


end
