class Booking < ApplicationRecord
belongs_to :customer
belongs_to :vehicle
has_many :seats

validates :customer_id, presence: true
validates :vehicle_id, presence:true
validates :seat_id, presence: true
validates :number_of_seats, presence: true
 
end

