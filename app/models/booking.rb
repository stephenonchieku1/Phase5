class Booking < ApplicationRecord
belongs_to :customer
belongs_to :vehicle
belongs_to :seat

validates :customer_id, presence: true
validates :vehicle_id, presence:true
validates :seat_id, presence: true

end

