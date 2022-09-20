class Cars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
    t.boolean :active
    t.string :make
    t.string :model
    t.integer :year
    t.string :color
    t.string :category
    t.string :motor
    t.string :fuel_type
    t.string :transmission
    t.string :drive
    t.integer :car_id
    end
  end
end
