class Car < ActiveRecord::Base
    belongs_to :driver

    # def driver
    #     Driver.all.find{|d| d.id ==self.driver_id}
    # end

end