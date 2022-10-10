# frozen_string_literal: true

class Car < ActiveRecord::Base
  belongs_to :driver
end
