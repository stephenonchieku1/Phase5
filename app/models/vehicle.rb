class Vehicle < ApplicationRecord
    belongs_to :route
    has_many :bookings
    belongs_to :sacco
    validates :departure_time, presence: true
    
end
