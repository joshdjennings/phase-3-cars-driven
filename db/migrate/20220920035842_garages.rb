class Garages < ActiveRecord::Migration[6.1]
  def change
    create_table :garages do |t|
      t.string :driver
      t.integer :number_of_cars
      # t.integer :garage_id
    end
  end
end
