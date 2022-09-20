class Garages < ActiveRecord::Migration[6.1]
  def change
    create_table :garages do |t|
      t.integer :garage_id
    end
  end
end
