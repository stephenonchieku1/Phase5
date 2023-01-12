class Vehicle < ApplicationRecord
    belongs_to :routes
    has_many :bookings
    validates :departure_time, presence: true
    
end
