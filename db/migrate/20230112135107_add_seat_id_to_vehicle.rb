class AddSeatIdToVehicle < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :seat_id, :integer
  end
end
