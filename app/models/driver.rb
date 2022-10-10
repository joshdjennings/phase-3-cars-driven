class Driver < ActiveRecord::Base
    has_many :cars

    def cars
    Car.all.filter{|c| c.driver_id == self.id}
    end

    def num_of_cars
        self.cars.count
        puts num_of_cars
    end

    def car_year
        self.cars.map{|c| c.year}
    end

    def car_make
        self.cars.map{|c| c.make}
    end

    def car_model
        self.cars.map{|c| c.model}
    end
end
