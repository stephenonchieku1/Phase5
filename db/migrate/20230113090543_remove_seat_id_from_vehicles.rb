class RemoveSeatIdFromVehicles < ActiveRecord::Migration[7.0]
  def change
    remove_column :vehicles, :seat_id, :integer
  end
end
