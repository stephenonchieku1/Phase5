class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :customer_id
      t.integer :seat_id
      t.integer :vehicle_id

      t.timestamps
    end
  end
end
