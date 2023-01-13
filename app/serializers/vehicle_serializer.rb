class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :vehicle_name, :route_id, :departure_time, :arrival_time, :no_of_seats, :sacco_id, :image, :seat_id

  belongs_to :route
end

