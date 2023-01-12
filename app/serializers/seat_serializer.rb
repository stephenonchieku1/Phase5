class SeatSerializer < ActiveModel::Serializer
  attributes :id, :seat_no, :status

  has_many :bookings
end
