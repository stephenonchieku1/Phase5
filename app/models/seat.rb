class Seat < ApplicationRecord
  belongs_to :vehicle 
  has_many :bookings
  validates :booked, presence: true
  validates :number, presence: true, uniqueness: true, numericality: { only_integer: true, greater_than: 0, less_than: 40 }

  def self.total_seats
    where.not(number: nil).count
  end
end
