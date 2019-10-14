class Passenger < ApplicationRecord
  has_many :bookings, foreign_key: :booking_id
  has_many :scheduled_flights, through: :bookings, source: :scheduled_flight
end
