class Seat < ApplicationRecord
  belongs_to :vehicle 
  has_many :bookings
  validates :number, presence: true, uniqueness: true, numericality: { only_integer: true, greater_than: 0}
end
