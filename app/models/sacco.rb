class Sacco < ApplicationRecord
    has_many :vehicles
    has_many :customers, through: :vehicles
end

