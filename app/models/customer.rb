class Customer < ApplicationRecord

    validates :email, presence: true,uniqueness: true
    #attr_accessor :name
    #attr_accessor :email
    #attr_accessor :password_digest   
    has_secure_password


end
