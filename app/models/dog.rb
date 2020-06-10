class Dog < ApplicationRecord

    has_many :reservations
    has_many :hotels, through: :reservations


    has_secure_password


end
