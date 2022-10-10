class Cars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
    t.string :make
    t.string :model
    t.integer :year
    t.string :color
    t.string :category
    t.string :motor
    t.string :fuel_type
    t.string :transmission
    t.string :drive
    t.integer :year_bought
    t.boolean :not_sold
    t.string :driver_name
    end
  end
end
