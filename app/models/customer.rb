class Customer < ApplicationRecord
    has_many :bookings
    validates :email, presence: true,uniqueness: true  

    has_secure_password


end
