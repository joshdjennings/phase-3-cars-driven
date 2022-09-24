class CarsController < ApplicationController

    get "/cars" do
        cars = Car.all
        {message: "Here are all the cars"}.to_json
        cars.to_json
    end

    post "/cars" do
        car = Car.create({active:params[:active], make:params[:make], model:params[:model], year:params[:year], color:params[:color], category:params[:category], motor:params[:motor], fuel_type:params[:fuel_type], transmission:params[:transmission], drive:params[:drive], car_id:params[:car_id]})
        car.to_json(include: :car)
      end
    
      #Update a car
      patch "/cars/:id" do
        car = Car.find(params[:id])
    
        car.update({year_sold:params[:year_sold]})
        car.to_json(include: :car)
      end
      
      #Delete a car
      delete "/cars/:id" do
        car = Car.find(params[:id])
        car.destroy
        {message: 'car deleted'}.to_json
      end
end