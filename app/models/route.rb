class Route < ApplicationRecord
    has_many :vehicles
    validates :Price, presence: true
end
