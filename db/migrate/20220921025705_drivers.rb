class Drivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :age
      t.string :phone
      t.string :nationality
      t.string :quote
      t.integer :num_of_cars
    end
  end
end
