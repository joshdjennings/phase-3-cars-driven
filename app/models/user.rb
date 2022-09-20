class User < ActiveRecord::Base
    has_one :garage

    has_many :cars
end
