class Hotel < ApplicationRecord

    has_many :reservations
    has_many :dogs, through: :reservations

end
