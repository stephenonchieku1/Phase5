class Customer < ApplicationRecord
    has_many :bookings
    validates :email, presence: true
   # attr_accessor :name
    #attr_accessor :email
    #attr_accessor :password_digest   
    has_secure_password
end
