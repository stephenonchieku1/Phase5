class BookingSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :seat_id, :vehicle_id
end
