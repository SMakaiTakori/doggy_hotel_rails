class Dog < ApplicationRecord

    has_many :reservations
    has_many :hotels, through: :reservations

    validates :name, presence: true
    validates :email, presence: true

    has_secure_password
    
    def self.from_omniauth(auth)
      where(email: auth.info.email).first_or_initialize do |dog|
        dog.name = auth.info.name
        dog.email = auth.info.email
        dog.password = SecureRandom.hex
      end
    end

end
