class CarsController < ApplicationController
    #Get all cars
    get "/cars" do
        cars = Car.all.to_json
    end

    #Get one car
    get "/cars/:id" do
      car = Car.find(params[:id])
      car.to_json
    end

    #Create a New Car
    post "/cars" do
        car = Car.create({make:params[:make], model:params[:model], year:params[:year], color:params[:color], category:params[:category], motor:params[:motor], fuel_type:params[:fuel_type], transmission:params[:transmission], drive:params[:drive], year_bought:params[:year_bought], driver_name:params[:driver_name], not_sold:true})
        car.to_json
    end
  
    #Update a car by marking it as Sold
    patch "/cars/:id" do
      car = Car.find(params[:id])
      car.update({not_sold:params[:not_sold]})
      car.to_json
    end
    
    #Delete a car
    delete "/cars/:id" do
      car = Car.find(params[:id])
      car.destroy
      {message: 'car deleted'}.to_json
    end
end