# frozen_string_literal: true

class Cars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
    t.string :make
    t.string :model
    t.integer :year
    t.integer :year_bought
    t.boolean :not_sold
    t.integer :driver_id
    end
  end
end
