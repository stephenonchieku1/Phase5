class Sacco < ApplicationRecord
    has_many :vehicles
    has_many :customers, through: :vehicles
    has_many :routes, through: :vehicles
    validates :email, presence: true, uniqueness: true 
    validates :name, uniqueness: true
    has_secure_password
end
