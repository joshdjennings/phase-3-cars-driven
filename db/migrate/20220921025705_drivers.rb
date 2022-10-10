# frozen_string_literal: true

class Drivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :age
      t.string :quote
    end
  end
end
