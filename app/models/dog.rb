class Dog < ApplicationRecord

    has_many :reservations
    has_many :hotels, through: :reservations

    validates :name, presence: true
    validates :email, presence: true

    has_secure_password

    
    # accepts_nested_attributes_for :reservations

end
