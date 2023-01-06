class BookingSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :vehicle_id, :seat_id
end
