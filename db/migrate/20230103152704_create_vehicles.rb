class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string  :vehicle_name
      t.integer :route_id
      t.datetime  :departure_time 
      t.datetime :arrival_time
      t.integer :no_of_seats   
      t.integer :sacco_id
      t.string  :image


      t.timestamps
    end
  end
end
