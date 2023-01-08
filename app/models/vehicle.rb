class Vehicle < ApplicationRecord
    has_many :bookings
    has_many :routes, ->{includes :routes}
    validates :departure_time, presence: true
   # validates :arrival_time, presence: true
    #validates :route_id, presence: true
    #validates :sacco_id, presence: true
    #validates :image, presence: true
    #validates :vehicle_name, presence: true
    #validates :no_of_seats, presence: true
    attr_accessor :arrival_time
    attr_accessor :departure_time
    attr_accessor :sacco_id
    attr_accessor :image
   attr_accessor :no_of_seats 
    attr_accessor :route_id
    attr_accessor :vehicle_name
    
end
