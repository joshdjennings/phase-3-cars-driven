# frozen_string_literal: true

class DriversController < ApplicationController
  # Get all Drivers
  get '/drivers' do
    drivers = Driver.all.to_json(include: :cars)
    end

  # Get one Driver
  get '/drivers/:id' do
    driver = Driver.find_by(id: params[:id])
    if driver
        driver.to_json(include: :cars)
      else
      '404 driver not found'
      end
  end

  # Create a Driver
  post '/drivers' do
    driver = Driver.create({ name: params[:name], age: params[:age], quote: params[:quote] })
    driver.to_json
  end

  # Delete a Driver
  delete '/drivers/:id' do
    driver = Driver.find_by(id: params[:id])
    driver.destroy
    { message: 'driver deleted' }.to_json
  end
end