class Destination < ApplicationRecord
    # has_many :bookings
    has_many :users

    validates :description, length: {maximum: 30}
end
