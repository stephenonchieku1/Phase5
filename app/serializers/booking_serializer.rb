class BookingSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :seat_id, :vehicle_id

  belongs_to :customer
  belongs_to :vehicle

end
