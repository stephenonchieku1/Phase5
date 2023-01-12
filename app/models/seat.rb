class Seat < ApplicationRecord
  belongs_to :vehicle 
  has_many :bookings
  validates :seat_no, presence: true, uniqueness: true, numericality: { only_integer: true, greater_than: 0}
end
