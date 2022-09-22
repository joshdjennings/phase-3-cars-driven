class Garage < ActiveRecord::Base
    has_many :car
    belongs_to :driver
end