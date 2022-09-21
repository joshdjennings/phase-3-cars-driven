class CarsController < ApplicationController

    get "/cars" do
        cars = Car.all
        {message: "Here are all the cars"}.to_json
        cars.to_json
    end

    post "/patients" do
        car = Car.create({active:params[:active], make:params[:make], model:params[:model], year:params[:year], color:params[:color], category:params[:category], motor:params[:motor], fuel_type:params[:fuel_type], transmission:params[:transmission], drive:params[:drive], car_id:params[:car_id]})
        patient.to_json(include: :car)
      end
    
      #Update a patient
      patch "/patients/:id" do
        car = Car.find(params[:id])
    
        car.update({active:params[:active], make:params[:make], model:params[:model], year:params[:year], color:params[:color], category:params[:category], motor:params[:motor], fuel_type:params[:fuel_type], transmission:params[:transmission], drive:params[:drive], car_id:params[:car_id]})
        car.to_json(include: :car)
      end
      
      #Delete a car
      delete "/patients/:id" do
        car = Car.find(params[:id])
        car.destroy
        {message: 'car deleted'}.to_json
      end
end