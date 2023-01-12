class Vehicle < ApplicationRecord
    belongs_to :route
    has_many :bookings
    validates :departure_time, presence: true
    
end
