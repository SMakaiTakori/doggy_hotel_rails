class Reservation < ApplicationRecord

    belongs_to :hotel
    belongs_to :dog

    accepts_nested_attributes_for :dog

end
