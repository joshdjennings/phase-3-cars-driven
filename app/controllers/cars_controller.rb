class CarsController < ApplicationController

    get "/cars" do
        cars = Car.all.to_json
    end

    post "/cars" do
        car = Car.create({make:params[:make], model:params[:model], year:params[:year], color:params[:color], category:params[:category], motor:params[:motor], fuel_type:params[:fuel_type], transmission:params[:transmission], drive:params[:drive], year_bought:params[:year_bought], year_sold:params[:year_sold], driver_name:params[:driver_name], active:params[:active]})
        car.to_json
    end
  
    patch "/cars/:id" do
      car = Car.find(params[:id])
      car.update({active:params[:active]})
      car.to_json
    end
    
    #Delete a car
    delete "/cars/:id" do
      car = Car.find(params[:id])
      car.destroy
      {message: 'car deleted'}.to_json
    end
end