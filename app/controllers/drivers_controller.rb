class DriversController < ApplicationController
    get '/drivers' do
        drivers = Driver.all.to_json
    end

    #Create a driver
  post "/patients" do
    driver = Driver.create(params)
    driver.to_json
  end
  
  #Delete a driver
  delete "/patients/:id" do
    driver = Driver.find(params[:id])
    driver.destroy
    {message: 'driver deleted'}.to_json
  end

end
