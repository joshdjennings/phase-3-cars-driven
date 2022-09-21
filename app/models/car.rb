class Car < ActiveRecord::Base
    belongs_to :driver
    belongs_to :garage
end