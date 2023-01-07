class Route < ApplicationRecord
    belongs_to :vehicle
    attr_accessor :To_location
    attr_accessor :From_location
    attr_accessor :Price
    validates :Price, presence: true
end
