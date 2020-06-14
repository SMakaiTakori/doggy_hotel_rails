class Hotel < ApplicationRecord

    has_many :reservations
    has_many :dogs, through: :reservations

    scope :alphabetize, -> { order(name: :asc) }

end
