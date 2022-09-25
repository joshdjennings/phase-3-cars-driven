class CarsController < ApplicationController

    get "/cars" do
        cars = Car.all.to_json
    end

    post "/cars" do
        car = Car.create(params)
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