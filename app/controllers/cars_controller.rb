class CarsController < ApplicationController

    get "/cars" do
        cars = Car.all
        {message: "Here are all the cars"}.to_json
        cars.to_json
    end

end