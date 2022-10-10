# frozen_string_literal: true

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get '/' do
    'CARS!'
  end
end
