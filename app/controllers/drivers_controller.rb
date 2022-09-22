class DriversController < ApplicationController
    get '/drivers' do
        drivers = Driver.all.to_json
    end
end
