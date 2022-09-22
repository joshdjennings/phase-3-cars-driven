class GaragesController < ApplicationController
    get '/garages' do
        garage = Garage.all.to_json
    end
end
