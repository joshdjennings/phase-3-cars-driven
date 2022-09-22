class Garages < ActiveRecord::Migration[6.1]
  def change
    create_table :garages do |t|
      t.string :driver
      t.string :number_of_cars
      t.integer :driver_id
    end
  end
end
