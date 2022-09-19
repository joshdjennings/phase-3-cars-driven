class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
 
  get "/cars" do
    {message: "This is the index of all the cars"}.to_json
  end
 
  get "cars/:id" do
    {message: "This is one car"}.to_json
  end

end
