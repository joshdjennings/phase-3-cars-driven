# frozen_string_literal: true

class Driver < ActiveRecord::Base
  has_many :cars
end
