class Drivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.integer :age
      t.string :phone
      t.string :nationality
      t.string :quote
      # t.integer :garage_id
    end
  end
end
