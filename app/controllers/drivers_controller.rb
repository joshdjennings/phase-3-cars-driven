class DriversController < ApplicationController
    get '/drivers' do
        drivers = Driver.all.to_json
    end

    #Create a driver
  post "/patients" do
    driver = Driver.create({name:params[:name], age:params[:age], owner:params[:owner], species:params[:species], phone:params[:phone], active:params[:active], clinic_id:params[:clinic_id]})
    driver.to_json(include: :clinic)
  end

  #Update a driver
  patch "/patients/:id" do
    driver = Driver.find(params[:id])

    driver.update({name:params[:name], age:params[:age], owner:params[:owner], species:params[:species], phone:params[:phone], active:params[:active], clinic_id:params[:clinic_id]})
    driver.to_json(include: :clinic)
  end
  
  #Delete a driver
  delete "/patients/:id" do
    driver = Driver.find(params[:id])
    driver.destroy
    {message: 'driver deleted'}.to_json
  end

end
