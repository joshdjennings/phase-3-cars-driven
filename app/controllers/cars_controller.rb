class CarsController < ApplicationController

    get "/cars" do
cars = Cars.all.to_json
{message: "There are all the cars"}.to_json
end

end