class Driver < ActiveRecord::Base
    has_many :cars

    Driver.all.each{|d| d.update(num_of_cars: d.cars.count,)}

end
